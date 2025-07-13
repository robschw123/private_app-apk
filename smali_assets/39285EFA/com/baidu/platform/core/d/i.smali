.class public Lcom/baidu/platform/core/d/i;
.super Lcom/baidu/platform/base/e;
.source "PoiSearchRequest.java"


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/baidu/platform/base/e;-><init>()V

    .line 32
    invoke-direct {p0, p1}, Lcom/baidu/platform/core/d/i;->a(Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;)V

    return-void
.end method

.method constructor <init>(Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/baidu/platform/base/e;-><init>()V

    .line 28
    invoke-direct {p0, p1}, Lcom/baidu/platform/core/d/i;->a(Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;)V

    return-void
.end method

.method constructor <init>(Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/baidu/platform/base/e;-><init>()V

    .line 24
    invoke-direct {p0, p1}, Lcom/baidu/platform/core/d/i;->a(Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;)V

    return-void
.end method

.method private a(Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    iget-object v1, p1, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mKeyword:Ljava/lang/String;

    const-string v2, "query"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 101
    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mLanguageType:Lcom/baidu/mapapi/search/base/LanguageType;

    sget-object v1, Lcom/baidu/mapapi/search/base/LanguageType;->LanguageTypeEnglish:Lcom/baidu/mapapi/search/base/LanguageType;

    if-ne v0, v1, :cond_1

    .line 102
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    const-string v1, "language"

    const-string v2, "en"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    iget-object v1, p1, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mTag:Ljava/lang/String;

    const-string v2, "tag"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 105
    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mBound:Lcom/baidu/mapapi/model/LatLngBounds;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mBound:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v0, v0, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mBound:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v0, v0, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_3

    .line 106
    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    iget-object v1, p1, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mBound:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v1, v1, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-object v3, p1, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mBound:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v3, v3, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v3, v3, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 107
    new-instance v1, Lcom/baidu/mapapi/model/LatLng;

    iget-object v2, p1, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mBound:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v2, v2, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v2, v2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-object v4, p1, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mBound:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v4, v4, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v4, v4, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 108
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v2

    sget-object v3, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v2, v3, :cond_2

    .line 109
    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    .line 110
    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 113
    iget-object v2, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bounds"

    invoke-virtual {v2, v1, v0}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    const-string v1, "output"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 119
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->isExtendAdcode()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "true"

    goto :goto_0

    :cond_4
    const-string v1, "false"

    :goto_0
    const-string v2, "extensions_adcode"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 120
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mScope:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "scope"

    invoke-virtual {v0, v3, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 121
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mPageNum:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "page_num"

    invoke-virtual {v0, v3, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 122
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mPageCapacity:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "page_size"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 124
    iget v0, p1, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mScope:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mPoiFilter:Lcom/baidu/mapapi/search/poi/PoiFilter;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mPoiFilter:Lcom/baidu/mapapi/search/poi/PoiFilter;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/poi/PoiFilter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 125
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    iget-object p1, p1, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mPoiFilter:Lcom/baidu/mapapi/search/poi/PoiFilter;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/poi/PoiFilter;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "filter"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    :cond_5
    return-void
.end method

.method private a(Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    iget-object v1, p1, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mKeyword:Ljava/lang/String;

    const-string v2, "query"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 75
    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mLanguageType:Lcom/baidu/mapapi/search/base/LanguageType;

    sget-object v1, Lcom/baidu/mapapi/search/base/LanguageType;->LanguageTypeEnglish:Lcom/baidu/mapapi/search/base/LanguageType;

    if-ne v0, v1, :cond_1

    .line 76
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    const-string v1, "language"

    const-string v2, "en"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    iget-object v1, p1, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mCity:Ljava/lang/String;

    const-string v2, "region"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 79
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    const-string v1, "output"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 80
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->isExtendAdcode()Z

    move-result v1

    const-string v2, "true"

    const-string v3, "false"

    if-eqz v1, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    const-string v4, "extensions_adcode"

    invoke-virtual {v0, v4, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 81
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mPageNum:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "page_num"

    invoke-virtual {v0, v5, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 82
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mPageCapacity:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "page_size"

    invoke-virtual {v0, v5, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 83
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mScope:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "scope"

    invoke-virtual {v0, v4, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 84
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    iget-object v1, p1, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mTag:Ljava/lang/String;

    const-string v4, "tag"

    invoke-virtual {v0, v4, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 85
    iget-boolean v0, p1, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mIsCityLimit:Z

    const-string v1, "city_limit"

    if-eqz v0, :cond_3

    .line 86
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    goto :goto_1

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    invoke-virtual {v0, v1, v3}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 91
    :goto_1
    iget v0, p1, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mScope:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mPoiFilter:Lcom/baidu/mapapi/search/poi/PoiFilter;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mPoiFilter:Lcom/baidu/mapapi/search/poi/PoiFilter;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/poi/PoiFilter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 92
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    iget-object p1, p1, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mPoiFilter:Lcom/baidu/mapapi/search/poi/PoiFilter;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/poi/PoiFilter;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "filter"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    :cond_4
    return-void
.end method

.method private a(Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    iget-object v1, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mKeyword:Ljava/lang/String;

    const-string v2, "query"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 40
    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mLanguageType:Lcom/baidu/mapapi/search/base/LanguageType;

    sget-object v1, Lcom/baidu/mapapi/search/base/LanguageType;->LanguageTypeEnglish:Lcom/baidu/mapapi/search/base/LanguageType;

    if-ne v0, v1, :cond_1

    .line 41
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    const-string v1, "language"

    const-string v2, "en"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 43
    :cond_1
    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mLocation:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_3

    .line 44
    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    iget-object v1, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mLocation:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-object v3, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mLocation:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v3, v3, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 45
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v1

    sget-object v2, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v1, v2, :cond_2

    .line 46
    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 49
    iget-object v1, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

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

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mRadius:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "radius"

    invoke-virtual {v0, v3, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 53
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    const-string v1, "output"

    const-string v3, "json"

    invoke-virtual {v0, v1, v3}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 54
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->isExtendAdcode()Z

    move-result v1

    const-string v3, "true"

    const-string v4, "false"

    if-eqz v1, :cond_4

    move-object v1, v3

    goto :goto_0

    :cond_4
    move-object v1, v4

    :goto_0
    const-string v5, "extensions_adcode"

    invoke-virtual {v0, v5, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 55
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mPageNum:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "page_num"

    invoke-virtual {v0, v5, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 56
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mPageCapacity:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "page_size"

    invoke-virtual {v0, v5, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 57
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mScope:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "scope"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 58
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    iget-object v1, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mTag:Ljava/lang/String;

    const-string v2, "tag"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 59
    iget-boolean v0, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mRadiusLimit:Z

    const-string v1, "radius_limit"

    if-eqz v0, :cond_5

    .line 60
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    invoke-virtual {v0, v1, v3}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    goto :goto_1

    .line 62
    :cond_5
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    invoke-virtual {v0, v1, v4}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 65
    :goto_1
    iget v0, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mScope:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mPoiFilter:Lcom/baidu/mapapi/search/poi/PoiFilter;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mPoiFilter:Lcom/baidu/mapapi/search/poi/PoiFilter;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/poi/PoiFilter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 66
    iget-object v0, p0, Lcom/baidu/platform/core/d/i;->a:Lcom/baidu/platform/util/a;

    iget-object p1, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mPoiFilter:Lcom/baidu/mapapi/search/poi/PoiFilter;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/poi/PoiFilter;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "filter"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    :cond_6
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/platform/domain/c;)Ljava/lang/String;
    .locals 0

    .line 131
    invoke-interface {p1}, Lcom/baidu/platform/domain/c;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
