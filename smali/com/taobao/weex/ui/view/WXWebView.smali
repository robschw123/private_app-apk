.class public Lcom/taobao/weex/ui/view/WXWebView;
.super Ljava/lang/Object;
.source "WXWebView.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/IWebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/view/WXWebView$MessageHandler;
    }
.end annotation


# static fields
.field private static final BRIDGE_NAME:Ljava/lang/String; = "__WEEX_WEB_VIEW_BRIDGE"

.field private static final DOWNGRADE_JS_INTERFACE:Z

.field private static final POST_MESSAGE:I = 0x1

.field private static final SDK_VERSION:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMessageHandler:Landroid/os/Handler;

.field private mOnErrorListener:Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

.field private mOnMessageListener:Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

.field private mOnPageListener:Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

.field private mOrigin:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mShowLoading:Z

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/taobao/weex/ui/view/WXWebView;->SDK_VERSION:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 70
    :goto_0
    sput-boolean v0, Lcom/taobao/weex/ui/view/WXWebView;->DOWNGRADE_JS_INTERFACE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "origin"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mShowLoading:Z

    .line 77
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOrigin:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnPageListener:Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnMessageListener:Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

    return-object p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 58
    sget-boolean v0, Lcom/taobao/weex/ui/view/WXWebView;->DOWNGRADE_JS_INTERFACE:Z

    return v0
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/view/WXWebView;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/WXWebView;->evaluateJS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnErrorListener:Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/taobao/weex/ui/view/WXWebView;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/WXWebView;->showWebView(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/taobao/weex/ui/view/WXWebView;Z)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/WXWebView;->showProgressBar(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/taobao/weex/ui/view/WXWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/view/WXWebView;->onMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private evaluateJS(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsStr"
        }
    .end annotation

    .line 360
    sget v0, Lcom/taobao/weex/ui/view/WXWebView;->SDK_VERSION:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_0
    return-void
.end method

.method private getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private initWebView(Landroid/webkit/WebView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wv"
        }
    .end annotation

    .line 227
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    .line 229
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->openJSEnabled(Ljava/lang/Object;Lio/dcloud/common/DHInterface/IApp;)V

    const/4 v1, 0x1

    .line 230
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 231
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 232
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v1, 0x0

    .line 233
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 234
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 235
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 236
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 237
    new-instance v0, Lcom/taobao/weex/ui/view/WXWebView$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/WXWebView$1;-><init>(Lcom/taobao/weex/ui/view/WXWebView;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 297
    new-instance v0, Lcom/taobao/weex/ui/view/WXWebView$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/WXWebView$2;-><init>(Lcom/taobao/weex/ui/view/WXWebView;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 332
    sget-boolean v0, Lcom/taobao/weex/ui/view/WXWebView;->DOWNGRADE_JS_INTERFACE:Z

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Lcom/taobao/weex/ui/view/WXWebView$3;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/WXWebView$3;-><init>(Lcom/taobao/weex/ui/view/WXWebView;)V

    const-string v1, "__WEEX_WEB_VIEW_BRIDGE"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "targetOrigin"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 343
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnMessageListener:Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

    if-eqz v0, :cond_0

    .line 345
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "data"

    .line 346
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "origin"

    .line 347
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "type"

    const-string p2, "message"

    .line 348
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 p2, 0x1

    .line 350
    iput p2, p1, Landroid/os/Message;->what:I

    .line 351
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 352
    iget-object p2, p0, Lcom/taobao/weex/ui/view/WXWebView;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 354
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method private showProgressBar(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shown"
        }
    .end annotation

    .line 212
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mShowLoading:Z

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private showWebView(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shown"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 111
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 113
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 114
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 115
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 116
    iput-object v1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    .line 117
    iput-object v1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnMessageListener:Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

    .line 118
    iput-object v1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnPageListener:Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    .line 119
    iput-object v1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnErrorListener:Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    :cond_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 4

    .line 83
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 86
    new-instance v2, Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXWebView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    .line 87
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 90
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 91
    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 93
    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXWebView;->mWebView:Landroid/webkit/WebView;

    invoke-direct {p0, v2}, Lcom/taobao/weex/ui/view/WXWebView;->initWebView(Landroid/webkit/WebView;)V

    .line 95
    new-instance v2, Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXWebView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/taobao/weex/ui/view/WXWebView;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0, v2}, Lcom/taobao/weex/ui/view/WXWebView;->showProgressBar(Z)V

    .line 97
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 100
    iget-object v3, p0, Lcom/taobao/weex/ui/view/WXWebView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 102
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 104
    new-instance v1, Lcom/taobao/weex/ui/view/WXWebView$MessageHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/taobao/weex/ui/view/WXWebView$MessageHandler;-><init>(Lcom/taobao/weex/ui/view/WXWebView;Lcom/taobao/weex/ui/view/WXWebView$1;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mMessageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .line 146
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void
.end method

.method public goForward()V
    .locals 1

    .line 153
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOrigin:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v4, "text/html"

    const-string v5, "utf-8"

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
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

    return-void
.end method

.method public postMessage(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    :try_start_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "message"

    .line 164
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    .line 165
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "origin"

    .line 166
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOrigin:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:(function () {var initData = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";try {var event = new MessageEvent(\'message\', initData);window.dispatchEvent(event);} catch (e) {}})();"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/WXWebView;->evaluateJS(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 175
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public reload()V
    .locals 1

    .line 139
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/WXWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method public setOnErrorListener(Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnErrorListener:Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    return-void
.end method

.method public setOnMessageListener(Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 203
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnMessageListener:Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

    return-void
.end method

.method public setOnPageListener(Lcom/taobao/weex/ui/view/IWebView$OnPageListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mOnPageListener:Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    return-void
.end method

.method public setShowLoading(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shown"
        }
    .end annotation

    .line 188
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXWebView;->mShowLoading:Z

    return-void
.end method
