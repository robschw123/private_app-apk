.class public Lcom/baidu/platform/core/h/d;
.super Lcom/baidu/platform/base/e;
.source "SuggestionSearchRequest.java"


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/baidu/platform/base/e;-><init>()V

    .line 16
    invoke-direct {p0, p1}, Lcom/baidu/platform/core/h/d;->a(Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;)V

    return-void
.end method

.method private a(Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;)V
    .locals 5

    .line 20
    iget-object v0, p0, Lcom/baidu/platform/core/h/d;->a:Lcom/baidu/platform/util/a;

    iget-object v1, p1, Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;->mKeyword:Ljava/lang/String;

    const-string v2, "query"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 21
    iget-object v0, p0, Lcom/baidu/platform/core/h/d;->a:Lcom/baidu/platform/util/a;

    iget-object v1, p1, Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;->mCity:Ljava/lang/String;

    const-string v2, "region"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 23
    iget-object v0, p1, Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;->mLocation:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_1

    .line 24
    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    iget-object v1, p1, Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;->mLocation:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-object v3, p1, Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;->mLocation:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v3, v3, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 25
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v1

    sget-object v2, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v1, v2, :cond_0

    .line 26
    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/baidu/platform/core/h/d;->a:Lcom/baidu/platform/util/a;

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

    .line 30
    :cond_1
    iget-object v0, p1, Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;->mCityLimit:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "true"

    const-string v2, "false"

    const-string v3, "city_limit"

    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p0, Lcom/baidu/platform/core/h/d;->a:Lcom/baidu/platform/util/a;

    invoke-virtual {v0, v3, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    goto :goto_0

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/baidu/platform/core/h/d;->a:Lcom/baidu/platform/util/a;

    invoke-virtual {v0, v3, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 35
    :goto_0
    iget-object v0, p0, Lcom/baidu/platform/core/h/d;->a:Lcom/baidu/platform/util/a;

    const-string v3, "from"

    const-string v4, "android_map_sdk"

    invoke-virtual {v0, v3, v4}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 36
    iget-object v0, p0, Lcom/baidu/platform/core/h/d;->a:Lcom/baidu/platform/util/a;

    const-string v3, "output"

    const-string v4, "json"

    invoke-virtual {v0, v3, v4}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 37
    iget-object v0, p0, Lcom/baidu/platform/core/h/d;->a:Lcom/baidu/platform/util/a;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;->isExtendAdcode()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    const-string p1, "extensions_adcode"

    invoke-virtual {v0, p1, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/platform/domain/c;)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-interface {p1}, Lcom/baidu/platform/domain/c;->d()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
