.class public Lcom/baidu/mapapi/search/recommendstop/RecommendStopSearch;
.super Lcom/baidu/mapapi/search/core/n;
.source "RecommendStopSearch.java"


# instance fields
.field private a:Lcom/baidu/platform/core/e/a;

.field private b:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/n;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/baidu/mapapi/search/recommendstop/RecommendStopSearch;->b:Z

    .line 21
    new-instance v0, Lcom/baidu/platform/core/e/b;

    invoke-direct {v0}, Lcom/baidu/platform/core/e/b;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/search/recommendstop/RecommendStopSearch;->a:Lcom/baidu/platform/core/e/a;

    return-void
.end method

.method public static newInstance()Lcom/baidu/mapapi/search/recommendstop/RecommendStopSearch;
    .locals 1

    .line 30
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->init()V

    .line 31
    new-instance v0, Lcom/baidu/mapapi/search/recommendstop/RecommendStopSearch;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/recommendstop/RecommendStopSearch;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/baidu/mapapi/search/recommendstop/RecommendStopSearch;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/baidu/mapapi/search/recommendstop/RecommendStopSearch;->b:Z

    .line 85
    iget-object v0, p0, Lcom/baidu/mapapi/search/recommendstop/RecommendStopSearch;->a:Lcom/baidu/platform/core/e/a;

    if-eqz v0, :cond_1

    .line 86
    invoke-interface {v0}, Lcom/baidu/platform/core/e/a;->a()V

    .line 88
    :cond_1
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    return-void
.end method

.method public requestRecommendStop(Lcom/baidu/mapapi/search/recommendstop/RecommendStopSearchOption;)Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/baidu/mapapi/search/recommendstop/RecommendStopSearch;->a:Lcom/baidu/platform/core/e/a;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/recommendstop/RecommendStopSearchOption;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/baidu/mapapi/search/recommendstop/RecommendStopSearch;->a:Lcom/baidu/platform/core/e/a;

    invoke-interface {v0, p1}, Lcom/baidu/platform/core/e/a;->a(Lcom/baidu/mapapi/search/recommendstop/RecommendStopSearchOption;)Z

    move-result p1

    return p1

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: option or location can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: RecommendStopSearch is null, please call newInstance() first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnGetRecommendStopResultListener(Lcom/baidu/mapapi/search/recommendstop/OnGetRecommendStopResultListener;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/baidu/mapapi/search/recommendstop/RecommendStopSearch;->a:Lcom/baidu/platform/core/e/a;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 74
    invoke-interface {v0, p1}, Lcom/baidu/platform/core/e/a;->a(Lcom/baidu/mapapi/search/recommendstop/OnGetRecommendStopResultListener;)V

    return-void

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: OnGetRecommendStopResultListener can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: RecommendStopSearch is null, please call newInstance() first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
