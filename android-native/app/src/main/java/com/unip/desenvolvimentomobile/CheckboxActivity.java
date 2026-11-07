package com.unip.desenvolvimentomobile;

import android.app.Activity;
import android.os.Bundle;
import android.widget.CheckBox;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.List;

public class CheckboxActivity extends Activity {
    private CheckBox javaCheckbox;
    private CheckBox kotlinCheckbox;
    private CheckBox flutterCheckbox;
    private CheckBox pythonCheckbox;
    private TextView result;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_checkbox);
        javaCheckbox = findViewById(R.id.checkbox_java);
        kotlinCheckbox = findViewById(R.id.checkbox_kotlin);
        flutterCheckbox = findViewById(R.id.checkbox_flutter);
        pythonCheckbox = findViewById(R.id.checkbox_python);
        result = findViewById(R.id.checkbox_result);
        findViewById(R.id.checkbox_verify).setOnClickListener(view -> verifySelection());
    }

    private void verifySelection() {
        List<String> selected = new ArrayList<>();
        addIfChecked(selected, javaCheckbox, getString(R.string.checkbox_java));
        addIfChecked(selected, kotlinCheckbox, getString(R.string.checkbox_kotlin));
        addIfChecked(selected, flutterCheckbox, getString(R.string.checkbox_flutter));
        addIfChecked(selected, pythonCheckbox, getString(R.string.checkbox_python));
        result.setText(TechnologySelectionFormatter.format(selected));
    }

    private static void addIfChecked(List<String> selected, CheckBox checkbox, String label) {
        if (checkbox.isChecked()) {
            selected.add(label);
        }
    }
}
