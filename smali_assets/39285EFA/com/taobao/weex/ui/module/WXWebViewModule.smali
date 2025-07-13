.class public Lcom/taobao/weex/ui/module/WXWebViewModule;
.super Lcom/taobao/weex/common/WXModule;
.source "WXWebViewModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/module/WXWebViewModule$Action;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    return-void
.end method

.method private action(Lcom/taobao/weex/ui/module/WXWebViewModule$Action;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "action",
            "ref"
        }
    .end annotation

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/weex/ui/module/WXWebViewModule;->action(Lcom/taobao/weex/ui/module/WXWebViewModule$Action;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private action(Lcom/taobao/weex/ui/module/WXWebViewModule$Action;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "action",
            "ref",
            "data"
        }
    .end annotation

    .line 58
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/module/WXWebViewModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 60
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p2

    .line 61
    instance-of v0, p2, Lcom/taobao/weex/ui/component/WXWeb;

    if-eqz v0, :cond_0

    .line 62
    check-cast p2, Lcom/taobao/weex/ui/component/WXWeb;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/taobao/weex/ui/component/WXWeb;->setAction(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public goBack(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    .line 38
    sget-object v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->goBack:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    invoke-direct {p0, v0, p1}, Lcom/taobao/weex/ui/module/WXWebViewModule;->action(Lcom/taobao/weex/ui/module/WXWebViewModule$Action;Ljava/lang/String;)V

    return-void
.end method

.method public goForward(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->goForward:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    invoke-direct {p0, v0, p1}, Lcom/taobao/weex/ui/module/WXWebViewModule;->action(Lcom/taobao/weex/ui/module/WXWebViewModule$Action;Ljava/lang/String;)V

    return-void
.end method

.method public postMessage(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ref",
            "msg"
        }
    .end annotation

    .line 53
    sget-object v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->postMessage:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    invoke-direct {p0, v0, p1, p2}, Lcom/taobao/weex/ui/module/WXWebViewModule;->action(Lcom/taobao/weex/ui/module/WXWebViewModule$Action;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public reload(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = true
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/taobao/weex/ui/module/WXWebViewModule$Action;->reload:Lcom/taobao/weex/ui/module/WXWebViewModule$Action;

    invoke-direct {p0, v0, p1}, Lcom/taobao/weex/ui/module/WXWebViewModule;->action(Lcom/taobao/weex/ui/module/WXWebViewModule$Action;Ljava/lang/String;)V

    return-void
.end method
