import 'package:flutter/material.dart';

class Roteiro03LoginScreen extends StatefulWidget {
  const Roteiro03LoginScreen({super.key});

  @override
  State<Roteiro03LoginScreen> createState() => _Roteiro03LoginScreenState();
}

class _Roteiro03LoginScreenState extends State<Roteiro03LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  String? _emailError;
  String? _passwordError;
  String? _feedback;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submit() {
    final email = _emailController.text.trim();
    final password = _passwordController.text;
    final emailError = email.isEmpty
        ? 'Informe o e-mail.'
        : !RegExp(
            r'^[A-Za-z0-9+_-]+(?:\.[A-Za-z0-9+_-]+)*@[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?(?:\.[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?)+$',
          ).hasMatch(email)
            ? 'Informe um e-mail válido.'
            : null;
    final passwordError = password.isEmpty ? 'Informe a senha.' : null;
    setState(() {
      _emailError = emailError;
      _passwordError = passwordError;
      _feedback = emailError == null && passwordError == null
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
            constraints: const BoxConstraints(maxWidth: 480),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Icon(Icons.phone_android, size: 52),
                const SizedBox(height: 12),
                Text(
                  'Acesso demonstrativo',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 24),
                TextField(
                  key: const Key('login-email'),
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  autofillHints: const [AutofillHints.email],
                  decoration: const InputDecoration(
                    labelText: 'E-mail',
                    prefixIcon: Icon(Icons.email_outlined),
                  ).copyWith(errorText: _emailError),
                  onChanged: (_) {
                    if (_emailError != null || _feedback != null) {
                      setState(() {
                        _emailError = null;
                        _feedback = null;
                      });
                    }
                  },
                ),
                const SizedBox(height: 16),
                TextField(
                  key: const Key('login-password'),
                  controller: _passwordController,
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    labelText: 'Senha',
                    prefixIcon: Icon(Icons.lock_outline),
                  ).copyWith(errorText: _passwordError),
                  onChanged: (_) {
                    if (_passwordError != null || _feedback != null) {
                      setState(() {
                        _passwordError = null;
                        _feedback = null;
                      });
                    }
                  },
                  onSubmitted: (_) => _submit(),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _submit,
                  child: const Text('Login'),
                ),
                if (_feedback != null) ...[
                  const SizedBox(height: 16),
                  Semantics(
                    liveRegion: true,
                    child: Text(
                      _feedback!,
                      key: const Key('login-feedback'),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
