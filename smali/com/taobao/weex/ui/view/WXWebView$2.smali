.class Lcom/taobao/weex/ui/view/WXWebView$2;
.super Landroid/webkit/WebChromeClient;
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

    .line 297
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$2;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "url",
            "text",
            "defaultValue",
            "result"
        }
    .end annotation

    .line 316
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "__WEEX_WEB_VIEW_BRIDGE"

    .line 318
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const-string p2, "postMessage"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "message"

    .line 320
    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "targetOrigin"

    .line 321
    invoke-virtual {v0, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 322
    iget-object p3, p0, Lcom/taobao/weex/ui/view/WXWebView$2;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p3, p1, p2}, Lcom/taobao/weex/ui/view/WXWebView;->access$800(Lcom/taobao/weex/ui/view/WXWebView;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "success"

    .line 323
    invoke-virtual {p5, p1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "fail"

    .line 325
    invoke-virtual {p5, p1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 329
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "newProgress"
        }
    .end annotation

    .line 300
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 301
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$2;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-ne p2, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {p1, v3}, Lcom/taobao/weex/ui/view/WXWebView;->access$600(Lcom/taobao/weex/ui/view/WXWebView;Z)V

    .line 302
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXWebView$2;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    if-eq p2, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {p1, v0}, Lcom/taobao/weex/ui/view/WXWebView;->access$700(Lcom/taobao/weex/ui/view/WXWebView;Z)V

    .line 303
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPageProgressChanged "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "tag"

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "title"
        }
    .end annotation

    .line 308
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 309
    iget-object p2, p0, Lcom/taobao/weex/ui/view/WXWebView$2;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p2}, Lcom/taobao/weex/ui/view/WXWebView;->access$100(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 310
    iget-object p2, p0, Lcom/taobao/weex/ui/view/WXWebView$2;->this$0:Lcom/taobao/weex/ui/view/WXWebView;

    invoke-static {p2}, Lcom/taobao/weex/ui/view/WXWebView;->access$100(Lcom/taobao/weex/ui/view/WXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object p2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/ui/view/IWebView$OnPageListener;->onReceivedTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
