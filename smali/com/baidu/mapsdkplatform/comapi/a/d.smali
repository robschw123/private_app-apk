.class public Lcom/baidu/mapsdkplatform/comapi/a/d;
.super Lcom/baidu/mapsdkplatform/comapi/a/c;
.source "BDAnimationSet.java"


# instance fields
.field private a:Landroid/animation/Animator;

.field private b:J

.field private c:Landroid/view/animation/Interpolator;

.field private d:Lcom/baidu/mapapi/animation/Animation$AnimationListener;

.field private e:I

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/animation/Animation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/a/c;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/d;->a:Landroid/animation/Animator;

    const-wide/16 v1, 0x0

    .line 31
    iput-wide v1, p0, Lcom/baidu/mapsdkplatform/comapi/a/d;->b:J

    .line 33
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/d;->c:Landroid/view/animation/Interpolator;

    .line 35
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/d;->d:Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/d;->e:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/d;->f:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapsdkplatform/comapi/a/d;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/baidu/mapsdkplatform/comapi/a/d;->d:Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    return-object p0
.end method

.method private b(Lcom/baidu/mapapi/map/Marker;Lcom/baidu/mapapi/animation/Animation;)Landroid/animation/ObjectAnimator;
    .locals 1

    .line 228
    instance-of v0, p2, Lcom/baidu/mapapi/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    .line 229
    iget-object p2, p2, Lcom/baidu/mapapi/animation/Animation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    check-cast p2, Lcom/baidu/mapsdkplatform/comapi/a/a;

    .line 230
    invoke-virtual {p2, p1}, Lcom/baidu/mapsdkplatform/comapi/a/a;->a(Lcom/baidu/mapapi/map/Marker;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    .line 231
    :cond_0
    instance-of v0, p2, Lcom/baidu/mapapi/animation/RotateAnimation;

    if-eqz v0, :cond_1

    .line 232
    iget-object p2, p2, Lcom/baidu/mapapi/animation/Animation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    check-cast p2, Lcom/baidu/mapsdkplatform/comapi/a/f;

    .line 233
    invoke-virtual {p2, p1}, Lcom/baidu/mapsdkplatform/comapi/a/f;->a(Lcom/baidu/mapapi/map/Marker;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    .line 234
    :cond_1
    instance-of v0, p2, Lcom/baidu/mapapi/animation/Transformation;

    if-eqz v0, :cond_2

    .line 235
    iget-object p2, p2, Lcom/baidu/mapapi/animation/Animation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    check-cast p2, Lcom/baidu/mapsdkplatform/comapi/a/l;

    .line 236
    invoke-virtual {p2, p1}, Lcom/baidu/mapsdkplatform/comapi/a/l;->a(Lcom/baidu/mapapi/map/Marker;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    .line 237
    :cond_2
    instance-of v0, p2, Lcom/baidu/mapapi/animation/ScaleAnimation;

    if-eqz v0, :cond_3

    .line 238
    iget-object p2, p2, Lcom/baidu/mapapi/animation/Animation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    check-cast p2, Lcom/baidu/mapsdkplatform/comapi/a/h;

    .line 239
    invoke-virtual {p2, p1}, Lcom/baidu/mapsdkplatform/comapi/a/h;->a(Lcom/baidu/mapapi/map/Marker;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    .line 240
    :cond_3
    instance-of v0, p2, Lcom/baidu/mapapi/animation/SingleScaleAnimation;

    if-eqz v0, :cond_4

    .line 241
    iget-object p2, p2, Lcom/baidu/mapapi/animation/Animation;->bdAnimation:Lcom/baidu/mapsdkplatform/comapi/a/c;

    check-cast p2, Lcom/baidu/mapsdkplatform/comapi/a/j;

    .line 242
    invoke-virtual {p2, p1}, Lcom/baidu/mapsdkplatform/comapi/a/j;->a(Lcom/baidu/mapapi/map/Marker;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/d;->a:Landroid/animation/Animator;

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 59
    :cond_0
    iput-wide p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/d;->b:J

    return-void
.end method

.method protected a(Landroid/animation/Animator;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 185
    :cond_0
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/a/e;

    invoke-direct {v0, p0}, Lcom/baidu/mapsdkplatform/comapi/a/e;-><init>(Lcom/baidu/mapsdkplatform/comapi/a/d;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public a(Landroid/animation/TypeEvaluator;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/d;->c:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public a(Lcom/baidu/mapapi/animation/Animation$AnimationListener;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/d;->d:Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    return-void
.end method

.method public a(Lcom/baidu/mapapi/animation/Animation;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/baidu/mapapi/map/Marker;Lcom/baidu/mapapi/animation/Animation;)V
    .locals 4

    .line 121
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/a/d;->a:Landroid/animation/Animator;

    .line 122
    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/a/d;->f:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 125
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 126
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/animation/Animation;

    if-eqz v2, :cond_0

    .line 128
    invoke-direct {p0, p1, v2}, Lcom/baidu/mapsdkplatform/comapi/a/d;->b(Lcom/baidu/mapapi/map/Marker;Lcom/baidu/mapapi/animation/Animation;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_1
    iget-wide p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/d;->b:J

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_2

    .line 136
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/a/d;->a:Landroid/animation/Animator;

    invoke-virtual {v1, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 139
    :cond_2
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/d;->c:Landroid/view/animation/Interpolator;

    if-eqz p1, :cond_3

    .line 140
    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/a/d;->a:Landroid/animation/Animator;

    invoke-virtual {p2, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 143
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_5

    .line 144
    iget p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/d;->e:I

    if-nez p1, :cond_4

    .line 145
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/d;->a:Landroid/animation/Animator;

    check-cast p1, Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    goto :goto_1

    :cond_4
    const/4 p2, 0x1

    if-ne p1, p2, :cond_5

    .line 147
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/d;->a:Landroid/animation/Animator;

    check-cast p1, Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 150
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/d;->a:Landroid/animation/Animator;

    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/d;->a(Landroid/animation/Animator;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/d;->a:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/d;->a:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/d;->e:I

    return-void
.end method
