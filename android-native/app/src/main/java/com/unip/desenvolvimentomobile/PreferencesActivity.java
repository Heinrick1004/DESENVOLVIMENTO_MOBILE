package com.unip.desenvolvimentomobile;

import android.app.Activity;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

public class PreferencesActivity extends Activity {
    private static final String PREFERENCES_FILE = "perfil_local";
    private static final String KEY_USER_NAME = "nome_usuario";

    private EditText nameField;
    private TextView savedName;
    private SharedPreferences preferences;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_preferences);
        preferences = getSharedPreferences(PREFERENCES_FILE, MODE_PRIVATE);
        nameField = findViewById(R.id.name);
        savedName = findViewById(R.id.saved_name);
        findViewById(R.id.save_name).setOnClickListener(view -> saveName());
        showSavedName();
    }

    private void showSavedName() {
        String name = preferences.getString(KEY_USER_NAME, "");
        savedName.setText(name.isEmpty() ? "Nenhum nome salvo." : "Nome salvo: " + name);
        if (!name.isEmpty()) {
            nameField.setText(name);
        }
    }

    private void saveName() {
        String name = InputValidators.normalizeName(nameField.getText().toString());
        if (name.isEmpty()) {
            nameField.setError("Informe um nome.");
            nameField.requestFocus();
            return;
        }
        nameField.setError(null);
        preferences.edit().putString(KEY_USER_NAME, name).apply();
        savedName.setText("Nome salvo: " + name);
        Toast.makeText(this, "Nome salvo neste dispositivo.", Toast.LENGTH_SHORT).show();
    }
}
