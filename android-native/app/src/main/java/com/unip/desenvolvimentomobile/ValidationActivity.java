package com.unip.desenvolvimentomobile;

import android.app.Activity;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.TextView;

public class ValidationActivity extends Activity {
    private EditText emailField;
    private EditText passwordField;
    private TextView feedback;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_validation);
        emailField = findViewById(R.id.validation_email);
        passwordField = findViewById(R.id.validation_password);
        feedback = findViewById(R.id.validation_feedback);
        findViewById(R.id.validate).setOnClickListener(view -> validate());
    }

    private void validate() {
        emailField.setError(null);
        passwordField.setError(null);
        InputValidators.ValidationError error = InputValidators.validateCredentials(
                emailField.getText().toString(), passwordField.getText().toString());
        switch (error) {
            case EMAIL_REQUIRED:
                emailField.setError("Informe o e-mail.");
                emailField.requestFocus();
                feedback.setText("O campo de e-mail está vazio.");
                break;
            case PASSWORD_REQUIRED:
                passwordField.setError("Informe a senha.");
                passwordField.requestFocus();
                feedback.setText("O campo de senha está vazio.");
                break;
            case EMAIL_INVALID:
                emailField.setError("Informe um e-mail válido.");
                emailField.requestFocus();
                feedback.setText("O formato do e-mail é inválido.");
                break;
            case PASSWORD_TOO_SHORT:
                passwordField.setError("Use ao menos seis caracteres.");
                passwordField.requestFocus();
                feedback.setText("A senha tem menos de seis caracteres.");
                break;
            case NONE:
                feedback.setText("Dados aprovados nas validações locais; isto não é autenticação.");
                break;
        }
    }
}
