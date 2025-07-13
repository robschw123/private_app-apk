.class Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;
.super Ljava/lang/Object;
.source "DCWXHttpAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->sendRequest(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;

.field final synthetic val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

.field final synthetic val$request:Lcom/taobao/weex/common/WXRequest;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V
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

    .line 72
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;

    iput-object p2, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iput-object p3, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 75
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iget-object v1, v1, Lcom/taobao/weex/common/WXRequest;->instanceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/performance/WXInstanceApm;->actionNetRequest()V

    :cond_0
    const/4 v1, 0x1

    .line 82
    new-instance v2, Lcom/taobao/weex/common/WXResponse;

    invoke-direct {v2}, Lcom/taobao/weex/common/WXResponse;-><init>()V

    const/4 v3, 0x0

    .line 85
    :try_start_0
    new-instance v4, Ldc/squareup/okhttp3/OkHttpClient$Builder;

    invoke-direct {v4}, Ldc/squareup/okhttp3/OkHttpClient$Builder;-><init>()V

    .line 88
    iget-object v5, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;

    iget-object v6, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iget-object v7, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-virtual {v5, v4, v6, v7}, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->getOKRequest(Ldc/squareup/okhttp3/OkHttpClient$Builder;Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ldc/squareup/okhttp3/Request;

    move-result-object v5

    .line 89
    invoke-virtual {v4}, Ldc/squareup/okhttp3/OkHttpClient$Builder;->build()Ldc/squareup/okhttp3/OkHttpClient;

    move-result-object v4

    .line 91
    invoke-virtual {v4, v5}, Ldc/squareup/okhttp3/OkHttpClient;->newCall(Ldc/squareup/okhttp3/Request;)Ldc/squareup/okhttp3/Call;

    move-result-object v4

    .line 93
    invoke-interface {v4}, Ldc/squareup/okhttp3/Call;->execute()Ldc/squareup/okhttp3/Response;

    move-result-object v4

    .line 94
    invoke-virtual {v4}, Ldc/squareup/okhttp3/Response;->headers()Ldc/squareup/okhttp3/Headers;

    move-result-object v5

    .line 95
    invoke-virtual {v5}, Ldc/squareup/okhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v5

    .line 96
    invoke-virtual {v4}, Ldc/squareup/okhttp3/Response;->code()I

    move-result v6

    .line 97
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    .line 98
    iget-object v7, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    if-eqz v7, :cond_1

    .line 99
    invoke-interface {v7, v6, v5}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHeadersReceived(ILjava/util/Map;)V

    .line 101
    :cond_1
    invoke-virtual {v4}, Ldc/squareup/okhttp3/Response;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 102
    invoke-virtual {v4}, Ldc/squareup/okhttp3/Response;->body()Ldc/squareup/okhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Ldc/squareup/okhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v4

    .line 103
    iget-object v5, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;

    iget-object v6, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-static {v5, v4, v6}, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->access$000(Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)[B

    move-result-object v4

    iput-object v4, v2, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    goto :goto_0

    .line 105
    :cond_2
    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->this$0:Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;

    invoke-virtual {v4}, Ldc/squareup/okhttp3/Response;->body()Ldc/squareup/okhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Ldc/squareup/okhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v4

    iget-object v5, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-static {v1, v4, v5}, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->access$100(Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;Ljava/io/InputStream;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;

    const/4 v1, 0x0

    .line 108
    :goto_0
    iget-object v4, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    if-eqz v4, :cond_3

    .line 109
    invoke-interface {v4, v2}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpFinish(Lcom/taobao/weex/common/WXResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move v3, v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 113
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v4, "-1"

    .line 114
    iput-object v4, v2, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    .line 115
    iput-object v4, v2, Lcom/taobao/weex/common/WXResponse;->errorCode:Ljava/lang/String;

    .line 116
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    if-eqz v1, :cond_4

    .line 118
    invoke-interface {v1, v2}, Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;->onHttpFinish(Lcom/taobao/weex/common/WXResponse;)V

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 121
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v1

    if-nez v1, :cond_5

    .line 122
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->actionNetResult(ZLjava/lang/String;)V

    :cond_5
    return-void
.end method
