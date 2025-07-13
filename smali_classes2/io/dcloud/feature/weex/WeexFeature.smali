.class public Lio/dcloud/feature/weex/WeexFeature;
.super Lio/dcloud/common/DHInterface/StandardFeature;
.source "WeexFeature.java"

# interfaces
.implements Lio/dcloud/common/DHInterface/IWaiter;
.implements Lio/dcloud/common/DHInterface/ReceiveSystemEventVoucher;


# instance fields
.field isRegisterAllEvent:Z

.field mApp:Lio/dcloud/common/DHInterface/IApp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lio/dcloud/common/DHInterface/StandardFeature;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lio/dcloud/feature/weex/WeexFeature;->isRegisterAllEvent:Z

    return-void
.end method

.method private createUniNView(Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "webview",
            "parent",
            "weexId",
            "info"
        }
    .end annotation

    .line 264
    sget v5, Lio/dcloud/feature/weex/WXBaseWrapper;->DE_INDEX:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/dcloud/feature/weex/WeexFeature;->createUniNView(Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method private createUniNView(Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup;Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "webview",
            "parent",
            "weexId",
            "info",
            "zIndex"
        }
    .end annotation

    .line 268
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/dcloud/feature/weex/WeexInstanceMgr;->createWeexView(Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup;Lorg/json/JSONObject;Ljava/lang/String;I)Lio/dcloud/feature/weex/WXViewWrapper;

    return-void
.end method

.method private createWeexService([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    const/4 v0, 0x0

    .line 281
    aget-object v0, p1, v0

    check-cast v0, Lio/dcloud/common/DHInterface/IApp;

    .line 282
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/WeexFeature;->registerAllEvent(Lio/dcloud/common/DHInterface/IApp;)V

    const/4 v1, 0x1

    .line 283
    aget-object v1, p1, v1

    check-cast v1, Lorg/json/JSONObject;

    const/4 v2, 0x2

    .line 284
    aget-object v2, p1, v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x3

    .line 285
    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/String;

    .line 286
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v3

    invoke-virtual {v3, v0, v2, p1, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->createWeexService(Lio/dcloud/common/DHInterface/IApp;Landroid/view/ViewGroup;Ljava/lang/String;Lorg/json/JSONObject;)Lio/dcloud/feature/weex/WXServiceWrapper;

    move-result-object p1

    return-object p1
.end method

.method private createWeexWindow([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    const/4 v0, 0x0

    .line 272
    aget-object v0, p1, v0

    move-object v2, v0

    check-cast v2, Lio/dcloud/common/DHInterface/IWebview;

    .line 273
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/WeexFeature;->registerAllEvent(Lio/dcloud/common/DHInterface/IApp;)V

    const/4 v0, 0x1

    .line 274
    aget-object v0, p1, v0

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v0, 0x2

    .line 275
    aget-object v0, p1, v0

    move-object v4, v0

    check-cast v4, Lorg/json/JSONObject;

    const/4 v0, 0x3

    .line 276
    aget-object p1, p1, v0

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    .line 277
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v1

    sget v6, Lio/dcloud/feature/weex/WXViewWrapper;->DE_INDEX:I

    invoke-virtual/range {v1 .. v6}, Lio/dcloud/feature/weex/WeexInstanceMgr;->createWeexView(Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup;Lorg/json/JSONObject;Ljava/lang/String;I)Lio/dcloud/feature/weex/WXViewWrapper;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public callNativeModule(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "data"
        }
    .end annotation

    const-string v0, "plugin"

    .line 296
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "method"

    .line 297
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "args"

    .line 298
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 299
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->callNativeModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 301
    instance-of p2, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz p2, :cond_0

    .line 302
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 303
    invoke-static {p1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 304
    :cond_0
    instance-of p2, p1, Ljava/util/HashMap;

    if-eqz p2, :cond_1

    .line 305
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    check-cast p1, Ljava/util/HashMap;

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 306
    invoke-static {p1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 307
    :cond_1
    instance-of p2, p1, Lcom/alibaba/fastjson/JSONArray;

    if-eqz p2, :cond_2

    .line 308
    check-cast p1, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 309
    invoke-static {p1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 310
    :cond_2
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 311
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 312
    :cond_3
    instance-of p2, p1, Lorg/json/JSONObject;

    if-eqz p2, :cond_4

    .line 313
    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 314
    :cond_4
    instance-of p2, p1, Lorg/json/JSONArray;

    if-eqz p2, :cond_5

    .line 315
    check-cast p1, Lorg/json/JSONArray;

    invoke-static {p1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-string p1, ""

    .line 318
    invoke-static {p1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public dispose(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pAppid"
        }
    .end annotation

    .line 107
    invoke-super {p0, p1}, Lio/dcloud/common/DHInterface/StandardFeature;->dispose(Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexFeature;->mApp:Lio/dcloud/common/DHInterface/IApp;

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WeexFeature;->onDestroy()V

    .line 110
    iget-boolean p1, p0, Lio/dcloud/feature/weex/WeexFeature;->isRegisterAllEvent:Z

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexFeature;->mApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WeexFeature;->unregisterSysEvent(Lio/dcloud/common/DHInterface/IApp;)V

    const/4 p1, 0x0

    .line 112
    iput-boolean p1, p0, Lio/dcloud/feature/weex/WeexFeature;->isRegisterAllEvent:Z

    const/4 p1, 0x0

    .line 113
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexFeature;->mApp:Lio/dcloud/common/DHInterface/IApp;

    :cond_0
    return-void
.end method

.method public doForFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "actionType",
            "args"
        }
    .end annotation

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "updateServiceReload"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v6, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "createServiceUniNView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v6, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "createUniNView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v6, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "postMessageToUniNView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x7

    goto :goto_0

    :sswitch_4
    const-string v0, "weexViewUpdate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x6

    goto :goto_0

    :sswitch_5
    const-string v0, "callNativeModuleSync"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v6, 0x5

    goto :goto_0

    :sswitch_6
    const-string v0, "getUniNViewModules"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v6, 0x4

    goto :goto_0

    :sswitch_7
    const-string v0, "findWebviewByInstanceId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_8
    const-string v0, "updateReload"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_9
    const-string v0, "setUniNViewModuleReladyCallBack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v6, 0x1

    goto :goto_0

    :sswitch_a
    const-string v0, "onKeyboardHeightChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v6, 0x0

    :goto_0
    const-string p1, "data"

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_4

    .line 194
    :pswitch_0
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->reloadWXServiceWrapper()V

    goto/16 :goto_4

    .line 198
    :pswitch_1
    check-cast p2, [Ljava/lang/Object;

    .line 199
    invoke-direct {p0, p2}, Lio/dcloud/feature/weex/WeexFeature;->createWeexService([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_5

    .line 123
    :pswitch_2
    check-cast p2, [Ljava/lang/Object;

    .line 124
    invoke-direct {p0, p2}, Lio/dcloud/feature/weex/WeexFeature;->createWeexWindow([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_5

    .line 158
    :pswitch_3
    check-cast p2, [Ljava/lang/Object;

    .line 159
    aget-object v0, p2, v5

    check-cast v0, Lio/dcloud/common/DHInterface/IWebview;

    .line 160
    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/String;

    .line 161
    aget-object v3, p2, v3

    check-cast v3, Ljava/lang/String;

    .line 162
    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/String;

    .line 163
    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/String;

    .line 164
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    .line 165
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v5, "targetId"

    .line 166
    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewUUID()Ljava/lang/String;

    move-result-object v0

    const-string v5, "originId"

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-static {v4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    move-object v4, v3

    .line 174
    :cond_b
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 175
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p1

    invoke-virtual {p1, v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWXBaseWrapper(Ljava/lang/String;)Lio/dcloud/feature/weex/WXBaseWrapper;

    move-result-object p1

    goto :goto_1

    .line 177
    :cond_c
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p1

    invoke-virtual {p1, v4}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWXBaseWrapper(Ljava/lang/String;)Lio/dcloud/feature/weex/WXBaseWrapper;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_12

    const-string p2, "plusMessage"

    .line 180
    invoke-virtual {p1, p2, v1}, Lio/dcloud/feature/weex/WXBaseWrapper;->fireGlobalEvent(Ljava/lang/String;Ljava/util/Map;)Z

    goto/16 :goto_4

    .line 128
    :pswitch_4
    check-cast p2, [Ljava/lang/Object;

    .line 129
    aget-object v0, p2, v5

    check-cast v0, Lio/dcloud/common/DHInterface/IWebview;

    .line 130
    aget-object v1, p2, v4

    check-cast v1, Landroid/view/ViewGroup;

    .line 131
    aget-object v3, p2, v3

    check-cast v3, Lorg/json/JSONObject;

    .line 132
    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/String;

    .line 133
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 134
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p2

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p2

    :cond_d
    const-string v2, "path"

    .line 136
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 137
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v4

    invoke-virtual {v4, p2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWXBaseWrapper(Ljava/lang/String;)Lio/dcloud/feature/weex/WXBaseWrapper;

    move-result-object v4

    .line 138
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 139
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->isUniWebView()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 141
    move-object v6, v0

    check-cast v6, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    invoke-virtual {v6, v2}, Lio/dcloud/common/adapter/ui/AdaUniWebView;->setNVuePath(Ljava/lang/String;)V

    :cond_e
    :try_start_0
    const-string v6, "js"

    .line 144
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    invoke-virtual {v5, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 147
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    if-eqz v4, :cond_f

    .line 150
    invoke-virtual {v4, v5}, Lio/dcloud/feature/weex/WXBaseWrapper;->loadTemplate(Lorg/json/JSONObject;)V

    goto/16 :goto_4

    .line 152
    :cond_f
    invoke-direct {p0, v0, v1, p2, v5}, Lio/dcloud/feature/weex/WeexFeature;->createUniNView(Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_4

    .line 219
    :pswitch_5
    check-cast p2, [Ljava/lang/Object;

    .line 220
    aget-object p1, p2, v5

    check-cast p1, Lio/dcloud/common/DHInterface/IWebview;

    .line 221
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/String;

    .line 222
    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/String;

    .line 223
    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/String;

    .line 224
    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/String;

    .line 225
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    .line 228
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object p1, v0

    .line 231
    :cond_10
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 232
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p1

    invoke-virtual {p1, v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWXSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    goto :goto_3

    .line 234
    :cond_11
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWXSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    :goto_3
    if-eqz p1, :cond_12

    .line 237
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/weex/WeexFeature;->callNativeModule(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_5

    .line 203
    :pswitch_6
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getUniNViewModules()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_14

    .line 205
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->getRegisterJsModules()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_14

    .line 207
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 185
    :pswitch_7
    check-cast p2, [Ljava/lang/Object;

    .line 186
    aget-object p1, p2, v5

    check-cast p1, Ljava/lang/String;

    .line 187
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findPathByWrapper(Ljava/lang/String;)Lio/dcloud/feature/weex/WXViewWrapper;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 189
    invoke-virtual {p1}, Lio/dcloud/feature/weex/WXViewWrapper;->reload()V

    goto :goto_4

    .line 213
    :pswitch_8
    check-cast p2, [Ljava/lang/Object;

    .line 214
    aget-object p1, p2, v5

    check-cast p1, Lio/dcloud/common/DHInterface/ICallBack;

    .line 215
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->setUniNViewModuleReladyCallBack(Lio/dcloud/common/DHInterface/ICallBack;)V

    :cond_12
    :goto_4
    const/4 p1, 0x0

    goto :goto_5

    .line 242
    :pswitch_9
    move-object p1, p2

    check-cast p1, [Ljava/lang/Object;

    .line 243
    aget-object v0, p1, v5

    check-cast v0, Ljava/lang/String;

    .line 244
    aget-object p1, p1, v4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 245
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWXBaseWrapper(Ljava/lang/String;)Lio/dcloud/feature/weex/WXBaseWrapper;

    move-result-object v0

    if-eqz v0, :cond_13

    int-to-float p1, p1

    .line 247
    iget-object v1, v0, Lio/dcloud/feature/weex/WXBaseWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v1

    div-float/2addr p1, v1

    float-to-int p1, p1

    .line 248
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 249
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "height"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "KeyboardHeightChange"

    .line 250
    invoke-virtual {v0, p1, v1}, Lio/dcloud/feature/weex/WXBaseWrapper;->fireGlobalEvent(Ljava/lang/String;Ljava/util/Map;)Z

    .line 254
    :cond_13
    :pswitch_a
    check-cast p2, [Ljava/lang/Object;

    .line 255
    aget-object p1, p2, v5

    check-cast p1, Ljava/lang/String;

    .line 256
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebviewByInstanceId(Ljava/lang/String;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    :cond_14
    :goto_5
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x77766643 -> :sswitch_a
        -0x481b8a2d -> :sswitch_9
        -0x3a95d43e -> :sswitch_8
        -0x32d78b99 -> :sswitch_7
        -0x252b1552 -> :sswitch_6
        -0x9c362e4 -> :sswitch_5
        -0x8ecc151 -> :sswitch_4
        0x16032b65 -> :sswitch_3
        0x2374f23f -> :sswitch_2
        0x2aa1ce5c -> :sswitch_1
        0x7f2bde65 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pFeatureMgr",
            "pFeatureName"
        }
    .end annotation

    .line 46
    invoke-super {p0, p1, p2}, Lio/dcloud/common/DHInterface/StandardFeature;->init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->init(Lio/dcloud/common/DHInterface/AbsMgr;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 87
    invoke-super {p0, p1, p2, p3}, Lio/dcloud/common/DHInterface/StandardFeature;->onActivityResult(IILandroid/content/Intent;)V

    .line 88
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/dcloud/feature/weex/WeexInstanceMgr;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 77
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexFeature;->mApp:Lio/dcloud/common/DHInterface/IApp;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->getQuitModel()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 78
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->onActivityDestroy(Z)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->onActivityDestroy()V

    .line 82
    :goto_0
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->setUniServiceCreated(ZLio/dcloud/common/DHInterface/IApp;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 66
    invoke-super {p0}, Lio/dcloud/common/DHInterface/StandardFeature;->onPause()V

    .line 67
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->onActivityPause()V

    return-void
.end method

.method protected onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 72
    invoke-super {p0, p1, p2, p3}, Lio/dcloud/common/DHInterface/StandardFeature;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 73
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/dcloud/feature/weex/WeexInstanceMgr;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 60
    invoke-super {p0}, Lio/dcloud/common/DHInterface/StandardFeature;->onResume()V

    .line 61
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->onActivityResume()V

    return-void
.end method

.method public onStart(Landroid/content/Context;Landroid/os/Bundle;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pContext",
            "pSavedInstanceState",
            "pRuntimeArgs"
        }
    .end annotation

    .line 52
    invoke-super {p0, p1, p2, p3}, Lio/dcloud/common/DHInterface/StandardFeature;->onStart(Landroid/content/Context;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 53
    instance-of p2, p1, Landroid/app/Application;

    if-eqz p2, :cond_0

    .line 54
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p2

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p2, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->initWeexEnv(Landroid/app/Application;)V

    :cond_0
    return-void
.end method

.method public registerAllEvent(Lio/dcloud/common/DHInterface/IApp;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "app"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexFeature;->mApp:Lio/dcloud/common/DHInterface/IApp;

    .line 98
    iget-boolean v0, p0, Lio/dcloud/feature/weex/WeexFeature;->isRegisterAllEvent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lio/dcloud/feature/weex/WeexFeature;->isRegisterAllEvent:Z

    .line 100
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WeexFeature;->unregisterSysEvent(Lio/dcloud/common/DHInterface/IApp;)V

    .line 101
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexFeature;->mApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WeexFeature;->registerSysEvent(Lio/dcloud/common/DHInterface/IApp;)V

    :cond_0
    return-void
.end method
