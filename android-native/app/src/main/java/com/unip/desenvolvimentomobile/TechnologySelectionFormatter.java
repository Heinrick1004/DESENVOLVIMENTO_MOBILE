package com.unip.desenvolvimentomobile;

import java.util.List;

public final class TechnologySelectionFormatter {
    private TechnologySelectionFormatter() {
    }

    public static String format(List<String> selectedTechnologies) {
        if (selectedTechnologies == null || selectedTechnologies.isEmpty()) {
            return "Selecione ao menos uma tecnologia.";
        }
        StringBuilder message = new StringBuilder("Você conhece: ");
        for (int index = 0; index < selectedTechnologies.size(); index++) {
            if (index > 0) {
                message.append(", ");
            }
            message.append(selectedTechnologies.get(index));
        }
        return message.append('.').toString();
    }
}
