.class public Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;
.super Ljava/lang/Object;
.source "WXAnalyzerDataTransfer.java"


# static fields
.field private static final GROUP:Ljava/lang/String; = "WXAnalyzer"

.field public static final INTERACTION_TAG:Ljava/lang/String; = "wxInteractionAnalyzer"

.field private static final MODULE_ERROR:Ljava/lang/String; = "WXError"

.field private static final MODULE_WX_APM:Ljava/lang/String; = "wxapm"

.field public static isOpenPerformance:Z = false

.field private static sOpenInteractionLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInteractionLogOpen()Z
    .locals 1

    .line 166
    sget-boolean v0, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->sOpenInteractionLog:Z

    return v0
.end method

.method public static switchInteractionLog(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "isOpen"
        }
    .end annotation

    .line 143
    sget-boolean v0, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->sOpenInteractionLog:Z

    if-eq v0, p0, :cond_1

    sget-boolean v0, Lcom/taobao/weex/WXEnvironment;->JsFrameworkInit:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    sput-boolean p0, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->sOpenInteractionLog:Z

    .line 162
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, "switchInteractionLog"

    invoke-virtual {v0, v1, p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static transferError(Lcom/taobao/weex/common/WXJSExceptionInfo;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "exceptionInfo",
            "instanceId"
        }
    .end annotation

    .line 112
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXAnalyzerList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 116
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 120
    :cond_1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 124
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/common/WXJSExceptionInfo;->getErrCode()Lcom/taobao/weex/common/WXErrorCode;

    move-result-object p0

    .line 127
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "instanceId"

    .line 128
    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "url"

    .line 129
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "errorCode"

    .line 130
    invoke-virtual {p0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "errorMsg"

    .line 131
    invoke-virtual {p0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "errorGroup"

    .line 132
    invoke-virtual {p0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorGroup()Lcom/taobao/weex/common/WXErrorCode$ErrorGroup;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 135
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    .line 137
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/performance/IWXAnalyzer;

    .line 138
    invoke-virtual {p0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorType()Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode$ErrorType;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WXAnalyzer"

    const-string v4, "WXError"

    invoke-interface {v1, v3, v4, v2, p1}, Lcom/taobao/weex/performance/IWXAnalyzer;->transfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public static transferInteractionInfo(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetComponent"
        }
    .end annotation

    .line 83
    sget-boolean v0, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->isOpenPerformance:Z

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXAnalyzerList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 88
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 91
    :cond_1
    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->getFixUnixTime()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v3

    iget-wide v3, v3, Lcom/taobao/weex/common/WXPerformance;->renderUnixTimeOrigin:J

    sub-long/2addr v1, v3

    .line 94
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "renderOriginDiffTime"

    .line 95
    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "type"

    .line 96
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ref"

    .line 97
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "style"

    .line 98
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "attrs"

    .line 99
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/performance/IWXAnalyzer;

    .line 106
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "wxapm"

    const-string/jumbo v5, "wxinteraction"

    invoke-interface {v2, v4, v3, v5, v1}, Lcom/taobao/weex/performance/IWXAnalyzer;->transfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    .line 102
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public static transferPerformance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "type",
            "key",
            "value"
        }
    .end annotation

    .line 51
    sget-boolean v0, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->isOpenPerformance:Z

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    sget-boolean v0, Lcom/taobao/weex/performance/WXAnalyzerDataTransfer;->sOpenInteractionLog:Z

    if-eqz v0, :cond_1

    const-string v0, "stage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[client][stage]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wxInteractionAnalyzer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXAnalyzerList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 58
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 62
    :cond_2
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/WXSDKInstance;

    if-nez p0, :cond_3

    return-void

    .line 69
    :cond_3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 76
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/performance/IWXAnalyzer;

    .line 78
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wxapm"

    invoke-interface {v0, v2, v1, p1, p2}, Lcom/taobao/weex/performance/IWXAnalyzer;->transfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void

    :catch_0
    move-exception p0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method
