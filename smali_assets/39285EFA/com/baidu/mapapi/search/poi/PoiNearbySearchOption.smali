.class public Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;
.super Ljava/lang/Object;
.source "PoiNearbySearchOption.java"


# instance fields
.field public mIsExtendAdcode:Z

.field public mKeyword:Ljava/lang/String;

.field public mLanguageType:Lcom/baidu/mapapi/search/base/LanguageType;

.field public mLocation:Lcom/baidu/mapapi/model/LatLng;

.field public mPageCapacity:I

.field public mPageNum:I

.field public mPoiFilter:Lcom/baidu/mapapi/search/poi/PoiFilter;

.field public mRadius:I

.field public mRadiusLimit:Z

.field public mScope:I

.field public mTag:Ljava/lang/String;

.field public sortType:Lcom/baidu/mapapi/search/poi/PoiSortType;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mKeyword:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mLocation:Lcom/baidu/mapapi/model/LatLng;

    const/4 v1, -0x1

    .line 27
    iput v1, p0, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mRadius:I

    const/4 v1, 0x0

    .line 33
    iput v1, p0, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mPageNum:I

    const/16 v2, 0xa

    .line 39
    iput v2, p0, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mPageCapacity:I

    .line 44
    sget-object v2, Lcom/baidu/mapapi/search/poi/PoiSortType;->comprehensive:Lcom/baidu/mapapi/search/poi/PoiSortType;

    iput-object v2, p0, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->sortType:Lcom/baidu/mapapi/search/poi/PoiSortType;

    const-string v2, ""

    .line 50
    iput-object v2, p0, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mTag:Ljava/lang/String;

    const/4 v2, 0x1

    .line 56
    iput v2, p0, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mScope:I

    .line 62
    iput-boolean v1, p0, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mRadiusLimit:Z

    .line 68
    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mPoiFilter:Lcom/baidu/mapapi/search/poi/PoiFilter;

    .line 73
    iput-boolean v2, p0, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mIsExtendAdcode:Z

    .line 79
    sget-object v0, Lcom/baidu/mapapi/search/base/LanguageType;->LanguageTypeChinese:Lcom/baidu/mapapi/search/base/LanguageType;

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mLanguageType:Lcom/baidu/mapapi/search/base/LanguageType;

    return-void
.end method


# virtual methods
.method public extendAdcode(Z)Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;
    .locals 0

    .line 222
    iput-boolean p1, p0, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mIsExtendAdcode:Z

    return-object p0
.end method

.method public isExtendAdcode()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mIsExtendAdcode:Z

    return v0
.end method

.method public keyword(Ljava/lang/String;)Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mKeyword:Ljava/lang/String;

    return-object p0
.end method

.method public language(Lcom/baidu/mapapi/search/base/LanguageType;)Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mLanguageType:Lcom/baidu/mapapi/search/base/LanguageType;

    return-object p0
.end method

.method public location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mLocation:Lcom/baidu/mapapi/model/LatLng;

    return-object p0
.end method

.method public pageCapacity(I)Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;
    .locals 0

    .line 164
    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mPageCapacity:I

    return-object p0
.end method

.method public pageNum(I)Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;
    .locals 0

    .line 152
    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mPageNum:I

    return-object p0
.end method

.method public poiFilter(Lcom/baidu/mapapi/search/poi/PoiFilter;)Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mPoiFilter:Lcom/baidu/mapapi/search/poi/PoiFilter;

    return-object p0
.end method

.method public radius(I)Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;
    .locals 0

    .line 128
    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mRadius:I

    return-object p0
.end method

.method public radiusLimit(Z)Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mRadiusLimit:Z

    return-object p0
.end method

.method public scope(I)Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;
    .locals 0

    .line 188
    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mScope:I

    return-object p0
.end method

.method public sortType(Lcom/baidu/mapapi/search/poi/PoiSortType;)Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;
    .locals 0

    if-eqz p1, :cond_0

    .line 114
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->sortType:Lcom/baidu/mapapi/search/poi/PoiSortType;

    :cond_0
    return-object p0
.end method

.method public tag(Ljava/lang/String;)Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->mTag:Ljava/lang/String;

    return-object p0
.end method
