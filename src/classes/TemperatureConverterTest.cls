@isTest

public class TemperatureConverterTest {
    @isTest
    static void testCelsiusToFahrenheit() {
        Decimal celsius = 0;
        Decimal expectedFahrenheit = 32;
        Decimal actualFahrenheit = TemperatureConverter.celsiusToFahrenheit(celsius);
        System.assertEquals(expectedFahrenheit, actualFahrenheit, '0°C should be 32°F');
    }
    @isTest
    static void testFahrenheitToCelsius() {
        Decimal fahrenheit = 32;
        Decimal expectedCelsius = 0;
        Decimal actualCelsius = TemperatureConverter.fahrenheitToCelsius(fahrenheit);
        System.assertEquals(expectedCelsius, actualCelsius, '32°F should be 0°C');
    }

private class TemperatureConverterTest {
  @isTest static void testWarmTemp() {
    Decimal celsius = TemperatureConverter.FahrenheitToCelsius(70);
    System.assertEquals(21.11,celsius);
  }
  @isTest static void testFreezingPoint() {
    Decimal celsius = TemperatureConverter.FahrenheitToCelsius(32);
    System.assertEquals(0,celsius);
  }
  @isTest static void testBoilingPoint() {
    Decimal celsius = TemperatureConverter.FahrenheitToCelsius(212);
    System.assertEquals(100,celsius,'Boiling point temperature is not expected.');
  }
  @isTest static void testNegativeTemp() {
    Decimal celsius = TemperatureConverter.FahrenheitToCelsius(-10);
    System.assertEquals(-23.33,celsius);
  }
}
