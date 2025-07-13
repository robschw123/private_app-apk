.class public Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;
.super Ljava/lang/Object;
.source "DCWXHttpAdapter.java"

# interfaces
.implements Lcom/taobao/weex/adapter/IWXHttpAdapter;


# static fields
.field private static mConnectPool:Ldc/squareup/okhttp3/ConnectionPool;

.field private static sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->readInputStreamAsBytes(Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->readInputStream(Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private execute(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/16 v0, 0xa

    .line 61
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 63
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private readInputStream(Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputStream",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 p1, 0x800

    new-array p1, p1, [C

    .line 276
    :cond_1
    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x0

    .line 277
    invoke-virtual {v0, p1, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-interface {p2, v2}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpResponseProgress(I)V

    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readInputStreamAsBytes(Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)[B
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputStream",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 249
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x800

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 255
    :cond_1
    :goto_0
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 256
    invoke-virtual {v0, v2, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v4, v5

    if-eqz p2, :cond_1

    .line 259
    invoke-interface {p2, v4}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpResponseProgress(I)V

    goto :goto_0

    .line 263
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 265
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getHostnameVerifier(Z)Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sslVerify"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 288
    sget-object p1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    return-object p1

    .line 290
    :cond_0
    sget-object p1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    return-object p1
.end method

.method public getImageOkHttpClient()Ldc/squareup/okhttp3/OkHttpClient;
    .locals 5

    .line 296
    new-instance v0, Ldc/squareup/okhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;-><init>()V

    const/16 v1, 0x7530

    int-to-long v1, v1

    .line 297
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 298
    invoke-virtual {v3, v1, v2, v4}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 299
    invoke-virtual {v3, v1, v2, v4}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 300
    invoke-virtual {v3, v1, v2, v4}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ldc/squareup/okhttp3/Protocol;->HTTP_1_1:Ldc/squareup/okhttp3/Protocol;

    .line 301
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 303
    invoke-virtual {v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->build()Ldc/squareup/okhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public getOKRequest(Ldc/squareup/okhttp3/OkHttpClient$Builder;Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ldc/squareup/okhttp3/Request;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "httpBuilder",
            "request",
            "listener"
        }
    .end annotation

    .line 131
    iget v0, p2, Lcom/taobao/weex/common/WXRequest;->timeoutMs:I

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 132
    invoke-virtual {p1, v0, v1, v2}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget v1, p2, Lcom/taobao/weex/common/WXRequest;->timeoutMs:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 133
    invoke-virtual {v0, v1, v2, v3}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget v1, p2, Lcom/taobao/weex/common/WXRequest;->timeoutMs:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 134
    invoke-virtual {v0, v1, v2, v3}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget v1, p2, Lcom/taobao/weex/common/WXRequest;->timeoutMs:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 135
    invoke-virtual {v0, v1, v2, v3}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ldc/squareup/okhttp3/Protocol;->HTTP_1_1:Ldc/squareup/okhttp3/Protocol;

    .line 136
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 138
    iget-boolean v0, p2, Lcom/taobao/weex/common/WXRequest;->isFirstIpv4:Z

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Lio/dcloud/common/adapter/util/DCOKDns;

    invoke-direct {v0}, Lio/dcloud/common/adapter/util/DCOKDns;-><init>()V

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->dns(Ldc/squareup/okhttp3/Dns;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 142
    :cond_0
    iget-object v0, p2, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->tls:Lcom/alibaba/fastjson/JSONObject;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 147
    new-instance v0, Lio/dcloud/feature/weex/config/AndroidTlsConfig;

    invoke-direct {v0}, Lio/dcloud/feature/weex/config/AndroidTlsConfig;-><init>()V

    .line 148
    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->tls:Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "keystore"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->setKeystore(Ljava/lang/String;)V

    .line 149
    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->tls:Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "storePass"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->setStorePass(Ljava/lang/String;)V

    .line 150
    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->tls:Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "ca"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    new-array v3, v2, [Ljava/lang/String;

    .line 153
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONArray;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Ljava/lang/String;

    .line 155
    :cond_1
    invoke-virtual {v0, v3}, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->setCa([Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v1

    iget-object v3, p2, Lcom/taobao/weex/common/WXRequest;->instanceId:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/WXSDKInstance;

    .line 161
    invoke-static {v0, v1}, Lio/dcloud/feature/weex/config/UserCustomTrustManager;->getSSLSocketFactory(Lio/dcloud/feature/weex/config/AndroidTlsConfig;Lcom/taobao/weex/WXSDKInstance;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 162
    sget-object v0, Ldc/squareup/okhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Ldc/squareup/okhttp3/internal/tls/OkHostnameVerifier;

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    goto :goto_1

    .line 164
    :cond_2
    sget-object v1, Lcom/taobao/weex/http/WXStreamModule;->certMap:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/taobao/weex/http/WXStreamModule;->certMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 166
    sget-object v1, Lcom/taobao/weex/http/WXStreamModule;->certMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/http/CertDTO;

    .line 168
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v1

    iget-object v3, p2, Lcom/taobao/weex/common/WXRequest;->instanceId:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/WXSDKInstance;

    .line 171
    invoke-static {v0, v1}, Lio/dcloud/feature/weex/config/UserCustomTrustManager;->getSSLSocketFactory(Lcom/taobao/weex/http/CertDTO;Lcom/taobao/weex/WXSDKInstance;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 172
    sget-object v0, Ldc/squareup/okhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Ldc/squareup/okhttp3/internal/tls/OkHostnameVerifier;

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    goto :goto_1

    .line 176
    :cond_3
    iget-boolean v0, p2, Lcom/taobao/weex/common/WXRequest;->sslVerify:Z

    if-eqz v0, :cond_6

    .line 178
    :try_start_0
    sget-object v0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    .line 179
    invoke-static {}, Lio/dcloud/common/adapter/util/DCloudTrustManager;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 181
    :cond_4
    sget-object v0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_5

    .line 182
    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Ldc/squareup/okhttp3/OkHttpClient$Builder;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 187
    invoke-virtual {v0}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 189
    :cond_5
    :goto_0
    iget-boolean v0, p2, Lcom/taobao/weex/common/WXRequest;->sslVerify:Z

    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->getHostnameVerifier(Z)Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-result-object v0

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 195
    :cond_6
    :goto_1
    sget-object v0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->mConnectPool:Ldc/squareup/okhttp3/ConnectionPool;

    if-nez v0, :cond_7

    .line 196
    new-instance v0, Ldc/squareup/okhttp3/ConnectionPool;

    invoke-direct {v0}, Ldc/squareup/okhttp3/ConnectionPool;-><init>()V

    sput-object v0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->mConnectPool:Ldc/squareup/okhttp3/ConnectionPool;

    .line 198
    :cond_7
    sget-object v0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->mConnectPool:Ldc/squareup/okhttp3/ConnectionPool;

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->connectionPool(Ldc/squareup/okhttp3/ConnectionPool;)Ldc/squareup/okhttp3/OkHttpClient$Builder;

    .line 202
    new-instance p1, Ldc/squareup/okhttp3/Request$Builder;

    invoke-direct {p1}, Ldc/squareup/okhttp3/Request$Builder;-><init>()V

    .line 203
    iget-object v0, p2, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ldc/squareup/okhttp3/Request$Builder;->url(Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    const-string v0, "application/x-www-form-urlencoded"

    .line 205
    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    if-eqz v1, :cond_9

    .line 206
    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 207
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Content-Type"

    .line 208
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 209
    iget-object v0, p2, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    :cond_8
    iget-object v4, p2, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Ldc/squareup/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    goto :goto_2

    .line 214
    :cond_9
    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    const-string v3, "POST"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    const-string v3, "PUT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    const-string v3, "PATCH"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    const-string v3, "DELETE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3

    .line 238
    :cond_a
    iget-object p2, p2, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    const-string p3, "HEAD"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 240
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Request$Builder;->head()Ldc/squareup/okhttp3/Request$Builder;

    goto :goto_4

    .line 216
    :cond_b
    :goto_3
    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->body:Ljava/lang/String;

    if-eqz v1, :cond_c

    if-eqz p3, :cond_c

    .line 218
    invoke-interface {p3, v2}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpUploadProgress(I)V

    .line 221
    :cond_c
    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->inputType:Ljava/lang/String;

    const-string v2, "BASE64"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x64

    if-eqz v1, :cond_d

    .line 223
    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->body:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 224
    invoke-static {v0}, Ldc/squareup/okhttp3/MediaType;->parse(Ljava/lang/String;)Ldc/squareup/okhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, v1}, Ldc/squareup/okhttp3/RequestBody;->createWithBytes(Ldc/squareup/okhttp3/MediaType;[B)Ldc/squareup/okhttp3/RequestBody;

    move-result-object v0

    .line 225
    iget-object p2, p2, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Ldc/squareup/okhttp3/Request$Builder;->method(Ljava/lang/String;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/Request$Builder;

    if-eqz p3, :cond_e

    .line 228
    invoke-interface {p3, v2}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpUploadProgress(I)V

    goto :goto_4

    .line 231
    :cond_d
    invoke-static {v0}, Ldc/squareup/okhttp3/MediaType;->parse(Ljava/lang/String;)Ldc/squareup/okhttp3/MediaType;

    move-result-object v0

    iget-object v1, p2, Lcom/taobao/weex/common/WXRequest;->body:Ljava/lang/String;

    invoke-static {v0, v1}, Ldc/squareup/okhttp3/RequestBody;->create(Ldc/squareup/okhttp3/MediaType;Ljava/lang/String;)Ldc/squareup/okhttp3/RequestBody;

    move-result-object v0

    .line 232
    iget-object p2, p2, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Ldc/squareup/okhttp3/Request$Builder;->method(Ljava/lang/String;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/Request$Builder;

    if-eqz p3, :cond_e

    .line 234
    invoke-interface {p3, v2}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpUploadProgress(I)V

    .line 242
    :cond_e
    :goto_4
    invoke-virtual {p1}, Ldc/squareup/okhttp3/Request$Builder;->build()Ldc/squareup/okhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method public sendRequest(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "request",
            "listener"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 70
    invoke-interface {p2}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpStart()V

    .line 72
    :cond_0
    new-instance v0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;

    invoke-direct {v0, p0, p1, p2}, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;-><init>(Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V

    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
