.class public Lio/dcloud/feature/weex_barcode/BarcodeComponent;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "BarcodeComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXComponent<",
        "Lio/dcloud/feature/weex_barcode/BarcodeView;",
        ">;"
    }
.end annotation


# instance fields
.field private isAnimationEnd:Z

.field private isLoad:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ILcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "parent",
            "type",
            "basicComponentData"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ILcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 24
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->isLoad:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 91
    iput-boolean p2, p0, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->isAnimationEnd:Z

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "parent",
            "basicComponentData"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 24
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->isLoad:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 91
    iput-boolean p2, p0, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->isAnimationEnd:Z

    return-void
.end method

.method static synthetic access$002(Lio/dcloud/feature/weex_barcode/BarcodeComponent;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->isAnimationEnd:Z

    return p1
.end method


# virtual methods
.method public cancel()V
    .locals 1
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .line 136
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-virtual {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->cancelScan()V

    return-void
.end method

.method public close()V
    .locals 0
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 155
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    .line 156
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-virtual {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->closeScan()V

    .line 157
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-virtual {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->onDestory()V

    return-void
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "context"
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->initComponentHostView(Landroid/content/Context;)Lio/dcloud/feature/weex_barcode/BarcodeView;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lio/dcloud/feature/weex_barcode/BarcodeView;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "nvue-Barcode"

    .line 35
    invoke-static {p1, v0}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lio/dcloud/feature/weex_barcode/BarcodeView;-><init>(Landroid/content/Context;Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/WXSDKInstance;)V

    return-object v0
.end method

.method public onActivityPause()V
    .locals 1

    .line 168
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityPause()V

    .line 169
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-virtual {v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->onPause()V

    return-void
.end method

.method public onActivityResume()V
    .locals 2

    .line 162
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityResume()V

    .line 163
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->onResume(Z)V

    return-void
.end method

.method public setAutoDecodeCharset(Z)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "autoDecodeCharset"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoDecodeCharset"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->setAutoDecodeCharset(Z)V

    return-void
.end method

.method public setAutoZoom(Z)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "autoZoom"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoZoom"
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->setAutoZoom(Z)V

    return-void
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "background"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->setBackground(I)V

    return-void
.end method

.method public setFilters(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "filters"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filters"
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->initDecodeFormats(Lcom/alibaba/fastjson/JSONArray;)V

    return-void
.end method

.method public setFlash(Z)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "open"
        }
    .end annotation

    .line 146
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->setFlash(Z)V

    return-void
.end method

.method public setFrameColor(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "frameColor"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->setFrameColor(I)V

    return-void
.end method

.method protected bridge synthetic setHostLayoutParams(Landroid/view/View;IIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "host",
            "width",
            "height",
            "left",
            "right",
            "top",
            "bottom"
        }
    .end annotation

    .line 22
    check-cast p1, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-virtual/range {p0 .. p7}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->setHostLayoutParams(Lio/dcloud/feature/weex_barcode/BarcodeView;IIIIII)V

    return-void
.end method

.method protected setHostLayoutParams(Lio/dcloud/feature/weex_barcode/BarcodeView;IIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "host",
            "width",
            "height",
            "left",
            "right",
            "top",
            "bottom"
        }
    .end annotation

    .line 124
    invoke-super/range {p0 .. p7}, Lcom/taobao/weex/ui/component/WXComponent;->setHostLayoutParams(Landroid/view/View;IIIIII)V

    .line 125
    iget-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->isLoad:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 126
    iget-object p1, p0, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->isLoad:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 127
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-virtual {p1, p2, p3}, Lio/dcloud/feature/weex_barcode/BarcodeView;->initBarcodeView(II)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-virtual {p1, p2, p3}, Lio/dcloud/feature/weex_barcode/BarcodeView;->updateStyles(II)V

    :goto_0
    return-void
.end method

.method public setScanbarColor(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "scanbarColor"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->setScanBarColor(I)V

    return-void
.end method

.method public setSutoStart(Z)V
    .locals 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "autostart"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "isstart"
        }
    .end annotation

    .line 94
    iget-boolean v0, p0, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->isAnimationEnd:Z

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    new-instance v1, Lio/dcloud/feature/weex_barcode/BarcodeComponent$1;

    invoke-direct {v1, p0, p1}, Lio/dcloud/feature/weex_barcode/BarcodeComponent$1;-><init>(Lio/dcloud/feature/weex_barcode/BarcodeComponent;Z)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKInstance;->addFrameViewEventListener(Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 106
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->start(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public start(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 5
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 114
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    const-string v1, "conserve"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->setConserve(Z)V

    .line 115
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    const-string v1, "filename"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "png"

    invoke-static {v1, v2}, Lio/dcloud/common/util/PdrUtil;->getDefaultPrivateDocPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->setFilename(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    const-string v1, "vibrate"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->setVibrate(Z)V

    .line 117
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex_barcode/BarcodeView;

    const-string v1, "sound"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "default"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    invoke-virtual {v0, v3}, Lio/dcloud/feature/weex_barcode/BarcodeView;->setPlayBeep(Z)V

    .line 119
    :cond_4
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex_barcode/BarcodeView;

    invoke-virtual {p1}, Lio/dcloud/feature/weex_barcode/BarcodeView;->start()V

    return-void
.end method

.method public updateProperties(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "props"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateProperties(Ljava/util/Map;)V

    .line 42
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    const-string v0, "background"

    invoke-virtual {p1, v0}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 43
    invoke-virtual {p0}, Lio/dcloud/feature/weex_barcode/BarcodeComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex_barcode/BarcodeView;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Lio/dcloud/feature/weex_barcode/BarcodeView;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method
