enum PasswordStrength { empty, weak, medium, strong }

PasswordStrength classifyPassword(String password) {
  if (password.isEmpty) return PasswordStrength.empty;
  if (password.length <= 5) return PasswordStrength.weak;
  if (password.length <= 9) return PasswordStrength.medium;
  return PasswordStrength.strong;
}

String passwordStrengthLabel(PasswordStrength strength) {
  switch (strength) {
    case PasswordStrength.empty:
      return 'Digite uma senha para analisar.';
    case PasswordStrength.weak:
      return 'Senha Fraca';
    case PasswordStrength.medium:
      return 'Senha Média';
    case PasswordStrength.strong:
      return 'Senha Forte';
  }
}
