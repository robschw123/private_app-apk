.class public Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;
.super Ljava/lang/Object;
.source "WeatherSearchForecasts.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Lcom/baidu/mapapi/search/weather/e;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/weather/e;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->a:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->b:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->c:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->d:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->e:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->f:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->g:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->h:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->i:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAirQualityIndex()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->k:I

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getHighestTemp()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->d:I

    return v0
.end method

.method public getLowestTemp()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->c:I

    return v0
.end method

.method public getPhenomenonDay()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getPhenomenonNight()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getWeek()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getWindDirectionDay()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getWindDirectionNight()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getWindPowerDay()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getWindPowerNight()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->f:Ljava/lang/String;

    return-object v0
.end method

.method public setAirQualityIndex(I)V
    .locals 0

    .line 199
    iput p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->k:I

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->a:Ljava/lang/String;

    return-void
.end method

.method public setHighestTemp(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->d:I

    return-void
.end method

.method public setLowestTemp(I)V
    .locals 0

    .line 119
    iput p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->c:I

    return-void
.end method

.method public setPhenomenonDay(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->i:Ljava/lang/String;

    return-void
.end method

.method public setPhenomenonNight(Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->j:Ljava/lang/String;

    return-void
.end method

.method public setWeek(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->b:Ljava/lang/String;

    return-void
.end method

.method public setWindDirectionDay(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->g:Ljava/lang/String;

    return-void
.end method

.method public setWindDirectionNight(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->h:Ljava/lang/String;

    return-void
.end method

.method public setWindPowerDay(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->e:Ljava/lang/String;

    return-void
.end method

.method public setWindPowerNight(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->f:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 62
    iget-object p2, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget p2, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget p2, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object p2, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object p2, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object p2, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object p2, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object p2, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchForecasts;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
