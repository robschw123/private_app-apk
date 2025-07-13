.class public Lcom/taobao/weex/bridge/WXDebugJsBridge;
.super Ljava/lang/Object;
.source "WXDebugJsBridge.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public jsHandleCallAddElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "ref",
            "dom",
            "index"
        }
    .end annotation

    .line 54
    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lcom/taobao/weex/wson/WsonUtils;->toWson(Ljava/lang/Object;)[B

    move-result-object v3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXDebugJsBridge;->jsHandleCallAddElement(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Z)V

    return-void
.end method

.method public native jsHandleCallAddElement(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "ref",
            "dom",
            "index",
            "h5"
        }
    .end annotation
.end method

.method public native jsHandleCallAddEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pageId",
            "ref",
            "event"
        }
    .end annotation
.end method

.method public jsHandleCallCreateBody(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pageId",
            "domStr"
        }
    .end annotation

    .line 64
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/taobao/weex/wson/WsonUtils;->toWson(Ljava/lang/Object;)[B

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/taobao/weex/bridge/WXDebugJsBridge;->jsHandleCallCreateBody(Ljava/lang/String;[BZ)V

    return-void
.end method

.method public native jsHandleCallCreateBody(Ljava/lang/String;[BZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pageId",
            "domStr",
            "h5"
        }
    .end annotation
.end method

.method public native jsHandleCallCreateFinish(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pageId"
        }
    .end annotation
.end method

.method public native jsHandleCallGCanvasLinkNative(Ljava/lang/String;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "contextId",
            "type",
            "val"
        }
    .end annotation
.end method

.method public native jsHandleCallMoveElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pageId",
            "ref",
            "parentRef",
            "index_str"
        }
    .end annotation
.end method

.method public native jsHandleCallNative(Ljava/lang/String;[BLjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "tasks",
            "callback"
        }
    .end annotation
.end method

.method public jsHandleCallNativeComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "componentRef",
            "method",
            "arguments",
            "options"
        }
    .end annotation

    .line 47
    invoke-static {p4}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->convertJSONToWsonIfUseWson([B)[B

    move-result-object v4

    invoke-static {p5}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->convertJSONToWsonIfUseWson([B)[B

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/weex/bridge/WXDebugJsBridge;->jsHandleCallNativeComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BZ)V

    return-void
.end method

.method public native jsHandleCallNativeComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "componentRef",
            "method",
            "arguments",
            "options",
            "from"
        }
    .end annotation
.end method

.method public native jsHandleCallNativeLog([B)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str_array"
        }
    .end annotation
.end method

.method public jsHandleCallNativeModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "module",
            "method",
            "arguments",
            "options"
        }
    .end annotation

    .line 41
    invoke-static {p4}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->convertJSONToWsonIfUseWson([B)[B

    move-result-object v4

    invoke-static {p5}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->convertJSONToWsonIfUseWson([B)[B

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 40
    invoke-virtual/range {v0 .. v6}, Lcom/taobao/weex/bridge/WXDebugJsBridge;->jsHandleCallNativeModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BZ)V

    return-void
.end method

.method public native jsHandleCallNativeModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "module",
            "method",
            "arguments",
            "options",
            "h5"
        }
    .end annotation
.end method

.method public native jsHandleCallRefreshFinish(Ljava/lang/String;[BLjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "tasks",
            "callback"
        }
    .end annotation
.end method

.method public native jsHandleCallRemoveElement(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pageId",
            "ref"
        }
    .end annotation
.end method

.method public native jsHandleCallRemoveEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pageId",
            "ref",
            "event"
        }
    .end annotation
.end method

.method public jsHandleCallUpdateAttrs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pageId",
            "ref",
            "data"
        }
    .end annotation

    .line 76
    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p3

    invoke-static {p3}, Lcom/taobao/weex/wson/WsonUtils;->toWson(Ljava/lang/Object;)[B

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/weex/bridge/WXDebugJsBridge;->jsHandleCallUpdateAttrs(Ljava/lang/String;Ljava/lang/String;[BZ)V

    return-void
.end method

.method public native jsHandleCallUpdateAttrs(Ljava/lang/String;Ljava/lang/String;[BZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pageId",
            "ref",
            "data",
            "h5"
        }
    .end annotation
.end method

.method public native jsHandleCallUpdateFinish(Ljava/lang/String;[BLjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "tasks",
            "callback"
        }
    .end annotation
.end method

.method public jsHandleCallUpdateStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pageId",
            "ref",
            "data"
        }
    .end annotation

    .line 82
    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p3

    invoke-static {p3}, Lcom/taobao/weex/wson/WsonUtils;->toWson(Ljava/lang/Object;)[B

    move-result-object p3

    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/weex/bridge/WXDebugJsBridge;->jsHandleCallUpdateStyleNative(Ljava/lang/String;Ljava/lang/String;[BZ)V

    return-void
.end method

.method public native jsHandleCallUpdateStyleNative(Ljava/lang/String;Ljava/lang/String;[BZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pageId",
            "ref",
            "data",
            "h5"
        }
    .end annotation
.end method

.method public native jsHandleClearInterval(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "callbackId"
        }
    .end annotation
.end method

.method public native jsHandleReportException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "func",
            "exceptionString"
        }
    .end annotation
.end method

.method public native jsHandleSetInterval(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "callbackId",
            "time"
        }
    .end annotation
.end method

.method public native jsHandleSetJSVersion(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsVersion"
        }
    .end annotation
.end method

.method public native jsHandleSetTimeout(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callbackId",
            "time"
        }
    .end annotation
.end method

.method public native resetWXBridge(Ljava/lang/Object;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bridge",
            "className"
        }
    .end annotation
.end method
