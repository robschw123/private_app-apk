.class public Lcom/baidu/mapsdkplatform/comapi/a/l;
.super Lcom/baidu/mapsdkplatform/comapi/a/c;
.source "BDTransformation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapsdkplatform/comapi/a/l$b;,
        Lcom/baidu/mapsdkplatform/comapi/a/l$a;
    }
.end annotation


# instance fields
.field private a:Landroid/animation/Animator;

.field private b:J

.field private c:Landroid/view/animation/Interpolator;

.field private d:Landroid/animation/TypeEvaluator;

.field private e:Lcom/baidu/mapapi/animation/Animation$AnimationListener;

.field private f:I

.field private g:I

.field private h:[Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>([Landroid/graphics/Point;)V
    .locals 3

    .line 43
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/a/c;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->a:Landroid/animation/Animator;

    const-wide/16 v1, 0x0

    .line 25
    iput-wide v1, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->b:J

    .line 27
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->c:Landroid/view/animation/Interpolator;

    .line 29
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->d:Landroid/animation/TypeEvaluator;

    .line 31
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->e:Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->f:I

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->g:I

    .line 44
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->h:[Ljava/lang/Object;

    return-void
.end method

.method public varargs constructor <init>([Lcom/baidu/mapapi/model/LatLng;)V
    .locals 3

    .line 39
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/a/c;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->a:Landroid/animation/Animator;

    const-wide/16 v1, 0x0

    .line 25
    iput-wide v1, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->b:J

    .line 27
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->c:Landroid/view/animation/Interpolator;

    .line 29
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->d:Landroid/animation/TypeEvaluator;

    .line 31
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->e:Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->f:I

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->g:I

    .line 40
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->h:[Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapsdkplatform/comapi/a/l;)Lcom/baidu/mapapi/animation/Animation$AnimationListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->e:Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    return-object p0
.end method


# virtual methods
.method a(Lcom/baidu/mapapi/map/Marker;)Landroid/animation/ObjectAnimator;
    .locals 3

    .line 192
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->isFixed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->h:[Ljava/lang/Object;

    aget-object v0, v0, v1

    instance-of v0, v0, Landroid/graphics/Point;

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/a/l$b;

    invoke-direct {v0, p0}, Lcom/baidu/mapsdkplatform/comapi/a/l$b;-><init>(Lcom/baidu/mapsdkplatform/comapi/a/l;)V

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->h:[Ljava/lang/Object;

    const-string v2, "fixedScreenPosition"

    invoke-static {p1, v2, v0, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    .line 197
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "BDMapSDKException: if the marker is fixed on screen, the parameters of Transformation must be android.graphics.Point"

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->h:[Ljava/lang/Object;

    aget-object v1, v0, v1

    instance-of v1, v1, Lcom/baidu/mapapi/model/LatLng;

    if-eqz v1, :cond_4

    .line 203
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->d:Landroid/animation/TypeEvaluator;

    const-string v2, "position"

    if-eqz v1, :cond_2

    .line 204
    invoke-static {p1, v2, v1, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    .line 207
    :cond_2
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/a/l$a;

    invoke-direct {v0, p0}, Lcom/baidu/mapsdkplatform/comapi/a/l$a;-><init>(Lcom/baidu/mapsdkplatform/comapi/a/l;)V

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->h:[Ljava/lang/Object;

    invoke-static {p1, v2, v0, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 217
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->g:I

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 218
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/a/l;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 219
    iget-wide v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 220
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->c:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_3

    .line 221
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_3
    return-object p1

    .line 211
    :cond_4
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "BDMapSDKException: if the marker isn\'t fixed on screen, the parameters of Transformation must be Latlng"

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->a:Landroid/animation/Animator;

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->f:I

    return-void
.end method

.method public a(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 56
    :cond_0
    iput-wide p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->b:J

    return-void
.end method

.method protected a(Landroid/animation/Animator;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 236
    :cond_0
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/a/m;

    invoke-direct {v0, p0}, Lcom/baidu/mapsdkplatform/comapi/a/m;-><init>(Lcom/baidu/mapsdkplatform/comapi/a/l;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public a(Landroid/animation/TypeEvaluator;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->d:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->c:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public a(Lcom/baidu/mapapi/animation/Animation$AnimationListener;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->e:Lcom/baidu/mapapi/animation/Animation$AnimationListener;

    return-void
.end method

.method public a(Lcom/baidu/mapapi/map/Marker;Lcom/baidu/mapapi/animation/Animation;)V
    .locals 0

    .line 122
    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/l;->a(Lcom/baidu/mapapi/map/Marker;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->a:Landroid/animation/Animator;

    .line 123
    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/a/l;->a(Landroid/animation/Animator;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->a:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->a:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    if-gtz p1, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 93
    :cond_0
    iput p1, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->g:I

    :cond_1
    return-void
.end method

.method public c()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/baidu/mapsdkplatform/comapi/a/l;->f:I

    return v0
.end method

.method public c(I)V
    .locals 0

    return-void
.end method
