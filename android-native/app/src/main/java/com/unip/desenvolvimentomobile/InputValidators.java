package com.unip.desenvolvimentomobile;

import java.util.regex.Pattern;

public final class InputValidators {
    private static final Pattern EMAIL_PATTERN =
            Pattern.compile("^[A-Za-z0-9+_-]+(?:\\.[A-Za-z0-9+_-]+)*@"
                    + "[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?"
                    + "(?:\\.[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?)+$");

    public enum ValidationError {
        NONE,
        EMAIL_REQUIRED,
        PASSWORD_REQUIRED,
        EMAIL_INVALID,
        PASSWORD_TOO_SHORT
    }

    private InputValidators() {
    }

    public static boolean isValidEmail(String email) {
        return email != null && EMAIL_PATTERN.matcher(email.trim()).matches();
    }

    public static ValidationError validateCredentials(String email, String password) {
        if (email == null || email.trim().isEmpty()) {
            return ValidationError.EMAIL_REQUIRED;
        }
        if (password == null || password.trim().isEmpty()) {
            return ValidationError.PASSWORD_REQUIRED;
        }
        if (!isValidEmail(email)) {
            return ValidationError.EMAIL_INVALID;
        }
        if (password.length() < 6) {
            return ValidationError.PASSWORD_TOO_SHORT;
        }
        return ValidationError.NONE;
    }

    public static String normalizeName(String name) {
        return name == null ? "" : name.trim();
    }
}
