import 'package:flutter/material.dart';

class LocaleProvider extends InheritedWidget {
  final Locale locale;
  final Function(Locale) onLocaleChange;

  const LocaleProvider({
    super.key,
    required this.locale,
    required this.onLocaleChange,
    required super.child,
  });

  static LocaleProvider of(BuildContext context) {
    final LocaleProvider? result =
        context.dependOnInheritedWidgetOfExactType<LocaleProvider>();
    assert(result != null, 'No LocaleProvider found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(LocaleProvider oldWidget) {
    return locale != oldWidget.locale;
  }
}
