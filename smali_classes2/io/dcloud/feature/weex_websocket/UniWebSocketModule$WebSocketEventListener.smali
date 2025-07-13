.class Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;
.super Ljava/lang/Object;
.source "UniWebSocketModule.java"

# interfaces
.implements Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex_websocket/UniWebSocketModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebSocketEventListener"
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private onClose:Lcom/taobao/weex/bridge/JSCallback;

.field private onError:Lcom/taobao/weex/bridge/JSCallback;

.field private onMessage:Lcom/taobao/weex/bridge/JSCallback;

.field private onOpen:Lcom/taobao/weex/bridge/JSCallback;

.field final synthetic this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;


# direct methods
.method public constructor <init>(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "id"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p2, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->id:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;
    .locals 0

    .line 208
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onOpen:Lcom/taobao/weex/bridge/JSCallback;

    return-object p1
.end method

.method static synthetic access$102(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;
    .locals 0

    .line 208
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onMessage:Lcom/taobao/weex/bridge/JSCallback;

    return-object p1
.end method

.method static synthetic access$202(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;
    .locals 0

    .line 208
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onClose:Lcom/taobao/weex/bridge/JSCallback;

    return-object p1
.end method

.method static synthetic access$302(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;
    .locals 0

    .line 208
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onError:Lcom/taobao/weex/bridge/JSCallback;

    return-object p1
.end method


# virtual methods
.method public onClose(ILjava/lang/String;Z)V
    .locals 3
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

    .line 251
    iget-object v0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onClose:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_0

    .line 252
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 253
    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->id:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "code"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "reason"

    .line 255
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "wasClean"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onClose:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    .line 259
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-static {p1}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->access$500(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 260
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-static {p1}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->access$500(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->id:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onError:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_0

    .line 268
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 269
    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->id:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    .line 270
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onError:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    .line 273
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-static {p1}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->access$500(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 274
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->this$0:Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-static {p1}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->access$500(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->id:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const-string v0, "data"

    .line 232
    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onMessage:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v1, :cond_1

    .line 233
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 234
    iget-object v2, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->id:Ljava/lang/String;

    const-string v3, "id"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string v3, "@type"

    .line 237
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "base64"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 238
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 240
    :cond_0
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :goto_0
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onMessage:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p1, v1}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onOpen()V
    .locals 3

    .line 222
    iget-object v0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onOpen:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_0

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 224
    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->id:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->onOpen:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {v1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
