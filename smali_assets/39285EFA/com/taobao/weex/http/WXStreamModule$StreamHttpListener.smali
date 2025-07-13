.class Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;
.super Ljava/lang/Object;
.source "WXStreamModule.java"

# interfaces
.implements Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/http/WXStreamModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StreamHttpListener"
.end annotation


# instance fields
.field private mCallback:Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;

.field private mProgressCallback:Lcom/taobao/weex/bridge/JSCallback;

.field private mRespHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResponse:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "progressCallback"
        }
    .end annotation

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mResponse:Ljava/util/Map;

    .line 447
    iput-object p1, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mCallback:Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;

    .line 448
    iput-object p2, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mProgressCallback:Lcom/taobao/weex/bridge/JSCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/http/WXStreamModule$1;)V
    .locals 0

    .line 440
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;-><init>(Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;Lcom/taobao/weex/bridge/JSCallback;)V

    return-void
.end method


# virtual methods
.method public onHeadersReceived(ILjava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "statusCode",
            "headers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mResponse:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "readyState"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mResponse:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "status"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_4

    .line 473
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 474
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 475
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 476
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 478
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "_"

    if-ne v1, v2, :cond_2

    .line 479
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 481
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    :goto_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 486
    :cond_4
    iget-object p2, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mResponse:Ljava/util/Map;

    const-string v0, "headers"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iput-object p1, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mRespHeaders:Ljava/util/Map;

    .line 488
    iget-object p1, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mProgressCallback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz p1, :cond_5

    .line 489
    new-instance p2, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mResponse:Ljava/util/Map;

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, p2}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public onHttpFinish(Lcom/taobao/weex/common/WXResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "response"
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mCallback:Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;

    if-eqz v0, :cond_0

    .line 506
    iget-object v1, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mRespHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;->onResponse(Lcom/taobao/weex/common/WXResponse;Ljava/util/Map;)V

    .line 509
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 510
    iget-object v0, p1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object p1, p1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_1
    const-string v0, "response data is NUll!"

    :goto_0
    const-string p1, "WXStreamModule"

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onHttpResponseProgress(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadedLength"
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mResponse:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "length"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    iget-object p1, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mProgressCallback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz p1, :cond_0

    .line 497
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mResponse:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onHttpStart()V
    .locals 3

    .line 454
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mProgressCallback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mResponse:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "readyState"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mResponse:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "length"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mProgressCallback:Lcom/taobao/weex/bridge/JSCallback;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/taobao/weex/http/WXStreamModule$StreamHttpListener;->mResponse:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lcom/taobao/weex/bridge/JSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onHttpUploadProgress(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uploadProgress"
        }
    .end annotation

    return-void
.end method
