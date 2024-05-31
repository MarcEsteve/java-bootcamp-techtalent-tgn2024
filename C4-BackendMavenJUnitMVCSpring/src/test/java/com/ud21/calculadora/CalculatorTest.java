package com.ud21.calculadora;

import org.junit.jupiter.api.*;

import static org.junit.jupiter.api.Assertions.*;

class CalculatorTest {

    private Calculator calculator;

    @BeforeAll
    static void setupAll() {
        System.out.println("Debería ejecutarse una vez antes de todas las pruebas.");
    }

    @BeforeEach
    void setup() {
        calculator = new Calculator();
        System.out.println("Debería ejecutarse antes de cada prueba.");
    }

    @Test
    void testAdd() {
        assertEquals(5, calculator.add(2, 3), "2 + 3 debería ser 5");
    }

    @Test
    void testSubtract() {
        assertEquals(1, calculator.subtract(3, 2), "3 - 2 debería ser 1");
    }

    @Test
    @Disabled("Esta prueba está deshabilitada para demostrar @Disabled")
    void testMultiply() {
        assertEquals(6, calculator.multiply(2, 3), "2 * 3 debería ser 6");
    }

    @AfterEach
    void tearDown() {
        System.out.println("Debería ejecutarse después de cada prueba.");
    }

    @AfterAll
    static void tearDownAll() {
        System.out.println("Debería ejecutarse una vez después de todas las pruebas.");
    }
}
