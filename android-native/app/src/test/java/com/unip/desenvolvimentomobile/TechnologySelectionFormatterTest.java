package com.unip.desenvolvimentomobile;

import org.junit.Test;

import java.util.Arrays;
import java.util.Collections;

import static org.junit.Assert.assertEquals;

public class TechnologySelectionFormatterTest {
    @Test
    public void requestsASelectionWhenNoneWasChosen() {
        assertEquals("Selecione ao menos uma tecnologia.",
                TechnologySelectionFormatter.format(Collections.emptyList()));
        assertEquals("Selecione ao menos uma tecnologia.",
                TechnologySelectionFormatter.format(null));
    }

    @Test
    public void formatsOneOrManySelections() {
        assertEquals("Você conhece: Java.",
                TechnologySelectionFormatter.format(Collections.singletonList("Java")));
        assertEquals("Você conhece: Kotlin.",
                TechnologySelectionFormatter.format(Collections.singletonList("Kotlin")));
        assertEquals("Você conhece: Flutter.",
                TechnologySelectionFormatter.format(Collections.singletonList("Flutter")));
        assertEquals("Você conhece: Python.",
                TechnologySelectionFormatter.format(Collections.singletonList("Python")));
        assertEquals("Você conhece: Java, Kotlin.",
                TechnologySelectionFormatter.format(Arrays.asList("Java", "Kotlin")));
        assertEquals("Você conhece: Java, Kotlin, Flutter.",
                TechnologySelectionFormatter.format(Arrays.asList("Java", "Kotlin", "Flutter")));
        assertEquals("Você conhece: Java, Kotlin, Flutter, Python.",
                TechnologySelectionFormatter.format(
                        Arrays.asList("Java", "Kotlin", "Flutter", "Python")));
    }
}
