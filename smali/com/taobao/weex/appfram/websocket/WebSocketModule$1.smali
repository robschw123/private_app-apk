.class Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;
.super Ljava/lang/Object;
.source "WebSocketModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/websocket/WebSocketModule;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/websocket/WebSocketModule;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/websocket/WebSocketModule;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;->this$0:Lcom/taobao/weex/appfram/websocket/WebSocketModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close session with instance id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;->this$0:Lcom/taobao/weex/appfram/websocket/WebSocketModule;

    iget-object v1, v1, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketModule"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;->this$0:Lcom/taobao/weex/appfram/websocket/WebSocketModule;

    invoke-static {v0}, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->access$500(Lcom/taobao/weex/appfram/websocket/WebSocketModule;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;->this$0:Lcom/taobao/weex/appfram/websocket/WebSocketModule;

    invoke-static {v0}, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->access$500(Lcom/taobao/weex/appfram/websocket/WebSocketModule;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;->destroy()V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;->this$0:Lcom/taobao/weex/appfram/websocket/WebSocketModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->access$502(Lcom/taobao/weex/appfram/websocket/WebSocketModule;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    .line 140
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;->this$0:Lcom/taobao/weex/appfram/websocket/WebSocketModule;

    invoke-static {v0, v1}, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->access$602(Lcom/taobao/weex/appfram/websocket/WebSocketModule;Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;)Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    return-void
.end method
