.class public Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;
.super Ljava/lang/Object;
.source "WeatherSearchRealTime.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:I

.field private i:F

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    new-instance v0, Lcom/baidu/mapapi/search/weather/g;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/weather/g;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->a:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->b:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->c:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->d:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->e:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->f:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->g:Ljava/lang/String;

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

    .line 245
    iget v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->o:I

    return v0
.end method

.method public getCO()F
    .locals 1

    .line 265
    iget v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->q:F

    return v0
.end method

.method public getClouds()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->h:I

    return v0
.end method

.method public getHourlyPrecipitation()F
    .locals 1

    .line 185
    iget v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->i:F

    return v0
.end method

.method public getNO2()I
    .locals 1

    .line 225
    iget v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->m:I

    return v0
.end method

.method public getO3()I
    .locals 1

    .line 205
    iget v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->k:I

    return v0
.end method

.method public getPM10()I
    .locals 1

    .line 255
    iget v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->p:I

    return v0
.end method

.method public getPM2_5()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->l:I

    return v0
.end method

.method public getPhenomenon()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getRelativeHumidity()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->a:I

    return v0
.end method

.method public getSO2()I
    .locals 1

    .line 235
    iget v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->n:I

    return v0
.end method

.method public getSensoryTemp()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->b:I

    return v0
.end method

.method public getTemperature()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->f:I

    return v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->j:I

    return v0
.end method

.method public getWindDirection()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getWindPower()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->g:Ljava/lang/String;

    return-object v0
.end method

.method public setAirQualityIndex(I)V
    .locals 0

    .line 250
    iput p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->o:I

    return-void
.end method

.method public setCO(F)V
    .locals 0

    .line 270
    iput p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->q:F

    return-void
.end method

.method public setClouds(I)V
    .locals 0

    .line 180
    iput p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->h:I

    return-void
.end method

.method public setHourlyPrecipitation(F)V
    .locals 0

    .line 190
    iput p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->i:F

    return-void
.end method

.method public setNO2(I)V
    .locals 0

    .line 230
    iput p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->m:I

    return-void
.end method

.method public setO3(I)V
    .locals 0

    .line 210
    iput p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->k:I

    return-void
.end method

.method public setPM10(I)V
    .locals 0

    .line 260
    iput p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->p:I

    return-void
.end method

.method public setPM2_5(I)V
    .locals 0

    .line 220
    iput p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->l:I

    return-void
.end method

.method public setPhenomenon(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->c:Ljava/lang/String;

    return-void
.end method

.method public setRelativeHumidity(I)V
    .locals 0

    .line 110
    iput p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->a:I

    return-void
.end method

.method public setSO2(I)V
    .locals 0

    .line 240
    iput p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->n:I

    return-void
.end method

.method public setSensoryTemp(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->b:I

    return-void
.end method

.method public setTemperature(I)V
    .locals 0

    .line 160
    iput p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->f:I

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->e:Ljava/lang/String;

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 200
    iput p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->j:I

    return-void
.end method

.method public setWindDirection(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->d:Ljava/lang/String;

    return-void
.end method

.method public setWindPower(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->g:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 77
    iget p2, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget p2, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object p2, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object p2, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object p2, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget p2, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object p2, p0, Lcom/baidu/mapapi/search/weather/WeatherSearchRealTime;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
