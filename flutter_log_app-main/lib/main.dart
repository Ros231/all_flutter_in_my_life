import 'package:flutter/material.dart';
import 'package:flutter_log_app/views/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://dyoztijugjczlyfrfjfn.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImR5b3p0aWp1Z2pjemx5ZnJmamZuIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzM3OTU5MzYsImV4cCI6MjA4OTM3MTkzNn0.L4K1LZs0lYuDZdJMhQ6eBiCSOaaOfitGrnMC4JrGkbg',
  );
  runApp(const Logapp());
}
class Logapp extends StatefulWidget {
  const Logapp({super.key});

  @override
  State<Logapp> createState() => _LogappState();
}

class _LogappState extends State<Logapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme
        (
          Theme.of(context).textTheme
        ),
      ),
    );
  }
}