.class public Lcom/baidu/mapapi/search/core/CoachInfo;
.super Lcom/baidu/mapapi/search/core/TransitBaseInfo;
.source "CoachInfo.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/core/CoachInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:D

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/baidu/mapapi/search/core/d;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/core/d;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/core/CoachInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/TransitBaseInfo;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 20
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/search/core/TransitBaseInfo;-><init>(Landroid/os/Parcel;)V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/search/core/CoachInfo;->a:D

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/CoachInfo;->b:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/CoachInfo;->c:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/search/core/CoachInfo;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBooking()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/CoachInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/baidu/mapapi/search/core/CoachInfo;->a:D

    return-wide v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/CoachInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderUrl()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/CoachInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setBooking(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/CoachInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setPrice(D)V
    .locals 0

    .line 47
    iput-wide p1, p0, Lcom/baidu/mapapi/search/core/CoachInfo;->a:D

    return-void
.end method

.method public setProviderName(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/CoachInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setProviderUrl(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/CoachInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 76
    invoke-super {p0, p1, p2}, Lcom/baidu/mapapi/search/core/TransitBaseInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 77
    iget-wide v0, p0, Lcom/baidu/mapapi/search/core/CoachInfo;->a:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 78
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/CoachInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/CoachInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/CoachInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
