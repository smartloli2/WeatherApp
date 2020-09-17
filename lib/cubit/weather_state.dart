part of 'weather_cubit.dart';

@immutable
abstract class WeatherState {
  const WeatherState();
}

class WeatherInitial extends WeatherState {
  const WeatherInitial();
}

class WeatherLoading extends WeatherState {
  const WeatherLoading();
}

class WeatherLoaded extends WeatherState with EquatableMixin {
  final Weather weather;
  const WeatherLoaded(this.weather);

  @override
  List<Object> get props {
    return [weather];
  }
}

class WeatherError extends WeatherState with EquatableMixin {
  final String message;

  WeatherError(this.message);

  @override
  List<Object> get props => [message];
}
