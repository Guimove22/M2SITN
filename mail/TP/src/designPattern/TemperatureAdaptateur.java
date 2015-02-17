package designPattern;
//classe Adapter
public class TemperatureAdaptateur extends ThermometreCelsius implements TemperatureInfo {
	@Override
	public double getTemperatureEnCelsius() {
		return temperatureEnCelsius;
	}
	@Override
	public double getTemperatureEnFarenheit() {
		return celsiusToFarenheit(temperatureEnCelsius);
	}
	@Override
	public void setTemperatureEnCelsius(double temperatureInC) {
		this.temperatureEnCelsius = temperatureInC;
	}
	@Override
	public void setTemperatureEnFarenheit(double temperatureInF) {
		this.temperatureEnCelsius = farenheitToCelsius(temperatureInF);
	}
	private double farenheitToCelsius(double f) {
		return ((f - 32) * 5 / 9);
	}
	private double celsiusToFarenheit(double c) {
		return ((c * 9 / 5) + 32);
	}
}