public class WeatherStation {
    public static void main(String[] args) {
        WeatherData weatherData = new WeatherData();
        CurrentConditionsDisplay currentConditionsDisplay = new CurrentConditionsDisplay(weatherData);
        weatherData.setMeasurements(35, 65);
        weatherData.setMeasurements(41, 59);
        weatherData.setMeasurements(35, 40);
        weatherData.setMeasurements(19, 70);
        weatherData.setMeasurements(25, 60);
    }
}