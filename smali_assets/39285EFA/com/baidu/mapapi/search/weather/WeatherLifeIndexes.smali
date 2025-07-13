.class public Lcom/baidu/mapapi/search/weather/WeatherLifeIndexes;
.super Ljava/lang/Object;
.source "WeatherLifeIndexes.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/weather/WeatherLifeIndexes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/baidu/mapapi/search/weather/a;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/weather/a;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/weather/WeatherLifeIndexes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/search/weather/WeatherLifeIndexes;->setName(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/search/weather/WeatherLifeIndexes;->setBrief(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/weather/WeatherLifeIndexes;->setDetail(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBrief()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherLifeIndexes;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherLifeIndexes;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/baidu/mapapi/search/weather/WeatherLifeIndexes;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setBrief(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/baidu/mapapi/search/weather/WeatherLifeIndexes;->b:Ljava/lang/String;

    return-void
.end method

.method public setDetail(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/baidu/mapapi/search/weather/WeatherLifeIndexes;->c:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/baidu/mapapi/search/weather/WeatherLifeIndexes;->a:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/baidu/mapapi/search/weather/WeatherLifeIndexes;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/baidu/mapapi/search/weather/WeatherLifeIndexes;->getBrief()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/baidu/mapapi/search/weather/WeatherLifeIndexes;->getDetail()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
