.class public final Lcom/taobao/weex/common/WXWorkThreadManager;
.super Ljava/lang/Object;
.source "WXWorkThreadManager.java"


# instance fields
.field private singleThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/common/WXWorkThreadManager;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/taobao/weex/common/WXWorkThreadManager;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/taobao/weex/common/WXWorkThreadManager;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/taobao/weex/common/WXWorkThreadManager;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
