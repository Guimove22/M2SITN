package designPattern;

public class TestDesignPattern {
		

	public static void main(String[] args) {
	
		// class adapter
		System.out.println("Test de la classe Adapter");
		TemperatureInfo Temperature = new TemperatureAdaptateur();
		test(Temperature);
	
	}
	
	public static void test(TemperatureInfo Temperature) {
		Temperature.setTemperatureEnCelsius(0);
		System.out.println("Température en Celsius:" + Temperature.getTemperatureEnCelsius());
		System.out.println("Température en Farenheit:" + Temperature.getTemperatureEnFarenheit());
	
		Temperature.setTemperatureEnFarenheit(0);
		System.out.println("Température en Celsius:" + Temperature.getTemperatureEnCelsius());
		System.out.println("Température en Farenheit:" + Temperature.getTemperatureEnFarenheit());
	}

}