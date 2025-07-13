.class public Lcom/baidu/mapapi/search/weather/WeatherResult;
.super Lcom/baidu/mapapi/search/core/SearchResult;
.source "WeatherResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/weather/WeatherResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;

.field private b:Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/weather/WeatherSearchForecastForHours;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/weather/WeatherLifeIndexes;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/weather/WeatherSearchAlerts;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/baidu/mapapi/search/weather/b;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/weather/b;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/weather/WeatherResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>(Landroid/os/Parcel;)V

    .line 38
    const-class v0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;

    iput-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherResult;->a:Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;

    .line 39
    const-class v0, Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;

    iput-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherResult;->b:Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;

    .line 40
    sget-object v0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherResult;->c:Ljava/util/List;

    .line 41
    sget-object v0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecastForHours;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherResult;->d:Ljava/util/List;

    .line 42
    sget-object v0, Lcom/baidu/mapapi/search/weather/WeatherLifeIndexes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherResult;->e:Ljava/util/List;

    .line 43
    sget-object v0, Lcom/baidu/mapapi/search/weather/WeatherSearchAlerts;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/search/weather/WeatherResult;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getForecastHours()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/weather/WeatherSearchForecastForHours;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherResult;->d:Ljava/util/List;

    return-object v0
.end method

.method public getForecasts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherResult;->c:Ljava/util/List;

    return-object v0
.end method

.method public getLifeIndexes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/weather/WeatherLifeIndexes;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherResult;->e:Ljava/util/List;

    return-object v0
.end method

.method public getLocation()Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherResult;->b:Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;

    return-object v0
.end method

.method public getRealTimeWeather()Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherResult;->a:Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;

    return-object v0
.end method

.method public getWeatherAlerts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/weather/WeatherSearchAlerts;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherResult;->f:Ljava/util/List;

    return-object v0
.end method

.method public setForecastHours(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/weather/WeatherSearchForecastForHours;",
            ">;)V"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/baidu/mapapi/search/weather/WeatherResult;->d:Ljava/util/List;

    return-void
.end method

.method public setForecasts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;",
            ">;)V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/baidu/mapapi/search/weather/WeatherResult;->c:Ljava/util/List;

    return-void
.end method

.method public setLifeIndexes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/weather/WeatherLifeIndexes;",
            ">;)V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/baidu/mapapi/search/weather/WeatherResult;->e:Ljava/util/List;

    return-void
.end method

.method public setLocation(Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/baidu/mapapi/search/weather/WeatherResult;->b:Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;

    return-void
.end method

.method public setRealTimeWeather(Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/baidu/mapapi/search/weather/WeatherResult;->a:Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;

    return-void
.end method

.method public setWeatherAlerts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/weather/WeatherSearchAlerts;",
            ">;)V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/baidu/mapapi/search/weather/WeatherResult;->f:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 48
    invoke-super {p0, p1, p2}, Lcom/baidu/mapapi/search/core/SearchResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 49
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherResult;->a:Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 50
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherResult;->b:Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 51
    iget-object p2, p0, Lcom/baidu/mapapi/search/weather/WeatherResult;->c:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 52
    iget-object p2, p0, Lcom/baidu/mapapi/search/weather/WeatherResult;->d:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 53
    iget-object p2, p0, Lcom/baidu/mapapi/search/weather/WeatherResult;->e:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 54
    iget-object p2, p0, Lcom/baidu/mapapi/search/weather/WeatherResult;->f:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
