.class Lcom/taobao/weex/http/WXStreamModule$2;
.super Ljava/lang/Object;
.source "WXStreamModule.java"

# interfaces
.implements Lcom/taobao/weex/http/WXStreamModule$ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/http/WXStreamModule;->fetch(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/http/WXStreamModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;

.field final synthetic val$options:Lcom/taobao/weex/http/Options;


# direct methods
.method constructor <init>(Lcom/taobao/weex/http/WXStreamModule;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/http/Options;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$callback",
            "val$options"
        }
    .end annotation

    .line 292
    iput-object p1, p0, Lcom/taobao/weex/http/WXStreamModule$2;->this$0:Lcom/taobao/weex/http/WXStreamModule;

    iput-object p2, p0, Lcom/taobao/weex/http/WXStreamModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    iput-object p3, p0, Lcom/taobao/weex/http/WXStreamModule$2;->val$options:Lcom/taobao/weex/http/Options;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/taobao/weex/common/WXResponse;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "response",
            "headers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/common/WXResponse;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/taobao/weex/http/WXStreamModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_6

    .line 296
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "statusText"

    const-string v2, "status"

    if-eqz p1, :cond_4

    .line 297
    iget-object v3, p1, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    const-string v4, "-1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 306
    :cond_0
    iget-object v3, p1, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 307
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xc8

    const/4 v4, 0x0

    if-lt v3, v2, :cond_1

    const/16 v2, 0x12b

    if-gt v3, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 308
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "ok"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v2, p1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    const-string v5, "data"

    if-nez v2, :cond_2

    .line 310
    iget-object v2, p1, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 313
    :cond_2
    iget-object v2, p1, Lcom/taobao/weex/common/WXResponse;->originalData:[B

    const-string v6, ""

    if-eqz p2, :cond_3

    const-string v7, "Content-Type"

    invoke-static {p2, v7}, Lcom/taobao/weex/http/WXStreamModule;->getHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_3
    move-object v7, v6

    :goto_1
    iget-object v8, p0, Lcom/taobao/weex/http/WXStreamModule$2;->val$options:Lcom/taobao/weex/http/Options;

    invoke-virtual {v8}, Lcom/taobao/weex/http/Options;->getType()Lcom/taobao/weex/http/Options$Type;

    move-result-object v8

    invoke-static {v2, v7, v8}, Lcom/taobao/weex/http/WXStreamModule;->readAsString([BLjava/lang/String;Lcom/taobao/weex/http/Options$Type;)Ljava/lang/String;

    move-result-object v2

    .line 315
    :try_start_0
    iget-object v7, p0, Lcom/taobao/weex/http/WXStreamModule$2;->this$0:Lcom/taobao/weex/http/WXStreamModule;

    iget-object v8, p0, Lcom/taobao/weex/http/WXStreamModule$2;->val$options:Lcom/taobao/weex/http/Options;

    invoke-virtual {v8}, Lcom/taobao/weex/http/Options;->getType()Lcom/taobao/weex/http/Options$Type;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Lcom/taobao/weex/http/WXStreamModule;->parseData(Ljava/lang/String;Lcom/taobao/weex/http/Options$Type;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 317
    invoke-static {v6, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "{\'err\':\'Data parse failed!\'}"

    .line 319
    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    :goto_2
    iget-object p1, p1, Lcom/taobao/weex/common/WXResponse;->statusCode:Ljava/lang/String;

    invoke-static {p1}, Lcom/taobao/weex/http/Status;->getStatusText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v3, -0x1

    .line 298
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ERR_CONNECT_FAILED"

    .line 299
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "errorMsg"

    if-eqz p1, :cond_5

    .line 301
    iget-object p1, p1, Lcom/taobao/weex/common/WXResponse;->errorMsg:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    const-string p1, "response \u4e3a\u7a7a"

    .line 303
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    const-string p1, "headers"

    .line 324
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object p1, p0, Lcom/taobao/weex/http/WXStreamModule$2;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method
