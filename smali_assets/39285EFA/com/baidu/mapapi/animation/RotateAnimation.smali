.class public Lcom/baidu/mapapi/animation/RotateAnimation;
.super Lcom/baidu/mapapi/animation/Animation;
.source "RotateAnimation.java"


# direct methods
.method public constructor <init>(FF)V
    .locals 3

    .line 17
    invoke-direct {p0}, Lcom/baidu/mapapi/animation/Animation;-><init>()V

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    .line 21
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/a/f;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-direct {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/a/f;-><init>([F)V

    iput-object v0, p0, Lcom/baidu/mapapi/animation/RotateAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "BDMapSDKException: the degrees can\'t less than zero"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/baidu/mapapi/animation/RotateAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/a/c;->b()V

    return-void
.end method

.method public setAnimationListener(Lcom/baidu/mapapi/animation/Animation$AnimationListener;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/baidu/mapapi/animation/RotateAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(Lcom/baidu/mapapi/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public setDuration(J)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/baidu/mapapi/animation/RotateAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(J)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/baidu/mapapi/animation/RotateAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/baidu/mapapi/animation/RotateAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/c;->b(I)V

    return-void
.end method

.method public setRepeatMode(Lcom/baidu/mapapi/animation/Animation$RepeatMode;)V
    .locals 1

    .line 69
    sget-object v0, Lcom/baidu/mapapi/animation/Animation$RepeatMode;->RESTART:Lcom/baidu/mapapi/animation/Animation$RepeatMode;

    if-ne p1, v0, :cond_0

    .line 70
    iget-object p1, p0, Lcom/baidu/mapapi/animation/RotateAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(I)V

    goto :goto_0

    .line 71
    :cond_0
    sget-object v0, Lcom/baidu/mapapi/animation/Animation$RepeatMode;->REVERSE:Lcom/baidu/mapapi/animation/Animation$RepeatMode;

    if-ne p1, v0, :cond_1

    .line 72
    iget-object p1, p0, Lcom/baidu/mapapi/animation/RotateAnimation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/baidu/mapsdkplatform/comapi/a/c;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method
