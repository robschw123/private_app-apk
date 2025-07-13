.class Lcom/baidu/mapsdkplatform/comapi/a/k;
.super Ljava/lang/Object;
.source "BDSingleScaleAnimation.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Lcom/baidu/mapsdkplatform/comapi/a/j;


# direct methods
.method constructor <init>(Lcom/baidu/mapsdkplatform/comapi/a/j;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/k;->a:Lcom/baidu/mapsdkplatform/comapi/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 207
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/k;->a:Lcom/baidu/mapsdkplatform/comapi/a/j;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/j;->a(Lcom/baidu/mapsdkplatform/comapi/a/j;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 208
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/k;->a:Lcom/baidu/mapsdkplatform/comapi/a/j;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/j;->a(Lcom/baidu/mapsdkplatform/comapi/a/j;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/baidu/mapapi/animation/Animation$AnimationListener;->onAnimationCancel()V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 199
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/k;->a:Lcom/baidu/mapsdkplatform/comapi/a/j;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/j;->a(Lcom/baidu/mapsdkplatform/comapi/a/j;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/k;->a:Lcom/baidu/mapsdkplatform/comapi/a/j;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/j;->a(Lcom/baidu/mapsdkplatform/comapi/a/j;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/baidu/mapapi/animation/Animation$AnimationListener;->onAnimationEnd()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 215
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/k;->a:Lcom/baidu/mapsdkplatform/comapi/a/j;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/j;->a(Lcom/baidu/mapsdkplatform/comapi/a/j;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 216
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/k;->a:Lcom/baidu/mapsdkplatform/comapi/a/j;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/j;->a(Lcom/baidu/mapsdkplatform/comapi/a/j;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/baidu/mapapi/animation/Animation$AnimationListener;->onAnimationRepeat()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 191
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/k;->a:Lcom/baidu/mapsdkplatform/comapi/a/j;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/j;->a(Lcom/baidu/mapsdkplatform/comapi/a/j;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/k;->a:Lcom/baidu/mapsdkplatform/comapi/a/j;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/j;->a(Lcom/baidu/mapsdkplatform/comapi/a/j;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/baidu/mapapi/animation/Animation$AnimationListener;->onAnimationStart()V

    :cond_0
    return-void
.end method
