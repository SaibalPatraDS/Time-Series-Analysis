# Data and Time Series Analysis using LSTM

This repository contains the data and code for performing time series analysis using Long Short-Term Memory (LSTM) models. The dataset used in this analysis contains information related to bike shares, along with various weather-related features.

## Dataset Description

The dataset used for this analysis contains the following fields:

- **timestamp**: Timestamp field for grouping the data.
- **cnt**: The count of new bike shares.
- **t1**: Real temperature in Celsius.
- **t2**: Temperature in Celsius "feels like".
- **hum**: Humidity in percentage.
- **wind_speed**: Wind speed in km/h.
- **weather_code**: Category of the weather.
- **is_holiday**: Boolean field indicating if it is a holiday (1) or non-holiday (0).
- **is_weekend**: Boolean field indicating if the day is a weekend (1) or not (0).
- **season**: Category field indicating meteorological seasons: 0 - spring, 1 - summer, 2 - fall, 3 - winter.
- **weather_code**: Category description of the weather.

### Weather Code Category Description

The "weather_code" field represents different weather conditions. The corresponding category descriptions are as follows:

1. Clear: Mostly clear but may have some values with haze/fog/patches of fog/fog in vicinity.
2. Scattered clouds/Few clouds: Some clouds in the sky but not covering the entire sky.
3. Broken clouds: Clouds covering a significant portion of the sky.
4. Cloudy: Overcast or mostly cloudy sky.
7. Rain/Light rain shower/Light rain: Rainfall or light rain showers.
10. Rain with thunderstorm: Rain accompanied by thunderstorms.
26. Snowfall: Snowfall.
94. Freezing Fog: Fog that causes freezing conditions.

## Usage

To use this repository, follow these steps:

1. Clone the repository to your local machine.
2. Ensure you have the necessary dependencies installed (Python, TensorFlow, etc.).
3. Run the provided code files or modify them to suit your specific analysis requirements.

## Examples

To demonstrate how to perform time series analysis using LSTM on this dataset, the repository provides example code files. You can find these files in the (`examples`)[https://github.com/SaibalPatraDS/Time-Series-Analysis/blob/main/Time%20Series%20Prediction%20using%20LSTM/time_series_analsis_using_LSTM.ipynb] directory.

## Contributing

Contributions to this repository are welcome. If you have any improvements, suggestions, or bug fixes, please submit a pull request.
