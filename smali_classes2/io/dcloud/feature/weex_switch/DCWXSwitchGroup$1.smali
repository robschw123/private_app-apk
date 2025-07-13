.class Lio/dcloud/feature/weex_switch/DCWXSwitchGroup$1;
.super Lcom/taobao/weex/layout/ContentBoxMeasurement;
.source "DCWXSwitchGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lio/dcloud/feature/weex_switch/DCWXSwitchGroup$1;->this$0:Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;

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
    .locals 0

    return-void
.end method

.method public measureInternal(FFII)V
    .locals 1
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

    .line 31
    iget-object p3, p0, Lio/dcloud/feature/weex_switch/DCWXSwitchGroup$1;->this$0:Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;

    invoke-virtual {p3}, Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p3

    const/high16 p4, 0x41f80000    # 31.0f

    invoke-static {p4, p3}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p3

    float-to-int p3, p3

    .line 32
    iget-object p4, p0, Lio/dcloud/feature/weex_switch/DCWXSwitchGroup$1;->this$0:Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;

    invoke-virtual {p4}, Lio/dcloud/feature/weex_switch/DCWXSwitchGroup;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p4

    invoke-virtual {p4}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p4

    const/high16 v0, 0x424c0000    # 51.0f

    invoke-static {v0, p4}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p4

    float-to-int p4, p4

    .line 33
    invoke-static {p2}, Lcom/taobao/weex/dom/CSSConstants;->isUndefined(F)Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-float p1, p4

    int-to-float p2, p3

    .line 37
    :cond_0
    iput p1, p0, Lio/dcloud/feature/weex_switch/DCWXSwitchGroup$1;->mMeasureWidth:F

    .line 38
    iput p2, p0, Lio/dcloud/feature/weex_switch/DCWXSwitchGroup$1;->mMeasureHeight:F

    return-void
.end method
