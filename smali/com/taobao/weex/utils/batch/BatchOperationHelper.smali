.class public Lcom/taobao/weex/utils/batch/BatchOperationHelper;
.super Ljava/lang/Object;
.source "BatchOperationHelper.java"

# interfaces
.implements Lcom/taobao/weex/utils/batch/Interceptor;


# instance fields
.field private isCollecting:Z

.field private mExecutor:Lcom/taobao/weex/utils/batch/BactchExecutor;

.field private sRegisterTasks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/weex/utils/batch/BactchExecutor;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "executor"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/utils/batch/BatchOperationHelper;->sRegisterTasks:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/taobao/weex/utils/batch/BatchOperationHelper;->isCollecting:Z

    .line 39
    iput-object p1, p0, Lcom/taobao/weex/utils/batch/BatchOperationHelper;->mExecutor:Lcom/taobao/weex/utils/batch/BactchExecutor;

    .line 40
    invoke-interface {p1, p0}, Lcom/taobao/weex/utils/batch/BactchExecutor;->setInterceptor(Lcom/taobao/weex/utils/batch/Interceptor;)V

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/taobao/weex/utils/batch/BatchOperationHelper;->isCollecting:Z

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/utils/batch/BatchOperationHelper;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/taobao/weex/utils/batch/BatchOperationHelper;->sRegisterTasks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method


# virtual methods
.method public flush()V
    .locals 2

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/taobao/weex/utils/batch/BatchOperationHelper;->isCollecting:Z

    .line 58
    iget-object v0, p0, Lcom/taobao/weex/utils/batch/BatchOperationHelper;->mExecutor:Lcom/taobao/weex/utils/batch/BactchExecutor;

    new-instance v1, Lcom/taobao/weex/utils/batch/BatchOperationHelper$1;

    invoke-direct {v1, p0}, Lcom/taobao/weex/utils/batch/BatchOperationHelper$1;-><init>(Lcom/taobao/weex/utils/batch/BatchOperationHelper;)V

    invoke-interface {v0, v1}, Lcom/taobao/weex/utils/batch/BactchExecutor;->post(Ljava/lang/Runnable;)V

    .line 70
    iget-object v0, p0, Lcom/taobao/weex/utils/batch/BatchOperationHelper;->mExecutor:Lcom/taobao/weex/utils/batch/BactchExecutor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/taobao/weex/utils/batch/BactchExecutor;->setInterceptor(Lcom/taobao/weex/utils/batch/Interceptor;)V

    return-void
.end method

.method public take(Ljava/lang/Runnable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 46
    iget-boolean v0, p0, Lcom/taobao/weex/utils/batch/BatchOperationHelper;->isCollecting:Z

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/taobao/weex/utils/batch/BatchOperationHelper;->sRegisterTasks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
