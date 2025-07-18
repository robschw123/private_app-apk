.class public Lcom/baidu/mapapi/map/WeightedLatLng;
.super Lcom/baidu/mapapi/map/v$a;
.source "WeightedLatLng.java"


# static fields
.field public static final DEFAULT_INTENSITY:D = 1.0


# instance fields
.field private a:Landroid/graphics/Point;

.field public final intensity:D

.field public final mLatLng:Lcom/baidu/mapapi/model/LatLng;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 60
    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/mapapi/map/WeightedLatLng;-><init>(Lcom/baidu/mapapi/model/LatLng;D)V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/mapapi/model/LatLng;D)V
    .locals 4

    .line 39
    invoke-direct {p0}, Lcom/baidu/mapapi/map/v$a;-><init>()V

    if-eqz p1, :cond_1

    .line 43
    iput-object p1, p0, Lcom/baidu/mapapi/map/WeightedLatLng;->mLatLng:Lcom/baidu/mapapi/model/LatLng;

    .line 44
    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p1

    .line 45
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v2

    double-to-int p1, v2

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/WeightedLatLng;->a:Landroid/graphics/Point;

    const-wide/16 v0, 0x0

    cmpl-double p1, p2, v0

    if-lez p1, :cond_0

    .line 47
    iput-wide p2, p0, Lcom/baidu/mapapi/map/WeightedLatLng;->intensity:D

    goto :goto_0

    :cond_0
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 49
    iput-wide p1, p0, Lcom/baidu/mapapi/map/WeightedLatLng;->intensity:D

    :goto_0
    return-void

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BDMapSDKException: latLng can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getIntensity()D
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/baidu/mapapi/map/WeightedLatLng;->intensity:D

    return-wide v0
.end method

.method public getPoint()Landroid/graphics/Point;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/baidu/mapapi/map/WeightedLatLng;->a:Landroid/graphics/Point;

    return-object v0
.end method
