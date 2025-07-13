.class public Lcom/baidu/platform/comapi/map/b/b/c;
.super Lcom/baidu/platform/comapi/map/b/b/a;
.source "OverLookOpt.java"


# instance fields
.field private b:Z

.field private c:J

.field private d:Lcom/baidu/platform/comapi/map/MapController;


# direct methods
.method public constructor <init>(Lcom/baidu/platform/comapi/map/MapController;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/map/b/b/a;-><init>(Lcom/baidu/platform/comapi/map/MapController;)V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/b/b/c;->b:Z

    .line 38
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/b/b/c;->d:Lcom/baidu/platform/comapi/map/MapController;

    return-void
.end method

.method private a(DLcom/baidu/platform/comapi/map/MapStatus;)V
    .locals 5

    .line 109
    iget-wide v0, p0, Lcom/baidu/platform/comapi/map/b/b/c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/b/b/c;->c:J

    .line 112
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 113
    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/b/b/c;->c:J

    sub-long/2addr v0, v0

    const-wide/16 v2, 0x32

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3

    .line 115
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_2

    .line 119
    iget p1, p3, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:I

    add-int/lit8 p1, p1, -0x4

    iput p1, p3, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:I

    goto :goto_0

    .line 121
    :cond_2
    iget p1, p3, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:I

    int-to-double p1, p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p3, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:I

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/platform/comapi/map/b/a/b;Landroid/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/platform/comapi/map/b/a/b;",
            "Landroid/util/Pair<",
            "Lcom/baidu/platform/comapi/map/b/a$d;",
            "Lcom/baidu/platform/comapi/map/b/a$d;",
            ">;)V"
        }
    .end annotation

    .line 96
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/b/b/c;->d:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object p1

    .line 97
    iget-boolean p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->bOverlookSpringback:Z

    if-eqz p2, :cond_1

    .line 98
    iget p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:I

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 99
    iput p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:I

    goto :goto_0

    .line 102
    :cond_0
    iget p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->minOverlooking:I

    iput p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:I

    .line 104
    :goto_0
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/b/b/c;->d:Lcom/baidu/platform/comapi/map/MapController;

    const/16 v0, 0xc8

    invoke-virtual {p2, p1, v0}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatusWithAnimation(Lcom/baidu/platform/comapi/map/MapStatus;I)V

    :cond_1
    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/map/b/a/b;Landroid/view/MotionEvent;)V
    .locals 10

    .line 43
    iget-object v0, p1, Lcom/baidu/platform/comapi/map/b/a/b;->b:Lcom/baidu/platform/comapi/map/b/a$a;

    .line 44
    iget-object p1, p1, Lcom/baidu/platform/comapi/map/b/a/b;->c:Lcom/baidu/platform/comapi/map/b/a$a;

    .line 45
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/b/b/c;->d:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v1

    .line 48
    iget-object v2, p1, Lcom/baidu/platform/comapi/map/b/a$a;->a:Lcom/baidu/platform/comapi/map/b/a$b;

    iget-wide v2, v2, Lcom/baidu/platform/comapi/map/b/a$b;->b:D

    iget-object v4, v0, Lcom/baidu/platform/comapi/map/b/a$a;->a:Lcom/baidu/platform/comapi/map/b/a$b;

    iget-wide v4, v4, Lcom/baidu/platform/comapi/map/b/a$b;->b:D

    sub-double/2addr v2, v4

    .line 49
    iget-object p1, p1, Lcom/baidu/platform/comapi/map/b/a$a;->b:Lcom/baidu/platform/comapi/map/b/a$b;

    iget-wide v4, p1, Lcom/baidu/platform/comapi/map/b/a$b;->b:D

    iget-object p1, v0, Lcom/baidu/platform/comapi/map/b/a$a;->b:Lcom/baidu/platform/comapi/map/b/a$b;

    iget-wide v6, p1, Lcom/baidu/platform/comapi/map/b/a$b;->b:D

    sub-double/2addr v4, v6

    mul-double v6, v2, v4

    const-wide/16 v8, 0x0

    cmpl-double p1, v6, v8

    if-lez p1, :cond_0

    .line 51
    invoke-direct {p0, v2, v3, v1}, Lcom/baidu/platform/comapi/map/b/b/c;->a(DLcom/baidu/platform/comapi/map/MapStatus;)V

    goto :goto_0

    :cond_0
    cmpl-double p1, v6, v8

    if-nez p1, :cond_2

    cmpl-double p1, v2, v8

    if-eqz p1, :cond_1

    .line 53
    invoke-direct {p0, v2, v3, v1}, Lcom/baidu/platform/comapi/map/b/b/c;->a(DLcom/baidu/platform/comapi/map/MapStatus;)V

    goto :goto_0

    :cond_1
    cmpl-double p1, v4, v8

    if-eqz p1, :cond_4

    .line 54
    invoke-direct {p0, v4, v5, v1}, Lcom/baidu/platform/comapi/map/b/b/c;->a(DLcom/baidu/platform/comapi/map/MapStatus;)V

    goto :goto_0

    .line 56
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double p1, v6, v8

    if-lez p1, :cond_3

    invoke-direct {p0, v2, v3, v1}, Lcom/baidu/platform/comapi/map/b/b/c;->a(DLcom/baidu/platform/comapi/map/MapStatus;)V

    goto :goto_0

    .line 57
    :cond_3
    invoke-direct {p0, v4, v5, v1}, Lcom/baidu/platform/comapi/map/b/b/c;->a(DLcom/baidu/platform/comapi/map/MapStatus;)V

    :cond_4
    :goto_0
    const/4 p1, 0x1

    .line 68
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v0, v3

    .line 69
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr p1, v3

    .line 70
    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 71
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    add-float/2addr v5, v0

    float-to-int v0, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    add-float/2addr p2, p1

    float-to-int p1, p2

    invoke-direct {v4, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 73
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/b/b/c;->d:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getListeners()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 75
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/b/b/c;->d:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatusInner()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object p2

    const/4 v0, 0x0

    .line 76
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 77
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/platform/comapi/map/al;

    if-eqz v5, :cond_5

    .line 80
    invoke-interface {v5, v3, v4, p2}, Lcom/baidu/platform/comapi/map/al;->c(Landroid/graphics/Point;Landroid/graphics/Point;Lcom/baidu/mapsdkplatform/comapi/map/x;)Z

    move-result v5

    if-eqz v5, :cond_5

    return-void

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 87
    :cond_6
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/b/b/c;->d:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1, v1}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatus(Lcom/baidu/platform/comapi/map/MapStatus;)V

    .line 88
    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/b/b/c;->b:Z

    if-eqz p1, :cond_7

    .line 89
    iput-boolean v2, p0, Lcom/baidu/platform/comapi/map/b/b/c;->b:Z

    .line 90
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/b/b/c;->d:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getGestureMonitor()Lcom/baidu/platform/comapi/map/b/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/b/d;->d()V

    :cond_7
    return-void
.end method
