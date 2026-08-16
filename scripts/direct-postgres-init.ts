import { Client } from 'pg';
import fs from 'fs';
import path from 'path';

async function initPostgresDirect() {
  console.log('🚀 [HistoryGrid] Connecting directly to Supabase PostgreSQL Database...');

  // Database Connection URL (Direct or Pooler)
  // Direct: postgresql://postgres:Toritori33##@db.hgjhbacqtnxkrulydokn.supabase.co:5432/postgres
  // Pooler: postgresql://postgres.hgjhbacqtnxkrulydokn:Toritori33##@aws-0-ap-northeast-2.pooler.supabase.com:6543/postgres or 5432
  
  const connectionStrings = [
    'postgresql://postgres:Toritori33%23%23@db.hgjhbacqtnxkrulydokn.supabase.co:5432/postgres',
    'postgresql://postgres.hgjhbacqtnxkrulydokn:Toritori33%23%23@aws-0-ap-northeast-2.pooler.supabase.com:6543/postgres',
    'postgresql://postgres.hgjhbacqtnxkrulydokn:Toritori33%23%23@aws-0-ap-northeast-2.pooler.supabase.com:5432/postgres'
  ];

  let client: Client | null = null;
  let connected = false;

  for (const connStr of connectionStrings) {
    try {
      console.log(`🔌 Attempting connection to: ${connStr.split('@')[1]}...`);
      const testClient = new Client({
        connectionString: connStr,
        ssl: { rejectUnauthorized: false },
        connectionTimeoutMillis: 5000,
      });
      await testClient.connect();
      client = testClient;
      connected = true;
      console.log('✅ Connected successfully to Supabase PostgreSQL!');
      break;
    } catch (err: any) {
      console.log(`⚠️ Connection attempt failed: ${err.message}`);
    }
  }

  if (!connected || !client) {
    console.log('\n⚠️ Direct TCP connection was blocked by network/pooler.');
    console.log('💡 Note: You can easily execute the complete schema and 853 events directly in the Supabase Dashboard:');
    console.log('   👉 Open https://supabase.com/dashboard/project/hgjhbacqtnxkrulydokn/sql');
    console.log('   👉 Paste contents from: supabase/migrations/20260816000000_init_chronoscope_schema.sql');
    console.log('   👉 Paste contents from: supabase/seed/seed_data.sql and click RUN!');
    return;
  }

  try {
    // 1. Run Migration Schema
    console.log('📦 Applying Schema Migrations...');
    const migrationPath = path.join(process.cwd(), 'supabase/migrations/20260816000000_init_chronoscope_schema.sql');
    const migrationSql = fs.readFileSync(migrationPath, 'utf-8');
    await client.query(migrationSql);
    console.log('✅ Schema migration applied successfully.');

    // 2. Run Master Seed Data
    console.log('🌱 Inserting 853 Master Historical Events...');
    const seedPath = path.join(process.cwd(), 'supabase/seed/seed_data.sql');
    const seedSql = fs.readFileSync(seedPath, 'utf-8');
    await client.query(seedSql);
    console.log('🎉 853 Master Historical Events successfully seeded to Supabase DB!');

    // 3. Check Row Count
    const res = await client.query('SELECT count(*) FROM events;');
    console.log(`📊 Current DB Row Count in 'events' table: ${res.rows[0].count}`);

  } catch (err: any) {
    console.error('❌ SQL Execution error:', err.message);
  } finally {
    await client.end();
  }
}

initPostgresDirect().catch(console.error);
