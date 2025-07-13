.class public Lcom/baidu/platform/comapi/map/b/a/a;
.super Ljava/lang/Object;
.source "ClickDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platform/comapi/map/b/a/a$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:Z

.field private c:Lcom/baidu/platform/comapi/map/b/a$a;

.field private d:Lcom/baidu/platform/comapi/map/MapController;

.field private e:Lcom/baidu/platform/comapi/map/b/a/a$a;


# direct methods
.method public constructor <init>(Lcom/baidu/platform/comapi/map/b/a/a$a;Lcom/baidu/platform/comapi/map/MapController;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/b/a/a;->a:J

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/b/a/a;->b:Z

    .line 37
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/b/a/a;->e:Lcom/baidu/platform/comapi/map/b/a/a$a;

    .line 38
    iput-object p2, p0, Lcom/baidu/platform/comapi/map/b/a/a;->d:Lcom/baidu/platform/comapi/map/MapController;

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/b/a/a;->b:Z

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/baidu/platform/comapi/map/b/a/a;->c:Lcom/baidu/platform/comapi/map/b/a$a;

    const-wide/16 v0, 0x0

    .line 111
    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/b/a/a;->a:J

    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 8

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/b/a/a;->c:Lcom/baidu/platform/comapi/map/b/a$a;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 64
    :cond_0
    invoke-static {p1}, Lcom/baidu/platform/comapi/map/b/a$a;->a(Landroid/view/MotionEvent;)Lcom/baidu/platform/comapi/map/b/a$a;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/baidu/platform/comapi/map/b/a$a;

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/b/a/a;->c:Lcom/baidu/platform/comapi/map/b/a$a;

    iget-object v2, v2, Lcom/baidu/platform/comapi/map/b/a$a;->a:Lcom/baidu/platform/comapi/map/b/a$b;

    iget-object v3, v0, Lcom/baidu/platform/comapi/map/b/a$a;->a:Lcom/baidu/platform/comapi/map/b/a$b;

    invoke-direct {v1, v2, v3}, Lcom/baidu/platform/comapi/map/b/a$a;-><init>(Lcom/baidu/platform/comapi/map/b/a$b;Lcom/baidu/platform/comapi/map/b/a$b;)V

    .line 66
    new-instance v2, Lcom/baidu/platform/comapi/map/b/a$a;

    iget-object v3, p0, Lcom/baidu/platform/comapi/map/b/a/a;->c:Lcom/baidu/platform/comapi/map/b/a$a;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/b/a$a;->b:Lcom/baidu/platform/comapi/map/b/a$b;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/b/a$a;->b:Lcom/baidu/platform/comapi/map/b/a$b;

    invoke-direct {v2, v3, v0}, Lcom/baidu/platform/comapi/map/b/a$a;-><init>(Lcom/baidu/platform/comapi/map/b/a$b;Lcom/baidu/platform/comapi/map/b/a$b;)V

    .line 68
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/b/a$a;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    const/4 v5, 0x0

    const/4 v6, 0x1

    cmpg-double v7, v0, v3

    if-gez v7, :cond_1

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/b/a$a;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v2, v0, v3

    if-gez v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 69
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/baidu/platform/comapi/map/b/a/a;->a:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xc8

    cmp-long v7, v1, v3

    if-gez v7, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 71
    :goto_1
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/b/a/a;->d:Lcom/baidu/platform/comapi/map/MapController;

    if-eqz v2, :cond_5

    .line 72
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v2, v3

    .line 73
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    .line 74
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    invoke-direct {v4, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 75
    new-instance v6, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    add-float/2addr v7, v2

    float-to-int v2, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    add-float/2addr p1, v3

    float-to-int p1, p1

    invoke-direct {v6, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 77
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/b/a/a;->d:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 79
    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/b/a/a;->b:Z

    if-eqz p1, :cond_5

    .line 80
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/b/a/a;->d:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getListeners()Ljava/util/List;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/b/a/a;->d:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatusInner()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object v0

    if-eqz p1, :cond_4

    .line 83
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_4

    .line 84
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/platform/comapi/map/al;

    if-eqz v1, :cond_3

    .line 88
    invoke-interface {v1, v4, v6, v0}, Lcom/baidu/platform/comapi/map/al;->d(Landroid/graphics/Point;Landroid/graphics/Point;Lcom/baidu/mapsdkplatform/comapi/map/x;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 94
    :cond_4
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/b/a/a;->e:Lcom/baidu/platform/comapi/map/b/a/a$a;

    invoke-interface {p1, p0}, Lcom/baidu/platform/comapi/map/b/a/a$a;->a(Lcom/baidu/platform/comapi/map/b/a/a;)Z

    :cond_5
    :goto_3
    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 2

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-static {p1}, Lcom/baidu/platform/comapi/map/b/a$a;->a(Landroid/view/MotionEvent;)Lcom/baidu/platform/comapi/map/b/a$a;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/b/a/a;->c:Lcom/baidu/platform/comapi/map/b/a$a;

    const/4 p1, 0x1

    .line 105
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/b/a/a;->b:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)V
    .locals 2

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0x105

    if-eq v0, v1, :cond_1

    const/16 v1, 0x106

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/map/b/a/a;->b(Landroid/view/MotionEvent;)V

    .line 53
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/b/a/a;->a()V

    goto :goto_0

    .line 48
    :cond_1
    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/map/b/a/a;->c(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 44
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/b/a/a;->a:J

    :goto_0
    return-void
.end method
