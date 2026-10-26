
import 'package:flutter_log_app/Models/DB.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {

 final supabase = Supabase.instance.client;

  Future<List<RunLog>> fetchRunLogs() async {

    final response = await supabase.from("run_tb").select('*').order("created_at", ascending: false
    
    ).onError((error, stackTrace) {
      print("Error fetching run logs: $error");
      return [];
    });

    print("Fetched run logs: $response");

    return response.map((e) => RunLog.fromJson(e)).toList();
  }

  Future insertRunLog(RunLog runLog) async {

    await supabase.from("run_tb").insert(runLog.toJson());
  }

  Future updateRunLog(String id, RunLog runLog) async {

    await supabase.from("run_tb").update(runLog.toJson()).eq('id', id);
  }

  Future deleteRunLog(String id) async {

    await supabase.from("run_tb").delete().eq('id', id);
  }
}