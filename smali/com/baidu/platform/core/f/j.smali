.class public Lcom/baidu/platform/core/f/j;
.super Lcom/baidu/platform/base/a;
.source "RoutePlanSearchImp.java"

# interfaces
.implements Lcom/baidu/platform/core/f/e;


# instance fields
.field private b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/baidu/platform/base/a;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/baidu/platform/core/f/j;->b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/baidu/platform/core/f/j;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/baidu/platform/core/f/j;->b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    .line 119
    iget-object v0, p0, Lcom/baidu/platform/core/f/j;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public a(Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/baidu/platform/core/f/j;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 22
    iput-object p1, p0, Lcom/baidu/platform/core/f/j;->b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    .line 23
    iget-object p1, p0, Lcom/baidu/platform/core/f/j;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public a(Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;)Z
    .locals 2

    .line 104
    new-instance v0, Lcom/baidu/platform/core/f/a;

    invoke-direct {v0}, Lcom/baidu/platform/core/f/a;-><init>()V

    .line 110
    sget-object v1, Lcom/baidu/platform/base/SearchType;->l:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/core/f/a;->a(Lcom/baidu/platform/base/SearchType;)V

    .line 111
    new-instance v1, Lcom/baidu/platform/core/f/b;

    invoke-direct {v1, p1}, Lcom/baidu/platform/core/f/b;-><init>(Lcom/baidu/mapapi/search/route/BikingRoutePlanOption;)V

    .line 112
    iget-object p1, p0, Lcom/baidu/platform/core/f/j;->b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/platform/core/f/j;->a(Lcom/baidu/platform/base/e;Ljava/lang/Object;Lcom/baidu/platform/base/d;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;)Z
    .locals 2

    .line 91
    new-instance v0, Lcom/baidu/platform/core/f/c;

    invoke-direct {v0}, Lcom/baidu/platform/core/f/c;-><init>()V

    .line 97
    sget-object v1, Lcom/baidu/platform/base/SearchType;->k:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/core/f/c;->a(Lcom/baidu/platform/base/SearchType;)V

    .line 98
    new-instance v1, Lcom/baidu/platform/core/f/d;

    invoke-direct {v1, p1}, Lcom/baidu/platform/core/f/d;-><init>(Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;)V

    .line 99
    iget-object p1, p0, Lcom/baidu/platform/core/f/j;->b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/platform/core/f/j;->a(Lcom/baidu/platform/base/e;Ljava/lang/Object;Lcom/baidu/platform/base/d;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/mapapi/search/route/IndoorRoutePlanOption;)Z
    .locals 2

    .line 77
    new-instance v0, Lcom/baidu/platform/core/f/f;

    invoke-direct {v0}, Lcom/baidu/platform/core/f/f;-><init>()V

    .line 83
    sget-object v1, Lcom/baidu/platform/base/SearchType;->n:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/core/f/f;->a(Lcom/baidu/platform/base/SearchType;)V

    .line 84
    new-instance v1, Lcom/baidu/platform/core/f/g;

    invoke-direct {v1, p1}, Lcom/baidu/platform/core/f/g;-><init>(Lcom/baidu/mapapi/search/route/IndoorRoutePlanOption;)V

    .line 85
    iget-object p1, p0, Lcom/baidu/platform/core/f/j;->b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/platform/core/f/j;->a(Lcom/baidu/platform/base/e;Ljava/lang/Object;Lcom/baidu/platform/base/d;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;)Z
    .locals 2

    .line 45
    new-instance v0, Lcom/baidu/platform/core/f/h;

    invoke-direct {v0}, Lcom/baidu/platform/core/f/h;-><init>()V

    .line 53
    sget-object v1, Lcom/baidu/platform/base/SearchType;->i:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/core/f/h;->a(Lcom/baidu/platform/base/SearchType;)V

    .line 56
    new-instance v1, Lcom/baidu/platform/core/f/i;

    invoke-direct {v1, p1}, Lcom/baidu/platform/core/f/i;-><init>(Lcom/baidu/mapapi/search/route/MassTransitRoutePlanOption;)V

    .line 59
    iget-object p1, p0, Lcom/baidu/platform/core/f/j;->b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/platform/core/f/j;->a(Lcom/baidu/platform/base/e;Ljava/lang/Object;Lcom/baidu/platform/base/d;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;)Z
    .locals 2

    .line 29
    new-instance v0, Lcom/baidu/platform/core/f/m;

    invoke-direct {v0}, Lcom/baidu/platform/core/f/m;-><init>()V

    .line 36
    sget-object v1, Lcom/baidu/platform/base/SearchType;->j:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/core/f/m;->a(Lcom/baidu/platform/base/SearchType;)V

    .line 38
    new-instance v1, Lcom/baidu/platform/core/f/n;

    invoke-direct {v1, p1}, Lcom/baidu/platform/core/f/n;-><init>(Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;)V

    .line 39
    iget-object p1, p0, Lcom/baidu/platform/core/f/j;->b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/platform/core/f/j;->a(Lcom/baidu/platform/base/e;Ljava/lang/Object;Lcom/baidu/platform/base/d;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;)Z
    .locals 2

    .line 64
    new-instance v0, Lcom/baidu/platform/core/f/o;

    invoke-direct {v0}, Lcom/baidu/platform/core/f/o;-><init>()V

    .line 70
    sget-object v1, Lcom/baidu/platform/base/SearchType;->m:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/core/f/o;->a(Lcom/baidu/platform/base/SearchType;)V

    .line 71
    new-instance v1, Lcom/baidu/platform/core/f/p;

    invoke-direct {v1, p1}, Lcom/baidu/platform/core/f/p;-><init>(Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;)V

    .line 72
    iget-object p1, p0, Lcom/baidu/platform/core/f/j;->b:Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/platform/core/f/j;->a(Lcom/baidu/platform/base/e;Ljava/lang/Object;Lcom/baidu/platform/base/d;)Z

    move-result p1

    return p1
.end method
