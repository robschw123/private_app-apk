.class public abstract Lcom/taobao/weex/ui/action/BasicGraphicAction;
.super Ljava/lang/Object;
.source "BasicGraphicAction.java"

# interfaces
.implements Lcom/taobao/weex/ui/action/IExecutable;
.implements Ljava/lang/Runnable;


# static fields
.field public static final ActionTypeBatchBegin:I = 0x1

.field public static final ActionTypeBatchEnd:I = 0x2

.field public static final ActionTypeNormal:I


# instance fields
.field public mActionType:I

.field private mInstance:Lcom/taobao/weex/WXSDKInstance;

.field public mIsRunByBatch:Z

.field private final mRef:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "ref"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/taobao/weex/ui/action/BasicGraphicAction;->mActionType:I

    .line 35
    iput-boolean v0, p0, Lcom/taobao/weex/ui/action/BasicGraphicAction;->mIsRunByBatch:Z

    .line 39
    iput-object p1, p0, Lcom/taobao/weex/ui/action/BasicGraphicAction;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 40
    iput-object p2, p0, Lcom/taobao/weex/ui/action/BasicGraphicAction;->mRef:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public executeActionOnRender()V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicGraphicAction;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_2

    .line 57
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[BasicGraphicAction] pageId can not be null"

    .line 58
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] pageId can not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/action/BasicGraphicAction;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V

    :cond_2
    return-void
.end method

.method public final getPageId()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicGraphicAction;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getRef()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicGraphicAction;->mRef:Ljava/lang/String;

    return-object v0
.end method

.method public final getWXSDKIntance()Lcom/taobao/weex/WXSDKInstance;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/taobao/weex/ui/action/BasicGraphicAction;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    return-object v0
.end method

.method public run()V
    .locals 4

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->executeAction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 74
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    const-string v2, "BasicGraphicAction"

    if-nez v1, :cond_0

    .line 79
    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 75
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SafeRunnable run throw expection:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v2, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    throw v0
.end method
