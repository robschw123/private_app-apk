.class public Lcom/baidu/platform/core/i/b;
.super Lcom/baidu/platform/base/d;
.source "WeatherParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/baidu/platform/base/d;-><init>()V

    return-void
.end method

.method private a(Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "country"

    .line 125
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;->setCountry(Ljava/lang/String;)V

    const-string v0, "province"

    .line 126
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;->setProvince(Ljava/lang/String;)V

    const-string v0, "city"

    .line 127
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;->setCity(Ljava/lang/String;)V

    const-string v0, "name"

    .line 128
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;->setDistrictName(Ljava/lang/String;)V

    const-string v0, "id"

    .line 129
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;->setDistrictID(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "text"

    .line 158
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->setPhenomenon(Ljava/lang/String;)V

    const-string v0, "temp"

    .line 159
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->setTemperature(I)V

    const-string v0, "feels_like"

    .line 160
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->setSensoryTemp(I)V

    const-string v0, "rh"

    .line 161
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->setRelativeHumidity(I)V

    const-string/jumbo v0, "wind_class"

    .line 162
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->setWindPower(Ljava/lang/String;)V

    const-string/jumbo v0, "wind_dir"

    .line 163
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->setWindDirection(Ljava/lang/String;)V

    const-string v0, "uptime"

    .line 164
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->setUpdateTime(Ljava/lang/String;)V

    const-string v0, "co"

    .line 165
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->setCO(F)V

    const-string v0, "no2"

    .line 166
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->setNO2(I)V

    const-string v0, "pm10"

    .line 167
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->setPM10(I)V

    const-string v0, "pm25"

    .line 168
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->setPM2_5(I)V

    const-string v0, "clouds"

    .line 169
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->setClouds(I)V

    const-string v0, "aqi"

    .line 170
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->setAirQualityIndex(I)V

    const-string v0, "so2"

    .line 171
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->setSO2(I)V

    const-string/jumbo v0, "vis"

    .line 172
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->setVisibility(I)V

    const-string v0, "o3"

    .line 173
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->setO3(I)V

    const-string v0, "prec_1h"

    .line 174
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->setHourlyPrecipitation(F)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Lcom/baidu/mapapi/search/weather/WeatherResult;)Z
    .locals 1

    const-string v0, "status"

    .line 82
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/baidu/mapapi/search/weather/WeatherResult;->status:I

    const-string v0, "result"

    .line 84
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 90
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/baidu/platform/core/i/b;->b(Lorg/json/JSONObject;Lcom/baidu/mapapi/search/weather/WeatherResult;)Z

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/baidu/platform/core/i/b;->c(Lorg/json/JSONObject;Lcom/baidu/mapapi/search/weather/WeatherResult;)Z

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/baidu/platform/core/i/b;->e(Lorg/json/JSONObject;Lcom/baidu/mapapi/search/weather/WeatherResult;)Z

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/baidu/platform/core/i/b;->g(Lorg/json/JSONObject;Lcom/baidu/mapapi/search/weather/WeatherResult;)Z

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/baidu/platform/core/i/b;->d(Lorg/json/JSONObject;Lcom/baidu/mapapi/search/weather/WeatherResult;)Z

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/baidu/platform/core/i/b;->f(Lorg/json/JSONObject;Lcom/baidu/mapapi/search/weather/WeatherResult;)Z

    const/4 p1, 0x1

    return p1
.end method

.method private b(Lorg/json/JSONObject;Lcom/baidu/mapapi/search/weather/WeatherResult;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "location"

    .line 106
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 112
    :cond_1
    invoke-virtual {p2}, Lcom/baidu/mapapi/search/weather/WeatherResult;->getLocation()Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;

    move-result-object v0

    if-nez v0, :cond_2

    .line 113
    new-instance v0, Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;-><init>()V

    .line 114
    invoke-direct {p0, v0, p1}, Lcom/baidu/platform/core/i/b;->a(Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;Lorg/json/JSONObject;)V

    .line 115
    invoke-virtual {p2, v0}, Lcom/baidu/mapapi/search/weather/WeatherResult;->setLocation(Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;)V

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {p2}, Lcom/baidu/mapapi/search/weather/WeatherResult;->getLocation()Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;

    move-result-object p2

    .line 118
    invoke-direct {p0, p2, p1}, Lcom/baidu/platform/core/i/b;->a(Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;Lorg/json/JSONObject;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method private c(Lorg/json/JSONObject;Lcom/baidu/mapapi/search/weather/WeatherResult;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "now"

    .line 138
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 144
    :cond_1
    invoke-virtual {p2}, Lcom/baidu/mapapi/search/weather/WeatherResult;->getRealTimeWeather()Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;

    move-result-object v0

    if-nez v0, :cond_2

    .line 145
    new-instance v0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;-><init>()V

    .line 146
    invoke-direct {p0, v0, p1}, Lcom/baidu/platform/core/i/b;->a(Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;Lorg/json/JSONObject;)V

    .line 147
    invoke-virtual {p2, v0}, Lcom/baidu/mapapi/search/weather/WeatherResult;->setRealTimeWeather(Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;)V

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {p2}, Lcom/baidu/mapapi/search/weather/WeatherResult;->getRealTimeWeather()Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;

    move-result-object p2

    .line 150
    invoke-direct {p0, p2, p1}, Lcom/baidu/platform/core/i/b;->a(Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;Lorg/json/JSONObject;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method private d(Lorg/json/JSONObject;Lcom/baidu/mapapi/search/weather/WeatherResult;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v1, "forecasts"

    .line 183
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 188
    :cond_1
    invoke-virtual {p2}, Lcom/baidu/mapapi/search/weather/WeatherResult;->getForecasts()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, v1}, Lcom/baidu/mapapi/search/weather/WeatherResult;->setForecasts(Ljava/util/List;)V

    :cond_2
    const/4 v1, 0x0

    .line 193
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 195
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    :try_start_1
    new-instance v1, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;

    invoke-direct {v1}, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    .line 199
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    move-object v1, v2

    if-nez v1, :cond_3

    goto :goto_3

    .line 206
    :cond_3
    new-instance v2, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;

    invoke-direct {v2}, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;-><init>()V

    const-string v3, "date"

    .line 207
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->setDate(Ljava/lang/String;)V

    const-string v3, "high"

    .line 208
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->setHighestTemp(I)V

    const-string v3, "low"

    .line 209
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->setLowestTemp(I)V

    const-string v3, "text_day"

    .line 210
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->setPhenomenonDay(Ljava/lang/String;)V

    const-string v3, "text_night"

    .line 211
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->setPhenomenonNight(Ljava/lang/String;)V

    const-string/jumbo v3, "week"

    .line 212
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->setWeek(Ljava/lang/String;)V

    const-string/jumbo v3, "wd_day"

    .line 213
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->setWindDirectionDay(Ljava/lang/String;)V

    const-string/jumbo v3, "wc_day"

    .line 214
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->setWindPowerDay(Ljava/lang/String;)V

    const-string/jumbo v3, "wd_night"

    .line 215
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->setWindDirectionNight(Ljava/lang/String;)V

    const-string/jumbo v3, "wc_night"

    .line 216
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->setWindPowerNight(Ljava/lang/String;)V

    const-string v3, "aqi"

    .line 217
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->setAirQualityIndex(I)V

    .line 218
    invoke-virtual {p2}, Lcom/baidu/mapapi/search/weather/WeatherResult;->getForecasts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_4
    return v0
.end method

.method private e(Lorg/json/JSONObject;Lcom/baidu/mapapi/search/weather/WeatherResult;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    const-string v1, "alerts"

    .line 230
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 235
    :cond_1
    invoke-virtual {p2}, Lcom/baidu/mapapi/search/weather/WeatherResult;->getWeatherAlerts()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, v1}, Lcom/baidu/mapapi/search/weather/WeatherResult;->setWeatherAlerts(Ljava/util/List;)V

    :cond_2
    const/4 v1, 0x0

    .line 240
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 242
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 245
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    if-nez v1, :cond_3

    goto :goto_2

    .line 252
    :cond_3
    new-instance v2, Lcom/baidu/mapapi/search/weather/WeatherSearchAlerts;

    invoke-direct {v2}, Lcom/baidu/mapapi/search/weather/WeatherSearchAlerts;-><init>()V

    const-string v3, "desc"

    .line 253
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/weather/WeatherSearchAlerts;->setDesc(Ljava/lang/String;)V

    const-string v3, "level"

    .line 254
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/weather/WeatherSearchAlerts;->setLevel(Ljava/lang/String;)V

    const-string v3, "title"

    .line 255
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/weather/WeatherSearchAlerts;->setTitle(Ljava/lang/String;)V

    const-string v3, "type"

    .line 256
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/weather/WeatherSearchAlerts;->setType(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Lcom/baidu/mapapi/search/weather/WeatherResult;->getWeatherAlerts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_3
    return v0
.end method

.method private f(Lorg/json/JSONObject;Lcom/baidu/mapapi/search/weather/WeatherResult;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    const-string v1, "indexes"

    .line 269
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 274
    :cond_1
    invoke-virtual {p2}, Lcom/baidu/mapapi/search/weather/WeatherResult;->getLifeIndexes()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    .line 275
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, v1}, Lcom/baidu/mapapi/search/weather/WeatherResult;->setLifeIndexes(Ljava/util/List;)V

    :cond_2
    const/4 v1, 0x0

    .line 279
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 281
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 284
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    if-nez v1, :cond_3

    goto :goto_2

    .line 291
    :cond_3
    new-instance v2, Lcom/baidu/mapapi/search/weather/WeatherLifeIndexes;

    invoke-direct {v2}, Lcom/baidu/mapapi/search/weather/WeatherLifeIndexes;-><init>()V

    const-string v3, "brief"

    .line 292
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/weather/WeatherLifeIndexes;->setBrief(Ljava/lang/String;)V

    const-string v3, "detail"

    .line 293
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/weather/WeatherLifeIndexes;->setDetail(Ljava/lang/String;)V

    const-string v3, "name"

    .line 294
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/weather/WeatherLifeIndexes;->setName(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Lcom/baidu/mapapi/search/weather/WeatherResult;->getLifeIndexes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_3
    return v0
.end method

.method private g(Lorg/json/JSONObject;Lcom/baidu/mapapi/search/weather/WeatherResult;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v1, "forecast_hours"

    .line 307
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 312
    :cond_1
    invoke-virtual {p2}, Lcom/baidu/mapapi/search/weather/WeatherResult;->getForecastHours()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    .line 313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, v1}, Lcom/baidu/mapapi/search/weather/WeatherResult;->setForecastHours(Ljava/util/List;)V

    :cond_2
    const/4 v1, 0x0

    .line 317
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 319
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 322
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    if-nez v1, :cond_3

    goto :goto_2

    .line 329
    :cond_3
    new-instance v2, Lcom/baidu/mapapi/search/weather/WeatherSearchForecastForHours;

    invoke-direct {v2}, Lcom/baidu/mapapi/search/weather/WeatherSearchForecastForHours;-><init>()V

    const-string v3, "clouds"

    .line 330
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/weather/WeatherSearchForecastForHours;->setClouds(I)V

    const-string v3, "data_time"

    .line 331
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/weather/WeatherSearchForecastForHours;->setDataTime(Ljava/lang/String;)V

    const-string v3, "prec_1h"

    .line 332
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/weather/WeatherSearchForecastForHours;->setHourlyPrecipitation(I)V

    const-string v3, "rh"

    .line 333
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/weather/WeatherSearchForecastForHours;->setRelativeHumidity(I)V

    const-string v3, "temp_fc"

    .line 334
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/weather/WeatherSearchForecastForHours;->setTemperature(I)V

    const-string v3, "text"

    .line 335
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/weather/WeatherSearchForecastForHours;->setPhenomenon(Ljava/lang/String;)V

    const-string/jumbo v3, "wind_dir"

    .line 336
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/weather/WeatherSearchForecastForHours;->setWindDirection(Ljava/lang/String;)V

    const-string/jumbo v3, "wind_class"

    .line 337
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/weather/WeatherSearchForecastForHours;->setWindPower(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Lcom/baidu/mapapi/search/weather/WeatherResult;->getForecastHours()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_3
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/SearchResult;
    .locals 5

    .line 27
    new-instance v0, Lcom/baidu/mapapi/search/weather/WeatherResult;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/weather/WeatherResult;-><init>()V

    if-nez p1, :cond_0

    .line 29
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v0, Lcom/baidu/mapapi/search/weather/WeatherResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 35
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 37
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    if-eqz v1, :cond_7

    .line 41
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    const-string v2, "SDK_InnerError"

    .line 46
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 47
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "PermissionCheckError"

    .line 49
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 50
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->PERMISSION_UNFINISHED:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v0, Lcom/baidu/mapapi/search/weather/WeatherResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-object v0

    :cond_2
    const-string v3, "httpStateError"

    .line 54
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 55
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v1, "NETWORK_ERROR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "REQUEST_ERROR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 65
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->SEARCH_SERVER_INTERNAL_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v0, Lcom/baidu/mapapi/search/weather/WeatherResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_1

    .line 62
    :cond_3
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->REQUEST_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v0, Lcom/baidu/mapapi/search/weather/WeatherResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_1

    .line 59
    :cond_4
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NETWORK_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v0, Lcom/baidu/mapapi/search/weather/WeatherResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    :goto_1
    return-object v0

    :cond_5
    const/4 v2, 0x1

    .line 74
    invoke-virtual {p0, p1, v0, v2}, Lcom/baidu/platform/core/i/b;->a(Ljava/lang/String;Lcom/baidu/mapapi/search/core/SearchResult;Z)Z

    move-result p1

    if-nez p1, :cond_6

    .line 75
    invoke-direct {p0, v1, v0}, Lcom/baidu/platform/core/i/b;->a(Lorg/json/JSONObject;Lcom/baidu/mapapi/search/weather/WeatherResult;)Z

    :cond_6
    return-object v0

    .line 42
    :cond_7
    :goto_2
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v0, Lcom/baidu/mapapi/search/weather/WeatherResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-object v0
.end method

.method public a(Lcom/baidu/mapapi/search/core/SearchResult;Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 356
    instance-of v0, p2, Lcom/baidu/mapapi/search/weather/OnGetWeatherResultListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    check-cast p2, Lcom/baidu/mapapi/search/weather/OnGetWeatherResultListener;

    check-cast p1, Lcom/baidu/mapapi/search/weather/WeatherResult;

    invoke-interface {p2, p1}, Lcom/baidu/mapapi/search/weather/OnGetWeatherResultListener;->onGetWeatherResultListener(Lcom/baidu/mapapi/search/weather/WeatherResult;)V

    :cond_1
    :goto_0
    return-void
.end method
