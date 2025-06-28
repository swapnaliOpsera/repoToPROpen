public class TemperatureConverter {
    // Takes a Fahrenheit temperature and returns the Celsius equivalent test.
    public static Decimal FahrenheitToCelsius(Decimal fh) {
        Decimal cs = (fh - 32) * (5.0 / 9.0);
        return cs.setScale(2);
    }

    // Takes Celsius temperature and returns the Fahrenheit equivalent.
    public static Decimal CelsiusToFahrenheit(Decimal cs1) {
        Decimal fh1 = (cs1 * (9.0 / 5.0)) + 32;
        return fh1.setScale(2);
    }

    public static Decimal CelsiusToKelvin(Decimal cel) {
        Decimal kel = cel + 273.15;
        return kel.setScale(2);
    }

    public static Decimal MeterToCenti(Decimal mtr) {
        Decimal cm = mtr * 100;
        return cm.setScale(2);
    }
}