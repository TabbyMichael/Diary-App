import 'package:diary/Home%20Screen/calendar_screen.dart';
import 'package:diary/Settings/about_help_screen.dart';
import 'package:diary/Settings/backup_restore_screen.dart';
import 'package:diary/Home%20Screen/daily_prompts_screen.dart';
import 'package:diary/Home%20Screen/entry_detail.dart';
import 'package:diary/Home%20Screen/entry_list.dart';
import 'package:diary/Authentication/forgot_password_screen.dart';
import 'package:diary/Home%20Screen/home_screen.dart';
import 'package:diary/Settings/help_support_section.dart';
import 'package:diary/Settings/language_section.dart';
import 'package:diary/Settings/notifications_section.dart';
import 'package:diary/Settings/profile_section.dart';
import 'package:diary/Settings/terms_section.dart';
import 'package:diary/Settings/theme_section.dart';
import 'package:diary/media_gallery_screen.dart';
import 'package:diary/mood_tracking_screen.dart';
import 'package:diary/Settings/privacy_policy_screen.dart';
import 'package:diary/reminder_screen.dart';
import 'package:diary/Settings/settings_screen.dart';
import 'package:diary/Authentication/sign_in_screen.dart';
import 'package:diary/Authentication/sign_up_screen.dart';
import 'package:diary/Authentication/splash_screen.dart';
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
        '/privacy_policy': (context) => const PrivacySecurityScreen(),
        '/backup_restore': (context) => const BackupRestoreScreen(),
        '/about': (context) => const AboutHelpScreen(),
        '/terms': (context) => const TermsSection(),
        '/language': (context) => const LanguageSection(),
        '/notifications': (context) => const NotificationsSection(),
        '/theme': (context) => const ThemeSection(),
        '/contact_support': (context) => const PrivacySecurityScreen(),
        '/profile': (context) => const ProfileSection(),
        '/help_support': (context) => const HelpSupportSection(),
        '/': (context) => const MoodTrackingScreen(),
      },
    );
  }
}
