.class Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$2;
.super Landroid/webkit/WebViewClient;
.source "DCWXWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->initWebView(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 290
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$2;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

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

    .line 335
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$2;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$300(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$2;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$302(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;Z)Z

    .line 339
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$2;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$400(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/dcloud/android/widget/DCWebViewProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$2;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$400(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/dcloud/android/widget/DCWebViewProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dcloud/android/widget/DCWebViewProgressBar;->finishProgress()V

    .line 344
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$2;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$200(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$2;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$200(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    invoke-interface {v0, p2, v1, p1}, Lcom/taobao/weex/ui/view/IWebView$OnPageListener;->onPageFinish(Ljava/lang/String;ZZ)V

    :cond_1
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

    .line 326
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 327
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onPageStarted "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "tag"

    invoke-static {p3, p1}, Lcom/taobao/weex/utils/WXLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$2;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$200(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 329
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$2;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$200(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

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

    .line 351
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 352
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$2;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$500(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 354
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$2;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$500(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

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

    .line 360
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 361
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$2;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$500(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 362
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$2;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$500(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object p1

    const-string p2, "error"

    const-string p3, "http error"

    invoke-interface {p1, p2, p3}, Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4
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

    .line 369
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$2;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    iget-object v0, v0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mSslType:Ljava/lang/String;

    const-string v1, "refuse"

    invoke-static {v0, v1}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    goto/16 :goto_0

    .line 371
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$2;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    iget-object v0, v0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mSslType:Ljava/lang/String;

    const-string v1, "warning"

    invoke-static {v0, v1}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 372
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 373
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x1080061

    .line 374
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 375
    sget v1, Lio/dcloud/base/R$string;->dcloud_common_safety_warning:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    const/4 v1, 0x0

    .line 376
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const/4 v1, 0x0

    .line 378
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    .line 379
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 381
    :cond_1
    sget v2, Lio/dcloud/base/R$string;->dcloud_common_certificate_continue:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 382
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 385
    :cond_2
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 386
    new-instance v1, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$2$1;

    invoke-direct {v1, p0, v0, p3, p2}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$2$1;-><init>(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$2;Landroid/app/AlertDialog;Landroid/net/http/SslError;Landroid/webkit/SslErrorHandler;)V

    const/4 p2, -0x2

    .line 400
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const/high16 v2, 0x1040000

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p2, -0x1

    .line 401
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x104000a

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 402
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 404
    invoke-static {p2, p1}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->setSslHandlerState(Ljava/lang/Object;I)V

    .line 406
    :goto_0
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$2;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$500(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 407
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$2;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$500(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;

    move-result-object p1

    const-string p2, "error"

    const-string p3, "ssl error"

    invoke-interface {p1, p2, p3}, Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;->onError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
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

    .line 295
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_3

    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "file://"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    :try_start_0
    const-string v1, "intent://"

    .line 298
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    invoke-static {p2, p1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    const-string v1, "android.intent.category.BROWSABLE"

    .line 301
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 302
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 303
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_0

    .line 304
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 306
    :cond_0
    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$2;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {v1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$100(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 307
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 308
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$2;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$100(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, -0x1

    .line 309
    invoke-virtual {v0, p2, v1}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_0

    .line 312
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x10000000

    .line 313
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 314
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$2;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p2}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$100(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 317
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return p1

    :cond_3
    return v0
.end method
