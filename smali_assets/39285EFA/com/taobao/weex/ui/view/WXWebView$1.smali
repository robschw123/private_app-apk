.class Lcom/taobao/weex/ui/view/WXWebView$1;
.super Landroid/webkit/WebViewClient;
.source "WXWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/WXWebView;->initWebView(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/WXWebView;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/WXWebView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 237
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "url"
        }
    .end annotation

    .line 257
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {v0}, Lcom/taobao/weex/ui/view/WXWebView;->access$100(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {v0}, Lcom/taobao/weex/ui/view/WXWebView;->access$100(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    invoke-interface {v0, p2, v1, p1}, Lcom/taobao/weex/ui/view/IWebView$OnPageListener;->onPageFinish(Ljava/lang/String;ZZ)V

    .line 262
    :cond_0
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXWebView;->access$200(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 263
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "javascript:(window.postMessage = function(message, targetOrigin) {if (message == null || !targetOrigin) return;"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-static {}, Lcom/taobao/weex/ui/view/WXWebView;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "prompt(\'__WEEX_WEB_VIEW_BRIDGE://postMessage?message=\' + JSON.stringify(message) + \'&targetOrigin=\' + targetOrigin)"

    goto :goto_0

    :cond_1
    const-string v0, "__WEEX_WEB_VIEW_BRIDGE.postMessage(JSON.stringify(message), targetOrigin);"

    .line 267
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "})"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 263
    invoke-static {p1, p2}, Lcom/taobao/weex/ui/view/WXWebView;->access$400(Lcom/taobao/weex/ui/view/WXWebView;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "url",
            "favicon"
        }
    .end annotation

    .line 248
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onPageStarted "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "tag"

    invoke-static {p3, p1}, Lcom/taobao/weex/utils/WXLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXWebView;->access$100(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 251
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXWebView;->access$100(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/taobao/weex/ui/view/IWebView$OnPageListener;->onPageStart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "request",
            "error"
        }
    .end annotation

    .line 274
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 275
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXWebView;->access$500(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 277
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXWebView;->access$500(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object p1

    const-string p2, "error"

    const-string p3, "page error"

    invoke-interface {p1, p2, p3}, Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "request",
            "errorResponse"
        }
    .end annotation

    .line 283
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 284
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXWebView;->access$500(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 285
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXWebView;->access$500(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object p1

    const-string p2, "error"

    const-string p3, "http error"

    invoke-interface {p1, p2, p3}, Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "handler",
            "error"
        }
    .end annotation

    .line 291
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 292
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXWebView;->access$500(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 293
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$1;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/WXWebView;->access$500(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object p1

    const-string p2, "error"

    const-string p3, "ssl error"

    invoke-interface {p1, p2, p3}, Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "url"
        }
    .end annotation

    .line 241
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 242
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPageOverride "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "tag"

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
