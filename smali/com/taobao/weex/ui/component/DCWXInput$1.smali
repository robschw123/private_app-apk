.class Lcom/taobao/weex/ui/component/DCWXInput$1;
.super Lcom/taobao/weex/layout/ContentBoxMeasurement;
.source "DCWXInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/DCWXInput;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXInput;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$1;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-direct {p0}, Lcom/taobao/weex/layout/ContentBoxMeasurement;-><init>()V

    return-void
.end method


# virtual methods
.method public layoutAfter(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "computedWidth",
            "computedHeight"
        }
    .end annotation

    return-void
.end method

.method public layoutBefore()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXInput$1;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/DCWXInput;->access$200(Lcom/taobao/weex/ui/component/DCWXInput;)V

    return-void
.end method

.method public measureInternal(FFII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "widthMeasureMode",
            "heightMeasureMode"
        }
    .end annotation

    .line 142
    iget-object p3, p0, Lcom/taobao/weex/ui/component/DCWXInput$1;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/DCWXInput;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/ui/action/BasicComponentData;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/taobao/weex/ui/component/DCWXInput$1;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/DCWXInput;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/ui/action/BasicComponentData;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/dom/WXStyle;->size()I

    move-result p3

    if-nez p3, :cond_1

    .line 143
    :cond_0
    iget-object p3, p0, Lcom/taobao/weex/ui/component/DCWXInput$1;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-static {p3, p1}, Lcom/taobao/weex/ui/component/DCWXInput;->access$002(Lcom/taobao/weex/ui/component/DCWXInput;F)F

    .line 145
    :cond_1
    invoke-static {p2}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 146
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$1;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getDefaultFontSize()I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3fb33333    # 1.4f

    mul-float p1, p1, p2

    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$1;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/DCWXInput;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p2

    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$1;->mMeasureHeight:F

    .line 147
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXInput$1;->this$0:Lcom/taobao/weex/ui/component/DCWXInput;

    iget p2, p0, Lcom/taobao/weex/ui/component/DCWXInput$1;->mMeasureHeight:F

    invoke-static {p1, p2}, Lcom/taobao/weex/ui/component/DCWXInput;->access$102(Lcom/taobao/weex/ui/component/DCWXInput;F)F

    :cond_2
    return-void
.end method
