.class public Lcom/taobao/weex/appfram/websocket/WebSocketModule;
.super Lcom/taobao/weex/WXSDKEngine$DestroyableModule;
.source "WebSocketModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;
    }
.end annotation


# static fields
.field private static final KEY_CODE:Ljava/lang/String; = "code"

.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_REASON:Ljava/lang/String; = "reason"

.field private static final KEY_WAS_CLEAN:Ljava/lang/String; = "wasClean"

.field private static final TAG:Ljava/lang/String; = "WebSocketModule"


# instance fields
.field private eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

.field private webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKEngine$DestroyableModule;-><init>()V

    const-string v0, "WebSocketModule"

    const-string v1, "create new instance"

    .line 50
    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/taobao/weex/appfram/websocket/WebSocketModule;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    return-object p0
.end method

.method static synthetic access$502(Lcom/taobao/weex/appfram/websocket/WebSocketModule;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    return-object p1
.end method

.method static synthetic access$602(Lcom/taobao/weex/appfram/websocket/WebSocketModule;Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;)Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    return-object p1
.end method

.method private reportErrorIfNoAdapter()Z
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    const-string v1, "No implementation found for IWebSocketAdapter"

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0, v1}, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->onError(Ljava/lang/String;)V

    :cond_0
    const-string v0, "WebSocketModule"

    .line 156
    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public WebSocket(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "protocol"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    if-eqz v0, :cond_0

    const-string v0, "WebSocketModule"

    const-string v1, "close"

    .line 56
    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    sget-object v1, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_GOING_AWAY:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {v1}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->getCode()I

    move-result v1

    sget-object v2, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_GOING_AWAY:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {v2}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;->close(ILjava/lang/String;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXWebSocketAdapter()Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    .line 60
    invoke-direct {p0}, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->reportErrorIfNoAdapter()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    new-instance v0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;-><init>(Lcom/taobao/weex/appfram/websocket/WebSocketModule;Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;)V

    iput-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    .line 62
    iget-object v1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    invoke-interface {v1, p1, p2, v0}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;->connect(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;)V

    :cond_1
    return-void
.end method

.method public WebSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "protocol",
            "headerJson"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    if-eqz v0, :cond_0

    const-string v0, "WebSocketModule"

    const-string v1, "close"

    .line 69
    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    sget-object v1, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_GOING_AWAY:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {v1}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->getCode()I

    move-result v1

    sget-object v2, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_GOING_AWAY:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {v2}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;->close(ILjava/lang/String;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXWebSocketAdapter()Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    .line 73
    invoke-direct {p0}, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->reportErrorIfNoAdapter()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    new-instance v0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;-><init>(Lcom/taobao/weex/appfram/websocket/WebSocketModule;Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;)V

    iput-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    .line 75
    iget-object v1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;)V

    :cond_1
    return-void
.end method

.method public close(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "reason"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->reportErrorIfNoAdapter()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    sget-object v0, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_NORMAL:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {v0}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->getCode()I

    move-result v0

    if-eqz p1, :cond_0

    .line 93
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :catch_0
    :cond_0
    iget-object p1, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    invoke-interface {p1, v0, p2}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;->close(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 3

    .line 132
    new-instance v0, Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/appfram/websocket/WebSocketModule$1;-><init>(Lcom/taobao/weex/appfram/websocket/WebSocketModule;)V

    .line 144
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 145
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public onclose(Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 1
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

    .line 118
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    if-eqz v0, :cond_0

    .line 119
    invoke-static {v0, p1}, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->access$302(Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    :cond_0
    return-void
.end method

.method public onerror(Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 1
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

    .line 125
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    if-eqz v0, :cond_0

    .line 126
    invoke-static {v0, p1}, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->access$402(Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    :cond_0
    return-void
.end method

.method public onmessage(Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 1
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

    .line 111
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    if-eqz v0, :cond_0

    .line 112
    invoke-static {v0, p1}, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->access$202(Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    :cond_0
    return-void
.end method

.method public onopen(Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 1
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

    .line 104
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->eventListener:Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;

    if-eqz v0, :cond_0

    .line 105
    invoke-static {v0, p1}, Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;->access$102(Lcom/taobao/weex/appfram/websocket/WebSocketModule$WebSocketEventListener;Lcom/taobao/weex/bridge/JSCallback;)Lcom/taobao/weex/bridge/JSCallback;

    :cond_0
    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->reportErrorIfNoAdapter()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/taobao/weex/appfram/websocket/WebSocketModule;->webSocketAdapter:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    invoke-interface {v0, p1}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;->send(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
