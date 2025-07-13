.class public Lcom/baidu/mapapi/search/core/RouteNode;
.super Ljava/lang/Object;
.source "RouteNode.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/core/RouteNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/baidu/mapapi/model/LatLng;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/baidu/mapapi/search/core/l;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/core/l;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/core/RouteNode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
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

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/RouteNode;->a:Ljava/lang/String;

    .line 22
    const-class v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/RouteNode;->b:Lcom/baidu/mapapi/model/LatLng;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/search/core/RouteNode;->c:Ljava/lang/String;

    return-void
.end method

.method public static location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/core/RouteNode;
    .locals 1

    .line 62
    new-instance v0, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/core/RouteNode;-><init>()V

    .line 63
    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/search/core/RouteNode;->setLocation(Lcom/baidu/mapapi/model/LatLng;)V

    return-object v0
.end method

.method public static titleAndLocation(Ljava/lang/String;Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/core/RouteNode;
    .locals 1

    .line 48
    new-instance v0, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/core/RouteNode;-><init>()V

    .line 49
    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/search/core/RouteNode;->setTitle(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/search/core/RouteNode;->setLocation(Lcom/baidu/mapapi/model/LatLng;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLocation()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/RouteNode;->b:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/RouteNode;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/RouteNode;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setLocation(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/RouteNode;->b:Lcom/baidu/mapapi/model/LatLng;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/RouteNode;->a:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/RouteNode;->c:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 131
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/RouteNode;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/RouteNode;->b:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 133
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/RouteNode;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
