.class public Lcom/baidu/mapapi/search/core/TransitBaseInfo;
.super Ljava/lang/Object;
.source "TransitBaseInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/core/TransitBaseInfo;",
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

    .line 63
    new-instance v0, Lcom/baidu/mapapi/search/core/q;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/core/q;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/core/TransitBaseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/TransitBaseInfo;->a:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/TransitBaseInfo;->b:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/TransitBaseInfo;->c:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/TransitBaseInfo;->d:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/search/core/TransitBaseInfo;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getArriveStation()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/TransitBaseInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getArriveTime()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/TransitBaseInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartureStation()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/TransitBaseInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartureTime()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/TransitBaseInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/TransitBaseInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setArriveStation(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/TransitBaseInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setArriveTime(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/TransitBaseInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public setDepartureStation(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/TransitBaseInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setDepartureTime(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/TransitBaseInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/TransitBaseInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 82
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/TransitBaseInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/TransitBaseInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/TransitBaseInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/TransitBaseInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/TransitBaseInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
