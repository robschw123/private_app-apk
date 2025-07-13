.class public Lcom/baidu/platform/core/i/c;
.super Lcom/baidu/platform/base/e;
.source "WeatherRequest.java"


# instance fields
.field b:Lcom/baidu/mapapi/search/weather/WeatherSearchOption;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/search/weather/WeatherSearchOption;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/baidu/platform/base/e;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/baidu/platform/core/i/c;->b:Lcom/baidu/mapapi/search/weather/WeatherSearchOption;

    .line 22
    invoke-direct {p0, p1}, Lcom/baidu/platform/core/i/c;->a(Lcom/baidu/mapapi/search/weather/WeatherSearchOption;)V

    return-void
.end method

.method private a(Lcom/baidu/mapapi/CoordType;)Ljava/lang/String;
    .locals 1

    .line 99
    sget-object v0, Lcom/baidu/platform/core/i/d;->b:[I

    invoke-virtual {p1}, Lcom/baidu/mapapi/CoordType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "gcj02"

    goto :goto_0

    :cond_1
    const-string p1, "bd09ll"

    :goto_0
    return-object p1
.end method

.method private a(Lcom/baidu/mapapi/search/base/LanguageType;)Ljava/lang/String;
    .locals 1

    .line 115
    sget-object v0, Lcom/baidu/platform/core/i/d;->c:[I

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/base/LanguageType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "cn"

    goto :goto_0

    :cond_1
    const-string p1, "en"

    :goto_0
    return-object p1
.end method

.method private a(Lcom/baidu/mapapi/search/weather/WeatherDataType;)Ljava/lang/String;
    .locals 1

    .line 71
    sget-object v0, Lcom/baidu/platform/core/i/d;->a:[I

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/weather/WeatherDataType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const-string p1, ""

    goto :goto_0

    :pswitch_0
    const-string p1, "all"

    goto :goto_0

    :pswitch_1
    const-string p1, "alert"

    goto :goto_0

    :pswitch_2
    const-string p1, "index"

    goto :goto_0

    :pswitch_3
    const-string p1, "fc_hour"

    goto :goto_0

    :pswitch_4
    const-string p1, "fc"

    goto :goto_0

    :pswitch_5
    const-string p1, "now"

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/baidu/mapapi/search/weather/WeatherSearchOption;)V
    .locals 5

    .line 27
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/weather/WeatherSearchOption;->getDistrictID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/baidu/platform/core/i/c;->a:Lcom/baidu/platform/util/a;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/weather/WeatherSearchOption;->getDistrictID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "district_id"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/weather/WeatherSearchOption;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 32
    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/weather/WeatherSearchOption;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/weather/WeatherSearchOption;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    iget-wide v3, v3, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 33
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v1

    sget-object v2, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v1, v2, :cond_1

    .line 34
    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    .line 36
    :cond_1
    iget-object v1, p0, Lcom/baidu/platform/core/i/c;->a:Lcom/baidu/platform/util/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "location"

    invoke-virtual {v1, v2, v0}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 38
    iget-object v0, p0, Lcom/baidu/platform/core/i/c;->a:Lcom/baidu/platform/util/a;

    sget-object v1, Lcom/baidu/mapapi/CoordType;->BD09LL:Lcom/baidu/mapapi/CoordType;

    invoke-direct {p0, v1}, Lcom/baidu/platform/core/i/c;->a(Lcom/baidu/mapapi/CoordType;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "coordtype"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 41
    :cond_2
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/weather/WeatherSearchOption;->getDataType()Lcom/baidu/mapapi/search/weather/WeatherDataType;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 42
    iget-object v0, p0, Lcom/baidu/platform/core/i/c;->a:Lcom/baidu/platform/util/a;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/weather/WeatherSearchOption;->getDataType()Lcom/baidu/mapapi/search/weather/WeatherDataType;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/platform/core/i/c;->a(Lcom/baidu/mapapi/search/weather/WeatherDataType;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data_type"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 45
    :cond_3
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/weather/WeatherSearchOption;->getLanguageType()Lcom/baidu/mapapi/search/base/LanguageType;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 46
    iget-object v0, p0, Lcom/baidu/platform/core/i/c;->a:Lcom/baidu/platform/util/a;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/weather/WeatherSearchOption;->getLanguageType()Lcom/baidu/mapapi/search/base/LanguageType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/baidu/platform/core/i/c;->a(Lcom/baidu/mapapi/search/base/LanguageType;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "language"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    :cond_4
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/platform/domain/c;)Ljava/lang/String;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/baidu/platform/core/i/c;->b:Lcom/baidu/mapapi/search/weather/WeatherSearchOption;

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 63
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/weather/WeatherSearchOption;->getServerType()Lcom/baidu/mapapi/search/weather/WeatherServerType;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/search/weather/WeatherServerType;->LANGUAGE_SERVER_TYPE_ABROAD:Lcom/baidu/mapapi/search/weather/WeatherServerType;

    if-ne v0, v1, :cond_1

    .line 64
    invoke-interface {p1}, Lcom/baidu/platform/domain/c;->t()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 66
    :cond_1
    invoke-interface {p1}, Lcom/baidu/platform/domain/c;->s()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
