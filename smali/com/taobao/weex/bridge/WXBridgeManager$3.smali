.class Lcom/taobao/weex/bridge/WXBridgeManager$3;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->setSandBoxContext(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 362
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$3;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$3;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$100(Lcom/taobao/weex/bridge/WXBridgeManager;Z)V

    .line 366
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->resetAllModuleState()V

    .line 368
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$200()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "main.js"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 371
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "weex-main-jsfm.js"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 373
    :goto_0
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$3;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$300(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lcom/taobao/weex/bridge/WXServiceManager;->reload()V

    .line 375
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->reload()V

    .line 376
    invoke-static {}, Lcom/taobao/weex/ui/WXComponentRegistry;->reload()V

    return-void
.end method
