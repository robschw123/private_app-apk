.class Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$3;
.super Ljava/lang/Object;
.source "DCWXWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->showOpenFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 633
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$3;->this$1:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 637
    :try_start_0
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$3;->this$1:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;

    iget-object p1, p1, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->mUploadMessage21Level:Landroid/webkit/ValueCallback;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 638
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$3;->this$1:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;

    iget-object p1, p1, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->mUploadMessage21Level:Landroid/webkit/ValueCallback;

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 639
    :cond_0
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$3;->this$1:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;

    iget-object p1, p1, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_1

    .line 640
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient$3;->this$1:Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;

    iget-object p1, p1, Lio/dcloud/feature/weex/adapter/webview/DCWXWebView$DCWXChromeClient;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
