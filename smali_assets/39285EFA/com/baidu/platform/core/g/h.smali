.class public Lcom/baidu/platform/core/g/h;
.super Lcom/baidu/platform/base/a;
.source "ShareUrlSearchImp.java"

# interfaces
.implements Lcom/baidu/platform/core/g/a;


# instance fields
.field b:Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/baidu/platform/base/a;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/baidu/platform/core/g/h;->b:Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/baidu/platform/core/g/h;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/baidu/platform/core/g/h;->b:Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;

    .line 69
    iget-object v0, p0, Lcom/baidu/platform/core/g/h;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public a(Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/baidu/platform/core/g/h;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 61
    iput-object p1, p0, Lcom/baidu/platform/core/g/h;->b:Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;

    .line 62
    iget-object p1, p0, Lcom/baidu/platform/core/g/h;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public a(Lcom/baidu/mapapi/search/share/LocationShareURLOption;)Z
    .locals 2

    .line 34
    new-instance v0, Lcom/baidu/platform/core/g/f;

    invoke-direct {v0}, Lcom/baidu/platform/core/g/f;-><init>()V

    .line 40
    sget-object v1, Lcom/baidu/platform/base/SearchType;->r:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/core/g/f;->a(Lcom/baidu/platform/base/SearchType;)V

    .line 41
    new-instance v1, Lcom/baidu/platform/core/g/b;

    invoke-direct {v1, p1}, Lcom/baidu/platform/core/g/b;-><init>(Lcom/baidu/mapapi/search/share/LocationShareURLOption;)V

    .line 42
    iget-object p1, p0, Lcom/baidu/platform/core/g/h;->b:Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;

    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/platform/core/g/h;->a(Lcom/baidu/platform/base/e;Ljava/lang/Object;Lcom/baidu/platform/base/d;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/mapapi/search/share/PoiDetailShareURLOption;)Z
    .locals 2

    .line 21
    new-instance v0, Lcom/baidu/platform/core/g/f;

    invoke-direct {v0}, Lcom/baidu/platform/core/g/f;-><init>()V

    .line 27
    sget-object v1, Lcom/baidu/platform/base/SearchType;->q:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/core/g/f;->a(Lcom/baidu/platform/base/SearchType;)V

    .line 28
    new-instance v1, Lcom/baidu/platform/core/g/c;

    invoke-direct {v1, p1}, Lcom/baidu/platform/core/g/c;-><init>(Lcom/baidu/mapapi/search/share/PoiDetailShareURLOption;)V

    .line 29
    iget-object p1, p0, Lcom/baidu/platform/core/g/h;->b:Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;

    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/platform/core/g/h;->a(Lcom/baidu/platform/base/e;Ljava/lang/Object;Lcom/baidu/platform/base/d;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/mapapi/search/share/RouteShareURLOption;)Z
    .locals 2

    .line 47
    new-instance v0, Lcom/baidu/platform/core/g/d;

    invoke-direct {v0}, Lcom/baidu/platform/core/g/d;-><init>()V

    .line 53
    sget-object v1, Lcom/baidu/platform/base/SearchType;->s:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/core/g/d;->a(Lcom/baidu/platform/base/SearchType;)V

    .line 54
    new-instance v1, Lcom/baidu/platform/core/g/e;

    invoke-direct {v1, p1}, Lcom/baidu/platform/core/g/e;-><init>(Lcom/baidu/mapapi/search/share/RouteShareURLOption;)V

    .line 55
    iget-object p1, p0, Lcom/baidu/platform/core/g/h;->b:Lcom/baidu/mapapi/search/share/OnGetShareUrlResultListener;

    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/platform/core/g/h;->a(Lcom/baidu/platform/base/e;Ljava/lang/Object;Lcom/baidu/platform/base/d;)Z

    move-result p1

    return p1
.end method
