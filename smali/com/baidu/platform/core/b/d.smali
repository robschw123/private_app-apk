.class public Lcom/baidu/platform/core/b/d;
.super Lcom/baidu/platform/base/a;
.source "DistrictSearchImp.java"

# interfaces
.implements Lcom/baidu/platform/core/b/e;


# instance fields
.field private b:Lcom/baidu/mapapi/search/district/OnGetDistricSearchResultListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/baidu/platform/base/a;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/baidu/platform/core/b/d;->b:Lcom/baidu/mapapi/search/district/OnGetDistricSearchResultListener;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/baidu/platform/core/b/d;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/baidu/platform/core/b/d;->b:Lcom/baidu/mapapi/search/district/OnGetDistricSearchResultListener;

    .line 42
    iget-object v0, p0, Lcom/baidu/platform/core/b/d;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public a(Lcom/baidu/mapapi/search/district/OnGetDistricSearchResultListener;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/baidu/platform/core/b/d;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 34
    iput-object p1, p0, Lcom/baidu/platform/core/b/d;->b:Lcom/baidu/mapapi/search/district/OnGetDistricSearchResultListener;

    .line 35
    iget-object p1, p0, Lcom/baidu/platform/core/b/d;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public a(Lcom/baidu/mapapi/search/district/DistrictSearchOption;)Z
    .locals 2

    .line 19
    new-instance v0, Lcom/baidu/platform/core/b/b;

    invoke-direct {v0}, Lcom/baidu/platform/core/b/b;-><init>()V

    .line 20
    sget-object v1, Lcom/baidu/platform/base/SearchType;->p:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/core/b/b;->a(Lcom/baidu/platform/base/SearchType;)V

    .line 26
    new-instance v1, Lcom/baidu/platform/core/b/a;

    invoke-direct {v1, p1}, Lcom/baidu/platform/core/b/a;-><init>(Lcom/baidu/mapapi/search/district/DistrictSearchOption;)V

    .line 28
    iget-object p1, p0, Lcom/baidu/platform/core/b/d;->b:Lcom/baidu/mapapi/search/district/OnGetDistricSearchResultListener;

    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/platform/core/b/d;->a(Lcom/baidu/platform/base/e;Ljava/lang/Object;Lcom/baidu/platform/base/d;)Z

    move-result p1

    return p1
.end method
