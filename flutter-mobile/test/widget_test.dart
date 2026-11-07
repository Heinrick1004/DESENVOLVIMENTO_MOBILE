import 'package:desenvolvimento_mobile/main.dart';
import 'package:desenvolvimento_mobile/logic/password_classifier.dart';
import 'package:desenvolvimento_mobile/screens/roteiro03_login_screen.dart';
import 'package:desenvolvimento_mobile/screens/roteiro08_password_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('classifyPassword', () {
    test('handles empty and category boundaries', () {
      expect(classifyPassword(''), PasswordStrength.empty);
      expect(classifyPassword('x'), PasswordStrength.weak);
      expect(classifyPassword('12345'), PasswordStrength.weak);
      expect(classifyPassword('123456'), PasswordStrength.medium);
      expect(classifyPassword('123456789'), PasswordStrength.medium);
      expect(classifyPassword('1234567890'), PasswordStrength.strong);
      expect(classifyPassword('a very long sample'), PasswordStrength.strong);
    });
  });

  testWidgets('application navigates between the two activities',
      (tester) async {
    await tester.pumpWidget(const DesenvolvimentoMobileApp());
    expect(find.text('Acesso demonstrativo'), findsOneWidget);

    await tester.tap(find.text('Roteiro 8'));
    await tester.pumpAndSettle();
    expect(find.byType(Roteiro08PasswordScreen), findsOneWidget);
    await tester.tap(find.text('Roteiro 3'));
    await tester.pumpAndSettle();
    expect(find.byType(Roteiro03LoginScreen), findsOneWidget);
  });

  testWidgets('login reports missing fields and greets after valid input',
      (tester) async {
    await tester.pumpWidget(const MaterialApp(home: Roteiro03LoginScreen()));
    await tester.tap(find.text('Login'));
    await tester.pumpAndSettle();
    expect(find.text('Informe o e-mail.'), findsOneWidget);
    expect(find.text('Informe a senha.'), findsOneWidget);

    await tester.enterText(
      find.byKey(const Key('login-email')),
      'email-invalido',
    );
    await tester.enterText(find.byKey(const Key('login-password')), 'amostra');
    await tester.tap(find.text('Login'));
    await tester.pumpAndSettle();
    expect(find.text('Informe um e-mail válido.'), findsOneWidget);

    await tester.enterText(find.byKey(const Key('login-email')), 'ana@exemplo.com');
    await tester.enterText(find.byKey(const Key('login-password')), 'amostra');
    await tester.tap(find.text('Login'));
    await tester.pumpAndSettle();
    expect(find.textContaining('Bem-vindo, ana@exemplo.com!'), findsOneWidget);
  });

  testWidgets('password screen updates when input changes or is cleared',
      (tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: Roteiro08PasswordScreen()),
    );
    expect(find.text('Digite uma senha para analisar.'), findsOneWidget);

    await tester.enterText(
      find.byKey(const Key('password-strength-input')),
      '12345',
    );
    await tester.pump();
    expect(find.text('Senha Fraca'), findsOneWidget);

    await tester.enterText(
      find.byKey(const Key('password-strength-input')),
      '123456',
    );
    await tester.pump();
    expect(find.text('Senha Média'), findsOneWidget);

    await tester.enterText(
      find.byKey(const Key('password-strength-input')),
      '1234567890',
    );
    await tester.pump();
    expect(find.text('Senha Forte'), findsOneWidget);

    await tester.enterText(find.byKey(const Key('password-strength-input')), '');
    await tester.pump();
    expect(find.text('Digite uma senha para analisar.'), findsOneWidget);
  });
}
