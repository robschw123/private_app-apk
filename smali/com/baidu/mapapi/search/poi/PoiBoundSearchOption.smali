.class public Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;
.super Ljava/lang/Object;
.source "PoiBoundSearchOption.java"


# instance fields
.field public mBound:Lcom/baidu/mapapi/model/LatLngBounds;

.field public mIsExtendAdcode:Z

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

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mBound:Lcom/baidu/mapapi/model/LatLngBounds;

    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mIsExtendAdcode:Z

    .line 23
    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mKeyword:Ljava/lang/String;

    const/4 v2, 0x0

    .line 29
    iput v2, p0, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mPageNum:I

    const/16 v2, 0xa

    .line 35
    iput v2, p0, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mPageCapacity:I

    const-string v2, ""

    .line 41
    iput-object v2, p0, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mTag:Ljava/lang/String;

    .line 47
    iput v1, p0, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mScope:I

    .line 53
    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mPoiFilter:Lcom/baidu/mapapi/search/poi/PoiFilter;

    .line 59
    sget-object v0, Lcom/baidu/mapapi/search/base/LanguageType;->LanguageTypeChinese:Lcom/baidu/mapapi/search/base/LanguageType;

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mLanguageType:Lcom/baidu/mapapi/search/base/LanguageType;

    return-void
.end method


# virtual methods
.method public bound(Lcom/baidu/mapapi/model/LatLngBounds;)Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mBound:Lcom/baidu/mapapi/model/LatLngBounds;

    return-object p0
.end method

.method public extendAdcode(Z)Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mIsExtendAdcode:Z

    return-object p0
.end method

.method public isExtendAdcode()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mIsExtendAdcode:Z

    return v0
.end method

.method public keyword(Ljava/lang/String;)Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mKeyword:Ljava/lang/String;

    return-object p0
.end method

.method public language(Lcom/baidu/mapapi/search/base/LanguageType;)Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mLanguageType:Lcom/baidu/mapapi/search/base/LanguageType;

    return-object p0
.end method

.method public pageCapacity(I)Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;
    .locals 0

    .line 101
    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mPageCapacity:I

    return-object p0
.end method

.method public pageNum(I)Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;
    .locals 0

    .line 90
    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mPageNum:I

    return-object p0
.end method

.method public poiFilter(Lcom/baidu/mapapi/search/poi/PoiFilter;)Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mPoiFilter:Lcom/baidu/mapapi/search/poi/PoiFilter;

    return-object p0
.end method

.method public scope(I)Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;
    .locals 0

    .line 123
    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mScope:I

    return-object p0
.end method

.method public tag(Ljava/lang/String;)Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->mTag:Ljava/lang/String;

    return-object p0
.end method
