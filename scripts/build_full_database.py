# -*- coding: utf-8 -*-
"""
Master Database Builder for ChronoScope / HistoryGrid
Integrates all 25 centuries datasets, exports them to data/centuries/*.json,
merges into data/seed/historical_events.json, and generates supabase/seed/seed_data.sql.
"""

import json
import os
import sys

from dataset_b1_ancient import BLOCK_1_CENTURIES
from dataset_b2_classical import BLOCK_2_CENTURIES
from dataset_b3_medieval import BLOCK_3_CENTURIES
from dataset_b4_late_medieval import BLOCK_4_CENTURIES
from dataset_b5_modern import BLOCK_5_CENTURIES

ALL_CENTURIES = (
    BLOCK_1_CENTURIES
    + BLOCK_2_CENTURIES
    + BLOCK_3_CENTURIES
    + BLOCK_4_CENTURIES
    + BLOCK_5_CENTURIES
)

def build_database():
    base_dir = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    centuries_dir = os.path.join(base_dir, "data", "centuries")
    seed_json_path = os.path.join(base_dir, "data", "seed", "historical_events.json")
    seed_sql_path = os.path.join(base_dir, "supabase", "seed", "seed_data.sql")

    os.makedirs(centuries_dir, exist_ok=True)
    os.makedirs(os.path.dirname(seed_json_path), exist_ok=True)
    os.makedirs(os.path.dirname(seed_sql_path), exist_ok=True)

    print(f"🚀 [HistoryGrid Master Builder] Processing {len(ALL_CENTURIES)} Centuries...")

    # 1. Existing events map
    existing_events = []
    if os.path.exists(seed_json_path):
        try:
            with open(seed_json_path, "r", encoding="utf-8") as f:
                existing_events = json.load(f)
        except Exception as e:
            print(f"⚠️ Warning loading existing seed: {e}")

    event_map = {e["id"]: e for e in existing_events}
    initial_count = len(event_map)

    total_new_generated = 0

    # 2. Process each century
    for century in ALL_CENTURIES:
        c_id = century["century_id"]
        c_label = century["century_label"]
        period = century.get("period", {})
        raw_events = century["events"]

        century_events = []

        for item in raw_events:
            event_id = item["id"]
            title = item["title"]
            title_en = item.get("title_en", title)
            region_id = item.get("region_id", "WEST")
            sub_region = item.get("sub_region", "")
            category_id = item.get("category_id", "POLITICS")
            importance = item.get("importance", "A")
            start = item.get("year_start", 1)
            end = item.get("year_end", start)
            precision = item.get("date_precision", "exact")
            summary = item.get("summary", "")
            significance = item.get("historical_significance", "")
            cause = item.get("cause", "")
            consequence = item.get("consequence", "")
            related_people = item.get("related_people", [])
            related_events = item.get("related_events", [])
            sources = item.get("sources", [{"title": "글로벌 역사 데이터베이스 (HistoryGrid)"}])

            # year 0 check
            if start == 0: start = 1
            if end == 0: end = 1
            if start > end:
                start, end = end, start

            formatted_event = {
                "id": event_id,
                "title": title,
                "title_en": title_en,
                "region_id": region_id,
                "sub_region": sub_region,
                "category_id": category_id,
                "importance": importance,
                "year_start": start,
                "year_end": end,
                "date_precision": precision,
                "summary": summary,
                "historical_significance": significance,
                "cause": cause,
                "consequence": consequence,
                "confidence": "HIGH",
                "related_people": related_people,
                "related_events": related_events,
                "sources": sources
            }

            century_events.append(formatted_event)

            # Merge into master map
            event_map[event_id] = formatted_event
            total_new_generated += 1

        # Write century file
        century_file_path = os.path.join(centuries_dir, f"{c_id}.json")
        century_obj = {
            "centuryId": c_id,
            "centuryLabel": c_label,
            "period": period,
            "eventCount": len(century_events),
            "events": century_events
        }
        with open(century_file_path, "w", encoding="utf-8") as f:
            json.dump(century_obj, f, ensure_ascii=False, indent=2)

        print(f"  ✓ Exported century: {c_id}.json ({len(century_events)} events)")

    # 3. Sort all merged events by start year, then end year
    all_merged = list(event_map.values())
    all_merged.sort(key=lambda x: (x["year_start"], x["year_end"], x["id"]))

    # Save to data/seed/historical_events.json
    with open(seed_json_path, "w", encoding="utf-8") as f:
        json.dump(all_merged, f, ensure_ascii=False, indent=2)

    print(f"\n✅ [Merge Complete] Total Events in Master Seed: {len(all_merged)} (was {initial_count})")

    # 4. Generate supabase/seed/seed_data.sql
    generate_sql(all_merged, seed_sql_path)

def generate_sql(events, sql_path):
    sql_lines = [
        "-- ============================================================================",
        "-- HistoryGrid Master Historical Events Seed Data",
        f"-- Total Events: {len(events)}",
        "-- Covers BC 400 ~ 21st Century (West, China, Korea, Climate/Global)",
        "-- ============================================================================",
        "BEGIN;",
        ""
    ]

    for e in events:
        e_id = e["id"].replace("'", "''")
        title = e["title"].replace("'", "''")
        title_en = (e.get("title_en") or "").replace("'", "''")
        region_id = e.get("region_id", "WEST")
        sub_region = (e.get("sub_region") or "").replace("'", "''")
        category_id = e.get("category_id", "POLITICS")
        importance = e.get("importance", "A")
        year_start = e["year_start"]
        year_end = e["year_end"]
        precision = e.get("date_precision", "exact")
        summary = (e.get("summary") or "").replace("'", "''")
        significance = (e.get("historical_significance") or "").replace("'", "''")
        cause = (e.get("cause") or "").replace("'", "''")
        consequence = (e.get("consequence") or "").replace("'", "''")
        confidence = e.get("confidence", "HIGH")

        sql_lines.append(
            f"INSERT INTO events (id, title, title_en, region_id, sub_region, category_id, importance, year_start, year_end, date_precision, summary, historical_significance, cause, consequence, confidence, review_status)\n"
            f"VALUES ('{e_id}', '{title}', '{title_en}', '{region_id}', '{sub_region}', '{category_id}', '{importance}', {year_start}, {year_end}, '{precision}', '{summary}', '{significance}', '{cause}', '{consequence}', '{confidence}', 'APPROVED')\n"
            f"ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, summary = EXCLUDED.summary, historical_significance = EXCLUDED.historical_significance, updated_at = NOW();\n"
        )

    sql_lines.append("COMMIT;")

    with open(sql_path, "w", encoding="utf-8") as f:
        f.write("\n".join(sql_lines))

    print(f"✅ [SQL Generated] Successfully written to {sql_path} ({len(sql_lines)} lines)")

if __name__ == "__main__":
    build_database()
