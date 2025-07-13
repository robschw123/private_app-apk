.class Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;
.super Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;,
        Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;,
        Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;
    }
.end annotation


# static fields
.field private static final ALPHA:I = 0x200

.field private static final NONE:I = 0x0

.field private static final ROTATION:I = 0x10

.field private static final ROTATION_X:I = 0x20

.field private static final ROTATION_Y:I = 0x40

.field private static final SCALE_X:I = 0x4

.field private static final SCALE_Y:I = 0x8

.field private static final TRANSFORM_MASK:I = 0x1ff

.field private static final TRANSLATION_X:I = 0x1

.field private static final TRANSLATION_Y:I = 0x2

.field private static final X:I = 0x80

.field private static final Y:I = 0x100


# instance fields
.field private mAnimationStarter:Ljava/lang/Runnable;

.field private mAnimatorEventListener:Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;

.field private mAnimatorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/dcloud/nineoldandroids/animation/Animator;",
            "Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:J

.field private mDurationSet:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mInterpolatorSet:Z

.field private mListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

.field mPendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mStartDelay:J

.field private mStartDelaySet:Z

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mDurationSet:Z

    const-wide/16 v1, 0x0

    .line 9
    iput-wide v1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mStartDelay:J

    .line 15
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mStartDelaySet:Z

    .line 28
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mInterpolatorSet:Z

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    .line 40
    new-instance v1, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;

    invoke-direct {v1, p0, v0}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;-><init>(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;)V

    iput-object v1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mAnimatorEventListener:Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mPendingAnimations:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$1;

    invoke-direct {v0, p0}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$1;-><init>(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;)V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mAnimationStarter:Ljava/lang/Runnable;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mAnimatorMap:Ljava/util/HashMap;

    .line 162
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$0(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->startAnimation()V

    return-void
.end method

.method static synthetic access$1(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;)Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method static synthetic access$2(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mAnimatorMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$3(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    return-void
.end method

.method static synthetic access$4(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$5(Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;IF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->setValue(IF)V

    return-void
.end method

.method private animateProperty(IF)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->getValue(I)F

    move-result v0

    sub-float/2addr p2, v0

    .line 3
    invoke-direct {p0, p1, v0, p2}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animatePropertyBy(IFF)V

    return-void
.end method

.method private animatePropertyBy(IF)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->getValue(I)F

    move-result v0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animatePropertyBy(IFF)V

    return-void
.end method

.method private animatePropertyBy(IFF)V
    .locals 5

    .line 3
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/nineoldandroids/animation/Animator;

    .line 7
    iget-object v3, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;

    .line 8
    invoke-virtual {v3, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->cancel(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 13
    iget v3, v3, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;->mPropertyMask:I

    if-nez v3, :cond_0

    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 21
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/Animator;->cancel()V

    .line 25
    :cond_2
    new-instance v0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;

    invoke-direct {v0, p1, p2, p3}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;-><init>(IFF)V

    .line 26
    iget-object p1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object p1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_3

    .line 29
    iget-object p2, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mAnimationStarter:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 30
    iget-object p2, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mAnimationStarter:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method private getValue(I)F
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq p1, v1, :cond_9

    const/4 v1, 0x2

    if-eq p1, v1, :cond_8

    const/4 v1, 0x4

    if-eq p1, v1, :cond_7

    const/16 v1, 0x8

    if-eq p1, v1, :cond_6

    const/16 v1, 0x10

    if-eq p1, v1, :cond_5

    const/16 v1, 0x20

    if-eq p1, v1, :cond_4

    const/16 v1, 0x40

    if-eq p1, v1, :cond_3

    const/16 v1, 0x80

    if-eq p1, v1, :cond_2

    const/16 v1, 0x100

    if-eq p1, v1, :cond_1

    const/16 v1, 0x200

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result p1

    return p1

    .line 34
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result p1

    return p1

    .line 35
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result p1

    return p1

    .line 36
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getRotationY()F

    move-result p1

    return p1

    .line 37
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getRotationX()F

    move-result p1

    return p1

    .line 38
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result p1

    return p1

    .line 50
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result p1

    return p1

    .line 51
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result p1

    return p1

    .line 52
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result p1

    return p1

    .line 53
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result p1

    return p1

    :cond_a
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private setValue(IF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq p1, v1, :cond_9

    const/4 v1, 0x2

    if-eq p1, v1, :cond_8

    const/4 v1, 0x4

    if-eq p1, v1, :cond_7

    const/16 v1, 0x8

    if-eq p1, v1, :cond_6

    const/16 v1, 0x10

    if-eq p1, v1, :cond_5

    const/16 v1, 0x20

    if-eq p1, v1, :cond_4

    const/16 v1, 0x40

    if-eq p1, v1, :cond_3

    const/16 v1, 0x80

    if-eq p1, v1, :cond_2

    const/16 v1, 0x100

    if-eq p1, v1, :cond_1

    const/16 v1, 0x200

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v0, p2}, Landroid/view/View;->setY(F)V

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {v0, p2}, Landroid/view/View;->setX(F)V

    goto :goto_0

    .line 45
    :cond_3
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotationY(F)V

    goto :goto_0

    .line 46
    :cond_4
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotationX(F)V

    goto :goto_0

    .line 47
    :cond_5
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 63
    :cond_6
    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 64
    :cond_7
    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleX(F)V

    goto :goto_0

    .line 65
    :cond_8
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 66
    :cond_9
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    :cond_a
    :goto_0
    return-void
.end method

.method private startAnimation()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 1
    invoke-static {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 4
    iget-object v3, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-lt v2, v3, :cond_3

    .line 11
    iget-object v2, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mAnimatorMap:Ljava/util/HashMap;

    new-instance v3, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;

    invoke-direct {v3, v4, v1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$PropertyBundle;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mAnimatorEventListener:Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;

    invoke-virtual {v0, v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 13
    iget-object v1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mAnimatorEventListener:Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$AnimatorEventListener;

    invoke-virtual {v0, v1}, Lio/dcloud/nineoldandroids/animation/Animator;->addListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 14
    iget-boolean v1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mStartDelaySet:Z

    if-eqz v1, :cond_0

    .line 15
    iget-wide v1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mStartDelay:J

    invoke-virtual {v0, v1, v2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setStartDelay(J)V

    .line 17
    :cond_0
    iget-boolean v1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mDurationSet:Z

    if-eqz v1, :cond_1

    .line 18
    iget-wide v1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mDuration:J

    invoke-virtual {v0, v1, v2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 20
    :cond_1
    iget-boolean v1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mInterpolatorSet:Z

    if-eqz v1, :cond_2

    .line 21
    iget-object v1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 23
    :cond_2
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->start()V

    return-void

    .line 24
    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;

    .line 25
    iget v5, v5, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC$NameValuesHolder;->mNameConstant:I

    or-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public alpha(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x200

    .line 1
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animateProperty(IF)V

    return-object p0
.end method

.method public alphaBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x200

    .line 1
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animatePropertyBy(IF)V

    return-object p0
.end method

.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mAnimatorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 4
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/Animator;

    .line 6
    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/Animator;->cancel()V

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10
    iget-object v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 12
    iget-object v1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mAnimationStarter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mDurationSet:Z

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mDuration:J

    return-wide v0

    .line 6
    :cond_0
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartDelay()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mStartDelaySet:Z

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mStartDelay:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public rotation(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animateProperty(IF)V

    return-object p0
.end method

.method public rotationBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animatePropertyBy(IF)V

    return-object p0
.end method

.method public rotationX(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x20

    .line 1
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animateProperty(IF)V

    return-object p0
.end method

.method public rotationXBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x20

    .line 1
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animatePropertyBy(IF)V

    return-object p0
.end method

.method public rotationY(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x40

    .line 1
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animateProperty(IF)V

    return-object p0
.end method

.method public rotationYBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x40

    .line 1
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animatePropertyBy(IF)V

    return-object p0
.end method

.method public scaleX(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animateProperty(IF)V

    return-object p0
.end method

.method public scaleXBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animatePropertyBy(IF)V

    return-object p0
.end method

.method public scaleY(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animateProperty(IF)V

    return-object p0
.end method

.method public scaleYBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animatePropertyBy(IF)V

    return-object p0
.end method

.method public setDuration(J)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mDurationSet:Z

    .line 2
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mDuration:J

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Animators cannot have negative duration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mInterpolatorSet:Z

    .line 2
    iput-object p1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public setListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method public setStartDelay(J)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mStartDelaySet:Z

    .line 2
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->mStartDelay:J

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Animators cannot have negative duration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->startAnimation()V

    return-void
.end method

.method public translationX(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animateProperty(IF)V

    return-object p0
.end method

.method public translationXBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animatePropertyBy(IF)V

    return-object p0
.end method

.method public translationY(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animateProperty(IF)V

    return-object p0
.end method

.method public translationYBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animatePropertyBy(IF)V

    return-object p0
.end method

.method public x(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x80

    .line 1
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animateProperty(IF)V

    return-object p0
.end method

.method public xBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x80

    .line 1
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animatePropertyBy(IF)V

    return-object p0
.end method

.method public y(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x100

    .line 1
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animateProperty(IF)V

    return-object p0
.end method

.method public yBy(F)Lio/dcloud/nineoldandroids/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x100

    .line 1
    invoke-direct {p0, v0, p1}, Lio/dcloud/nineoldandroids/view/ViewPropertyAnimatorHC;->animatePropertyBy(IF)V

    return-object p0
.end method
