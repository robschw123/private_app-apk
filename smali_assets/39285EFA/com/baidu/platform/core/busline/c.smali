.class public Lcom/baidu/platform/core/busline/c;
.super Lcom/baidu/platform/base/a;
.source "BusLineSearchImp.java"

# interfaces
.implements Lcom/baidu/platform/core/busline/IBusLineSearch;


# instance fields
.field b:Lcom/baidu/mapapi/search/busline/OnGetBusLineSearchResultListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/baidu/platform/base/a;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/baidu/platform/core/busline/c;->b:Lcom/baidu/mapapi/search/busline/OnGetBusLineSearchResultListener;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/baidu/platform/core/busline/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/baidu/platform/core/busline/c;->b:Lcom/baidu/mapapi/search/busline/OnGetBusLineSearchResultListener;

    .line 41
    iget-object v0, p0, Lcom/baidu/platform/core/busline/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public a(Lcom/baidu/mapapi/search/busline/OnGetBusLineSearchResultListener;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/baidu/platform/core/busline/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 33
    iput-object p1, p0, Lcom/baidu/platform/core/busline/c;->b:Lcom/baidu/mapapi/search/busline/OnGetBusLineSearchResultListener;

    .line 34
    iget-object p1, p0, Lcom/baidu/platform/core/busline/c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public a(Lcom/baidu/mapapi/search/busline/BusLineSearchOption;)Z
    .locals 2

    .line 19
    new-instance v0, Lcom/baidu/platform/core/busline/a;

    invoke-direct {v0}, Lcom/baidu/platform/core/busline/a;-><init>()V

    .line 20
    sget-object v1, Lcom/baidu/platform/base/SearchType;->o:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/core/busline/a;->a(Lcom/baidu/platform/base/SearchType;)V

    .line 26
    new-instance v1, Lcom/baidu/platform/core/busline/b;

    invoke-direct {v1, p1}, Lcom/baidu/platform/core/busline/b;-><init>(Lcom/baidu/mapapi/search/busline/BusLineSearchOption;)V

    .line 27
    iget-object p1, p0, Lcom/baidu/platform/core/busline/c;->b:Lcom/baidu/mapapi/search/busline/OnGetBusLineSearchResultListener;

    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/platform/core/busline/c;->a(Lcom/baidu/platform/base/e;Ljava/lang/Object;Lcom/baidu/platform/base/d;)Z

    move-result p1

    return p1
.end method
