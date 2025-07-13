.class Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner$1;
.super Ljava/lang/Object;
.source "RequestHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;->onSuccess(Lcom/taobao/weex/common/WXResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;

.field final synthetic val$bundleTypeStr:Ljava/lang/String;

.field final synthetic val$script:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$script",
            "val$bundleTypeStr"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner$1;->this$1:Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;

    iput-object p2, p0, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner$1;->val$script:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner$1;->val$bundleTypeStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 139
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner$1;->this$1:Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;

    iget-object v0, v0, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;->this$0:Lcom/taobao/weex/bridge/RequestHandler;

    iget-object v1, p0, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner$1;->this$1:Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;

    invoke-static {v1}, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;->access$000(Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner$1;->val$script:Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner$1;->val$bundleTypeStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/weex/bridge/RequestHandler;->nativeInvokeOnSuccess(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner$1;->this$1:Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;

    iget-object v0, v0, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;->this$0:Lcom/taobao/weex/bridge/RequestHandler;

    iget-object v1, p0, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner$1;->this$1:Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;

    invoke-static {v1}, Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;->access$000(Lcom/taobao/weex/bridge/RequestHandler$OnHttpListenerInner;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/bridge/RequestHandler;->nativeInvokeOnFailed(J)V

    :goto_0
    return-void
.end method
