.class public Lcom/baidu/platform/core/a/c;
.super Lcom/baidu/platform/base/e;
.source "BuildingSearchRequest.java"


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/search/building/BuildingSearchOption;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/baidu/platform/base/e;-><init>()V

    .line 14
    invoke-direct {p0, p1}, Lcom/baidu/platform/core/a/c;->a(Lcom/baidu/mapapi/search/building/BuildingSearchOption;)V

    return-void
.end method

.method private a(Lcom/baidu/mapapi/search/building/BuildingSearchOption;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/building/BuildingSearchOption;->getLatLng()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 23
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v0, v1, :cond_1

    .line 24
    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/core/a/c;->a:Lcom/baidu/platform/util/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "latitude"

    invoke-virtual {v0, v3, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 27
    iget-object v0, p0, Lcom/baidu/platform/core/a/c;->a:Lcom/baidu/platform/util/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "longitude"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 30
    :cond_2
    iget-object p1, p0, Lcom/baidu/platform/core/a/c;->a:Lcom/baidu/platform/util/a;

    const-string v0, "coord_type"

    const-string v1, "bd09ll"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 31
    iget-object p1, p0, Lcom/baidu/platform/core/a/c;->a:Lcom/baidu/platform/util/a;

    const-string v0, "from"

    const-string v1, "android_map_sdk"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 32
    iget-object p1, p0, Lcom/baidu/platform/core/a/c;->a:Lcom/baidu/platform/util/a;

    const-string v0, "output"

    const-string v1, "json"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 33
    iget-object p1, p0, Lcom/baidu/platform/core/a/c;->a:Lcom/baidu/platform/util/a;

    const-string v0, "data_set"

    const-string v1, "building"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/platform/domain/c;)Ljava/lang/String;
    .locals 0

    .line 38
    invoke-interface {p1}, Lcom/baidu/platform/domain/c;->v()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
