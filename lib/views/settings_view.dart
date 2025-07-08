import 'package:flutter/material.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});
  static const route = '/settings';

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  Brightness _themeMode = Brightness.dark;
  Locale _locale = const Locale('en');

  void _changeTheme(Brightness? mode) {
    if (mode != null) {
      setState(() {
        _themeMode = mode;
      });
    }
  }

  void _changeLanguage(Locale? locale) {
    if (locale != null) {
      setState(() {
        _locale = locale;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Themes",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text('Dark'),
              leading: Radio<Brightness>(
                value: Brightness.dark,
                groupValue: _themeMode,
                onChanged: _changeTheme,
              ),
            ),
            ListTile(
              title: Text('Light'),
              leading: Radio<Brightness>(
                value: Brightness.light,
                groupValue: _themeMode,
                onChanged: _changeTheme,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              "Languages",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text('English'),
              leading: Radio<Locale>(
                value: const Locale('en'),
                groupValue: _locale,
                onChanged: _changeLanguage,
              ),
            ),
            ListTile(
              title: Text('العربية'),
              leading: Radio<Locale>(
                value: const Locale('ar'),
                groupValue: _locale,
                onChanged: _changeLanguage,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
