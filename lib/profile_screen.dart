import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final VoidCallback onToggleTheme;

  const ProfileScreen({Key? key, required this.onToggleTheme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: ElevatedButton.icon(
          icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),
          label: Text(isDark ? 'Ganti ke Tema Terang' : 'Ganti ke Tema Gelap'),
          onPressed: onToggleTheme,
        ),
      ),
    );
  }
}
