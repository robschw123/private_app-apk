.class public Lcom/baidu/mapapi/search/core/TransitResultNode;
.super Ljava/lang/Object;
.source "TransitResultNode.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/core/TransitResultNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/baidu/mapapi/model/LatLng;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Lcom/baidu/mapapi/search/core/r;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/core/r;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/core/TransitResultNode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/baidu/mapapi/search/core/TransitResultNode;->b:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/baidu/mapapi/search/core/TransitResultNode;->c:Lcom/baidu/mapapi/model/LatLng;

    .line 16
    iput-object v0, p0, Lcom/baidu/mapapi/search/core/TransitResultNode;->d:Ljava/lang/String;

    .line 19
    iput p1, p0, Lcom/baidu/mapapi/search/core/TransitResultNode;->a:I

    .line 20
    iput-object p2, p0, Lcom/baidu/mapapi/search/core/TransitResultNode;->b:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/baidu/mapapi/search/core/TransitResultNode;->c:Lcom/baidu/mapapi/model/LatLng;

    .line 22
    iput-object p4, p0, Lcom/baidu/mapapi/search/core/TransitResultNode;->d:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/baidu/mapapi/search/core/TransitResultNode;->b:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/baidu/mapapi/search/core/TransitResultNode;->c:Lcom/baidu/mapapi/model/LatLng;

    .line 16
    iput-object v0, p0, Lcom/baidu/mapapi/search/core/TransitResultNode;->d:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/core/TransitResultNode;->a:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/TransitResultNode;->b:Ljava/lang/String;

    .line 28
    const-class v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/TransitResultNode;->c:Lcom/baidu/mapapi/model/LatLng;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/search/core/TransitResultNode;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCityId()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/baidu/mapapi/search/core/TransitResultNode;->a:I

    return v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/TransitResultNode;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/TransitResultNode;->c:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getSearchWord()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/TransitResultNode;->d:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 71
    iget p2, p0, Lcom/baidu/mapapi/search/core/TransitResultNode;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/TransitResultNode;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/TransitResultNode;->c:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 74
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/TransitResultNode;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
