.class public Lcom/taobao/weex/ui/component/WXEmbed$FailToH5Listener;
.super Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;
.source "WXEmbed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXEmbed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FailToH5Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Lcom/taobao/weex/ui/component/NestedContainer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "comp",
            "errCode",
            "msg"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 96
    instance-of v0, p1, Lcom/taobao/weex/ui/component/WXEmbed;

    if-eqz v0, :cond_0

    const-string v0, "1|"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {p1}, Lcom/taobao/weex/ui/component/NestedContainer;->getViewContainer()Landroid/view/ViewGroup;

    move-result-object p2

    .line 98
    new-instance p3, Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 99
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 100
    invoke-virtual {p3, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 102
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->setFileAccess(Ljava/lang/Object;Z)V

    .line 104
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->openJSEnabled(Ljava/lang/Object;Lio/dcloud/common/DHInterface/IApp;)V

    const-string v0, "searchBoxJavaBridge_"

    .line 106
    invoke-virtual {p3, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibility"

    .line 107
    invoke-virtual {p3, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    .line 108
    invoke-virtual {p3, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 111
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 112
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    check-cast p1, Lcom/taobao/weex/ui/component/WXEmbed;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXEmbed;->access$000(Lcom/taobao/weex/ui/component/WXEmbed;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXEmbed$ClickToReloadListener;->onException(Lcom/taobao/weex/ui/component/NestedContainer;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
