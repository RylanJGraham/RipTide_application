import 'package:supabase/supabase.dart';

class SupabaseService {
  static final SupabaseClient supabase = SupabaseClient(
    'https://qhtqqqviqwajyjxbkrua.supabase.co',
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFodHFxcXZpcXdhanlqeGJrcnVhIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTk2MDIyMzYsImV4cCI6MjAxNTE3ODIzNn0.tfNcj6CJ_fSG5pLH84iLy_FkxvzjTxfxqgb9vqLPzBQ',
    //options: SupabaseOptions(
     // autoReconnect: true,
  );
}
