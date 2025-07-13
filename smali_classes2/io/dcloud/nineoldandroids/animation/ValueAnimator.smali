.class public Lio/dcloud/nineoldandroids/animation/ValueAnimator;
.super Lio/dcloud/nineoldandroids/animation/Animator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimationHandler;,
        Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;
    }
.end annotation


# static fields
.field static final ANIMATION_FRAME:I = 0x1

.field static final ANIMATION_START:I = 0x0

.field private static final DEFAULT_FRAME_DELAY:J = 0xaL

.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field static final RUNNING:I = 0x1

.field static final SEEKED:I = 0x2

.field static final STOPPED:I

.field private static sAnimationHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAnimations:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sDefaultInterpolator:Landroid/view/animation/Interpolator;

.field private static final sDelayedAnims:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sEndingAnims:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sFloatEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

.field private static sFrameDelay:J

.field private static final sIntEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

.field private static final sPendingAnimations:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sReadyAnims:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentFraction:F

.field private mCurrentIteration:I

.field private mDelayStartTime:J

.field private mDuration:J

.field mInitialized:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mPlayingBackwards:Z

.field mPlayingState:I

.field private mRepeatCount:I

.field private mRepeatMode:I

.field private mRunning:Z

.field mSeekTime:J

.field private mStartDelay:J

.field mStartTime:J

.field private mStarted:Z

.field private mStartedDelay:Z

.field private mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

.field mValuesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 2
    sput-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    .line 7
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator$1;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$1;-><init>()V

    .line 8
    sput-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    .line 18
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator$2;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$2;-><init>()V

    .line 19
    sput-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    .line 32
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator$3;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$3;-><init>()V

    .line 33
    sput-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    .line 42
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator$4;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$4;-><init>()V

    .line 43
    sput-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sEndingAnims:Ljava/lang/ThreadLocal;

    .line 52
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator$5;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$5;-><init>()V

    .line 53
    sput-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sReadyAnims:Ljava/lang/ThreadLocal;

    .line 63
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 64
    sput-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sDefaultInterpolator:Landroid/view/animation/Interpolator;

    .line 68
    new-instance v0, Lio/dcloud/nineoldandroids/animation/IntEvaluator;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/IntEvaluator;-><init>()V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sIntEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    .line 69
    new-instance v0, Lio/dcloud/nineoldandroids/animation/FloatEvaluator;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/FloatEvaluator;-><init>()V

    sput-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sFloatEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    const-wide/16 v0, 0xa

    .line 142
    sput-wide v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sFrameDelay:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/Animator;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 78
    iput v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    const/4 v1, 0x0

    .line 83
    iput v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mCurrentFraction:F

    .line 88
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    .line 104
    iput v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 114
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    .line 120
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStarted:Z

    .line 126
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    const-wide/16 v1, 0x12c

    .line 133
    iput-wide v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mDuration:J

    const-wide/16 v1, 0x0

    .line 136
    iput-wide v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    .line 143
    iput v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    const/4 v0, 0x1

    .line 150
    iput v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRepeatMode:I

    .line 157
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sDefaultInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$10(Lio/dcloud/nineoldandroids/animation/ValueAnimator;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    return-void
.end method

.method static synthetic access$11(Lio/dcloud/nineoldandroids/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->endAnimation()V

    return-void
.end method

.method static synthetic access$12()J
    .locals 2

    .line 1
    sget-wide v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sFrameDelay:J

    return-wide v0
.end method

.method static synthetic access$2()Ljava/lang/ThreadLocal;
    .locals 1

    .line 1
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$3()Ljava/lang/ThreadLocal;
    .locals 1

    .line 1
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$4()Ljava/lang/ThreadLocal;
    .locals 1

    .line 1
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$5(Lio/dcloud/nineoldandroids/animation/ValueAnimator;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method static synthetic access$6(Lio/dcloud/nineoldandroids/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->startAnimation()V

    return-void
.end method

.method static synthetic access$7()Ljava/lang/ThreadLocal;
    .locals 1

    .line 1
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sReadyAnims:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$8()Ljava/lang/ThreadLocal;
    .locals 1

    .line 1
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sEndingAnims:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$9(Lio/dcloud/nineoldandroids/animation/ValueAnimator;J)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->delayedAnimationFrame(J)Z

    move-result p0

    return p0
.end method

.method public static clearAllAnimations()V
    .locals 1

    .line 1
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private delayedAnimationFrame(J)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    .line 3
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mDelayStartTime:J

    goto :goto_0

    .line 5
    :cond_0
    iget-wide v2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mDelayStartTime:J

    sub-long v2, p1, v2

    .line 6
    iget-wide v4, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    sub-long/2addr v2, v4

    sub-long/2addr p1, v2

    .line 9
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    .line 10
    iput v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private endAnimation()V
    .locals 5

    .line 1
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 5
    iget-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v4, p0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_1
    :goto_1
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    .line 14
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStarted:Z

    return-void
.end method

.method public static getCurrentAnimationsCount()I
    .locals 1

    .line 1
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static getFrameDelay()J
    .locals 2

    .line 1
    sget-wide v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sFrameDelay:J

    return-wide v0
.end method

.method public static varargs ofFloat([F)Lio/dcloud/nineoldandroids/animation/ValueAnimator;
    .locals 1

    .line 1
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0
.end method

.method public static varargs ofInt([I)Lio/dcloud/nineoldandroids/animation/ValueAnimator;
    .locals 1

    .line 1
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setIntValues([I)V

    return-object v0
.end method

.method public static varargs ofObject(Lio/dcloud/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lio/dcloud/nineoldandroids/animation/ValueAnimator;
    .locals 1

    .line 1
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0, p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setEvaluator(Lio/dcloud/nineoldandroids/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder([Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)Lio/dcloud/nineoldandroids/animation/ValueAnimator;
    .locals 1

    .line 1
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setValues([Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V

    return-object v0
.end method

.method public static setFrameDelay(J)V
    .locals 0

    .line 1
    sput-wide p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sFrameDelay:J

    return-void
.end method

.method private start(Z)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    iput-boolean p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    .line 6
    iput p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStarted:Z

    .line 8
    iput-boolean p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    .line 9
    sget-object v1, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-wide v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 12
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 13
    iput p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 14
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    .line 16
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationStart(Lio/dcloud/nineoldandroids/animation/Animator;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    :cond_1
    :goto_1
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimationHandler;

    if-nez v0, :cond_2

    .line 27
    new-instance v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimationHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimationHandler;-><init>(Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimationHandler;)V

    .line 28
    sget-object v1, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 30
    :cond_2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 31
    :cond_3
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animators may only be run on Looper threads"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private startAnimation()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->initAnimation()V

    .line 2
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-wide v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationStart(Lio/dcloud/nineoldandroids/animation/Animator;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public addUpdateListener(Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 4
    :cond_0
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method animateValue(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 2
    iput p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mCurrentFraction:F

    .line 3
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_2

    .line 7
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-lt v1, p1, :cond_0

    goto :goto_2

    .line 10
    :cond_0
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {v0, p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Lio/dcloud/nineoldandroids/animation/ValueAnimator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    return-void

    .line 11
    :cond_2
    iget-object v3, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->calculateValue(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method animationFrame(J)Z
    .locals 9

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 2
    iput v3, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 3
    iget-wide v4, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    cmp-long v0, v4, v1

    if-gez v0, :cond_0

    .line 4
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    goto :goto_0

    :cond_0
    sub-long v4, p1, v4

    .line 6
    iput-wide v4, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    const-wide/16 v4, -0x1

    .line 8
    iput-wide v4, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    .line 11
    :cond_1
    :goto_0
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_2

    goto :goto_6

    .line 14
    :cond_2
    iget-wide v6, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mDuration:J

    const/high16 v0, 0x3f800000    # 1.0f

    cmp-long v8, v6, v1

    if-lez v8, :cond_3

    iget-wide v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr p1, v1

    long-to-float p1, p1

    long-to-float p2, v6

    div-float/2addr p1, p2

    goto :goto_1

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    cmpl-float p2, p1, v0

    if-ltz p2, :cond_9

    .line 16
    iget p2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    iget v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    if-lt p2, v1, :cond_5

    const/4 p2, -0x1

    if-ne v1, p2, :cond_4

    goto :goto_2

    .line 32
    :cond_4
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_5

    .line 33
    :cond_5
    :goto_2
    iget-object p2, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz p2, :cond_7

    .line 34
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_3
    if-lt v1, p2, :cond_6

    goto :goto_4

    .line 36
    :cond_6
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v2, p0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationRepeat(Lio/dcloud/nineoldandroids/animation/Animator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 39
    :cond_7
    :goto_4
    iget p2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRepeatMode:I

    if-ne p2, v4, :cond_8

    .line 40
    iget-boolean p2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    xor-int/2addr p2, v3

    iput-boolean p2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 42
    :cond_8
    iget p2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    float-to-int v1, p1

    add-int/2addr p2, v1

    iput p2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    rem-float/2addr p1, v0

    .line 44
    iget-wide v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    iget-wide v3, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mDuration:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    :cond_9
    const/4 v3, 0x0

    .line 50
    :goto_5
    iget-boolean p2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz p2, :cond_a

    sub-float p1, v0, p1

    .line 53
    :cond_a
    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->animateValue(F)V

    move v5, v3

    :goto_6
    return v5
.end method

.method public cancel()V
    .locals 2

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    if-nez v0, :cond_0

    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    :cond_0
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    .line 8
    invoke-interface {v1, p0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationCancel(Lio/dcloud/nineoldandroids/animation/Animator;)V

    goto :goto_0

    .line 11
    :cond_2
    :goto_1
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->endAnimation()V

    :cond_3
    return-void
.end method

.method public bridge synthetic clone()Lio/dcloud/nineoldandroids/animation/Animator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->clone()Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/dcloud/nineoldandroids/animation/ValueAnimator;
    .locals 7

    .line 2
    invoke-super {p0}, Lio/dcloud/nineoldandroids/animation/Animator;->clone()Lio/dcloud/nineoldandroids/animation/Animator;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 3
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    iget-object v5, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-wide/16 v3, -0x1

    .line 11
    iput-wide v3, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    .line 12
    iput-boolean v2, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 13
    iput v2, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    .line 14
    iput-boolean v2, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    .line 15
    iput v2, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 16
    iput-boolean v2, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    .line 17
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v1, :cond_3

    .line 19
    array-length v3, v1

    .line 20
    new-array v4, v3, [Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    iput-object v4, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    .line 21
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    :goto_2
    if-lt v2, v3, :cond_2

    goto :goto_3

    .line 23
    :cond_2
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->clone()Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v4

    .line 24
    iget-object v5, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    aput-object v4, v5, v2

    .line 25
    iget-object v5, v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-object v0
.end method

.method public end()V
    .locals 2

    .line 1
    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    .line 4
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->startAnimation()V

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->initAnimation()V

    .line 10
    :cond_1
    :goto_0
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    if-lez v0, :cond_2

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->animateValue(F)V

    goto :goto_1

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    invoke-virtual {p0, v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->animateValue(F)V

    .line 15
    :goto_1
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->endAnimation()V

    return-void
.end method

.method public getAnimatedFraction()F
    .locals 1

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mCurrentFraction:F

    return v0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 2
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 3
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentPlayTime()J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRepeatMode:I

    return v0
.end method

.method public getStartDelay()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method public getValues()[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    return-object v0
.end method

.method initAnimation()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    goto :goto_1

    .line 7
    :cond_0
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->init()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public isRunning()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public isStarted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStarted:Z

    return v0
.end method

.method public removeAllUpdateListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public removeUpdateListener(Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public reverse()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    .line 2
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 4
    iget-wide v2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    sub-long v2, v0, v2

    .line 5
    iget-wide v4, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mDuration:J

    sub-long/2addr v4, v2

    sub-long/2addr v0, v4

    .line 6
    iput-wide v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0, v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->start(Z)V

    :goto_0
    return-void
.end method

.method public setCurrentPlayTime(J)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->initAnimation()V

    .line 2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 3
    iget v2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 4
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    const/4 v2, 0x2

    .line 5
    iput v2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    :cond_0
    sub-long p1, v0, p1

    .line 7
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    .line 8
    invoke-virtual {p0, v0, v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->animationFrame(J)Z

    return-void
.end method

.method public bridge synthetic setDuration(J)Lio/dcloud/nineoldandroids/animation/Animator;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Lio/dcloud/nineoldandroids/animation/ValueAnimator;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 2
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mDuration:J

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

.method public setEvaluator(Lio/dcloud/nineoldandroids/animation/TypeEvaluator;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 2
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setEvaluator(Lio/dcloud/nineoldandroids/animation/TypeEvaluator;)V

    :cond_0
    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 3

    if-eqz p1, :cond_3

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    aget-object v0, v0, v1

    .line 8
    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    const-string v2, ""

    .line 9
    invoke-static {v2, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setValues([Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 15
    :goto_1
    iput-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    :cond_3
    :goto_2
    return-void
.end method

.method public varargs setIntValues([I)V
    .locals 3

    if-eqz p1, :cond_3

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    aget-object v0, v0, v1

    .line 8
    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setIntValues([I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    const-string v2, ""

    .line 9
    invoke-static {v2, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setValues([Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 15
    :goto_1
    iput-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    :cond_3
    :goto_2
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    :goto_0
    return-void
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    aget-object v0, v0, v1

    .line 9
    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    const-string v3, ""

    .line 10
    invoke-static {v3, v2, p1}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Lio/dcloud/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setValues([Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V

    .line 17
    :goto_1
    iput-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    :cond_3
    :goto_2
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mRepeatMode:I

    return-void
.end method

.method public setStartDelay(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    return-void
.end method

.method public varargs setValues([Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;)V
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    .line 9
    iput-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    return-void

    .line 10
    :cond_0
    aget-object v3, p1, v2

    .line 11
    iget-object v4, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->start(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ValueAnimator@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mValues:[Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method
