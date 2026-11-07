import 'package:flutter/material.dart';

import 'screens/roteiro03_login_screen.dart';
import 'screens/roteiro08_password_screen.dart';

void main() {
  runApp(const DesenvolvimentoMobileApp());
}

class DesenvolvimentoMobileApp extends StatelessWidget {
  const DesenvolvimentoMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desenvolvimento Mobile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF2457A7)),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF4F7FB),
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
        ),
      ),
      home: const RoteiroNavigation(),
    );
  }
}

class RoteiroNavigation extends StatefulWidget {
  const RoteiroNavigation({super.key});

  @override
  State<RoteiroNavigation> createState() => _RoteiroNavigationState();
}

class _RoteiroNavigationState extends State<RoteiroNavigation> {
  int _selectedIndex = 0;

  static const _screens = <Widget>[
    Roteiro03LoginScreen(),
    Roteiro08PasswordScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _screens[_selectedIndex]),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() => _selectedIndex = index);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.login),
            label: 'Roteiro 3',
          ),
          NavigationDestination(
            icon: Icon(Icons.password),
            label: 'Roteiro 8',
          ),
        ],
      ),
    );
  }
}
