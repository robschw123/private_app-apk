.class public Lio/dcloud/feature/weex_websocket/UniWebSocketModule;
.super Lcom/taobao/weex/WXSDKEngine$DestroyableModule;
.source "UniWebSocketModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;
    }
.end annotation


# static fields
.field private static final KEY_CODE:Ljava/lang/String; = "code"

.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_REASON:Ljava/lang/String; = "reason"

.field private static final KEY_WAS_CLEAN:Ljava/lang/String; = "wasClean"

.field private static final TAG:Ljava/lang/String; = "WebSocketModule"


# instance fields
.field private callback_onclose:Lcom/taobao/weex/bridge/JSCallback;

.field private callback_onerror:Lcom/taobao/weex/bridge/JSCallback;

.field private callback_onmessage:Lcom/taobao/weex/bridge/JSCallback;

.field private callback_onopen:Lcom/taobao/weex/bridge/JSCallback;

.field private currentId:Ljava/lang/String;

.field private webSocketAdapterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private webSocketEventListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKEngine$DestroyableModule;-><init>()V

    const-string v0, "WebSocketModule"

    const-string v1, "create new instance"

    .line 56
    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)Ljava/util/Map;
    .locals 0

    .line 38
    iget-object p0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketAdapterMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$402(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 38
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketAdapterMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$500(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)Ljava/util/Map;
    .locals 0

    .line 38
    iget-object p0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketEventListenerMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$502(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 38
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketEventListenerMap:Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method public WebSocket(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 64
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string v1, "utf-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 65
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "id"

    .line 66
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    .line 67
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "protocol"

    .line 68
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "header"

    .line 69
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 70
    iget-object v3, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketAdapterMap:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 71
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketAdapterMap:Ljava/util/Map;

    .line 72
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketEventListenerMap:Ljava/util/Map;

    .line 75
    :cond_0
    iget-object v3, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketAdapterMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketEventListenerMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    return-void

    .line 79
    :cond_1
    iget-object v3, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketAdapterMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketEventListenerMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 80
    iget-object v3, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketAdapterMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_2
    iget-object v3, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getWXWebSocketAdapter()Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    move-result-object v3

    .line 83
    new-instance v4, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;

    invoke-direct {v4, p0, v0}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;-><init>(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;Ljava/lang/String;)V

    .line 84
    iget-object v5, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onopen:Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {v4, v5}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->access$002(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    .line 85
    iget-object v5, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onmessage:Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {v4, v5}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->access$102(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    .line 86
    iget-object v5, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onclose:Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {v4, v5}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->access$202(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    .line 87
    iget-object v5, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onerror:Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {v4, v5}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->access$302(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    .line 88
    invoke-interface {v3, v1, v2, p1, v4}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;)V

    .line 89
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketEventListenerMap:Ljava/util/Map;

    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iput-object v0, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->currentId:Ljava/lang/String;

    .line 91
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketAdapterMap:Ljava/util/Map;

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "[UniWebSocketModule] alert param parse error "

    .line 93
    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public close(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string v1, "utf-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 122
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "id"

    .line 123
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "code"

    .line 124
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "reason"

    .line 125
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 126
    sget-object v2, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_NORMAL:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {v2}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->getCode()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 129
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    :catch_0
    :cond_0
    :try_start_2
    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketAdapterMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    invoke-interface {v0, v2, p1}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;->close(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "[UniWebSocketModule] alert param parse error "

    .line 136
    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 3

    .line 184
    new-instance v0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$1;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$1;-><init>(Lio/dcloud/feature/weex_websocket/UniWebSocketModule;)V

    .line 201
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 202
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 204
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public onclose(Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onclose:Lcom/taobao/weex/bridge/JSCallback;

    .line 165
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketEventListenerMap:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 166
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 167
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;

    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onclose:Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {v0, v1}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->access$202(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onerror(Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onerror:Lcom/taobao/weex/bridge/JSCallback;

    .line 175
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketEventListenerMap:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 176
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 177
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;

    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onerror:Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {v0, v1}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->access$302(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onmessage(Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onmessage:Lcom/taobao/weex/bridge/JSCallback;

    .line 154
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketEventListenerMap:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 155
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 156
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;

    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onmessage:Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {v0, v1}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->access$102(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onopen(Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onopen:Lcom/taobao/weex/bridge/JSCallback;

    .line 144
    iget-object p1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketEventListenerMap:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 145
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 146
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;

    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->callback_onopen:Lcom/taobao/weex/bridge/JSCallback;

    invoke-static {v0, v1}, Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;->access$002(Lio/dcloud/feature/weex_websocket/UniWebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string v1, "utf-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 106
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v0, "id"

    .line 107
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    .line 108
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 109
    iget-object v1, p0, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;->webSocketAdapterMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    invoke-interface {v0, p1}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;->send(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "[UniWebSocketModule] alert param parse error "

    .line 111
    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
