.class public Lcom/baidu/mapapi/model/CoordUtil;
.super Ljava/lang/Object;
.source "CoordUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Coordinate_encryptEx(FFLjava/lang/String;)Lcom/baidu/mapapi/model/LatLng;
    .locals 0

    .line 90
    invoke-static {p0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/util/b;->a(FFLjava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p0

    return-object p0
.end method

.method public static decodeLocation(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;
    .locals 2

    .line 59
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v0, v1, :cond_0

    .line 60
    invoke-static {p0}, Lcom/baidu/mapsdkplatform/comapi/util/b;->a(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->baiduToGcj(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p0

    return-object p0

    .line 62
    :cond_0
    invoke-static {p0}, Lcom/baidu/mapsdkplatform/comapi/util/b;->a(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p0

    return-object p0
.end method

.method public static decodeLocationList(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 73
    invoke-static {p0}, Lcom/baidu/mapsdkplatform/comapi/util/b;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static decodeLocationList2D(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;>;"
        }
    .end annotation

    .line 78
    invoke-static {p0}, Lcom/baidu/mapsdkplatform/comapi/util/b;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static decodeNodeLocation(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;
    .locals 2

    .line 66
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v0, v1, :cond_0

    .line 67
    invoke-static {p0}, Lcom/baidu/mapsdkplatform/comapi/util/b;->b(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->baiduToGcj(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p0

    return-object p0

    .line 69
    :cond_0
    invoke-static {p0}, Lcom/baidu/mapsdkplatform/comapi/util/b;->b(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p0

    return-object p0
.end method

.method public static getDistance(Lcom/baidu/platform/comapi/basestruct/Point;Lcom/baidu/platform/comapi/basestruct/Point;)D
    .locals 0

    .line 95
    invoke-static {p0, p1}, Lcom/baidu/mapsdkplatform/comjni/tools/a;->a(Lcom/baidu/platform/comapi/basestruct/Point;Lcom/baidu/platform/comapi/basestruct/Point;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getMCDistanceByOneLatLngAndRadius(Lcom/baidu/mapapi/model/LatLng;I)I
    .locals 2

    .line 45
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v0, v1, :cond_0

    .line 47
    invoke-static {p0}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/util/b;->a(Lcom/baidu/mapapi/model/LatLng;I)I

    move-result p0

    return p0

    .line 49
    :cond_0
    invoke-static {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/util/b;->a(Lcom/baidu/mapapi/model/LatLng;I)I

    move-result p0

    return p0
.end method

.method public static ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;
    .locals 2

    .line 24
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v0, v1, :cond_0

    .line 25
    invoke-static {p0}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/mapsdkplatform/comapi/util/b;->a(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p0

    return-object p0

    .line 27
    :cond_0
    invoke-static {p0}, Lcom/baidu/mapsdkplatform/comapi/util/b;->a(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p0

    return-object p0
.end method

.method public static ll2point(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/Point;
    .locals 2

    .line 31
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v0, v1, :cond_0

    .line 32
    invoke-static {p0}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/mapsdkplatform/comapi/util/b;->b(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/Point;

    move-result-object p0

    return-object p0

    .line 34
    :cond_0
    invoke-static {p0}, Lcom/baidu/mapsdkplatform/comapi/util/b;->b(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/Point;

    move-result-object p0

    return-object p0
.end method

.method public static mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;
    .locals 2

    .line 17
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v0, v1, :cond_0

    .line 18
    invoke-static {p0}, Lcom/baidu/mapsdkplatform/comapi/util/b;->a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->baiduToGcj(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p0

    return-object p0

    .line 20
    :cond_0
    invoke-static {p0}, Lcom/baidu/mapsdkplatform/comapi/util/b;->a(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p0

    return-object p0
.end method
