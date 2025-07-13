.class public Lcom/baidu/mapapi/search/district/DistrictSearch;
.super Lcom/baidu/mapapi/search/core/n;
.source "DistrictSearch.java"


# instance fields
.field private a:Lcom/baidu/platform/core/b/e;

.field private b:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/n;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/baidu/mapapi/search/district/DistrictSearch;->a:Lcom/baidu/platform/core/b/e;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/baidu/mapapi/search/district/DistrictSearch;->b:Z

    .line 17
    new-instance v0, Lcom/baidu/platform/core/b/d;

    invoke-direct {v0}, Lcom/baidu/platform/core/b/d;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/search/district/DistrictSearch;->a:Lcom/baidu/platform/core/b/e;

    return-void
.end method

.method public static newInstance()Lcom/baidu/mapapi/search/district/DistrictSearch;
    .locals 1

    .line 25
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->init()V

    .line 26
    new-instance v0, Lcom/baidu/mapapi/search/district/DistrictSearch;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/district/DistrictSearch;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/baidu/mapapi/search/district/DistrictSearch;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/baidu/mapapi/search/district/DistrictSearch;->b:Z

    .line 79
    iget-object v0, p0, Lcom/baidu/mapapi/search/district/DistrictSearch;->a:Lcom/baidu/platform/core/b/e;

    invoke-interface {v0}, Lcom/baidu/platform/core/b/e;->a()V

    .line 80
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    return-void
.end method

.method public searchDistrict(Lcom/baidu/mapapi/search/district/DistrictSearchOption;)Z
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/baidu/mapapi/search/district/DistrictSearch;->a:Lcom/baidu/platform/core/b/e;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p1, Lcom/baidu/mapapi/search/district/DistrictSearchOption;->mCityName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/baidu/mapapi/search/district/DistrictSearchOption;->mCityName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/baidu/mapapi/search/district/DistrictSearch;->a:Lcom/baidu/platform/core/b/e;

    invoke-interface {v0, p1}, Lcom/baidu/platform/core/b/e;->a(Lcom/baidu/mapapi/search/district/DistrictSearchOption;)Z

    move-result p1

    return p1

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: option or city name can not be null or empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: searcher is null, please call newInstance first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnDistrictSearchListener(Lcom/baidu/mapapi/search/district/OnGetDistricSearchResultListener;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/baidu/mapapi/search/district/DistrictSearch;->a:Lcom/baidu/platform/core/b/e;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 68
    invoke-interface {v0, p1}, Lcom/baidu/platform/core/b/e;->a(Lcom/baidu/mapapi/search/district/OnGetDistricSearchResultListener;)V

    return-void

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: listener can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: searcher is null, please call newInstance first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
