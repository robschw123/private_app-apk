.class public Lcom/baidu/mapapi/search/core/PlaneInfo;
.super Lcom/baidu/mapapi/search/core/TransitBaseInfo;
.source "PlaneInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/core/PlaneInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:D

.field private b:Ljava/lang/String;

.field private c:D

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/baidu/mapapi/search/core/e;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/core/e;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/core/PlaneInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/TransitBaseInfo;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 18
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/search/core/TransitBaseInfo;-><init>(Landroid/os/Parcel;)V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/search/core/PlaneInfo;->a:D

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/PlaneInfo;->b:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/search/core/PlaneInfo;->c:D

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PlaneInfo;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAirlines()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PlaneInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getBooking()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PlaneInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscount()D
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/baidu/mapapi/search/core/PlaneInfo;->a:D

    return-wide v0
.end method

.method public getPrice()D
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/baidu/mapapi/search/core/PlaneInfo;->c:D

    return-wide v0
.end method

.method public setAirlines(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PlaneInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setBooking(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PlaneInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public setDiscount(D)V
    .locals 0

    .line 37
    iput-wide p1, p0, Lcom/baidu/mapapi/search/core/PlaneInfo;->a:D

    return-void
.end method

.method public setPrice(D)V
    .locals 0

    .line 30
    iput-wide p1, p0, Lcom/baidu/mapapi/search/core/PlaneInfo;->c:D

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 74
    invoke-super {p0, p1, p2}, Lcom/baidu/mapapi/search/core/TransitBaseInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 75
    iget-wide v0, p0, Lcom/baidu/mapapi/search/core/PlaneInfo;->a:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 76
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/PlaneInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-wide v0, p0, Lcom/baidu/mapapi/search/core/PlaneInfo;->c:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 78
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/PlaneInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
