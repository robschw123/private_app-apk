.class Lio/dcloud/feature/weex/extend/DCUniMPModule$1;
.super Ljava/lang/Object;
.source "DCUniMPModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCUniMPModule;->showUniMP(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$callback:Lcom/taobao/weex/bridge/JSCallback;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCUniMPModule;Lcom/taobao/weex/bridge/JSCallback;Ljava/lang/String;)V
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
            "val$appId"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;->this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

    iput-object p2, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    iput-object p3, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;->val$appId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 39
    :try_start_0
    sget-boolean v0, Lio/dcloud/feature/internal/sdk/SDK;->isUniMP:Z

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_3

    .line 41
    sget-object v1, Lio/dcloud/feature/weex/EnumStateCode;->FAIL_BY_NO_PERMISSION:Lio/dcloud/feature/weex/EnumStateCode;

    invoke-static {v1}, Lio/dcloud/feature/weex/EnumStateCode;->obtainMap(Lio/dcloud/feature/weex/EnumStateCode;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;->val$appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    iget-object v0, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;->val$callback:Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v0, :cond_1

    .line 46
    sget-object v1, Lio/dcloud/feature/weex/EnumStateCode;->FAIL_BY_INVALID_PARAMETER:Lio/dcloud/feature/weex/EnumStateCode;

    invoke-static {v1}, Lio/dcloud/feature/weex/EnumStateCode;->obtainMap(Lio/dcloud/feature/weex/EnumStateCode;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 50
    :cond_2
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;->this$0:Lio/dcloud/feature/weex/extend/DCUniMPModule;

    iget-object v1, v1, Lio/dcloud/feature/weex/extend/DCUniMPModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 52
    new-instance v1, Lio/dcloud/feature/weex/extend/DCUniMPModule$1$1;

    invoke-direct {v1, p0}, Lio/dcloud/feature/weex/extend/DCUniMPModule$1$1;-><init>(Lio/dcloud/feature/weex/extend/DCUniMPModule$1;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 74
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getUniMPFeature()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v2, v4

    const-string v0, "showUniMP"

    const/4 v5, 0x2

    aput-object v0, v2, v5

    const/4 v0, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lio/dcloud/feature/weex/extend/DCUniMPModule$1;->val$appId:Ljava/lang/String;

    aput-object v6, v5, v3

    aput-object v1, v5, v4

    aput-object v5, v2, v0

    .line 75
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v3, v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->doForFeature(Lio/dcloud/common/DHInterface/IMgr$MgrType;I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
