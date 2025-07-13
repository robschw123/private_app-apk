.class Lcom/taobao/weex/bridge/WXBridgeManager$15;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->callbackJavascriptOnDataRender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$callback:Ljava/lang/String;

.field final synthetic val$data:Ljava/lang/Object;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$keepAlive:Z


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$data",
            "val$instanceId",
            "val$callback",
            "val$keepAlive"
        }
    .end annotation

    .line 1426
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$data:Ljava/lang/Object;

    iput-object p3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$instanceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$callback:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$keepAlive:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "callbackJavascriptOnDataRender"

    .line 1430
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1431
    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$data:Ljava/lang/Object;

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1432
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1433
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callbackJavascriptOnDataRender >>>> instanceId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$instanceId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", data:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 1436
    :cond_0
    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v4

    instance-of v4, v4, Lcom/taobao/weex/bridge/WXBridge;

    if-eqz v4, :cond_1

    .line 1437
    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/bridge/WXBridge;

    iget-object v5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$instanceId:Ljava/lang/String;

    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$callback:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$keepAlive:Z

    invoke-virtual {v4, v5, v6, v3, v7}, Lcom/taobao/weex/bridge/WXBridge;->invokeCallbackOnDataRender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1439
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {v0, v3, v4}, Lcom/taobao/weex/utils/WXLogUtils;->renderPerformanceLog(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WXBridgeManager] callbackJavascriptOnDataRender "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1442
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$15;->val$instanceId:Ljava/lang/String;

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1445
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
