.class Lio/dcloud/feature/weex/extend/DCCoverImageComponent$1;
.super Lio/dcloud/feature/uniapp/layout/UniContentBoxMeasurement;
.source "DCCoverImageComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCCoverImageComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/extend/DCCoverImageComponent;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCCoverImageComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCCoverImageComponent$1;->this$0:Lio/dcloud/feature/weex/extend/DCCoverImageComponent;

    invoke-direct {p0}, Lio/dcloud/feature/uniapp/layout/UniContentBoxMeasurement;-><init>()V

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

    if-eqz p3, :cond_0

    .line 28
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCCoverImageComponent$1;->this$0:Lio/dcloud/feature/weex/extend/DCCoverImageComponent;

    invoke-virtual {p1}, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p1

    const-string p2, "width"

    invoke-virtual {p1, p2}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 29
    :cond_0
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCCoverImageComponent$1;->this$0:Lio/dcloud/feature/weex/extend/DCCoverImageComponent;

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->access$000(Lio/dcloud/feature/weex/extend/DCCoverImageComponent;)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lio/dcloud/feature/weex/extend/DCCoverImageComponent$1;->mMeasureWidth:F

    :cond_1
    if-nez p4, :cond_2

    .line 32
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCCoverImageComponent$1;->this$0:Lio/dcloud/feature/weex/extend/DCCoverImageComponent;

    invoke-static {p1}, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;->access$100(Lio/dcloud/feature/weex/extend/DCCoverImageComponent;)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lio/dcloud/feature/weex/extend/DCCoverImageComponent$1;->mMeasureHeight:F

    :cond_2
    return-void
.end method
