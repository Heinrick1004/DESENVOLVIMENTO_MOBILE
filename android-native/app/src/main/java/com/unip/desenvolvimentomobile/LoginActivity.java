package com.unip.desenvolvimentomobile;

import android.app.Activity;
import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class LoginActivity extends Activity {
    private EditText emailField;
    private EditText passwordField;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        emailField = findViewById(R.id.email);
        passwordField = findViewById(R.id.password);
        Button enterButton = findViewById(R.id.enter);
        enterButton.setOnClickListener(view -> submit());
    }

    private void submit() {
        String email = emailField.getText().toString();
        String password = passwordField.getText().toString();
        emailField.setError(null);
        passwordField.setError(null);
        InputValidators.ValidationError error =
                InputValidators.validateCredentials(email, password);

        if (error == InputValidators.ValidationError.EMAIL_REQUIRED) {
            emailField.setError("Informe o e-mail.");
            emailField.requestFocus();
        } else if (error == InputValidators.ValidationError.PASSWORD_REQUIRED) {
            passwordField.setError("Informe a senha.");
            passwordField.requestFocus();
        } else if (error == InputValidators.ValidationError.EMAIL_INVALID) {
            emailField.setError("Informe um e-mail válido.");
            emailField.requestFocus();
        } else if (error == InputValidators.ValidationError.PASSWORD_TOO_SHORT) {
            passwordField.setError("A senha deve ter ao menos seis caracteres.");
            passwordField.requestFocus();
        } else {
            Toast.makeText(this, "Demonstração local concluída; não houve autenticação.",
                    Toast.LENGTH_LONG).show();
        }
    }
}
