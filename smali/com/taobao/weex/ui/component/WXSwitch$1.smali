.class Lcom/taobao/weex/ui/component/WXSwitch$1;
.super Lcom/taobao/weex/layout/ContentBoxMeasurement;
.source "WXSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXSwitch;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXSwitch;

.field final synthetic val$instance:Lcom/taobao/weex/WXSDKInstance;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXSwitch;Lcom/taobao/weex/WXSDKInstance;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$instance"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXSwitch$1;->this$0:Lcom/taobao/weex/ui/component/WXSwitch;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXSwitch$1;->val$instance:Lcom/taobao/weex/WXSDKInstance;

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

    const/4 p2, 0x0

    .line 55
    iput p2, p0, Lcom/taobao/weex/ui/component/WXSwitch$1;->mMeasureWidth:F

    .line 56
    iput p2, p0, Lcom/taobao/weex/ui/component/WXSwitch$1;->mMeasureHeight:F

    .line 58
    :try_start_0
    new-instance p2, Lcom/taobao/weex/ui/view/WXSwitchView;

    iget-object p3, p0, Lcom/taobao/weex/ui/component/WXSwitch$1;->val$instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p3}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/taobao/weex/ui/view/WXSwitchView;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x0

    .line 60
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    .line 61
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    :cond_0
    float-to-int p1, p1

    const/high16 p3, -0x80000000

    .line 64
    invoke-static {p1, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 67
    :goto_0
    invoke-virtual {p2, p1, p4}, Lcom/taobao/weex/ui/view/WXSwitchView;->measure(II)V

    .line 68
    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/WXSwitchView;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/taobao/weex/ui/component/WXSwitch$1;->mMeasureWidth:F

    .line 69
    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/WXSwitchView;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/taobao/weex/ui/component/WXSwitch$1;->mMeasureHeight:F
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 71
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
