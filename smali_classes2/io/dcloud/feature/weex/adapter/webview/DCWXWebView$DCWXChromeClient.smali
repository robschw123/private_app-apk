.class Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "DCWXWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DCWXChromeClient"
.end annotation


# instance fields
.field dialog:Lio/dcloud/common/adapter/ui/FileChooseDialog;

.field mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field mUploadMessage21Level:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;


# direct methods
.method private constructor <init>(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 519
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$1;)V
    .locals 0

    .line 519
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;-><init>(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)V

    return-void
.end method

.method static synthetic access$1000(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 519
    invoke-direct/range {p0 .. p5}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->showOpenFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private openFileChooserLogic(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "webView",
            "uploadMsg",
            "uploadMsg21Level",
            "acceptType",
            "capture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$100(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 607
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$100(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x2

    new-instance v9, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$2;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$2;-><init>(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "dc_weexsdk"

    const-string p2, "STORAGE"

    invoke-static {v0, p1, p2, v1, v9}, Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    return-void
.end method

.method private showOpenFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "webView",
            "uploadMsg",
            "uploadMsg21Level",
            "acceptType",
            "capture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 621
    iput-object p2, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 622
    iput-object p3, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->mUploadMessage21Level:Landroid/webkit/ValueCallback;

    .line 623
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.GET_CONTENT"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "android.intent.category.OPENABLE"

    .line 624
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    invoke-static {p4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 626
    invoke-virtual {p2, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p3, "*/*"

    .line 628
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 630
    :goto_0
    new-instance p3, Lio/dcloud/common/adapter/ui/FileChooseDialog;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p3, p4, p1, p2}, Lio/dcloud/common/adapter/ui/FileChooseDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)V

    iput-object p3, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->dialog:Lio/dcloud/common/adapter/ui/FileChooseDialog;

    .line 632
    :try_start_0
    invoke-virtual {p3}, Lio/dcloud/common/adapter/ui/FileChooseDialog;->show()V

    .line 633
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->dialog:Lio/dcloud/common/adapter/ui/FileChooseDialog;

    new-instance p2, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$3;

    invoke-direct {p2, p0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$3;-><init>(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;)V

    invoke-virtual {p1, p2}, Lio/dcloud/common/adapter/ui/FileChooseDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "origin",
            "callback"
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$100(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$100(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x2

    new-instance v2, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$1;

    invoke-direct {v2, p0, p2, p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$1;-><init>(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    const-string p1, "dc_weexsdk"

    const-string p2, "LOCATION"

    invoke-static {v0, p1, p2, v1, v2}, Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    goto :goto_0

    .line 587
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    :goto_0
    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .line 727
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {v0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$1200(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)V

    return-void
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 0
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

    .line 569
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 522
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
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

    .line 527
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 529
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    iput p2, p1, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mProgress:I

    .line 530
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$300(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Z

    move-result p1

    const/16 v0, 0x64

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    iget p1, p1, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mProgress:I

    if-ge p1, v0, :cond_0

    .line 531
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$900(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)V

    .line 532
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$302(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;Z)Z

    .line 534
    :cond_0
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    iget p1, p1, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->mProgress:I

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$300(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 535
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$302(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;Z)Z

    .line 536
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$400(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/dcloud/android/widget/DCWebViewProgressBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 537
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$400(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/dcloud/android/widget/DCWebViewProgressBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dcloud/android/widget/DCWebViewProgressBar;->finishProgress()V

    .line 540
    :cond_1
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

    .line 545
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 546
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p2}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$200(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 547
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p2}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$200(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Lcom/taobao/weex/ui/view/IWebView$OnPageListener;

    move-result-object p2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taobao/weex/ui/view/IWebView$OnPageListener;->onReceivedTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResult(IILandroid/content/Intent;)V
    .locals 7
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

    .line 652
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->dialog:Lio/dcloud/common/adapter/ui/FileChooseDialog;

    if-eqz v0, :cond_e

    .line 653
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/FileChooseDialog;->dismiss()V

    const/4 v0, 0x0

    if-eqz p2, :cond_b

    const/4 p2, 0x1

    if-ne p1, p2, :cond_5

    if-nez p3, :cond_2

    .line 661
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->mUploadMessage21Level:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_0

    .line 662
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 663
    :cond_0
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_1

    .line 664
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 666
    :cond_1
    :goto_0
    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->dialog:Lio/dcloud/common/adapter/ui/FileChooseDialog;

    return-void

    .line 669
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 670
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge p3, v1, :cond_8

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p3

    const-string v1, "content"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 671
    iget-object p3, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p3}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$100(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p3, "_data"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 673
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 675
    :try_start_0
    invoke-interface {v1, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    const/4 v2, -0x1

    if-le p3, v2, :cond_4

    .line 677
    invoke-interface {v1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 678
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 679
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "/"

    .line 680
    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "file://"

    goto :goto_1

    :cond_3
    const-string v2, "file:///"

    .line 681
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    :catch_0
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_5
    const/4 p3, 0x2

    if-ne p1, p3, :cond_7

    .line 691
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->dialog:Lio/dcloud/common/adapter/ui/FileChooseDialog;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/FileChooseDialog;->uris:Ljava/util/List;

    if-eqz p1, :cond_7

    .line 692
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->dialog:Lio/dcloud/common/adapter/ui/FileChooseDialog;

    iget-object p1, p1, Lio/dcloud/common/adapter/ui/FileChooseDialog;->uris:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/io/File;

    .line 693
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 694
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {p1}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$100(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Landroid/content/Context;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {v2}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$100(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".dc.fileprovider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_2

    :cond_7
    move-object p1, v0

    :cond_8
    :goto_2
    if-eqz p1, :cond_9

    new-array p2, p2, [Landroid/net/Uri;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    goto :goto_3

    :cond_9
    move-object p2, v0

    .line 703
    :goto_3
    iget-object p3, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->mUploadMessage21Level:Landroid/webkit/ValueCallback;

    if-eqz p3, :cond_a

    .line 704
    invoke-interface {p3, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_4

    .line 705
    :cond_a
    iget-object p2, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz p2, :cond_d

    .line 706
    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_4

    .line 710
    :cond_b
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->mUploadMessage21Level:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_c

    .line 711
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_4

    .line 712
    :cond_c
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_d

    .line 713
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 717
    :cond_d
    :goto_4
    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->dialog:Lio/dcloud/common/adapter/ui/FileChooseDialog;

    :cond_e
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "callback"
        }
    .end annotation

    .line 722
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->this$0:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;

    invoke-static {v0, p1, p2}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;->access$1100(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView;Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "webView",
            "filePathCallback",
            "fileChooserParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 598
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aget-object p3, p3, v0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move-object v4, p3

    const/4 v2, 0x0

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->openFileChooserLogic(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
