public class TemperatureConverter {

    // Convert Celsius to Fahrenheit 7March 2
    public static Decimal celsiusToFahrenheit(Decimal celsius) {
        return (celsius * 9/5) + 32;
    }
    // Convert Fahrenheit to Celsius
    public static Decimal fahrenheitToCelsius(Decimal fahrenheit) {
        return (fahrenheit - 32) * 5/9;
    }
}

  // Takes a Fahrenheit temperature and returns the Celsius equivalent.
  public static Decimal FahrenheitToCelsius(Decimal fh) {
    Decimal cs = (fh - 32) * 5/9;
    return cs.setScale(2);
  }
}

