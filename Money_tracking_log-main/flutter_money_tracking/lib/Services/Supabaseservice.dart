  import 'package:flutter_log_app/Models/DB.dart';
  import 'package:supabase_flutter/supabase_flutter.dart';
  class Supabaseservice {

    final supabase = Supabase.instance.client;

    Future <List<Tracking>> gettracking() async {

  try{
    
    final response = await supabase.from('tracking_tb').select("*").order("date", ascending: false);

    return response.map((json) => Tracking.fromJson(json)).toList();

  }catch(e){
    print(e.toString());
    }

      return [];
    }

    Future insertTracking(Tracking tracking) async {
      try{
        
        await supabase.from('tracking_tb').insert(tracking.toJson());

      }catch(e){
        print(e.toString());
      }
    }

  }

