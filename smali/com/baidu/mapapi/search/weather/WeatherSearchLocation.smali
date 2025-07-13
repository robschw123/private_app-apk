.class public Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;
.super Ljava/lang/Object;
.source "WeatherSearchLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/baidu/mapapi/search/weather/f;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/weather/f;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;->a:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;->b:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;->c:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;->d:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrictID()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrictName()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;->c:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;->a:Ljava/lang/String;

    return-void
.end method

.method public setDistrictID(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;->e:Ljava/lang/String;

    return-void
.end method

.method public setDistrictName(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;->d:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;->b:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 39
    iget-object p2, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object p2, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object p2, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object p2, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchLocation;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
