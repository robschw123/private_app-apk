.class public Lio/dcloud/feature/weex_text/DCWXRichText;
.super Lcom/taobao/weex/ui/component/WXText;
.source "DCWXRichText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex_text/DCWXRichText$Creator;,
        Lio/dcloud/feature/weex_text/DCWXRichText$RichTextContentBoxMeasurement;
    }
.end annotation


# direct methods
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

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXText;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 28
    new-instance p1, Lio/dcloud/feature/weex_text/DCWXRichText$RichTextContentBoxMeasurement;

    invoke-direct {p1, p0}, Lio/dcloud/feature/weex_text/DCWXRichText$RichTextContentBoxMeasurement;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex_text/DCWXRichText;->setContentBoxMeasurement(Lcom/taobao/weex/layout/ContentBoxMeasurement;)V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/weex_text/DCWXRichText;)Lcom/taobao/weex/layout/ContentBoxMeasurement;
    .locals 0

    .line 24
    iget-object p0, p0, Lio/dcloud/feature/weex_text/DCWXRichText;->contentBoxMeasurement:Lcom/taobao/weex/layout/ContentBoxMeasurement;

    return-object p0
.end method

.method static synthetic access$100(Lio/dcloud/feature/weex_text/DCWXRichText;)Lcom/taobao/weex/layout/ContentBoxMeasurement;
    .locals 0

    .line 24
    iget-object p0, p0, Lio/dcloud/feature/weex_text/DCWXRichText;->contentBoxMeasurement:Lcom/taobao/weex/layout/ContentBoxMeasurement;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "context"
        }
    .end annotation

    .line 24
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex_text/DCWXRichText;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/component/richtext/WXRichTextView;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/component/richtext/WXRichTextView;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/taobao/weex/ui/component/richtext/WXRichTextView;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/component/richtext/WXRichTextView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXTextView;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "context"
        }
    .end annotation

    .line 24
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex_text/DCWXRichText;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/component/richtext/WXRichTextView;

    move-result-object p1

    return-object p1
.end method

.method public updateAttrs(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
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

    .line 69
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXText;->updateAttrs(Ljava/util/Map;)V

    const-string v0, "value"

    .line 70
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    new-instance v0, Lio/dcloud/feature/weex_text/DCWXRichText$1;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex_text/DCWXRichText$1;-><init>(Lio/dcloud/feature/weex_text/DCWXRichText;)V

    invoke-virtual {p1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public updateExtra(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extra"
        }
    .end annotation

    .line 84
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXText;->updateExtra(Ljava/lang/Object;)V

    .line 85
    instance-of v0, p1, Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 86
    check-cast p1, Landroid/text/Layout;

    .line 88
    invoke-virtual {p0}, Lio/dcloud/feature/weex_text/DCWXRichText;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string v1, "height"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lio/dcloud/feature/weex_text/DCWXRichText;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/dcloud/feature/weex_text/DCWXRichText;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V

    :cond_0
    return-void
.end method
