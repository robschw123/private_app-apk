.class Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;
.super Ldc/squareup/okhttp3/WebSocketListener;
.source "DefaultWebSocketAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->connect(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-direct {p0}, Ldc/squareup/okhttp3/WebSocketListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Ldc/squareup/okhttp3/WebSocket;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "webSocket",
            "code",
            "reason"
        }
    .end annotation

    .line 155
    invoke-super {p0, p1, p2, p3}, Ldc/squareup/okhttp3/WebSocketListener;->onClosed(Ldc/squareup/okhttp3/WebSocket;ILjava/lang/String;)V

    .line 156
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$200(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lio/dcloud/common/util/ThrottleUtil;

    move-result-object p1

    if-nez p1, :cond_0

    .line 157
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    new-instance v0, Lio/dcloud/common/util/ThrottleUtil;

    invoke-direct {v0}, Lio/dcloud/common/util/ThrottleUtil;-><init>()V

    invoke-static {p1, v0}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$202(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;Lio/dcloud/common/util/ThrottleUtil;)Lio/dcloud/common/util/ThrottleUtil;

    .line 159
    :cond_0
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$200(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lio/dcloud/common/util/ThrottleUtil;

    move-result-object p1

    new-instance v0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1$2;

    invoke-direct {v0, p0, p2, p3}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1$2;-><init>(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;ILjava/lang/String;)V

    const-wide/16 p2, 0xa

    invoke-virtual {p1, v0, p2, p3}, Lio/dcloud/common/util/ThrottleUtil;->throttlePost(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onClosing(Ldc/squareup/okhttp3/WebSocket;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "webSocket",
            "code",
            "reason"
        }
    .end annotation

    .line 140
    invoke-super {p0, p1, p2, p3}, Ldc/squareup/okhttp3/WebSocketListener;->onClosing(Ldc/squareup/okhttp3/WebSocket;ILjava/lang/String;)V

    .line 141
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$200(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lio/dcloud/common/util/ThrottleUtil;

    move-result-object p1

    if-nez p1, :cond_0

    .line 142
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    new-instance v0, Lio/dcloud/common/util/ThrottleUtil;

    invoke-direct {v0}, Lio/dcloud/common/util/ThrottleUtil;-><init>()V

    invoke-static {p1, v0}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$202(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;Lio/dcloud/common/util/ThrottleUtil;)Lio/dcloud/common/util/ThrottleUtil;

    .line 144
    :cond_0
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$200(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lio/dcloud/common/util/ThrottleUtil;

    move-result-object p1

    new-instance v0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1$1;

    invoke-direct {v0, p0, p2, p3}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1$1;-><init>(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;ILjava/lang/String;)V

    const-wide/16 p2, 0xa

    invoke-virtual {p1, v0, p2, p3}, Lio/dcloud/common/util/ThrottleUtil;->throttlePost(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onFailure(Ldc/squareup/okhttp3/WebSocket;Ljava/lang/Throwable;Ldc/squareup/okhttp3/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "webSocket",
            "t",
            "response"
        }
    .end annotation

    .line 169
    invoke-super {p0, p1, p2, p3}, Ldc/squareup/okhttp3/WebSocketListener;->onFailure(Ldc/squareup/okhttp3/WebSocket;Ljava/lang/Throwable;Ldc/squareup/okhttp3/Response;)V

    .line 170
    instance-of p1, p2, Ljava/io/EOFException;

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object p1

    sget-object p2, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_NORMAL:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {p2}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->getCode()I

    move-result p2

    sget-object p3, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_NORMAL:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {p3}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->name()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    invoke-interface {p1, p2, p3, v0}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onClose(ILjava/lang/String;Z)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onMessage(Ldc/squareup/okhttp3/WebSocket;Ldc/squareup/okio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "webSocket",
            "bytes"
        }
    .end annotation

    .line 129
    invoke-super {p0, p1, p2}, Ldc/squareup/okhttp3/WebSocketListener;->onMessage(Ldc/squareup/okhttp3/WebSocket;Ldc/squareup/okio/ByteString;)V

    .line 130
    invoke-virtual {p2}, Ldc/squareup/okio/ByteString;->toByteArray()[B

    move-result-object p1

    const/4 p2, 0x2

    .line 131
    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 132
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v0, "@type"

    const-string v1, "binary"

    .line 133
    invoke-virtual {p2, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "base64"

    .line 134
    invoke-virtual {p2, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object p1

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onMessage(Ljava/lang/String;)V

    return-void
.end method

.method public onMessage(Ldc/squareup/okhttp3/WebSocket;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "webSocket",
            "text"
        }
    .end annotation

    .line 122
    invoke-super {p0, p1, p2}, Ldc/squareup/okhttp3/WebSocketListener;->onMessage(Ldc/squareup/okhttp3/WebSocket;Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onMessage(Ljava/lang/String;)V

    return-void
.end method

.method public onOpen(Ldc/squareup/okhttp3/WebSocket;Ldc/squareup/okhttp3/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "webSocket",
            "response"
        }
    .end annotation

    .line 110
    invoke-super {p0, p1, p2}, Ldc/squareup/okhttp3/WebSocketListener;->onOpen(Ldc/squareup/okhttp3/WebSocket;Ldc/squareup/okhttp3/Response;)V

    .line 111
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {v0, p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$002(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;Ldc/squareup/okhttp3/WebSocket;)Ldc/squareup/okhttp3/WebSocket;

    .line 112
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onOpen()V

    .line 113
    invoke-virtual {p2}, Ldc/squareup/okhttp3/Response;->headers()Ldc/squareup/okhttp3/Headers;

    move-result-object p1

    .line 114
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 115
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    invoke-virtual {p1, v1}, Ldc/squareup/okhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
