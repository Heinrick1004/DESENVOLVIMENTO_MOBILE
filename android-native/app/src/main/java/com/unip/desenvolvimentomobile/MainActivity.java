package com.unip.desenvolvimentomobile;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

public class MainActivity extends Activity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        findViewById(R.id.open_login).setOnClickListener(view ->
                startActivity(new Intent(this, LoginActivity.class)));
        findViewById(R.id.open_menu).setOnClickListener(view ->
                startActivity(new Intent(this, MenuActivity.class)));
        findViewById(R.id.open_checkbox).setOnClickListener(view ->
                startActivity(new Intent(this, CheckboxActivity.class)));
        findViewById(R.id.open_preferences).setOnClickListener(view ->
                startActivity(new Intent(this, PreferencesActivity.class)));
        findViewById(R.id.open_validation).setOnClickListener(view ->
                startActivity(new Intent(this, ValidationActivity.class)));
    }
}
