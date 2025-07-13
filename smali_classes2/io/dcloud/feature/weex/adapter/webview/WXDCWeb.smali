.class public Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;
.super Lcom/taobao/weex/ui/component/WXWeb;
.source "WXDCWeb.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$OnDCMessageListener;
    }
.end annotation


# instance fields
.field mDCWebView:Lio/dcloud/feature/weex/adapter/webview/IDCWebView;

.field private mWebStyles:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "parent",
            "isLazy",
            "basicComponentData"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXWeb;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private fireEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "message"
        }
    .end annotation

    .line 165
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "type"

    .line 167
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "errorMsg"

    .line 168
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "detail"

    .line 170
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {p0, v1, p1}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createWebView()V
    .locals 7

    const/4 v0, 0x0

    .line 47
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 57
    :cond_0
    :goto_0
    invoke-static {}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->isIsOtherInitSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    .line 58
    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getUIContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v4

    aput-object v0, v1, v5

    aput-object p0, v1, v6

    const-string v3, "io.dcloud.feature.x5.DCWXX5WebView"

    invoke-static {v3, v2, v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 59
    instance-of v2, v1, Lcom/taobao/weex/ui/view/IWebView;

    if-eqz v2, :cond_1

    .line 60
    check-cast v1, Lio/dcloud/feature/weex/adapter/webview/IDCWebView;

    iput-object v1, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mDCWebView:Lio/dcloud/feature/weex/adapter/webview/IDCWebView;

    .line 61
    iput-object v1, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    .line 64
    :cond_1
    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    if-nez v1, :cond_2

    .line 65
    new-instance v1, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getUIContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;)V

    iput-object v1, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mDCWebView:Lio/dcloud/feature/weex/adapter/webview/IDCWebView;

    .line 66
    iput-object v1, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    :cond_2
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 250
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXWeb;->destroy()V

    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mDCWebView:Lio/dcloud/feature/weex/adapter/webview/IDCWebView;

    return-void
.end method

.method public evalJS(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "js"
        }
    .end annotation

    .line 188
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->evalJs(Ljava/lang/String;)V

    return-void
.end method

.method public evalJs(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "js"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    if-eqz v0, :cond_1

    const-string v0, "javascript:(function(){"

    .line 179
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";})();"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 182
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    invoke-interface {v0, p1}, Lcom/taobao/weex/ui/view/IWebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getWebStyles()Lcom/alibaba/fastjson/JSONObject;
    .locals 3

    .line 231
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebStyles:Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebStyles:Lcom/alibaba/fastjson/JSONObject;

    const/4 v1, 0x1

    .line 233
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isProgress"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebStyles:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 72
    new-instance p1, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$1;

    invoke-direct {p1, p0}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$1;-><init>(Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;)V

    .line 92
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$OnDCMessageListener;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v4

    const-string p1, "setOnDCMessageListener"

    invoke-static {v0, p1, v2, v3}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    new-instance v0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$2;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$2;-><init>(Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;)V

    invoke-interface {p1, v0}, Lcom/taobao/weex/ui/view/IWebView;->setOnErrorListener(Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;)V

    .line 100
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    new-instance v0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$3;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$3;-><init>(Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;)V

    invoke-interface {p1, v0}, Lcom/taobao/weex/ui/view/IWebView;->setOnPageListener(Lcom/taobao/weex/ui/view/IWebView$OnPageListener;)V

    .line 136
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    new-instance v0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$4;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb$4;-><init>(Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;)V

    invoke-interface {p1, v0}, Lcom/taobao/weex/ui/view/IWebView;->setOnMessageListener(Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;)V

    .line 144
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    invoke-interface {p1}, Lcom/taobao/weex/ui/view/IWebView;->getView()Landroid/view/View;

    move-result-object p1

    .line 148
    sget-object v0, Lio/dcloud/common/adapter/ui/AdaWebview;->sCustomUserAgent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mDCWebView:Lio/dcloud/feature/weex/adapter/webview/IDCWebView;

    sget-object v2, Lio/dcloud/common/adapter/ui/AdaWebview;->sCustomUserAgent:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lio/dcloud/feature/weex/adapter/webview/IDCWebView;->setUserAgent(Ljava/lang/String;Z)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    const-string v3, "useragent"

    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    const-string v3, "concatenate"

    invoke-interface {v0, v3}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 158
    iget-object v3, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mDCWebView:Lio/dcloud/feature/weex/adapter/webview/IDCWebView;

    xor-int/2addr v0, v1

    invoke-interface {v3, v2, v0}, Lio/dcloud/feature/weex/adapter/webview/IDCWebView;->setUserAgent(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method protected loadUrl(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "asset:///"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "file:///android_asset/"

    .line 198
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 200
    :cond_0
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXWeb;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
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

    .line 205
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/ui/view/IWebView;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 240
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXWeb;->setBackgroundColor(Ljava/lang/String;)V

    .line 241
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mDCWebView:Lio/dcloud/feature/weex/adapter/webview/IDCWebView;

    if-eqz v0, :cond_0

    .line 242
    invoke-static {p1}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result p1

    .line 243
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mDCWebView:Lio/dcloud/feature/weex/adapter/webview/IDCWebView;

    invoke-interface {v0}, Lio/dcloud/feature/weex/adapter/webview/IDCWebView;->getWebView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mDCWebView:Lio/dcloud/feature/weex/adapter/webview/IDCWebView;

    invoke-interface {v0}, Lio/dcloud/feature/weex/adapter/webview/IDCWebView;->getWebView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public webviewStyles(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "webviewStyles"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "styles"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebStyles:Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebStyles:Lcom/alibaba/fastjson/JSONObject;

    .line 215
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "progress"

    .line 216
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 218
    instance-of v0, p1, Ljava/lang/Boolean;

    const-string v1, "isProgress"

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebStyles:Lcom/alibaba/fastjson/JSONObject;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 220
    :cond_1
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_2

    .line 221
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    .line 222
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebStyles:Lcom/alibaba/fastjson/JSONObject;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "color"

    .line 223
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;->mWebStyles:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "progressColor"

    invoke-virtual {v1, v0, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method
