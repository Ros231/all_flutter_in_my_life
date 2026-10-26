import 'package:flutter/material.dart';
import 'package:flutter_log_app/views/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: "https://cxysgikhegevbfgjahoq.supabase.co",
    anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImN4eXNnaWtoZWdldmJmZ2phaG9xIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzU2MjM5MTcsImV4cCI6MjA5MTE5OTkxN30.hhI8HC7JuEpKWQi8eL_S0aTUlxeE8X4xx9bq8ihIYmM",
    );

  runApp(const Runner_log());
}

class Runner_log extends StatefulWidget {
  const Runner_log({super.key});

  @override
  State<Runner_log> createState() => _Runner_logState();
}

class _Runner_logState extends State<Runner_log> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: SplashScreen(),
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          
          Theme.of(context).textTheme
          ),
      ),
    );
  }
}