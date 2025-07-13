.class public Lcom/baidu/mapapi/search/poi/PoiSearch;
.super Lcom/baidu/mapapi/search/core/n;
.source "PoiSearch.java"


# instance fields
.field private a:Lcom/baidu/platform/core/d/a;

.field private b:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/n;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->b:Z

    .line 21
    new-instance v0, Lcom/baidu/platform/core/d/f;

    invoke-direct {v0}, Lcom/baidu/platform/core/d/f;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->a:Lcom/baidu/platform/core/d/a;

    return-void
.end method

.method public static newInstance()Lcom/baidu/mapapi/search/poi/PoiSearch;
    .locals 1

    .line 30
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->init()V

    .line 31
    new-instance v0, Lcom/baidu/mapapi/search/poi/PoiSearch;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/poi/PoiSearch;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->b:Z

    .line 188
    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->a:Lcom/baidu/platform/core/d/a;

    invoke-interface {v0}, Lcom/baidu/platform/core/d/a;->a()V

    .line 189
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    return-void
.end method

.method public searchInBound(Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;)Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->a:Lcom/baidu/platform/core/d/a;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mBound:Lcom/baidu/mapapi/model/LatLngBounds;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mKeyword:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->a:Lcom/baidu/platform/core/d/a;

    invoke-interface {v0, p1}, Lcom/baidu/platform/core/d/a;->a(Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;)Z

    move-result p1

    return p1

    .line 127
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: option or bound or keyworld can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: searcher is null, please call newInstance first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public searchInCity(Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;)Z
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->a:Lcom/baidu/platform/core/d/a;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mCity:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mKeyword:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->a:Lcom/baidu/platform/core/d/a;

    invoke-interface {v0, p1}, Lcom/baidu/platform/core/d/a;->a(Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;)Z

    move-result p1

    return p1

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: option or city or keyworld can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: searcher is null, please call newInstance first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public searchNearby(Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;)Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->a:Lcom/baidu/platform/core/d/a;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 99
    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mLocation:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mKeyword:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 103
    iget v0, p1, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mRadius:I

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->a:Lcom/baidu/platform/core/d/a;

    invoke-interface {v0, p1}, Lcom/baidu/platform/core/d/a;->a(Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;)Z

    move-result p1

    return p1

    .line 100
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: option or location or keyworld can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: searcher is null, please call newInstance first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public searchPoiDetail(Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;)Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->a:Lcom/baidu/platform/core/d/a;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;->getUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->a:Lcom/baidu/platform/core/d/a;

    invoke-interface {v0, p1}, Lcom/baidu/platform/core/d/a;->a(Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;)Z

    move-result p1

    return p1

    .line 150
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: option or uid can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: searcher is null, please call newInstance first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public searchPoiIndoor(Lcom/baidu/mapapi/search/poi/PoiIndoorOption;)Z
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->a:Lcom/baidu/platform/core/d/a;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 172
    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiIndoorOption;->bid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiIndoorOption;->wd:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->a:Lcom/baidu/platform/core/d/a;

    invoke-interface {v0, p1}, Lcom/baidu/platform/core/d/a;->a(Lcom/baidu/mapapi/search/poi/PoiIndoorOption;)Z

    move-result p1

    return p1

    .line 173
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: option or indoor bid or keyword can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 169
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: searcher is null, please call newInstance first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnGetPoiSearchResultListener(Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiSearch;->a:Lcom/baidu/platform/core/d/a;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 55
    invoke-interface {v0, p1}, Lcom/baidu/platform/core/d/a;->a(Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;)V

    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: listener can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: searcher is null, please call newInstance first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
