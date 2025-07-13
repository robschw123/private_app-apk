.class Lio/dcloud/feature/weex_switch/SwitchButton$2;
.super Ljava/lang/Object;
.source "SwitchButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex_switch/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex_switch/SwitchButton;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex_switch/SwitchButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1055
    iput-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 1058
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1059
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$300(Lio/dcloud/feature/weex_switch/SwitchButton;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 1088
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$400(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$500(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v1

    iget v1, v1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->buttonX:F

    iget-object v2, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    .line 1089
    invoke-static {v2}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$600(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v2

    iget v2, v2, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->buttonX:F

    iget-object v3, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v3}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$500(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v3

    iget v3, v3, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->buttonX:F

    sub-float/2addr v2, v3

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->buttonX:F

    .line 1091
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$400(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object p1

    iget p1, p1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->buttonX:F

    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$800(Lio/dcloud/feature/weex_switch/SwitchButton;)F

    move-result v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$900(Lio/dcloud/feature/weex_switch/SwitchButton;)F

    move-result v0

    iget-object v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$800(Lio/dcloud/feature/weex_switch/SwitchButton;)F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    .line 1093
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$400(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$700(Lio/dcloud/feature/weex_switch/SwitchButton;)Landroid/animation/ArgbEvaluator;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    .line 1095
    invoke-static {v2}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$1000(Lio/dcloud/feature/weex_switch/SwitchButton;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    .line 1096
    invoke-static {v3}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$1100(Lio/dcloud/feature/weex_switch/SwitchButton;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1093
    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkStateColor:I

    .line 1099
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$400(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$1200(Lio/dcloud/feature/weex_switch/SwitchButton;)F

    move-result v1

    mul-float v1, v1, p1

    iput v1, v0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->radius:F

    .line 1100
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$400(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$700(Lio/dcloud/feature/weex_switch/SwitchButton;)Landroid/animation/ArgbEvaluator;

    move-result-object v1

    const/4 v2, 0x0

    .line 1102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    .line 1103
    invoke-static {v3}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$1300(Lio/dcloud/feature/weex_switch/SwitchButton;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1100
    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkedLineColor:I

    goto/16 :goto_0

    .line 1065
    :cond_1
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$400(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v0

    iget-object v2, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v2}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$700(Lio/dcloud/feature/weex_switch/SwitchButton;)Landroid/animation/ArgbEvaluator;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    .line 1067
    invoke-static {v3}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$500(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v3

    iget v3, v3, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkedLineColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    .line 1068
    invoke-static {v4}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$600(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v4

    iget v4, v4, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkedLineColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1065
    invoke-virtual {v2, p1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkedLineColor:I

    .line 1071
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$400(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v0

    iget-object v2, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v2}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$500(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v2

    iget v2, v2, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->radius:F

    iget-object v3, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    .line 1072
    invoke-static {v3}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$600(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v3

    iget v3, v3, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->radius:F

    iget-object v4, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v4}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$500(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v4

    iget v4, v4, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->radius:F

    sub-float/2addr v3, v4

    mul-float v3, v3, p1

    add-float/2addr v2, v3

    iput v2, v0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->radius:F

    .line 1074
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$300(Lio/dcloud/feature/weex_switch/SwitchButton;)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 1075
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$400(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$500(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v1

    iget v1, v1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->buttonX:F

    iget-object v2, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    .line 1076
    invoke-static {v2}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$600(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v2

    iget v2, v2, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->buttonX:F

    iget-object v3, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v3}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$500(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v3

    iget v3, v3, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->buttonX:F

    sub-float/2addr v2, v3

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->buttonX:F

    .line 1079
    :cond_2
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$400(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$700(Lio/dcloud/feature/weex_switch/SwitchButton;)Landroid/animation/ArgbEvaluator;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    .line 1081
    invoke-static {v2}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$500(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v2

    iget v2, v2, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkStateColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    .line 1082
    invoke-static {v3}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$600(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v3

    iget v3, v3, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkStateColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1079
    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkStateColor:I

    .line 1114
    :goto_0
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-virtual {p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->postInvalidate()V

    return-void
.end method
