import fs from 'fs';
import path from 'path';
import Ajv from 'ajv';

const schemaPath = path.join(process.cwd(), 'data/schemas/event.schema.json');
const dataPath = path.join(process.cwd(), 'data/seed/historical_events.json');

function validateHistoricalData() {
  console.log('🔍 [ChronoScope] Validating Historical Events Seed Data...');

  if (!fs.existsSync(schemaPath) || !fs.existsSync(dataPath)) {
    console.error('❌ Schema or data file not found!');
    process.exit(1);
  }

  const schema = JSON.parse(fs.readFileSync(schemaPath, 'utf-8'));
  const events = JSON.parse(fs.readFileSync(dataPath, 'utf-8'));

  const ajv = new Ajv({ allErrors: true });
  const validate = ajv.compile(schema);

  let hasError = false;
  const eventIds = new Set<string>();
  const eventTitles = new Set<string>();

  // 1. JSON Schema & Basic Rule Validation
  events.forEach((event: any, index: number) => {
    const valid = validate(event);
    if (!valid) {
      console.error(`❌ [Record #${index + 1}: ${event.id || 'NO_ID'}] Schema Error:`, validate.errors);
      hasError = true;
    }

    // ID 중복 검사
    if (eventIds.has(event.id)) {
      console.error(`❌ Duplicate event ID found: "${event.id}" at #${index + 1}`);
      hasError = true;
    }
    eventIds.add(event.id);

    // 제목 중복 검사
    if (eventTitles.has(event.title)) {
      console.warn(`⚠️ Warning: Duplicate event title: "${event.title}"`);
    }
    eventTitles.add(event.title);

    // 연도 논리 검사
    if (event.year_start > event.year_end) {
      console.error(`❌ Year logic error in "${event.id}": year_start (${event.year_start}) > year_end (${event.year_end})`);
      hasError = true;
    }

    // 0년 존재 여부 검사
    if (event.year_start === 0 || event.year_end === 0) {
      console.error(`❌ Historical Year 0 should not be used in "${event.id}". Use -1 for 1 BCE or 1 for 1 CE.`);
      hasError = true;
    }
  });

  // 2. 관계 참조 무결성 검사
  events.forEach((event: any) => {
    if (event.related_events && Array.isArray(event.related_events)) {
      event.related_events.forEach((rel: any) => {
        if (!eventIds.has(rel.target_event_id)) {
          console.warn(
            `⚠️ Notice: Event "${event.id}" references unseeded target_event_id "${rel.target_event_id}". (Will be allowed for future extension)`
          );
        }
      });
    }
  });

  if (hasError) {
    console.error('\n❌ Data validation failed with errors.');
    process.exit(1);
  } else {
    console.log(`\n✅ Data Validation SUCCESS: ${events.length} historical events verified perfectly!`);
  }
}

validateHistoricalData();
