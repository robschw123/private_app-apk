.class public Lcom/baidu/platform/core/a/b;
.super Lcom/baidu/platform/base/a;
.source "BuildingSearchImp.java"


# instance fields
.field private b:Lcom/baidu/mapapi/search/building/OnGetBuildingSearchResultListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/baidu/platform/base/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/baidu/platform/core/a/b;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/baidu/platform/core/a/b;->b:Lcom/baidu/mapapi/search/building/OnGetBuildingSearchResultListener;

    .line 31
    iget-object v0, p0, Lcom/baidu/platform/core/a/b;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public a(Lcom/baidu/mapapi/search/building/OnGetBuildingSearchResultListener;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/baidu/platform/core/a/b;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 23
    iput-object p1, p0, Lcom/baidu/platform/core/a/b;->b:Lcom/baidu/mapapi/search/building/OnGetBuildingSearchResultListener;

    .line 24
    iget-object p1, p0, Lcom/baidu/platform/core/a/b;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public a(Lcom/baidu/mapapi/search/building/BuildingSearchOption;)Z
    .locals 2

    .line 14
    new-instance v0, Lcom/baidu/platform/core/a/a;

    invoke-direct {v0}, Lcom/baidu/platform/core/a/a;-><init>()V

    .line 15
    sget-object v1, Lcom/baidu/platform/base/SearchType;->v:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/core/a/a;->a(Lcom/baidu/platform/base/SearchType;)V

    .line 16
    new-instance v1, Lcom/baidu/platform/core/a/c;

    invoke-direct {v1, p1}, Lcom/baidu/platform/core/a/c;-><init>(Lcom/baidu/mapapi/search/building/BuildingSearchOption;)V

    .line 17
    iget-object p1, p0, Lcom/baidu/platform/core/a/b;->b:Lcom/baidu/mapapi/search/building/OnGetBuildingSearchResultListener;

    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/platform/core/a/b;->a(Lcom/baidu/platform/base/e;Ljava/lang/Object;Lcom/baidu/platform/base/d;)Z

    move-result p1

    return p1
.end method
