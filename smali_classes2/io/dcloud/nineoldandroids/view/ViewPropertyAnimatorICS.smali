.class Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;
.super Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;


# static fields
.field private static final RETURN_WHEN_NULL:J = -0x1L


# instance fields
.field private final mNative:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewPropertyAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;->mNative:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public alpha(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;->mNative:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public alphaBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;->mNative:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alphaBy(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;->mNative:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;->mNative:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getStartDelay()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;->mNative:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->getStartDelay()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public rotation(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;->mNative:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public rotationBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;->mNative:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public rotationX(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;->mNative:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public rotationXBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;->mNative:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotationXBy(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public rotationY(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;->mNative:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public rotationYBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;->mNative:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotationYBy(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public scaleX(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;->mNative:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public scaleXBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;->mNative:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleXBy(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public scaleY(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;->mNative:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public scaleYBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;->mNative:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleYBy(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public setDuration(J)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;->mNative:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;->mNative:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public setListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;->mNative:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS$1;

    invoke-direct {v1, p0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS$1;-><init>(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setStartDelay(J)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;->mNative:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;->mNative:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public translationX(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;->mNative:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public translationXBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;->mNative:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public translationY(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;->mNative:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public translationYBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;->mNative:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public x(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;->mNative:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public xBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;->mNative:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->xBy(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public y(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;->mNative:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public yBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorICS;->mNative:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->yBy(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method
