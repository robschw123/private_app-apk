.class Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;
.super Ljava/lang/Object;
.source "WebSocketModule.java"

# interfaces
.implements Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/appfram/websocket/WebSocketModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebSocketEventListener"
.end annotation


# instance fields
.field private onClose:Lcom/taobao/weex/bridge/JSCallback;

.field private onError:Lcom/taobao/weex/bridge/JSCallback;

.field private onMessage:Lcom/taobao/weex/bridge/JSCallback;

.field private onOpen:Lcom/taobao/weex/bridge/JSCallback;

.field final synthetic this$0:Lcom/taobao/weex/appfram/websocket/WebSocketModule;


# direct methods
.method private constructor <init>(Lcom/taobao/weex/appfram/websocket/WebSocketModule;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->this$0:Lcom/taobao/weex/appfram/websocket/WebSocketModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/appfram/websocket/WebSocketModule;Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;)V
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;-><init>(Lcom/taobao/weex/appfram/websocket/WebSocketModule;)V

    return-void
.end method

.method static synthetic access$102(Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->onOpen:Lcom/taobao/weex/bridge/JSCallback;

    return-object p1
.end method

.method static synthetic access$202(Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->onMessage:Lcom/taobao/weex/bridge/JSCallback;

    return-object p1
.end method

.method static synthetic access$302(Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->onClose:Lcom/taobao/weex/bridge/JSCallback;

    return-object p1
.end method

.method static synthetic access$402(Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->onError:Lcom/taobao/weex/bridge/JSCallback;

    return-object p1
.end method


# virtual methods
.method public onClose(ILjava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "reason",
            "wasClean"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->onClose:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 193
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "code"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "reason"

    .line 194
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo p2, "wasClean"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object p1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->onClose:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->onError:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_0

    .line 203
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "data"

    .line 204
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object p1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->onError:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const-string v0, "data"

    .line 177
    iget-object v1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->onMessage:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v1, :cond_0

    .line 178
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 180
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 181
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :goto_0
    iget-object p1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->onMessage:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p1, v1}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onOpen()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->onOpen:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_0

    .line 171
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
