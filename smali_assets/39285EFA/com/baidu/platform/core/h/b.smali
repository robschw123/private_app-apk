.class public Lcom/baidu/platform/core/h/b;
.super Lcom/baidu/platform/base/a;
.source "SuggestionSearchImp.java"

# interfaces
.implements Lcom/baidu/platform/core/h/a;


# instance fields
.field private b:Lcom/baidu/mapapi/search/sug/OnGetSuggestionResultListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/baidu/platform/base/a;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/baidu/platform/core/h/b;->b:Lcom/baidu/mapapi/search/sug/OnGetSuggestionResultListener;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/baidu/platform/core/h/b;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/baidu/platform/core/h/b;->b:Lcom/baidu/mapapi/search/sug/OnGetSuggestionResultListener;

    .line 47
    iget-object v0, p0, Lcom/baidu/platform/core/h/b;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public a(Lcom/baidu/mapapi/search/sug/OnGetSuggestionResultListener;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/baidu/platform/core/h/b;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 39
    iput-object p1, p0, Lcom/baidu/platform/core/h/b;->b:Lcom/baidu/mapapi/search/sug/OnGetSuggestionResultListener;

    .line 40
    iget-object p1, p0, Lcom/baidu/platform/core/h/b;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public a(Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;)Z
    .locals 2

    .line 20
    new-instance v0, Lcom/baidu/platform/core/h/c;

    invoke-direct {v0}, Lcom/baidu/platform/core/h/c;-><init>()V

    .line 27
    sget-object v1, Lcom/baidu/platform/base/SearchType;->f:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v0, v1}, Lcom/baidu/platform/core/h/c;->a(Lcom/baidu/platform/base/SearchType;)V

    .line 30
    new-instance v1, Lcom/baidu/platform/core/h/d;

    invoke-direct {v1, p1}, Lcom/baidu/platform/core/h/d;-><init>(Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;)V

    .line 33
    iget-object p1, p0, Lcom/baidu/platform/core/h/b;->b:Lcom/baidu/mapapi/search/sug/OnGetSuggestionResultListener;

    invoke-virtual {p0, v1, p1, v0}, Lcom/baidu/platform/core/h/b;->a(Lcom/baidu/platform/base/e;Ljava/lang/Object;Lcom/baidu/platform/base/d;)Z

    move-result p1

    return p1
.end method
