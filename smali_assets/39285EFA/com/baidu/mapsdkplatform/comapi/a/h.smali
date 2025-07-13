.class public Lcom/baidu/mapsdkplatform/comapi/a/h;
.super Lcom/baidu/mapsdkplatform/comapi/a/c;
.source "BDScaleAnimation.java"


# instance fields
.field private a:Landroid/animation/Animator;

.field private b:J

.field private c:Landroid/view/animation/Interpolator;

.field private d:Lcom/baidu/mapapi/animation/Animation$AnimationListener;

.field private e:I

.field private f:I

.field private g:[F


# direct methods
.method public varargs constructor <init>([F)V
    .locals 3

    .line 36
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/a/c;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/h;->a:Landroid/animation/Animator;

    const-wide/16 v1, 0x0

    .line 24
    iput-wide v1, p0, Lcom/baidu/mapsdkplatform/comapi/a/h;->b:J

    .line 26
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/h;->c:Landroid/view/animation/Interpolator;

    .line 28
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/h;->d:Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/h;->e:I

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/h;->f:I

    .line 37
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/h;->g:[F

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapsdkplatform/comapi/a/h;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/baidu/mapsdkplatform/comapi/a/h;->d:Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    return-object p0
.end method


# virtual methods
.method a(Lcom/baidu/mapapi/map/Marker;)Landroid/animation/ObjectAnimator;
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/h;->g:[F

    const-string v1, "scale"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 160
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/h;->f:I

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 161
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/a/h;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 162
    iget-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/h;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 163
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/h;->c:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_0
    return-object p1
.end method

.method public a()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/h;->a:Landroid/animation/Animator;

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/h;->e:I

    return-void
.end method

.method public a(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 49
    :cond_0
    iput-wide p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/h;->b:J

    return-void
.end method

.method protected a(Landroid/animation/Animator;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 179
    :cond_0
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/a/i;

    invoke-direct {v0, p0}, Lcom/baidu/mapsdkplatform/comapi/a/i;-><init>(Lcom/baidu/mapsdkplatform/comapi/a/h;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public a(Landroid/animation/TypeEvaluator;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/h;->c:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public a(Lcom/baidu/mapapi/animation/Animation$AnimationListener;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/h;->d:Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    return-void
.end method

.method public a(Lcom/baidu/mapapi/map/Marker;Lcom/baidu/mapapi/animation/Animation;)V
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/h;->a(Lcom/baidu/mapapi/map/Marker;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/h;->a:Landroid/animation/Animator;

    .line 116
    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/h;->a(Landroid/animation/Animator;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/h;->a:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/h;->a:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    if-gtz p1, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 86
    :cond_0
    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/h;->f:I

    :cond_1
    return-void
.end method

.method public c()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/h;->e:I

    return v0
.end method

.method public c(I)V
    .locals 0

    return-void
.end method
