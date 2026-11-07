import 'package:flutter/material.dart';

void main() => runApp(const Roteiro03DartPadApp());

class Roteiro03DartPadApp extends StatelessWidget {
  const Roteiro03DartPadApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Roteiro 3 — Login',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)),
      home: const Roteiro03DartPadScreen(),
    );
  }
}

class Roteiro03DartPadScreen extends StatefulWidget {
  const Roteiro03DartPadScreen({super.key});

  @override
  State<Roteiro03DartPadScreen> createState() => _Roteiro03DartPadScreenState();
}

class _Roteiro03DartPadScreenState extends State<Roteiro03DartPadScreen> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  String? _emailError;
  String? _passwordError;
  String? _message;

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  void _submit() {
    final email = _email.text.trim();
    final emailError = email.isEmpty
        ? 'Informe o e-mail.'
        : !RegExp(
            r'^[A-Za-z0-9+_-]+(?:\.[A-Za-z0-9+_-]+)*@[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?(?:\.[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?)+$',
          ).hasMatch(email)
            ? 'Informe um e-mail válido.'
            : null;
    final passwordError = _password.text.isEmpty ? 'Informe a senha.' : null;
    setState(() {
      _emailError = emailError;
      _passwordError = passwordError;
      _message = emailError == null && passwordError == null
          ? 'Bem-vindo, $email! Demonstração local, sem autenticação.'
          : null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Roteiro 3 — Login Flutter')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 440),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  controller: _email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(labelText: 'E-mail')
                      .copyWith(errorText: _emailError),
                  onChanged: (_) => setState(() {
                      _emailError = null;
                      _message = null;
                    }),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _password,
                  obscureText: true,
                  decoration: const InputDecoration(labelText: 'Senha')
                      .copyWith(errorText: _passwordError),
                  onChanged: (_) => setState(() {
                      _passwordError = null;
                      _message = null;
                    }),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _submit,
                  child: const Text('Login'),
                ),
                if (_message != null) ...[
                  const SizedBox(height: 12),
                  Text(_message!, textAlign: TextAlign.center),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
