.class public Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;
.super Ljava/lang/Object;
.source "SuggestionSearchOption.java"


# instance fields
.field private a:Z

.field public mCity:Ljava/lang/String;

.field public mCityLimit:Ljava/lang/Boolean;

.field public mKeyword:Ljava/lang/String;

.field public mLocation:Lcom/baidu/mapapi/model/LatLng;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;->mCity:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;->mKeyword:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;->mLocation:Lcom/baidu/mapapi/model/LatLng;

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;->a:Z

    const/4 v0, 0x0

    .line 39
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;->mCityLimit:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public city(Ljava/lang/String;)Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;->mCity:Ljava/lang/String;

    return-object p0
.end method

.method public citylimit(Ljava/lang/Boolean;)Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;->mCityLimit:Ljava/lang/Boolean;

    return-object p0
.end method

.method public extendAdcode(Z)Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;->a:Z

    return-object p0
.end method

.method public isExtendAdcode()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;->a:Z

    return v0
.end method

.method public keyword(Ljava/lang/String;)Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;->mKeyword:Ljava/lang/String;

    return-object p0
.end method

.method public location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;->mLocation:Lcom/baidu/mapapi/model/LatLng;

    return-object p0
.end method
