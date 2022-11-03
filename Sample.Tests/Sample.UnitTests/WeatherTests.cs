using NUnit.Framework;

using Sample.Services;

namespace Sample.UnitTests;

public class WeatherTests
{
    [SetUp]
    public void Setup()
    {
    }

    [Test]
    public void GetWeather_Should_Return_Weather()
    {
        IWeatherService sut = new WeatherService();
        var result = sut.GetWeather(5);
        Assert.IsNotNull(result);
    }

}
