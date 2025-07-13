.class Lcom/baidu/mapsdkplatform/comapi/a/i;
.super Ljava/lang/Object;
.source "BDScaleAnimation.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Lcom/baidu/mapsdkplatform/comapi/a/h;


# direct methods
.method constructor <init>(Lcom/baidu/mapsdkplatform/comapi/a/h;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/i;->a:Lcom/baidu/mapsdkplatform/comapi/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 199
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/i;->a:Lcom/baidu/mapsdkplatform/comapi/a/h;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/h;->a(Lcom/baidu/mapsdkplatform/comapi/a/h;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/i;->a:Lcom/baidu/mapsdkplatform/comapi/a/h;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/h;->a(Lcom/baidu/mapsdkplatform/comapi/a/h;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/baidu/mapapi/animation/Animation$AnimationListener;->onAnimationCancel()V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 191
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/i;->a:Lcom/baidu/mapsdkplatform/comapi/a/h;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/h;->a(Lcom/baidu/mapsdkplatform/comapi/a/h;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/i;->a:Lcom/baidu/mapsdkplatform/comapi/a/h;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/h;->a(Lcom/baidu/mapsdkplatform/comapi/a/h;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/baidu/mapapi/animation/Animation$AnimationListener;->onAnimationEnd()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 207
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/i;->a:Lcom/baidu/mapsdkplatform/comapi/a/h;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/h;->a(Lcom/baidu/mapsdkplatform/comapi/a/h;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 208
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/i;->a:Lcom/baidu/mapsdkplatform/comapi/a/h;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/h;->a(Lcom/baidu/mapsdkplatform/comapi/a/h;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/baidu/mapapi/animation/Animation$AnimationListener;->onAnimationRepeat()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 183
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/i;->a:Lcom/baidu/mapsdkplatform/comapi/a/h;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/h;->a(Lcom/baidu/mapsdkplatform/comapi/a/h;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 184
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/i;->a:Lcom/baidu/mapsdkplatform/comapi/a/h;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/h;->a(Lcom/baidu/mapsdkplatform/comapi/a/h;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/baidu/mapapi/animation/Animation$AnimationListener;->onAnimationStart()V

    :cond_0
    return-void
.end method
