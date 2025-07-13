.class Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;
.super Ljava/lang/Object;
.source "DefaultWXHttpAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;->sendRequest(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;

.field final synthetic val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

.field final synthetic val$request:Lcom/taobao/weex/common/WXRequest;


# direct methods
.method constructor <init>(Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$request",
            "val$listener"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->this$0:Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;

    iput-object p2, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iput-object p3, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 65
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iget-object v1, v1, Lcom/taobao/weex/common/WXRequest;->instanceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/performance/WXInstanceApm;->actionNetRequest()V

    :cond_0
    const/4 v1, 0x1

    .line 72
    new-instance v2, Lcom/taobao/weex/common/WXResponse;

    invoke-direct {v2}, Lcom/taobao/weex/common/WXResponse;-><init>()V

    .line 73
    iget-object v3, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->this$0:Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;

    invoke-virtual {v3}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;->getEventReporterDelegate()Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$IEventReporterDelegate;

    move-result-object v3

    const/4 v4, 0x0

    .line 75
    :try_start_0
    iget-object v5, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->this$0:Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;

    iget-object v6, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iget-object v7, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-static {v5, v6, v7}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;->access$100(Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 76
    iget-object v6, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iget-object v6, v6, Lcom/taobao/weex/common/WXRequest;->body:Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$IEventReporterDelegate;->preConnect(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    .line 78
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 79
    iget-object v8, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    if-eqz v8, :cond_1

    .line 80
    invoke-interface {v8, v7, v6}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHeadersReceived(ILjava/util/Map;)V

    .line 82
    :cond_1
    invoke-interface {v3}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$IEventReporterDelegate;->postConnect()V

    .line 84
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    const/16 v6, 0xc8

    if-lt v7, v6, :cond_2

    const/16 v6, 0x12b

    if-gt v7, v6, :cond_2

    .line 86
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 87
    invoke-interface {v3, v5}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$IEventReporterDelegate;->interpretResponseStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v5

    .line 88
    iget-object v6, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->this$0:Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;

    iget-object v7, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-static {v6, v5, v7}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;->access$200(Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)[B

    move-result-object v5

    iput-object v5, v2, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    goto :goto_0

    .line 90
    :cond_2
    iget-object v1, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->this$0:Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    iget-object v6, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-static {v1, v5, v6}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;->access$300(Lcom/taobao/weex/adapter/DefaultWXHttpAdapter;Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;

    const/4 v1, 0x0

    .line 93
    :goto_0
    iget-object v5, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    if-eqz v5, :cond_3

    .line 94
    invoke-interface {v5, v2}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpFinish(Lcom/taobao/weex/common/WXResponse;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move v4, v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 98
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v5, "-1"

    .line 99
    iput-object v5, v2, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    .line 100
    iput-object v5, v2, Lcom/taobao/weex/common/WXResponse;->errorCode:Ljava/lang/String;

    .line 101
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;

    .line 102
    iget-object v5, p0, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    if-eqz v5, :cond_4

    .line 103
    invoke-interface {v5, v2}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpFinish(Lcom/taobao/weex/common/WXResponse;)V

    .line 105
    :cond_4
    instance-of v2, v1, Ljava/io/IOException;

    if-eqz v2, :cond_5

    .line 107
    :try_start_1
    check-cast v1, Ljava/io/IOException;

    invoke-interface {v3, v1}, Lcom/taobao/weex/adapter/DefaultWXHttpAdapter$IEventReporterDelegate;->httpExchangeFailed(Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 109
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 113
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v1

    if-nez v1, :cond_6

    .line 114
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->actionNetResult(ZLjava/lang/String;)V

    :cond_6
    return-void
.end method
