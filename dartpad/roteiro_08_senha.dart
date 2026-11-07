import 'package:flutter/material.dart';

void main() => runApp(const Roteiro08DartPadApp());

class Roteiro08DartPadApp extends StatelessWidget {
  const Roteiro08DartPadApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Roteiro 8 — Verificador de senha',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)),
      home: const Roteiro08DartPadScreen(),
    );
  }
}

enum PasswordStrength { empty, weak, medium, strong }

PasswordStrength classifyPassword(String password) {
  if (password.isEmpty) return PasswordStrength.empty;
  if (password.length <= 5) return PasswordStrength.weak;
  if (password.length <= 9) return PasswordStrength.medium;
  return PasswordStrength.strong;
}

class Roteiro08DartPadScreen extends StatefulWidget {
  const Roteiro08DartPadScreen({super.key});

  @override
  State<Roteiro08DartPadScreen> createState() => _Roteiro08DartPadScreenState();
}

class _Roteiro08DartPadScreenState extends State<Roteiro08DartPadScreen> {
  final _password = TextEditingController();
  PasswordStrength _strength = PasswordStrength.empty;

  @override
  void dispose() {
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final (label, color) = switch (_strength) {
      PasswordStrength.empty => ('Digite uma senha para analisar.', Colors.grey),
      PasswordStrength.weak => ('Senha Fraca', Colors.red),
      PasswordStrength.medium => ('Senha Média', Colors.deepOrange),
      PasswordStrength.strong => ('Senha Forte', Colors.green),
    };

    return Scaffold(
      appBar: AppBar(title: const Text('Roteiro 8 — Verificador de senha')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 440),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  controller: _password,
                  obscureText: true,
                  onChanged: (value) {
                    setState(() => _strength = classifyPassword(value));
                  },
                  decoration: const InputDecoration(
                    labelText: 'Senha para análise',
                    helperText: 'O texto não é salvo nem enviado.',
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  label,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: color, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                const Text(
                  '1–5 caracteres: fraca; 6–9: média; 10 ou mais: forte. '
                  'A classificação usa apenas o tamanho; isso não determina '
                  'a segurança real de uma senha.',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
