package com.unip.desenvolvimentomobile;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

public class MenuActivity extends Activity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_menu);

        findViewById(R.id.menu_registration).setOnClickListener(view ->
                startActivity(new Intent(this, PreferencesActivity.class)));
        findViewById(R.id.menu_consult).setOnClickListener(view ->
                startActivity(new Intent(this, PreferencesActivity.class)));
        findViewById(R.id.menu_settings).setOnClickListener(view ->
                startActivity(new Intent(this, SettingsActivity.class)));
        findViewById(R.id.menu_exit).setOnClickListener(view -> finish());
    }
}
