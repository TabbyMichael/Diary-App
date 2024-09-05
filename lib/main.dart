import 'package:diary/Home%20Screen/calendar_screen.dart';
import 'package:diary/about_help_screen.dart';
import 'package:diary/backup_restore_screen.dart';
import 'package:diary/Home%20Screen/daily_prompts_screen.dart';
import 'package:diary/Home%20Screen/entry_detail.dart';
import 'package:diary/Home%20Screen/entry_list.dart';
import 'package:diary/forgot_password_screen.dart';
import 'package:diary/Home%20Screen/home_screen.dart';
import 'package:diary/media_gallery_screen.dart';
import 'package:diary/mood_tracking_screen.dart';
import 'package:diary/privacy_security_screen.dart';
import 'package:diary/reminder_screen.dart';
import 'package:diary/settings_screen.dart';
import 'package:diary/sign_in_screen.dart';
import 'package:diary/sign_up_screen.dart';
import 'package:diary/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diary App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/sign-in': (context) => const SignInScreen(),
        '/sign-up': (context) => const SignUpScreen(),
        '/forgot-password': (context) => const ForgotPasswordScreen(),
        '/home': (context) => const HomeScreen(),
        '/entry-list': (context) => const EntryListScreen(),
        '/entry': (context) => const EntryDetailScreen(),
        '/media-gallery': (context) => const MediaGalleryScreen(),
        '/reminders': (context) => const ReminderScreen(),
        '/settings': (context) => const SettingsScreen(),
        '/calendar': (context) => const CalendarScreen(),
        '/backup-restore': (context) => const BackupRestoreScreen(),
        '/privacy-security': (context) => const PrivacySecurityScreen(),
        '/about-help': (context) => const AboutHelpScreen(),
        '/daily-prompts': (context) => const DailyPromptsScreen(),
        '/mood-tracking': (context) => const MoodTrackingScreen(),
      },
    );
  }
}
