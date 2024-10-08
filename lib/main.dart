import 'package:diary/Help%20&%20Support/FAQS_sreen%20.dart';
import 'package:diary/Help%20&%20Support/contact_us_screen%20.dart';
import 'package:diary/Help%20&%20Support/live_chat_screen%20.dart';
import 'package:diary/Home%20Screen/diary_entry_notifier.dart';
import 'package:diary/Privacy/app_permissions_section.dart';
import 'package:diary/Privacy/enable_encryption_section.dart';
import 'package:diary/Privacy/login_history_section.dart';
import 'package:diary/Privacy/privacy_security_section.dart.dart';
import 'package:diary/Privacy/security_tips_section.dart';
import 'package:diary/Privacy/two_factor_authentication_section.dart';
import 'package:diary/Profile/account_information_screen%20.dart';
import 'package:diary/Profile/delete_account.dart';
import 'package:diary/Profile/edit_profile.dart';
import 'package:diary/Profile/linked_accounts.dart';
import 'package:diary/Storage/database_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:diary/Language/app_locale_provider.dart';
import 'package:diary/Language/language_section.dart';
import 'package:diary/Authentication/forgot_password_screen.dart';
import 'package:diary/Authentication/sign_in_screen.dart';
import 'package:diary/Authentication/sign_up_screen.dart';
import 'package:diary/Authentication/splash_screen.dart';
import 'package:diary/Home%20Screen/calendar_screen.dart';
import 'package:diary/Home%20Screen/daily_prompts_screen.dart';
import 'package:diary/Home%20Screen/entry_detail.dart';
import 'package:diary/Home%20Screen/entry_list.dart';
import 'package:diary/Home%20Screen/home_screen.dart';
import 'package:diary/Settings/about_help_screen.dart';
import 'package:diary/Settings/backup_restore_screen.dart';
import 'package:diary/Help%20&%20Support/help_support_section.dart';
import 'package:diary/Settings/notifications_section.dart';
import 'package:diary/Privacy/privacy_policy_screen.dart';
import 'package:diary/Profile/profile_section.dart';
import 'package:diary/Settings/settings_screen.dart';
import 'package:diary/Settings/terms_section.dart';
import 'package:diary/Settings/theme_section.dart';
import 'package:diary/media_gallery_screen.dart';
import 'package:diary/mood_tracking_screen.dart';
import 'package:diary/reminder_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseHelper()
      .database; // Ensure the database is initialized before running the app
  runApp(
    ChangeNotifierProvider(
      create: (context) => DiaryEntryNotifier(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _currentLocale = const Locale('en');

  @override
  void initState() {
    super.initState();
    // You might want to initialize locale here
  }

  void _onLocaleChange(Locale locale) {
    setState(() {
      _currentLocale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LocaleProvider(
      locale: _currentLocale,
      onLocaleChange: _onLocaleChange,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Diary App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.blue,
            iconTheme: IconThemeData(color: Colors.white),
            titleTextStyle: TextStyle(color: Colors.white),
          ),
          switchTheme: SwitchThemeData(
            thumbColor: WidgetStateProperty.all(Colors.blue),
            trackColor: WidgetStateProperty.all(
              Colors.blue.withOpacity(0.5),
            ),
          ),
        ),
        supportedLocales: const [
          Locale("af"),
          Locale("am"),
          Locale("ar"),
          Locale("az"),
          Locale("be"),
          Locale("bg"),
          Locale("bn"),
          Locale("bs"),
          Locale("ca"),
          Locale("cs"),
          Locale("da"),
          Locale("de"),
          Locale("el"),
          Locale("en"),
          Locale("es"),
          Locale("et"),
          Locale("fa"),
          Locale("fi"),
          Locale("fr"),
          Locale("gl"),
          Locale("ha"),
          Locale("he"),
          Locale("hi"),
          Locale("hr"),
          Locale("hu"),
          Locale("hy"),
          Locale("id"),
          Locale("is"),
          Locale("it"),
          Locale("ja"),
          Locale("ka"),
          Locale("kk"),
          Locale("km"),
          Locale("ko"),
          Locale("ku"),
          Locale("ky"),
          Locale("lt"),
          Locale("lv"),
          Locale("mk"),
          Locale("ml"),
          Locale("mn"),
          Locale("ms"),
          Locale("nb"),
          Locale("nl"),
          Locale("nn"),
          Locale("no"),
          Locale("pl"),
          Locale("ps"),
          Locale("pt"),
          Locale("ro"),
          Locale("ru"),
          Locale("sd"),
          Locale("sk"),
          Locale("sl"),
          Locale("so"),
          Locale("sq"),
          Locale("sr"),
          Locale("sv"),
          Locale("ta"),
          Locale("tg"),
          Locale("th"),
          Locale("tk"),
          Locale("tr"),
          Locale("tt"),
          Locale("uk"),
          Locale("ug"),
          Locale("ur"),
          Locale("uz"),
          Locale("vi"),
          Locale("zh"),
        ],
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          // Add your localization delegate here
        ],
        locale: _currentLocale,
        initialRoute: '/splash_screen',
        routes: {
          '/splash_screen': (context) => const SplashScreen(),
          '/sign_in': (context) => const SignInScreen(),
          '/sign_up': (context) => const SignUpScreen(),
          '/forgot_password': (context) => const ForgotPasswordScreen(),
          '/home': (context) => const HomeScreen(),
          '/help_support': (context) => const HelpSupportSection(),
          '/faq': (context) => const FAQScreen(),
          '/contact_us': (context) => const ContactUsScreen(),
          '/live_chat': (context) => const LiveChatScreen(),
          '/entry-list': (context) => const EntryListScreen(),
          '/entry': (context) => const EntryDetailScreen(),
          '/media_gallery': (context) => const MediaGalleryScreen(),
          '/reminders': (context) => const ReminderScreen(),
          '/settings': (context) => const SettingsScreen(),
          '/calendar': (context) => const CalendarScreen(),
          '/backup_restore': (context) => const BackupRestoreScreen(),
          '/privacy_security': (context) => const PrivacySecurityScreen(),
          '/about_help': (context) => const AboutHelpScreen(),
          '/daily_prompts': (context) => const DailyPromptsScreen(),
          '/mood-tracking': (context) => const MoodTrackingScreen(),
          '/privacy_policy': (context) => const PrivacyPolicyScreen(),
          '/about': (context) => const AboutHelpScreen(),
          '/terms': (context) => const TermsScreen(),
          '/language': (context) => const LanguageScreen(),
          '/notifications': (context) => const NotificationsScreen(),
          '/theme': (context) => const ThemeScreen(),
          '/profile': (context) => const ProfileSection(),
          '/two_factor_authentication': (context) =>
              const TwoFactorAuthenticationScreen(),
          '/login_history': (context) => const LoginHistoryScreen(),
          '/app_permissions': (context) => const AppPermissionsScreen(),
          '/enable_encryption': (context) => const EnableEncryptionScreen(),
          '/security_tips': (context) => const SecurityTipsScreen(),
          '/edit_profile': (context) => const EditProfileScreen(),
          '/linked_accounts': (context) => const LinkedAccountsScreen(),
          '/delete_account': (context) => const DeleteAccountScreen(),
          '/accounts_information': (context) =>
              const AccountInformationScreen(),
        },
      ),
    );
  }
}
