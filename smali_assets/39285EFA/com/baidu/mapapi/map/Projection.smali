.class public final Lcom/baidu/mapapi/map/Projection;
.super Ljava/lang/Object;
.source "Projection.java"


# instance fields
.field private a:Lcom/baidu/mapsdkplatform/comapi/map/d;


# direct methods
.method constructor <init>(Lcom/baidu/mapsdkplatform/comapi/map/d;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/baidu/mapapi/map/Projection;->a:Lcom/baidu/mapsdkplatform/comapi/map/d;

    return-void
.end method


# virtual methods
.method public fromScreenLocation(Landroid/graphics/Point;)Lcom/baidu/mapapi/model/LatLng;
    .locals 2

    if-eqz p1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/baidu/mapapi/map/Projection;->a:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v0, :cond_0

    .line 30
    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->b(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public geoPoint3toScreenLocation(Lcom/baidu/mapapi/model/LatLng;I)Landroid/graphics/Point;
    .locals 1

    if-eqz p1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/baidu/mapapi/map/Projection;->a:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v0, :cond_0

    if-ltz p2, :cond_0

    .line 60
    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/baidu/mapapi/map/Projection;->a:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;I)Landroid/graphics/Point;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public metersToEquatorPixels(F)F
    .locals 4

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    float-to-double v0, p1

    .line 124
    iget-object p1, p0, Lcom/baidu/mapapi/map/Projection;->a:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->K()D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-float p1, v0

    return p1
.end method

.method public toOpenGLLocation(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/map/MapStatus;)Landroid/graphics/PointF;
    .locals 6

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p1

    .line 80
    iget-object p2, p2, Lcom/baidu/mapapi/map/MapStatus;->a:Lcom/baidu/mapsdkplatform/comapi/map/x;

    .line 82
    iget-wide v0, p2, Lcom/baidu/mapsdkplatform/comapi/map/x;->d:D

    .line 83
    iget-wide v2, p2, Lcom/baidu/mapsdkplatform/comapi/map/x;->e:D

    .line 85
    new-instance p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v4

    sub-double/2addr v4, v0

    double-to-float v0, v4

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    sub-double/2addr v4, v2

    double-to-float p1, v4

    invoke-direct {p2, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public toOpenGLNormalization(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/map/MapStatus;)Landroid/graphics/PointF;
    .locals 10

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p1

    .line 101
    iget-object p2, p2, Lcom/baidu/mapapi/map/MapStatus;->a:Lcom/baidu/mapsdkplatform/comapi/map/x;

    .line 102
    iget-object p2, p2, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    .line 104
    iget-wide v0, p2, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->b:J

    iget-wide v2, p2, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->a:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-double v0, v0

    .line 105
    iget-wide v2, p2, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->c:J

    iget-wide v4, p2, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->d:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    long-to-double v2, v2

    .line 107
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v4

    iget-wide v6, p2, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->a:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v4, v4, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    .line 108
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v8

    iget-wide p1, p2, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->d:J

    long-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v8, p1

    mul-double v8, v8, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v2

    sub-double/2addr v8, v0

    .line 110
    new-instance p1, Landroid/graphics/PointF;

    double-to-float p2, v4

    double-to-float v0, v8

    invoke-direct {p1, p2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public toScreenLocation(Lcom/baidu/mapapi/model/LatLng;)Landroid/graphics/Point;
    .locals 1

    if-eqz p1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/baidu/mapapi/map/Projection;->a:Lcom/baidu/mapsdkplatform/comapi/map/d;

    if-eqz v0, :cond_0

    .line 45
    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p1

    .line 46
    iget-object v0, p0, Lcom/baidu/mapapi/map/Projection;->a:Lcom/baidu/mapsdkplatform/comapi/map/d;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Landroid/graphics/Point;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
