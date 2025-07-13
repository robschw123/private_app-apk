.class public Lcom/baidu/mapapi/search/building/BuildingSearch;
.super Lcom/baidu/mapapi/search/core/n;
.source "BuildingSearch.java"


# instance fields
.field private final a:Lcom/baidu/platform/core/a/b;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/n;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/baidu/mapapi/search/building/BuildingSearch;->b:Z

    .line 15
    new-instance v0, Lcom/baidu/platform/core/a/b;

    invoke-direct {v0}, Lcom/baidu/platform/core/a/b;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/search/building/BuildingSearch;->a:Lcom/baidu/platform/core/a/b;

    return-void
.end method

.method public static newInstance()Lcom/baidu/mapapi/search/building/BuildingSearch;
    .locals 1

    .line 24
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->init()V

    .line 25
    new-instance v0, Lcom/baidu/mapapi/search/building/BuildingSearch;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/building/BuildingSearch;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/baidu/mapapi/search/building/BuildingSearch;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/baidu/mapapi/search/building/BuildingSearch;->b:Z

    .line 73
    iget-object v0, p0, Lcom/baidu/mapapi/search/building/BuildingSearch;->a:Lcom/baidu/platform/core/a/b;

    invoke-virtual {v0}, Lcom/baidu/platform/core/a/b;->a()V

    .line 74
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    return-void
.end method

.method public requestBuilding(Lcom/baidu/mapapi/search/building/BuildingSearchOption;)Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/baidu/mapapi/search/building/BuildingSearch;->a:Lcom/baidu/platform/core/a/b;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/building/BuildingSearchOption;->getLatLng()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/baidu/mapapi/search/building/BuildingSearch;->a:Lcom/baidu/platform/core/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/core/a/b;->a(Lcom/baidu/mapapi/search/building/BuildingSearchOption;)Z

    move-result p1

    return p1

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: option or location can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: BuildingSearch is null, please call newInstance() first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnGetBuildingSearchResultListener(Lcom/baidu/mapapi/search/building/OnGetBuildingSearchResultListener;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/baidu/mapapi/search/building/BuildingSearch;->a:Lcom/baidu/platform/core/a/b;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {v0, p1}, Lcom/baidu/platform/core/a/b;->a(Lcom/baidu/mapapi/search/building/OnGetBuildingSearchResultListener;)V

    return-void

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: listener can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: BuildingSearch is null, please call newInstance first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
