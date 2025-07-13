.class Lcom/baidu/mapsdkplatform/comapi/a/e;
.super Ljava/lang/Object;
.source "BDAnimationSet.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Lcom/baidu/mapsdkplatform/comapi/a/d;


# direct methods
.method constructor <init>(Lcom/baidu/mapsdkplatform/comapi/a/d;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/e;->a:Lcom/baidu/mapsdkplatform/comapi/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 205
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/e;->a:Lcom/baidu/mapsdkplatform/comapi/a/d;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/d;->a(Lcom/baidu/mapsdkplatform/comapi/a/d;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/e;->a:Lcom/baidu/mapsdkplatform/comapi/a/d;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/d;->a(Lcom/baidu/mapsdkplatform/comapi/a/d;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/baidu/mapapi/animation/Animation$AnimationListener;->onAnimationCancel()V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 197
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/e;->a:Lcom/baidu/mapsdkplatform/comapi/a/d;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/d;->a(Lcom/baidu/mapsdkplatform/comapi/a/d;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 198
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/e;->a:Lcom/baidu/mapsdkplatform/comapi/a/d;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/d;->a(Lcom/baidu/mapsdkplatform/comapi/a/d;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/baidu/mapapi/animation/Animation$AnimationListener;->onAnimationEnd()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 213
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/e;->a:Lcom/baidu/mapsdkplatform/comapi/a/d;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/d;->a(Lcom/baidu/mapsdkplatform/comapi/a/d;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 214
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/e;->a:Lcom/baidu/mapsdkplatform/comapi/a/d;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/d;->a(Lcom/baidu/mapsdkplatform/comapi/a/d;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/baidu/mapapi/animation/Animation$AnimationListener;->onAnimationRepeat()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 189
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/e;->a:Lcom/baidu/mapsdkplatform/comapi/a/d;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/d;->a(Lcom/baidu/mapsdkplatform/comapi/a/d;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 190
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/e;->a:Lcom/baidu/mapsdkplatform/comapi/a/d;

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/a/d;->a(Lcom/baidu/mapsdkplatform/comapi/a/d;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/baidu/mapapi/animation/Animation$AnimationListener;->onAnimationStart()V

    :cond_0
    return-void
.end method
