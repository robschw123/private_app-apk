.class Lcom/baidu/mapsdkplatform/comapi/a/m;
.super Ljava/lang/Object;
.source "BDTransformation.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Lcom/baidu/mapsdkplatform/comapi/a/l;


# direct methods
.method constructor <init>(Lcom/baidu/mapsdkplatform/comapi/a/l;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/m;->a:Lcom/baidu/mapsdkplatform/comapi/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 256
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/m;->a:Lcom/baidu/mapsdkplatform/comapi/a/l;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/l;->a(Lcom/baidu/mapsdkplatform/comapi/a/l;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 257
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/m;->a:Lcom/baidu/mapsdkplatform/comapi/a/l;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/l;->a(Lcom/baidu/mapsdkplatform/comapi/a/l;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/baidu/mapapi/animation/Animation$AnimationListener;->onAnimationCancel()V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 248
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/m;->a:Lcom/baidu/mapsdkplatform/comapi/a/l;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/l;->a(Lcom/baidu/mapsdkplatform/comapi/a/l;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 249
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/m;->a:Lcom/baidu/mapsdkplatform/comapi/a/l;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/l;->a(Lcom/baidu/mapsdkplatform/comapi/a/l;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/baidu/mapapi/animation/Animation$AnimationListener;->onAnimationEnd()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 264
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/m;->a:Lcom/baidu/mapsdkplatform/comapi/a/l;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/l;->a(Lcom/baidu/mapsdkplatform/comapi/a/l;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 265
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/m;->a:Lcom/baidu/mapsdkplatform/comapi/a/l;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/l;->a(Lcom/baidu/mapsdkplatform/comapi/a/l;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/baidu/mapapi/animation/Animation$AnimationListener;->onAnimationRepeat()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 240
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/m;->a:Lcom/baidu/mapsdkplatform/comapi/a/l;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/l;->a(Lcom/baidu/mapsdkplatform/comapi/a/l;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 241
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/m;->a:Lcom/baidu/mapsdkplatform/comapi/a/l;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/l;->a(Lcom/baidu/mapsdkplatform/comapi/a/l;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/baidu/mapapi/animation/Animation$AnimationListener;->onAnimationStart()V

    :cond_0
    return-void
.end method
