.class Lcom/baidu/mapsdkplatform/comapi/a/b;
.super Ljava/lang/Object;
.source "BDAlphaAnimation.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Lcom/baidu/mapsdkplatform/comapi/a/a;


# direct methods
.method constructor <init>(Lcom/baidu/mapsdkplatform/comapi/a/a;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/b;->a:Lcom/baidu/mapsdkplatform/comapi/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 165
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/b;->a:Lcom/baidu/mapsdkplatform/comapi/a/a;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/a;->a(Lcom/baidu/mapsdkplatform/comapi/a/a;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 166
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/b;->a:Lcom/baidu/mapsdkplatform/comapi/a/a;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/a;->a(Lcom/baidu/mapsdkplatform/comapi/a/a;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/baidu/mapapi/animation/Animation$AnimationListener;->onAnimationCancel()V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 157
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/b;->a:Lcom/baidu/mapsdkplatform/comapi/a/a;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/a;->a(Lcom/baidu/mapsdkplatform/comapi/a/a;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/b;->a:Lcom/baidu/mapsdkplatform/comapi/a/a;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/a;->a(Lcom/baidu/mapsdkplatform/comapi/a/a;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/baidu/mapapi/animation/Animation$AnimationListener;->onAnimationEnd()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 173
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/b;->a:Lcom/baidu/mapsdkplatform/comapi/a/a;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/a;->a(Lcom/baidu/mapsdkplatform/comapi/a/a;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/b;->a:Lcom/baidu/mapsdkplatform/comapi/a/a;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/a;->a(Lcom/baidu/mapsdkplatform/comapi/a/a;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/baidu/mapapi/animation/Animation$AnimationListener;->onAnimationRepeat()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 149
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/b;->a:Lcom/baidu/mapsdkplatform/comapi/a/a;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/a;->a(Lcom/baidu/mapsdkplatform/comapi/a/a;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/b;->a:Lcom/baidu/mapsdkplatform/comapi/a/a;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/a;->a(Lcom/baidu/mapsdkplatform/comapi/a/a;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/baidu/mapapi/animation/Animation$AnimationListener;->onAnimationStart()V

    :cond_0
    return-void
.end method
