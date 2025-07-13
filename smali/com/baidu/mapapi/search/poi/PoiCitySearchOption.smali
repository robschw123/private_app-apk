.class public Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;
.super Ljava/lang/Object;
.source "PoiCitySearchOption.java"


# instance fields
.field public mCity:Ljava/lang/String;

.field public mIsCityLimit:Z

.field public mIsExtendAdcode:Z

.field public mIsReturnAddr:Z

.field public mKeyword:Ljava/lang/String;

.field public mLanguageType:Lcom/baidu/mapapi/search/base/LanguageType;

.field public mPageCapacity:I

.field public mPageNum:I

.field public mPoiFilter:Lcom/baidu/mapapi/search/poi/PoiFilter;

.field public mScope:I

.field public mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mCity:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mKeyword:Ljava/lang/String;

    const/4 v1, 0x0

    .line 26
    iput v1, p0, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mPageNum:I

    const/16 v1, 0xa

    .line 32
    iput v1, p0, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mPageCapacity:I

    const/4 v1, 0x1

    .line 37
    iput-boolean v1, p0, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mIsReturnAddr:Z

    const-string v2, ""

    .line 43
    iput-object v2, p0, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mTag:Ljava/lang/String;

    .line 49
    iput v1, p0, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mScope:I

    .line 55
    iput-boolean v1, p0, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mIsCityLimit:Z

    .line 61
    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mPoiFilter:Lcom/baidu/mapapi/search/poi/PoiFilter;

    .line 66
    iput-boolean v1, p0, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mIsExtendAdcode:Z

    .line 72
    sget-object v0, Lcom/baidu/mapapi/search/base/LanguageType;->LanguageTypeChinese:Lcom/baidu/mapapi/search/base/LanguageType;

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mLanguageType:Lcom/baidu/mapapi/search/base/LanguageType;

    return-void
.end method


# virtual methods
.method public city(Ljava/lang/String;)Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mCity:Ljava/lang/String;

    return-object p0
.end method

.method public cityLimit(Z)Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;
    .locals 0

    .line 166
    iput-boolean p1, p0, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mIsCityLimit:Z

    return-object p0
.end method

.method public extendAdcode(Z)Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mIsExtendAdcode:Z

    return-object p0
.end method

.method public isExtendAdcode()Z
    .locals 1

    .line 209
    iget-boolean v0, p0, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mIsExtendAdcode:Z

    return v0
.end method

.method public isReturnAddr(Z)Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;
    .locals 0

    .line 130
    iput-boolean p1, p0, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mIsReturnAddr:Z

    return-object p0
.end method

.method public keyword(Ljava/lang/String;)Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mKeyword:Ljava/lang/String;

    return-object p0
.end method

.method public language(Lcom/baidu/mapapi/search/base/LanguageType;)Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mLanguageType:Lcom/baidu/mapapi/search/base/LanguageType;

    return-object p0
.end method

.method public pageCapacity(I)Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;
    .locals 0

    .line 118
    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mPageCapacity:I

    return-object p0
.end method

.method public pageNum(I)Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;
    .locals 0

    .line 106
    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mPageNum:I

    return-object p0
.end method

.method public poiFilter(Lcom/baidu/mapapi/search/poi/PoiFilter;)Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mPoiFilter:Lcom/baidu/mapapi/search/poi/PoiFilter;

    return-object p0
.end method

.method public scope(I)Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;
    .locals 0

    .line 154
    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mScope:I

    return-object p0
.end method

.method public tag(Ljava/lang/String;)Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->mTag:Ljava/lang/String;

    return-object p0
.end method
