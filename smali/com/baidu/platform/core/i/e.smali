.class public Lcom/baidu/platform/core/i/e;
.super Lcom/baidu/platform/base/a;
.source "WeatherSearchImp.java"

# interfaces
.implements Lcom/baidu/platform/core/i/a;


# instance fields
.field private b:Lcom/baidu/mapapi/search/weather/OnGetWeatherResultListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/baidu/platform/base/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/baidu/platform/core/i/e;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/baidu/platform/core/i/e;->b:Lcom/baidu/mapapi/search/weather/OnGetWeatherResultListener;

    .line 33
    iget-object v0, p0, Lcom/baidu/platform/core/i/e;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public a(Lcom/baidu/mapapi/search/weather/OnGetWeatherResultListener;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/baidu/platform/core/i/e;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 25
    iput-object p1, p0, Lcom/baidu/platform/core/i/e;->b:Lcom/baidu/mapapi/search/weather/OnGetWeatherResultListener;

    .line 26
    iget-object p1, p0, Lcom/baidu/platform/core/i/e;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public a(Lcom/baidu/mapapi/search/weather/WeatherSearchOption;)Z
    .locals 2

    .line 15
    new-instance v0, Lcom/baidu/platform/core/i/b;

    invoke-direct {v0}, Lcom/baidu/platform/core/i/b;-><init>()V

    .line 16
    sget-object v1, Lcom/baidu/platform/base/SearchType;->t:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/core/i/b;->a(Lcom/baidu/platform/base/SearchType;)V

    .line 17
    new-instance v1, Lcom/baidu/platform/core/i/c;

    invoke-direct {v1, p1}, Lcom/baidu/platform/core/i/c;-><init>(Lcom/baidu/mapapi/search/weather/WeatherSearchOption;)V

    .line 19
    iget-object p1, p0, Lcom/baidu/platform/core/i/e;->b:Lcom/baidu/mapapi/search/weather/OnGetWeatherResultListener;

    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/platform/core/i/e;->a(Lcom/baidu/platform/base/e;Ljava/lang/Object;Lcom/baidu/platform/base/d;)Z

    move-result p1

    return p1
.end method
