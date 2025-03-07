public class TemperatureConverter {
    // Convert Celsius to Fahrenheit
    public static Decimal celsiusToFahrenheit(Decimal celsius) {
        return (celsius * 9/5) + 32;
    }
    // Convert Fahrenheit to Celsius
    public static Decimal fahrenheitToCelsius(Decimal fahrenheit) {
        return (fahrenheit - 32) * 5/9;
    }
}