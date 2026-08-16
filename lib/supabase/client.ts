import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || 'https://hgjhbacqtnxkrulydokn.supabase.co';
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || 'sb_publishable_cyUYccuQwoAIbnE_pS5-AQ_2bdsZRj2';

export const supabase = createClient(supabaseUrl, supabaseAnonKey);
