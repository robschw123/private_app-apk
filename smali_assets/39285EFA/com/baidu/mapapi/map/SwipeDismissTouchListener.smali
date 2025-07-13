.class public Lcom/baidu/mapapi/map/SwipeDismissTouchListener;
.super Ljava/lang/Object;
.source "SwipeDismissTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/SwipeDismissTouchListener$DismissCallbacks;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:J

.field private e:Landroid/view/View;

.field private f:Lcom/baidu/mapapi/map/SwipeDismissTouchListener$DismissCallbacks;

.field private g:I

.field private h:F

.field private i:F

.field private j:Z

.field private k:I

.field private l:Ljava/lang/Object;

.field private m:Landroid/view/VelocityTracker;

.field private n:F

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Object;Lcom/baidu/mapapi/map/SwipeDismissTouchListener$DismissCallbacks;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput v0, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->g:I

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->a:I

    .line 70
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->b:I

    .line 71
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->c:I

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->d:J

    .line 74
    iput-object p1, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->e:Landroid/view/View;

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->l:Ljava/lang/Object;

    .line 77
    iput-object p3, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->f:Lcom/baidu/mapapi/map/SwipeDismissTouchListener$DismissCallbacks;

    return-void
.end method

.method private a()V
    .locals 5

    .line 232
    iget-object v0, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v3, v2, v3

    .line 235
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-wide v3, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->d:J

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 237
    new-instance v3, Lcom/baidu/mapapi/map/x;

    invoke-direct {v3, p0, v0, v1}, Lcom/baidu/mapapi/map/x;-><init>(Lcom/baidu/mapapi/map/SwipeDismissTouchListener;Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 249
    new-instance v1, Lcom/baidu/mapapi/map/y;

    invoke-direct {v1, p0, v0}, Lcom/baidu/mapapi/map/y;-><init>(Lcom/baidu/mapapi/map/SwipeDismissTouchListener;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 257
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/SwipeDismissTouchListener;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->a()V

    return-void
.end method

.method static synthetic b(Lcom/baidu/mapapi/map/SwipeDismissTouchListener;)Landroid/view/View;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcom/baidu/mapapi/map/SwipeDismissTouchListener;)Ljava/lang/Object;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->l:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lcom/baidu/mapapi/map/SwipeDismissTouchListener;)Lcom/baidu/mapapi/map/SwipeDismissTouchListener$DismissCallbacks;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->f:Lcom/baidu/mapapi/map/SwipeDismissTouchListener$DismissCallbacks;

    return-object p0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 84
    iget p1, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->n:F

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 86
    iget p1, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->g:I

    const/4 v1, 0x2

    if-ge p1, v1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->g:I

    .line 90
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_17

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eq p1, v3, :cond_a

    if-eq p1, v1, :cond_3

    if-eq p1, v5, :cond_1

    goto/16 :goto_9

    .line 156
    :cond_1
    iget-object p1, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->m:Landroid/view/VelocityTracker;

    if-nez p1, :cond_2

    goto/16 :goto_9

    .line 160
    :cond_2
    iget-object p1, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v5, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->d:J

    .line 163
    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 164
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 165
    iget-object p1, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->m:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 166
    iput-object v4, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->m:Landroid/view/VelocityTracker;

    .line 167
    iput v0, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->n:F

    .line 168
    iput v0, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->h:F

    .line 169
    iput v0, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->i:F

    .line 170
    iput-boolean v2, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->j:Z

    goto/16 :goto_9

    .line 175
    :cond_3
    iget-object p1, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->m:Landroid/view/VelocityTracker;

    if-nez p1, :cond_4

    goto/16 :goto_9

    .line 179
    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 180
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v1, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->h:F

    sub-float/2addr p1, v1

    .line 181
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v4, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->i:F

    sub-float/2addr v1, v4

    .line 182
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->a:I

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_9

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    cmpg-float v1, v1, v4

    if-gez v1, :cond_9

    .line 183
    iput-boolean v3, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->j:Z

    cmpl-float v0, p1, v0

    if-lez v0, :cond_5

    .line 184
    iget v0, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->a:I

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->a:I

    neg-int v0, v0

    :goto_0
    iput v0, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->k:I

    .line 185
    iget-object v0, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 187
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->o:Z

    if-nez v0, :cond_6

    .line 188
    iput-boolean v3, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->o:Z

    .line 189
    iget-object v0, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->f:Lcom/baidu/mapapi/map/SwipeDismissTouchListener$DismissCallbacks;

    invoke-interface {v0}, Lcom/baidu/mapapi/map/SwipeDismissTouchListener$DismissCallbacks;->onNotify()V

    .line 192
    :cond_6
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->g:I

    div-int/2addr v1, v5

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 193
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->p:Z

    if-nez v0, :cond_8

    .line 194
    iput-boolean v3, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->p:Z

    .line 195
    iget-object v0, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->f:Lcom/baidu/mapapi/map/SwipeDismissTouchListener$DismissCallbacks;

    invoke-interface {v0}, Lcom/baidu/mapapi/map/SwipeDismissTouchListener$DismissCallbacks;->onNotify()V

    goto :goto_1

    .line 198
    :cond_7
    iput-boolean v2, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->p:Z

    .line 202
    :cond_8
    :goto_1
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 204
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v5

    .line 203
    invoke-virtual {v0, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 206
    iget-object p2, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->e:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 207
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 210
    :cond_9
    iget-boolean p2, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->j:Z

    if-eqz p2, :cond_16

    .line 211
    iput p1, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->n:F

    .line 212
    iget-object p2, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->e:Landroid/view/View;

    iget v0, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->k:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    return v3

    .line 104
    :cond_a
    iget-object p1, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->m:Landroid/view/VelocityTracker;

    if-nez p1, :cond_b

    goto/16 :goto_9

    .line 108
    :cond_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v1, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->h:F

    sub-float/2addr p1, v1

    .line 109
    iget-object v1, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 110
    iget-object p2, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->m:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {p2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 111
    iget-object p2, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->m:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p2

    .line 112
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 113
    iget-object v6, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 116
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->g:I

    div-int/2addr v8, v5

    int-to-float v5, v8

    cmpl-float v5, v7, v5

    if-lez v5, :cond_d

    iget-boolean v5, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->j:Z

    if-eqz v5, :cond_d

    cmpl-float p1, p1, v0

    if-lez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_6

    :cond_c
    const/4 p1, 0x0

    goto :goto_6

    .line 119
    :cond_d
    iget v5, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->b:I

    int-to-float v5, v5

    cmpg-float v5, v5, v1

    if-gtz v5, :cond_12

    iget v5, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->c:I

    int-to-float v5, v5

    cmpg-float v5, v1, v5

    if-gtz v5, :cond_12

    cmpg-float v5, v6, v1

    if-gez v5, :cond_12

    cmpg-float v1, v6, v1

    if-gez v1, :cond_12

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->j:Z

    if-eqz v1, :cond_12

    cmpg-float p2, p2, v0

    if-gez p2, :cond_e

    const/4 p2, 0x1

    goto :goto_2

    :cond_e
    const/4 p2, 0x0

    :goto_2
    cmpg-float p1, p1, v0

    if-gez p1, :cond_f

    const/4 p1, 0x1

    goto :goto_3

    :cond_f
    const/4 p1, 0x0

    :goto_3
    if-ne p2, p1, :cond_10

    const/4 p1, 0x1

    goto :goto_4

    :cond_10
    const/4 p1, 0x0

    .line 124
    :goto_4
    iget-object p2, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->m:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p2

    cmpl-float p2, p2, v0

    if-lez p2, :cond_11

    goto :goto_5

    :cond_11
    const/4 v3, 0x0

    :goto_5
    move v9, v3

    move v3, p1

    move p1, v9

    goto :goto_6

    :cond_12
    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_14

    .line 128
    iget-object p2, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->e:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_13

    iget p1, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->g:I

    goto :goto_7

    :cond_13
    iget p1, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->g:I

    neg-int p1, p1

    :goto_7
    int-to-float p1, p1

    .line 129
    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v5, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->d:J

    .line 131
    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/baidu/mapapi/map/w;

    invoke-direct {p2, p0}, Lcom/baidu/mapapi/map/w;-><init>(Lcom/baidu/mapapi/map/SwipeDismissTouchListener;)V

    .line 132
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_8

    .line 138
    :cond_14
    iget-boolean p1, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->j:Z

    if-eqz p1, :cond_15

    .line 140
    iget-object p1, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 141
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v5, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->d:J

    .line 143
    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 144
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 146
    :cond_15
    :goto_8
    iget-object p1, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->m:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 147
    iput-object v4, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->m:Landroid/view/VelocityTracker;

    .line 148
    iput v0, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->n:F

    .line 149
    iput v0, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->h:F

    .line 150
    iput v0, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->i:F

    .line 151
    iput-boolean v2, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->j:Z

    :cond_16
    :goto_9
    return v2

    .line 93
    :cond_17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->h:F

    .line 94
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->i:F

    .line 95
    iget-object p1, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->f:Lcom/baidu/mapapi/map/SwipeDismissTouchListener$DismissCallbacks;

    iget-object v0, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->l:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/baidu/mapapi/map/SwipeDismissTouchListener$DismissCallbacks;->canDismiss(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 96
    iput-boolean v2, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->o:Z

    .line 97
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/map/SwipeDismissTouchListener;->m:Landroid/view/VelocityTracker;

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_18
    return v3
.end method
