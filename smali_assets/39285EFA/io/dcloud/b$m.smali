.class Lio/dcloud/b$m;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/b;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/b;


# direct methods
.method constructor <init>(Lio/dcloud/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/b$m;->a:Lio/dcloud/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->minUserAgentVersion:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "0"

    .line 8
    :cond_0
    invoke-static {}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->resetSysWebViewState()V

    .line 9
    invoke-static {}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->resetUA()V

    .line 10
    iget-object v1, p0, Lio/dcloud/b$m;->a:Lio/dcloud/b;

    invoke-virtual {v1}, Lio/dcloud/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->getWebViewUserAgentVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v1, v0}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->verifyVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    if-ne p1, v2, :cond_2

    if-eqz p2, :cond_2

    .line 16
    check-cast p2, Lio/dcloud/common/DHInterface/IWebViewFactory;

    .line 17
    iget-object p1, p0, Lio/dcloud/b$m;->a:Lio/dcloud/b;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    iget-object v2, p0, Lio/dcloud/b$m;->a:Lio/dcloud/b;

    .line 18
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-interface {p2, v2}, Lio/dcloud/common/DHInterface/IWebViewFactory;->getDefWebViewUA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-static {p1, p2}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->getWebViewUserAgentVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1, v0}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->verifyVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x3

    .line 26
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
