.class Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->handleTrackers_wanka(Ljava/lang/String;Ljava/lang/String;IIZLio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callBack:Lio/dcloud/common/DHInterface/ICallBack;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$httpMethod:I

.field final synthetic val$isHeader:Z

.field final synthetic val$needHandleResponse:Z

.field final synthetic val$t_count:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(ZILjava/lang/String;Ljava/lang/String;ZILio/dcloud/common/DHInterface/ICallBack;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$isHeader:Z

    iput p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$httpMethod:I

    iput-object p3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$content:Ljava/lang/String;

    iput-boolean p5, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$needHandleResponse:Z

    iput p6, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$t_count:I

    iput-object p7, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$callBack:Lio/dcloud/common/DHInterface/ICallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$isHeader:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "ua-webview"

    .line 3
    invoke-static {v2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "User-Agent"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 5
    :goto_0
    iget v2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$httpMethod:I

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 7
    :try_start_0
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$url:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lio/dcloud/common/util/NetTool;->httpGet(Ljava/lang/String;Ljava/util/HashMap;Z)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    :cond_1
    if-ne v2, v3, :cond_2

    .line 10
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$content:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lio/dcloud/common/util/NetTool;->httpPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)[B

    move-result-object v1

    .line 12
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$needHandleResponse:Z

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 14
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ret"

    .line 15
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "msg"

    .line 16
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTrackers_wanka Runnable Error url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->log(Ljava/lang/String;)V

    .line 18
    iget v7, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$t_count:I

    if-lez v7, :cond_3

    .line 19
    iget-object v4, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$url:Ljava/lang/String;

    iget v6, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$httpMethod:I

    iget-boolean v8, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$needHandleResponse:Z

    iget-object v9, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$callBack:Lio/dcloud/common/DHInterface/ICallBack;

    const/4 v10, 0x0

    iget-boolean v11, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$isHeader:Z

    invoke-static/range {v4 .. v11}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->access$400(Ljava/lang/String;Ljava/lang/String;IIZLio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;Z)V

    .line 21
    :cond_3
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$url:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Lio/dcloud/common/util/NetTool;->httpGet(Ljava/lang/String;Ljava/util/HashMap;Z)[B

    goto :goto_2

    .line 22
    :cond_4
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$5;->val$callBack:Lio/dcloud/common/DHInterface/ICallBack;

    if-eqz v0, :cond_5

    .line 23
    invoke-interface {v0, v3, v2}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_2
    return-void
.end method
