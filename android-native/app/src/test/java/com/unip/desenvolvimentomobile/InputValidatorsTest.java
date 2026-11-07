package com.unip.desenvolvimentomobile;

import org.junit.Test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

public class InputValidatorsTest {
    @Test
    public void validatesEmailFormat() {
        assertTrue(InputValidators.isValidEmail("aluno@exemplo.com"));
        assertFalse(InputValidators.isValidEmail("sem-arroba"));
        assertFalse(InputValidators.isValidEmail("aluno@dominio"));
        assertFalse(InputValidators.isValidEmail("aluno@dominio..com"));
    }

    @Test
    public void validatesRequiredFieldsAndMinimumPasswordLength() {
        assertEquals(InputValidators.ValidationError.EMAIL_REQUIRED,
                InputValidators.validateCredentials("  ", "123456"));
        assertEquals(InputValidators.ValidationError.PASSWORD_REQUIRED,
                InputValidators.validateCredentials("a@b.com", ""));
        assertEquals(InputValidators.ValidationError.PASSWORD_REQUIRED,
                InputValidators.validateCredentials("a@b.com", "      "));
        assertEquals(InputValidators.ValidationError.PASSWORD_TOO_SHORT,
                InputValidators.validateCredentials("a@b.com", "12345"));
        assertEquals(InputValidators.ValidationError.NONE,
                InputValidators.validateCredentials("a@b.com", "123456"));
    }

    @Test
    public void trimsNameWithoutPersistingEmptyValues() {
        assertEquals("Ana", InputValidators.normalizeName("  Ana  "));
        assertEquals("", InputValidators.normalizeName("  "));
        assertEquals("", InputValidators.normalizeName(null));
    }
}
