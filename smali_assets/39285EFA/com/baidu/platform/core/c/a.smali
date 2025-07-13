.class public Lcom/baidu/platform/core/c/a;
.super Lcom/baidu/platform/base/a;
.source "GeoCoderImp.java"

# interfaces
.implements Lcom/baidu/platform/core/c/d;


# instance fields
.field b:Lcom/baidu/mapapi/search/geocode/OnGetGeoCoderResultListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/baidu/platform/base/a;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/baidu/platform/core/c/a;->b:Lcom/baidu/mapapi/search/geocode/OnGetGeoCoderResultListener;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/baidu/platform/core/c/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/baidu/platform/core/c/a;->b:Lcom/baidu/mapapi/search/geocode/OnGetGeoCoderResultListener;

    .line 59
    iget-object v0, p0, Lcom/baidu/platform/core/c/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public a(Lcom/baidu/mapapi/search/geocode/OnGetGeoCoderResultListener;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/baidu/platform/core/c/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 51
    iput-object p1, p0, Lcom/baidu/platform/core/c/a;->b:Lcom/baidu/mapapi/search/geocode/OnGetGeoCoderResultListener;

    .line 52
    iget-object p1, p0, Lcom/baidu/platform/core/c/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public a(Lcom/baidu/mapapi/search/geocode/GeoCodeOption;)Z
    .locals 3

    .line 20
    new-instance v0, Lcom/baidu/platform/core/c/b;

    invoke-direct {v0}, Lcom/baidu/platform/core/c/b;-><init>()V

    .line 21
    new-instance v1, Lcom/baidu/platform/core/c/c;

    invoke-direct {v1, p1}, Lcom/baidu/platform/core/c/c;-><init>(Lcom/baidu/mapapi/search/geocode/GeoCodeOption;)V

    .line 27
    sget-object v2, Lcom/baidu/platform/base/SearchType;->g:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v0, v2}, Lcom/baidu/platform/core/c/b;->a(Lcom/baidu/platform/base/SearchType;)V

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/GeoCodeOption;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/platform/core/c/b;->b(Ljava/lang/String;)V

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/baidu/platform/core/c/a;->b:Lcom/baidu/mapapi/search/geocode/OnGetGeoCoderResultListener;

    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/platform/core/c/a;->a(Lcom/baidu/platform/base/e;Ljava/lang/Object;Lcom/baidu/platform/base/d;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;)Z
    .locals 2

    .line 37
    new-instance v0, Lcom/baidu/platform/core/c/e;

    invoke-direct {v0}, Lcom/baidu/platform/core/c/e;-><init>()V

    .line 38
    new-instance v1, Lcom/baidu/platform/core/c/f;

    invoke-direct {v1, p1}, Lcom/baidu/platform/core/c/f;-><init>(Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;)V

    .line 44
    sget-object p1, Lcom/baidu/platform/base/SearchType;->h:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/core/c/e;->a(Lcom/baidu/platform/base/SearchType;)V

    .line 45
    iget-object p1, p0, Lcom/baidu/platform/core/c/a;->b:Lcom/baidu/mapapi/search/geocode/OnGetGeoCoderResultListener;

    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/platform/core/c/a;->a(Lcom/baidu/platform/base/e;Ljava/lang/Object;Lcom/baidu/platform/base/d;)Z

    move-result p1

    return p1
.end method
