import 'package:flutter/material.dart';

import '../logic/password_classifier.dart';

class Roteiro08PasswordScreen extends StatefulWidget {
  const Roteiro08PasswordScreen({super.key});

  @override
  State<Roteiro08PasswordScreen> createState() =>
      _Roteiro08PasswordScreenState();
}

class _Roteiro08PasswordScreenState extends State<Roteiro08PasswordScreen> {
  final _passwordController = TextEditingController();
  PasswordStrength _strength = PasswordStrength.empty;

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  Color _strengthColor(BuildContext context) {
    switch (_strength) {
      case PasswordStrength.empty:
        return Theme.of(context).colorScheme.onSurfaceVariant;
      case PasswordStrength.weak:
        return Colors.red.shade700;
      case PasswordStrength.medium:
        return Colors.orange.shade800;
      case PasswordStrength.strong:
        return Colors.green.shade700;
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = _strengthColor(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Roteiro 8 — Verificador de senha')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 480),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Icon(Icons.password, size: 52),
                const SizedBox(height: 12),
                Text(
                  'Verificador de senha',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 24),
                TextField(
                  key: const Key('password-strength-input'),
                  controller: _passwordController,
                  obscureText: true,
                  onChanged: (value) {
                    setState(() => _strength = classifyPassword(value));
                  },
                  decoration: const InputDecoration(
                    labelText: 'Senha para análise',
                    helperText: 'O texto não é salvo nem enviado.',
                    prefixIcon: Icon(Icons.lock_outline),
                  ),
                ),
                const SizedBox(height: 24),
                Semantics(
                  liveRegion: true,
                  child: Text(
                    passwordStrengthLabel(_strength),
                    key: const Key('password-strength-result'),
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: color,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'Classificação deste exercício baseada somente no tamanho: '
                  '1–5 caracteres (fraca), 6–9 (média), 10 ou mais (forte). '
                  'Comprimento isolado não determina a segurança real.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
