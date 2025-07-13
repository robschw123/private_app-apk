.class public Lcom/baidu/mapsdkplatform/comapi/a/j;
.super Lcom/baidu/mapsdkplatform/comapi/a/c;
.source "BDSingleScaleAnimation.java"


# instance fields
.field private a:Landroid/animation/Animator;

.field private b:J

.field private c:Landroid/view/animation/Interpolator;

.field private d:Lcom/baidu/mapapi/animation/Animation$AnimationListener;

.field private e:I

.field private f:I

.field private g:[F

.field private h:I


# direct methods
.method public varargs constructor <init>(I[F)V
    .locals 3

    .line 38
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/a/c;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/j;->a:Landroid/animation/Animator;

    const-wide/16 v1, 0x0

    .line 24
    iput-wide v1, p0, Lcom/baidu/mapsdkplatform/comapi/a/j;->b:J

    .line 26
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/j;->c:Landroid/view/animation/Interpolator;

    .line 28
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/j;->d:Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/j;->e:I

    const/4 v1, 0x0

    .line 32
    iput v1, p0, Lcom/baidu/mapsdkplatform/comapi/a/j;->f:I

    .line 36
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/j;->h:I

    .line 39
    iput-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/a/j;->g:[F

    .line 40
    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/j;->h:I

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapsdkplatform/comapi/a/j;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/baidu/mapsdkplatform/comapi/a/j;->d:Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    return-object p0
.end method


# virtual methods
.method a(Lcom/baidu/mapapi/map/Marker;)Landroid/animation/ObjectAnimator;
    .locals 2

    .line 162
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/j;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/j;->g:[F

    const-string v1, "scaleX"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 165
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/j;->g:[F

    const-string v1, "scaleY"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 168
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/j;->f:I

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 169
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/a/j;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 170
    iget-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/j;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 171
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/j;->c:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_2
    return-object p1
.end method

.method public a()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/j;->a:Landroid/animation/Animator;

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/j;->e:I

    return-void
.end method

.method public a(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 52
    :cond_0
    iput-wide p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/j;->b:J

    return-void
.end method

.method protected a(Landroid/animation/Animator;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 187
    :cond_0
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/a/k;

    invoke-direct {v0, p0}, Lcom/baidu/mapsdkplatform/comapi/a/k;-><init>(Lcom/baidu/mapsdkplatform/comapi/a/j;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public a(Landroid/animation/TypeEvaluator;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/j;->c:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public a(Lcom/baidu/mapapi/animation/Animation$AnimationListener;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/j;->d:Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    return-void
.end method

.method public a(Lcom/baidu/mapapi/map/Marker;Lcom/baidu/mapapi/animation/Animation;)V
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/j;->a(Lcom/baidu/mapapi/map/Marker;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/j;->a:Landroid/animation/Animator;

    .line 119
    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/j;->a(Landroid/animation/Animator;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/j;->a:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/j;->a:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    if-gtz p1, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 89
    :cond_0
    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/j;->f:I

    :cond_1
    return-void
.end method

.method public c()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/j;->e:I

    return v0
.end method

.method public c(I)V
    .locals 0

    return-void
.end method
