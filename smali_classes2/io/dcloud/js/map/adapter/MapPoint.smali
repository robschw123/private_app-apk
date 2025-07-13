.class public Lio/dcloud/js/map/adapter/MapPoint;
.super Ljava/lang/Object;
.source "MapPoint.java"


# instance fields
.field private mLatitude:Ljava/lang/Double;

.field private mLongitude:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pLongitude",
            "pLatitude"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapPoint;->mLongitude:Ljava/lang/Double;

    .line 38
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapPoint;->mLatitude:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public getLatLng()Lcom/baidu/mapapi/model/LatLng;
    .locals 5

    .line 67
    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    iget-object v1, p0, Lio/dcloud/js/map/adapter/MapPoint;->mLatitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-object v3, p0, Lio/dcloud/js/map/adapter/MapPoint;->mLongitude:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method public getLatitude()Ljava/lang/Double;
    .locals 1

    .line 57
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapPoint;->mLatitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 1

    .line 45
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapPoint;->mLongitude:Ljava/lang/Double;

    return-object v0
.end method

.method public setLatitude(Ljava/lang/Double;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pLatitude"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapPoint;->mLatitude:Ljava/lang/Double;

    return-void
.end method

.method public setLongitude(Ljava/lang/Double;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pLongitude"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapPoint;->mLongitude:Ljava/lang/Double;

    return-void
.end method
