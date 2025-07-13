.class public Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;
.super Ljava/lang/Object;
.source "DefaultWebSocketAdapter.java"

# interfaces
.implements Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;


# static fields
.field private static mConnectPool:Ldc/squareup/okhttp3/ConnectionPool;


# instance fields
.field private eventListener:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

.field private throttleUtil:Lio/dcloud/common/util/ThrottleUtil;

.field private ws:Ldc/squareup/okhttp3/WebSocket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->throttleUtil:Lio/dcloud/common/util/ThrottleUtil;

    return-void
.end method

.method static synthetic access$002(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;Ldc/squareup/okhttp3/WebSocket;)Ldc/squareup/okhttp3/WebSocket;
    .locals 0

    .line 57
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->ws:Ldc/squareup/okhttp3/WebSocket;

    return-object p1
.end method

.method static synthetic access$100(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->eventListener:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    return-object p0
.end method

.method static synthetic access$200(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)Lio/dcloud/common/util/ThrottleUtil;
    .locals 0

    .line 57
    iget-object p0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->throttleUtil:Lio/dcloud/common/util/ThrottleUtil;

    return-object p0
.end method

.method static synthetic access$202(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;Lio/dcloud/common/util/ThrottleUtil;)Lio/dcloud/common/util/ThrottleUtil;
    .locals 0

    .line 57
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->throttleUtil:Lio/dcloud/common/util/ThrottleUtil;

    return-object p1
.end method

.method private reportError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->eventListener:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    if-eqz v0, :cond_0

    .line 400
    invoke-interface {v0, p1}, Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close(ILjava/lang/String;)V
    .locals 1
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

    .line 377
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->ws:Ldc/squareup/okhttp3/WebSocket;

    if-eqz v0, :cond_0

    .line 379
    :try_start_0
    invoke-interface {v0, p1, p2}, Ldc/squareup/okhttp3/WebSocket;->close(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 381
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 382
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->reportError(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0
        }
        names = {
            "url",
            "protocol",
            "listener"
        }
    .end annotation

    .line 66
    iput-object p3, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->eventListener:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    .line 68
    new-instance p3, Ldc/squareup/okhttp3/OkHttpClient$Builder;

    invoke-direct {p3}, Ldc/squareup/okhttp3/OkHttpClient$Builder;-><init>()V

    const/4 v0, 0x0

    .line 72
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    const-string v1, "TLSv1.2"

    .line 73
    invoke-static {v1}, Lio/dcloud/common/adapter/util/DCloudTrustManager;->getSSLSocketFactory(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    new-array v2, v2, [Ldc/squareup/okhttp3/ConnectionSpec;

    .line 75
    sget-object v3, Ldc/squareup/okhttp3/ConnectionSpec;->MODERN_TLS:Ldc/squareup/okhttp3/ConnectionSpec;

    aput-object v3, v2, v0

    const/4 v3, 0x1

    sget-object v4, Ldc/squareup/okhttp3/ConnectionSpec;->COMPATIBLE_TLS:Ldc/squareup/okhttp3/ConnectionSpec;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ldc/squareup/okhttp3/ConnectionSpec;->CLEARTEXT:Ldc/squareup/okhttp3/ConnectionSpec;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3, v2}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {}, Lio/dcloud/common/adapter/util/DCloudTrustManager;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 84
    invoke-virtual {p3, v1}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 89
    invoke-virtual {v1}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    .line 87
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 91
    :cond_2
    :goto_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x18

    invoke-virtual {p3, v2, v3, v1}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 92
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v2, v3, v1}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 93
    invoke-static {v0}, Lio/dcloud/common/adapter/util/DCloudTrustManager;->getHostnameVerifier(Z)Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-result-object v0

    invoke-virtual {p3, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 95
    new-instance v0, Ldc/squareup/okhttp3/Request$Builder;

    invoke-direct {v0}, Ldc/squareup/okhttp3/Request$Builder;-><init>()V

    .line 96
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Sec-WebSocket-Protocol"

    .line 97
    invoke-virtual {v0, v1, p2}, Ldc/squareup/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    :cond_3
    const-string p2, "Origin"

    const-string v1, "http://localhost"

    .line 99
    invoke-virtual {v0, p2, v1}, Ldc/squareup/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    .line 101
    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/Request$Builder;->url(Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    .line 104
    invoke-virtual {v0}, Ldc/squareup/okhttp3/Request$Builder;->build()Ldc/squareup/okhttp3/Request;

    move-result-object p1

    .line 105
    invoke-virtual {p3}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->build()Ldc/squareup/okhttp3/OkHttpClient;

    move-result-object p2

    .line 107
    new-instance p3, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;

    invoke-direct {p3, p0}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$1;-><init>(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)V

    invoke-virtual {p2, p1, p3}, Ldc/squareup/okhttp3/OkHttpClient;->newWebSocket(Ldc/squareup/okhttp3/Request;Ldc/squareup/okhttp3/WebSocketListener;)Ldc/squareup/okhttp3/WebSocket;

    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "protocol",
            "headerJson",
            "listener"
        }
    .end annotation

    const-string v0, "Origin"

    .line 185
    iput-object p4, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->eventListener:Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter$EventListener;

    .line 187
    new-instance p4, Ldc/squareup/okhttp3/OkHttpClient$Builder;

    invoke-direct {p4}, Ldc/squareup/okhttp3/OkHttpClient$Builder;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 191
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_0

    const-string v3, "TLSv1.2"

    .line 192
    invoke-static {v3}, Lio/dcloud/common/adapter/util/DCloudTrustManager;->getSSLSocketFactory(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x3

    new-array v4, v4, [Ldc/squareup/okhttp3/ConnectionSpec;

    .line 194
    sget-object v5, Ldc/squareup/okhttp3/ConnectionSpec;->MODERN_TLS:Ldc/squareup/okhttp3/ConnectionSpec;

    aput-object v5, v4, v2

    sget-object v5, Ldc/squareup/okhttp3/ConnectionSpec;->COMPATIBLE_TLS:Ldc/squareup/okhttp3/ConnectionSpec;

    aput-object v5, v4, v1

    const/4 v5, 0x2

    sget-object v6, Ldc/squareup/okhttp3/ConnectionSpec;->CLEARTEXT:Ldc/squareup/okhttp3/ConnectionSpec;

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p4, v4}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    goto :goto_0

    .line 200
    :cond_0
    invoke-static {}, Lio/dcloud/common/adapter/util/DCloudTrustManager;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 203
    invoke-virtual {p4, v3}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 208
    invoke-virtual {v3}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v3

    .line 206
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 210
    :cond_2
    :goto_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x18

    invoke-virtual {p4, v4, v5, v3}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 211
    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p4, v4, v5, v3}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 212
    sget-object v3, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->mConnectPool:Ldc/squareup/okhttp3/ConnectionPool;

    if-nez v3, :cond_3

    .line 213
    new-instance v3, Ldc/squareup/okhttp3/ConnectionPool;

    invoke-direct {v3}, Ldc/squareup/okhttp3/ConnectionPool;-><init>()V

    sput-object v3, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->mConnectPool:Ldc/squareup/okhttp3/ConnectionPool;

    .line 215
    :cond_3
    sget-object v3, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->mConnectPool:Ldc/squareup/okhttp3/ConnectionPool;

    invoke-virtual {p4, v3}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->connectionPool(Ldc/squareup/okhttp3/ConnectionPool;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 216
    invoke-static {v2}, Lio/dcloud/common/adapter/util/DCloudTrustManager;->getHostnameVerifier(Z)Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-result-object v3

    invoke-virtual {p4, v3}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 218
    new-instance v3, Ldc/squareup/okhttp3/Request$Builder;

    invoke-direct {v3}, Ldc/squareup/okhttp3/Request$Builder;-><init>()V

    .line 219
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "Sec-WebSocket-Protocol"

    .line 220
    invoke-virtual {v3, v4, p2}, Ldc/squareup/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    .line 225
    :cond_4
    :try_start_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 226
    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-eqz p2, :cond_7

    .line 228
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 229
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 230
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 231
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v2, 0x1

    .line 234
    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 235
    invoke-virtual {v3, v4, p3}, Ldc/squareup/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception p2

    .line 242
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    if-nez v2, :cond_8

    const-string p2, "http://localhost"

    .line 246
    invoke-virtual {v3, v0, p2}, Ldc/squareup/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    .line 249
    :cond_8
    invoke-virtual {v3, p1}, Ldc/squareup/okhttp3/Request$Builder;->url(Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    .line 252
    invoke-virtual {v3}, Ldc/squareup/okhttp3/Request$Builder;->build()Ldc/squareup/okhttp3/Request;

    move-result-object p1

    .line 253
    invoke-virtual {p4}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->build()Ldc/squareup/okhttp3/OkHttpClient;

    move-result-object p2

    .line 256
    new-instance p3, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;

    invoke-direct {p3, p0}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter$2;-><init>(Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;)V

    invoke-virtual {p2, p1, p3}, Ldc/squareup/okhttp3/OkHttpClient;->newWebSocket(Ldc/squareup/okhttp3/Request;Ldc/squareup/okhttp3/WebSocketListener;)Ldc/squareup/okhttp3/WebSocket;

    return-void
.end method

.method public destroy()V
    .locals 3

    .line 389
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->ws:Ldc/squareup/okhttp3/WebSocket;

    if-eqz v0, :cond_0

    .line 391
    :try_start_0
    sget-object v1, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_GOING_AWAY:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {v1}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->getCode()I

    move-result v1

    sget-object v2, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_GOING_AWAY:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {v2}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ldc/squareup/okhttp3/WebSocket;->close(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 393
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public send(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const-string v0, "base64"

    .line 353
    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->ws:Ldc/squareup/okhttp3/WebSocket;

    if-eqz v1, :cond_2

    :try_start_0
    const-string v1, "@type"

    .line 355
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "some error occur"

    if-eqz v1, :cond_1

    :try_start_1
    const-string v3, "binary"

    .line 356
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 359
    invoke-static {p1}, Ldc/squareup/okio/ByteString;->of([B)Ldc/squareup/okio/ByteString;

    move-result-object p1

    .line 360
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->ws:Ldc/squareup/okhttp3/WebSocket;

    invoke-interface {v0, p1}, Ldc/squareup/okhttp3/WebSocket;->send(Ldc/squareup/okio/ByteString;)Z

    goto :goto_0

    .line 362
    :cond_0
    invoke-direct {p0, v2}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->reportError(Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_1
    invoke-direct {p0, v2}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->reportError(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 368
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->reportError(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "WebSocket is not ready"

    .line 371
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->reportError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 332
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "@type"

    .line 333
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "binary"

    .line 335
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "base64"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->send(Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    .line 340
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->ws:Ldc/squareup/okhttp3/WebSocket;

    if-eqz v0, :cond_1

    .line 342
    :try_start_1
    invoke-interface {v0, p1}, Ldc/squareup/okhttp3/WebSocket;->send(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 344
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 345
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->reportError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "WebSocket is not ready"

    .line 348
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapter;->reportError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
