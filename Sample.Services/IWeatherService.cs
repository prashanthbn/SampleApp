using Sample.Models;

namespace Sample.Services;

public interface IWeatherService
{
    public IEnumerable<WeatherForecast> GetWeather(int days);
}