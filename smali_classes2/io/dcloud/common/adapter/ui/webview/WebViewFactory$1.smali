.class Lio/dcloud/common/adapter/ui/webview/WebViewFactory$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/ui/webview/WebViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->access$002(Z)Z

    .line 2
    invoke-static {}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->access$100()Lio/dcloud/common/DHInterface/ICallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->access$100()Lio/dcloud/common/DHInterface/ICallBack;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {v2}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->access$102(Lio/dcloud/common/DHInterface/ICallBack;)Lio/dcloud/common/DHInterface/ICallBack;

    :cond_0
    return-void
.end method
