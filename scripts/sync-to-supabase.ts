import { createClient } from '@supabase/supabase-js';
import fs from 'fs';
import path from 'path';

async function syncToSupabase() {
  console.log('🚀 [HistoryGrid] Syncing 853 Master Historical Events to Supabase...');

  const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || 'https://hgjhbacqtnxkrulydokn.supabase.co';
  const supabaseKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || 'sb_publishable_cyUYccuQwoAIbnE_pS5-AQ_2bdsZRj2';

  const supabase = createClient(supabaseUrl, supabaseKey);

  const seedPath = path.join(process.cwd(), 'data/seed/historical_events.json');
  if (!fs.existsSync(seedPath)) {
    console.error('❌ Seed file not found:', seedPath);
    return;
  }

  const events: any[] = JSON.parse(fs.readFileSync(seedPath, 'utf-8'));
  console.log(`📊 Total events to sync: ${events.length}`);

  // Batch insert in chunks of 50
  const CHUNK_SIZE = 50;
  let successCount = 0;
  let errorCount = 0;

  for (let i = 0; i < events.length; i += CHUNK_SIZE) {
    const chunk = events.slice(i, i + CHUNK_SIZE).map((e) => ({
      id: e.id,
      title: e.title,
      title_en: e.title_en || null,
      region_id: e.region_id,
      sub_region: e.sub_region || null,
      category_id: e.category_id,
      importance: e.importance,
      year_start: e.year_start,
      year_end: e.year_end,
      date_precision: e.date_precision || 'exact',
      summary: e.summary,
      historical_significance: e.historical_significance || null,
      cause: e.cause || null,
      consequence: e.consequence || null,
      confidence: e.confidence || 'HIGH',
      review_status: 'APPROVED',
    }));

    const { data, error } = await supabase
      .from('events')
      .upsert(chunk, { onConflict: 'id' });

    if (error) {
      console.error(`⚠️ Chunk ${Math.floor(i / CHUNK_SIZE) + 1} Error:`, error.message);
      errorCount += chunk.length;
    } else {
      successCount += chunk.length;
      process.stdout.write(`\r  ✓ Synced ${successCount}/${events.length} events...`);
    }
  }

  console.log(`\n\n🎉 [Supabase Sync Complete] Successfully Synced: ${successCount}, Errors: ${errorCount}`);
  console.log('📌 Supabase SQL script is also available at: supabase/seed/seed_data.sql');
}

syncToSupabase().catch((err) => console.error('❌ Fatal error:', err));
