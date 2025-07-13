.class public Lcom/baidu/mapapi/animation/SingleScaleAnimation;
.super Lcom/baidu/mapapi/animation/Animation;
.source "SingleScaleAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/animation/SingleScaleAnimation$ScaleType;
    }
.end annotation


# direct methods
.method public varargs constructor <init>(Lcom/baidu/mapapi/animation/SingleScaleAnimation$ScaleType;[F)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/baidu/mapapi/animation/Animation;-><init>()V

    if-eqz p2, :cond_2

    .line 25
    array-length v0, p2

    if-eqz v0, :cond_2

    .line 27
    sget-object v0, Lcom/baidu/mapapi/animation/SingleScaleAnimation$ScaleType;->SCALE_X:Lcom/baidu/mapapi/animation/SingleScaleAnimation$ScaleType;

    if-ne p1, v0, :cond_0

    .line 28
    new-instance p1, Lcom/baidu/mapsdkplatform/comapi/a/j;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Lcom/baidu/mapsdkplatform/comapi/a/j;-><init>(I[F)V

    iput-object p1, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    goto :goto_0

    .line 29
    :cond_0
    sget-object v0, Lcom/baidu/mapapi/animation/SingleScaleAnimation$ScaleType;->SCALE_Y:Lcom/baidu/mapapi/animation/SingleScaleAnimation$ScaleType;

    if-ne p1, v0, :cond_1

    .line 30
    new-instance p1, Lcom/baidu/mapsdkplatform/comapi/a/j;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p2}, Lcom/baidu/mapsdkplatform/comapi/a/j;-><init>(I[F)V

    iput-object p1, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    :cond_1
    :goto_0
    return-void

    .line 26
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "BDMapSDKException: the scales is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/a/c;->b()V

    return-void
.end method

.method public setAnimationListener(Lcom/baidu/mapapi/animation/Animation$AnimationListener;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(Lcom/baidu/mapapi/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public setDuration(J)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(J)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->b(I)V

    return-void
.end method

.method public setRepeatMode(Lcom/baidu/mapapi/animation/Animation$RepeatMode;)V
    .locals 1

    .line 78
    sget-object v0, Lcom/baidu/mapapi/animation/Animation$RepeatMode;->RESTART:Lcom/baidu/mapapi/animation/Animation$RepeatMode;

    if-ne p1, v0, :cond_0

    .line 79
    iget-object p1, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(I)V

    goto :goto_0

    .line 80
    :cond_0
    sget-object v0, Lcom/baidu/mapapi/animation/Animation$RepeatMode;->REVERSE:Lcom/baidu/mapapi/animation/Animation$RepeatMode;

    if-ne p1, v0, :cond_1

    .line 81
    iget-object p1, p0, Lcom/baidu/mapapi/animation/SingleScaleAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method
