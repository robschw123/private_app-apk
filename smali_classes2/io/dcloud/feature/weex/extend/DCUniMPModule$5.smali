.class Lio/dcloud/feature/weex/extend/DCUniMPModule$5;
.super Ljava/lang/Object;
.source "DCUniMPModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCUniMPModule;->openUniMP(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;

.field final synthetic val$opStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCUniMPModule;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$opStr",
            "val$callback"
        }
    .end annotation

    .line 256
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$5;->this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

    iput-object p2, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$5;->val$opStr:Ljava/lang/String;

    iput-object p3, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$5;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 262
    :try_start_0
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$5;->val$opStr:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 266
    :goto_0
    :try_start_1
    sget-boolean v1, Lio/dcloud/feature/internal/sdk/SDK;->isUniMP:Z

    if-eqz v1, :cond_0

    .line 267
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$5;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_3

    .line 268
    sget-object v1, Lio/dcloud/feature/weex/EnumStateCode;->FAIL_BY_NO_PERMISSION:Lio/dcloud/feature/weex/EnumStateCode;

    invoke-static {v1}, Lio/dcloud/feature/weex/EnumStateCode;->obtainMap(Lio/dcloud/feature/weex/EnumStateCode;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-nez v0, :cond_2

    .line 273
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$5;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_1

    .line 274
    sget-object v1, Lio/dcloud/feature/weex/EnumStateCode;->FAIL_BY_INVALID_PARAMETER:Lio/dcloud/feature/weex/EnumStateCode;

    invoke-static {v1}, Lio/dcloud/feature/weex/EnumStateCode;->obtainMap(Lio/dcloud/feature/weex/EnumStateCode;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 278
    :cond_2
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$5;->this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

    iget-object v2, v2, Lio/dcloud/feature/weex/extend/DCUniMPModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1, v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 280
    new-instance v2, Lio/dcloud/feature/weex/extend/DCUniMPModule$5$1;

    invoke-direct {v2, p0}, Lio/dcloud/feature/weex/extend/DCUniMPModule$5$1;-><init>(Lio/dcloud/feature/weex/extend/DCUniMPModule$5;)V

    const-string v3, "appInfo"

    .line 302
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v4

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IApp;->obtainAppInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 303
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getUniMPFeature()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v3, v5

    const-string v1, "openUniMP"

    const/4 v6, 0x2

    aput-object v1, v3, v6

    const/4 v1, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    aput-object v2, v6, v5

    aput-object v6, v3, v1

    .line 304
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lio/dcloud/feature/weex/WeexInstanceMgr;->doForFeature(Lio/dcloud/common/DHInterface/IMgr$MgrType;I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 308
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method
