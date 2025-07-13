.class Lio/dcloud/feature/weex_switch/SwitchButton$3;
.super Ljava/lang/Object;
.source "SwitchButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    .line 1119
    iput-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 1126
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$300(Lio/dcloud/feature/weex_switch/SwitchButton;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 1150
    :cond_0
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$1500(Lio/dcloud/feature/weex_switch/SwitchButton;)Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-static {p1, v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$1502(Lio/dcloud/feature/weex_switch/SwitchButton;Z)Z

    .line 1151
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {p1, v1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$302(Lio/dcloud/feature/weex_switch/SwitchButton;I)I

    .line 1152
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-virtual {p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->postInvalidate()V

    .line 1153
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$1400(Lio/dcloud/feature/weex_switch/SwitchButton;)V

    goto :goto_0

    .line 1144
    :cond_1
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {p1, v1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$302(Lio/dcloud/feature/weex_switch/SwitchButton;I)I

    .line 1145
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-virtual {p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->postInvalidate()V

    .line 1146
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$1400(Lio/dcloud/feature/weex_switch/SwitchButton;)V

    goto :goto_0

    .line 1139
    :cond_2
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {p1, v1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$302(Lio/dcloud/feature/weex_switch/SwitchButton;I)I

    .line 1140
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-virtual {p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->postInvalidate()V

    goto :goto_0

    .line 1131
    :cond_3
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$302(Lio/dcloud/feature/weex_switch/SwitchButton;I)I

    .line 1132
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$400(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object p1

    iput v1, p1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkedLineColor:I

    .line 1133
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$400(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$1200(Lio/dcloud/feature/weex_switch/SwitchButton;)F

    move-result v0

    iput v0, p1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->radius:F

    .line 1135
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-virtual {p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->postInvalidate()V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method
