.class public Lcom/baidu/mapapi/navi/WayPointInfo;
.super Ljava/lang/Object;
.source "WayPointInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/baidu/mapapi/model/LatLng;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLatLng()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/baidu/mapapi/navi/WayPointInfo;->b:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getWayPointName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/baidu/mapapi/navi/WayPointInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setLatLng(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/navi/WayPointInfo;
    .locals 1

    if-eqz p1, :cond_0

    .line 23
    iput-object p1, p0, Lcom/baidu/mapapi/navi/WayPointInfo;->b:Lcom/baidu/mapapi/model/LatLng;

    return-object p0

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: The latitude and longitude of the waypoint cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWayPointName(Ljava/lang/String;)Lcom/baidu/mapapi/navi/WayPointInfo;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/baidu/mapapi/navi/WayPointInfo;->a:Ljava/lang/String;

    return-object p0
.end method
