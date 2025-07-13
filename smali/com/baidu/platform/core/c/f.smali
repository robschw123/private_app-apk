.class public Lcom/baidu/platform/core/c/f;
.super Lcom/baidu/platform/base/e;
.source "ReverseGeoCoderRequest.java"


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/baidu/platform/base/e;-><init>()V

    .line 18
    invoke-direct {p0, p1}, Lcom/baidu/platform/core/c/f;->a(Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;)V

    return-void
.end method

.method private a(Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;)V
    .locals 5

    .line 22
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 23
    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    iget-wide v3, v3, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 24
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v1

    sget-object v2, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v1, v2, :cond_0

    .line 25
    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/baidu/platform/core/c/f;->a:Lcom/baidu/platform/util/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "location"

    invoke-virtual {v1, v2, v0}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 29
    :cond_1
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->getLanguage()Lcom/baidu/mapapi/search/base/LanguageType;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/search/base/LanguageType;->LanguageTypeEnglish:Lcom/baidu/mapapi/search/base/LanguageType;

    if-ne v0, v1, :cond_2

    .line 30
    iget-object v0, p0, Lcom/baidu/platform/core/c/f;->a:Lcom/baidu/platform/util/a;

    const-string v1, "language"

    const-string v2, "en"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/baidu/platform/core/c/f;->a:Lcom/baidu/platform/util/a;

    const-string v1, "coordtype"

    const-string v2, "bd09ll"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 33
    iget-object v0, p0, Lcom/baidu/platform/core/c/f;->a:Lcom/baidu/platform/util/a;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->getPageNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "page_index"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 34
    iget-object v0, p0, Lcom/baidu/platform/core/c/f;->a:Lcom/baidu/platform/util/a;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->getPageSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "page_size"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 35
    iget-object v0, p0, Lcom/baidu/platform/core/c/f;->a:Lcom/baidu/platform/util/a;

    const-string v1, "pois"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 36
    iget-object v0, p0, Lcom/baidu/platform/core/c/f;->a:Lcom/baidu/platform/util/a;

    const-string v1, "extensions_poi"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 37
    iget-object v0, p0, Lcom/baidu/platform/core/c/f;->a:Lcom/baidu/platform/util/a;

    const-string v1, "extensions_town"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 38
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->getExtensionsRoad()Z

    move-result v0

    const-string v1, "extensions_road"

    if-eqz v0, :cond_3

    .line 39
    iget-object v0, p0, Lcom/baidu/platform/core/c/f;->a:Lcom/baidu/platform/util/a;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    goto :goto_0

    .line 41
    :cond_3
    iget-object v0, p0, Lcom/baidu/platform/core/c/f;->a:Lcom/baidu/platform/util/a;

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 43
    :goto_0
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->getPoiType()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 45
    iget-object v1, p0, Lcom/baidu/platform/core/c/f;->a:Lcom/baidu/platform/util/a;

    const-string v2, "poi_types"

    invoke-virtual {v1, v2, v0}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 50
    :cond_4
    iget-object v0, p0, Lcom/baidu/platform/core/c/f;->a:Lcom/baidu/platform/util/a;

    const-string v1, "output"

    const-string v2, "jsonaes"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 51
    iget-object v0, p0, Lcom/baidu/platform/core/c/f;->a:Lcom/baidu/platform/util/a;

    const-string v1, "from"

    const-string v2, "android_map_sdk"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 52
    iget-object v0, p0, Lcom/baidu/platform/core/c/f;->a:Lcom/baidu/platform/util/a;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->getLatestAdmin()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "latest_admin"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 53
    iget-object v0, p0, Lcom/baidu/platform/core/c/f;->a:Lcom/baidu/platform/util/a;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->getRadius()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "radius"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/platform/domain/c;)Ljava/lang/String;
    .locals 0

    .line 58
    invoke-interface {p1}, Lcom/baidu/platform/domain/c;->e()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
