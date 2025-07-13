.class public Lcom/baidu/mapapi/search/weather/WeatherSearch;
.super Lcom/baidu/mapapi/search/core/n;
.source "WeatherSearch.java"


# instance fields
.field a:Lcom/baidu/platform/core/i/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/n;-><init>()V

    .line 19
    new-instance v0, Lcom/baidu/platform/core/i/e;

    invoke-direct {v0}, Lcom/baidu/platform/core/i/e;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearch;->a:Lcom/baidu/platform/core/i/a;

    return-void
.end method

.method public static newInstance()Lcom/baidu/mapapi/search/weather/WeatherSearch;
    .locals 1

    .line 27
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->init()V

    .line 28
    new-instance v0, Lcom/baidu/mapapi/search/weather/WeatherSearch;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/weather/WeatherSearch;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearch;->a:Lcom/baidu/platform/core/i/a;

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0}, Lcom/baidu/platform/core/i/a;->a()V

    .line 73
    :cond_0
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    return-void
.end method

.method public request(Lcom/baidu/mapapi/search/weather/WeatherSearchOption;)Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearch;->a:Lcom/baidu/platform/core/i/a;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 45
    invoke-interface {v0, p1}, Lcom/baidu/platform/core/i/a;->a(Lcom/baidu/mapapi/search/weather/WeatherSearchOption;)Z

    move-result p1

    return p1

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: option can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: searcher is null, please call newInstance first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWeatherSearchResultListener(Lcom/baidu/mapapi/search/weather/OnGetWeatherResultListener;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearch;->a:Lcom/baidu/platform/core/i/a;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 62
    invoke-interface {v0, p1}, Lcom/baidu/platform/core/i/a;->a(Lcom/baidu/mapapi/search/weather/OnGetWeatherResultListener;)V

    return-void

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: listener can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: searcher is null, please call newInstance first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
