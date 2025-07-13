.class Lcom/taobao/weex/bridge/WXBridgeManager$27;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->notifySerializeCodeCache()V
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

    .line 2756
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$27;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2759
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$27;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2762
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$27;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/taobao/weex/bridge/WXJSObject;

    const-string v3, ""

    const-string v4, "notifySerializeCodeCache"

    invoke-static {v0, v3, v1, v4, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$1800(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V

    return-void
.end method
