#URI_MONGO = "mongodb://admin:123456@127.0.0.1:27017"
URI_MONGO = "mongodb://root:e3wsd4rpo98ijnG6T24443s1qSed@localhost:27017"
DB_NAME = 'projeto_agro_ai'
LSTM_FORECAST_COLLECTION = 'lstm_forecast'

COLLECTIONS_EMW = {
    "solar" : "emw_solar_radiation_irradiance",
    "pressure" : "emw_atm_pressure_pressure",
    "rain" : "emw_rain_level_length",
    "wind" : "emw_average_wind_speed_velocity",
    "gust" : "emw_gust_wind_speed_velocity",
    "dir" : "emw_wind_direction_angle",
    "temp" : "ewm_temperatura",
    "humid" : "emw_humidity_humidity",
    "lum" : "emw_luminosity_lux",
    "uv" : "emw_uv_dimensionless"
}

API_IOT = "http://localhost:8002/iot/findbyparams"