.class public Lcom/baidu/platform/comapi/map/b/b/d;
.super Lcom/baidu/platform/comapi/map/b/b/a;
.source "ZoomRotateOpt.java"


# instance fields
.field private b:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

.field private c:I

.field private d:F

.field private e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/baidu/platform/comapi/map/b/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/baidu/platform/comapi/map/b/a$c;

.field private g:Lcom/baidu/platform/comapi/map/b/a$c;

.field private h:Z

.field private i:Lcom/baidu/platform/comapi/map/b/a/b;

.field private j:Z

.field private k:D

.field private l:Z

.field private m:J


# direct methods
.method public constructor <init>(Lcom/baidu/platform/comapi/map/MapController;)V
    .locals 2

    .line 63
    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/map/b/b/a;-><init>(Lcom/baidu/platform/comapi/map/MapController;)V

    .line 47
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->e:Ljava/util/Queue;

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->h:Z

    .line 55
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->j:Z

    const-wide/16 v0, 0x0

    .line 56
    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/b/b/d;->k:D

    .line 58
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->l:Z

    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/b/b/d;->m:J

    return-void
.end method

.method private a()I
    .locals 4

    .line 268
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/b/b/d;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 269
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 270
    iget-object v2, p0, Lcom/baidu/platform/comapi/map/b/b/d;->e:Ljava/util/Queue;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 271
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    return v1

    .line 275
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/b/a$c;

    iget-wide v0, v0, Lcom/baidu/platform/comapi/map/b/a$c;->a:D

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    const/16 v1, 0xb4

    if-lt v0, v1, :cond_1

    const/16 v0, 0xb3

    goto :goto_0

    :cond_1
    const/16 v1, -0xb4

    if-gt v0, v1, :cond_2

    const/16 v0, -0xb3

    :cond_2
    :goto_0
    return v0

    :cond_3
    return v1
.end method

.method private a(Lcom/baidu/platform/comapi/map/MapStatus;)V
    .locals 5

    .line 146
    iget v0, p0, Lcom/baidu/platform/comapi/map/b/b/d;->d:F

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->f:Lcom/baidu/platform/comapi/map/b/a$c;

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/b/a$c;->b:D

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    double-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    .line 147
    iget v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    const/high16 v1, 0x40800000    # 4.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    :goto_0
    iput v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    return-void
.end method

.method private a(Lcom/baidu/platform/comapi/map/MapStatus;I)V
    .locals 1

    if-eqz p2, :cond_0

    .line 290
    iget v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    add-int/2addr v0, p2

    rem-int/lit16 v0, v0, 0x168

    iput v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    .line 291
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    const/16 v0, 0x258

    invoke-virtual {p2, p1, v0}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatusWithAnimation(Lcom/baidu/platform/comapi/map/MapStatus;I)V

    :cond_0
    return-void
.end method

.method private b(Lcom/baidu/platform/comapi/map/MapStatus;)V
    .locals 8

    .line 154
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/b/b/d;->b:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/b/b/d;->g:Lcom/baidu/platform/comapi/map/b/a$c;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/b/a$c;->c:Lcom/baidu/platform/comapi/map/b/a$d;

    iget-wide v0, v0, Lcom/baidu/platform/comapi/map/b/a$d;->a:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_0

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/b/b/d;->g:Lcom/baidu/platform/comapi/map/b/a$c;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/b/a$c;->c:Lcom/baidu/platform/comapi/map/b/a$d;

    iget-wide v0, v0, Lcom/baidu/platform/comapi/map/b/a$d;->b:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_5

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/b/b/d;->i:Lcom/baidu/platform/comapi/map/b/a/b;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/b/a/b;->a:Lcom/baidu/platform/comapi/map/b/a$a;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/b/a$a;->a()Lcom/baidu/platform/comapi/map/b/a$b;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->i:Lcom/baidu/platform/comapi/map/b/a/b;

    iget-object v1, v1, Lcom/baidu/platform/comapi/map/b/a/b;->c:Lcom/baidu/platform/comapi/map/b/a$a;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/b/a$a;->a()Lcom/baidu/platform/comapi/map/b/a$b;

    move-result-object v1

    .line 159
    iget-wide v2, v1, Lcom/baidu/platform/comapi/map/b/a$b;->a:D

    iget-wide v4, v0, Lcom/baidu/platform/comapi/map/b/a$b;->a:D

    sub-double/2addr v2, v4

    iget-wide v4, v1, Lcom/baidu/platform/comapi/map/b/a$b;->a:D

    iget-wide v6, v0, Lcom/baidu/platform/comapi/map/b/a$b;->a:D

    sub-double/2addr v4, v6

    mul-double v2, v2, v4

    iget-wide v4, v1, Lcom/baidu/platform/comapi/map/b/a$b;->b:D

    iget-wide v6, v0, Lcom/baidu/platform/comapi/map/b/a$b;->b:D

    sub-double/2addr v4, v6

    iget-wide v6, v1, Lcom/baidu/platform/comapi/map/b/a$b;->b:D

    iget-wide v0, v0, Lcom/baidu/platform/comapi/map/b/a$b;->b:D

    sub-double/2addr v6, v0

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 162
    sget-boolean v2, Lcom/baidu/platform/comapi/map/MapController;->isCompass:Z

    if-eqz v2, :cond_1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    return-void

    .line 166
    :cond_1
    sget-boolean v0, Lcom/baidu/platform/comapi/map/MapController;->isCompass:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/b/b/d;->l:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/b/b/d;->b:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtX:D

    .line 177
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/b/b/d;->b:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->centerPtY:D

    .line 179
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/b/b/d;->i:Lcom/baidu/platform/comapi/map/b/a/b;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/b/a/b;->c:Lcom/baidu/platform/comapi/map/b/a$a;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/b/a$a;->a()Lcom/baidu/platform/comapi/map/b/a$b;

    move-result-object v0

    .line 180
    iget-wide v1, v0, Lcom/baidu/platform/comapi/map/b/a$b;->a:D

    iget-object v3, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v3, v3, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->left:I

    iget-object v4, p0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    .line 181
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/MapController;->getScreenWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p1, Lcom/baidu/platform/comapi/map/MapStatus;->xScreenOffset:F

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p1, Lcom/baidu/platform/comapi/map/MapStatus;->xOffset:F

    const/high16 v1, -0x40800000    # -1.0f

    .line 182
    iget-wide v2, v0, Lcom/baidu/platform/comapi/map/b/a$b;->b:D

    iget-object v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v0, v0, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->top:I

    iget-object v4, p0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    .line 183
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/MapController;->getScreenHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    int-to-float v0, v0

    iget v4, p1, Lcom/baidu/platform/comapi/map/MapStatus;->yScreenOffset:F

    add-float/2addr v0, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    double-to-float v0, v2

    mul-float v0, v0, v1

    iput v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->yOffset:F

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 167
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->l:Z

    .line 168
    invoke-static {}, Lcom/baidu/platform/comapi/util/a;->a()Lcom/baidu/platform/comapi/util/a;

    move-result-object p1

    new-instance v0, Lcom/baidu/platform/comapi/map/a/a;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/map/a/a;-><init>()V

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/util/a;->a(Ljava/lang/Object;)V

    .line 169
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    .line 173
    :cond_4
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/b/b/d;->i:Lcom/baidu/platform/comapi/map/b/a/b;

    iget-object v0, v0, Lcom/baidu/platform/comapi/map/b/a/b;->c:Lcom/baidu/platform/comapi/map/b/a$a;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/b/a$a;->a()Lcom/baidu/platform/comapi/map/b/a$b;

    move-result-object v0

    .line 174
    invoke-interface {p1}, Lcom/baidu/platform/comapi/map/MapViewInterface;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object p1

    iget-wide v1, v0, Lcom/baidu/platform/comapi/map/b/a$b;->a:D

    double-to-int v1, v1

    iget-wide v2, v0, Lcom/baidu/platform/comapi/map/b/a$b;->b:D

    double-to-int v0, v2

    invoke-interface {p1, v1, v0}, Lcom/baidu/platform/comapi/map/Projection;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->b:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    :cond_5
    :goto_1
    return-void
.end method

.method private c(Lcom/baidu/platform/comapi/map/MapStatus;)V
    .locals 14

    .line 192
    new-instance v0, Lcom/baidu/platform/comapi/map/b/a$a;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->i:Lcom/baidu/platform/comapi/map/b/a/b;

    iget-object v1, v1, Lcom/baidu/platform/comapi/map/b/a/b;->b:Lcom/baidu/platform/comapi/map/b/a$a;

    iget-object v1, v1, Lcom/baidu/platform/comapi/map/b/a$a;->a:Lcom/baidu/platform/comapi/map/b/a$b;

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/b/b/d;->i:Lcom/baidu/platform/comapi/map/b/a/b;

    iget-object v2, v2, Lcom/baidu/platform/comapi/map/b/a/b;->c:Lcom/baidu/platform/comapi/map/b/a$a;

    iget-object v2, v2, Lcom/baidu/platform/comapi/map/b/a$a;->a:Lcom/baidu/platform/comapi/map/b/a$b;

    invoke-direct {v0, v1, v2}, Lcom/baidu/platform/comapi/map/b/a$a;-><init>(Lcom/baidu/platform/comapi/map/b/a$b;Lcom/baidu/platform/comapi/map/b/a$b;)V

    .line 193
    new-instance v1, Lcom/baidu/platform/comapi/map/b/a$c;

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/b/b/d;->i:Lcom/baidu/platform/comapi/map/b/a/b;

    iget-object v2, v2, Lcom/baidu/platform/comapi/map/b/a/b;->b:Lcom/baidu/platform/comapi/map/b/a$a;

    invoke-direct {v1, v0, v2}, Lcom/baidu/platform/comapi/map/b/a$c;-><init>(Lcom/baidu/platform/comapi/map/b/a$a;Lcom/baidu/platform/comapi/map/b/a$a;)V

    iget-wide v0, v1, Lcom/baidu/platform/comapi/map/b/a$c;->a:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 195
    new-instance v2, Lcom/baidu/platform/comapi/map/b/a$a;

    iget-object v3, p0, Lcom/baidu/platform/comapi/map/b/b/d;->i:Lcom/baidu/platform/comapi/map/b/a/b;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/b/a/b;->b:Lcom/baidu/platform/comapi/map/b/a$a;

    iget-object v3, v3, Lcom/baidu/platform/comapi/map/b/a$a;->b:Lcom/baidu/platform/comapi/map/b/a$b;

    iget-object v4, p0, Lcom/baidu/platform/comapi/map/b/b/d;->i:Lcom/baidu/platform/comapi/map/b/a/b;

    iget-object v4, v4, Lcom/baidu/platform/comapi/map/b/a/b;->c:Lcom/baidu/platform/comapi/map/b/a$a;

    iget-object v4, v4, Lcom/baidu/platform/comapi/map/b/a$a;->b:Lcom/baidu/platform/comapi/map/b/a$b;

    invoke-direct {v2, v3, v4}, Lcom/baidu/platform/comapi/map/b/a$a;-><init>(Lcom/baidu/platform/comapi/map/b/a$b;Lcom/baidu/platform/comapi/map/b/a$b;)V

    .line 196
    new-instance v3, Lcom/baidu/platform/comapi/map/b/a$c;

    iget-object v4, p0, Lcom/baidu/platform/comapi/map/b/b/d;->i:Lcom/baidu/platform/comapi/map/b/a/b;

    iget-object v4, v4, Lcom/baidu/platform/comapi/map/b/a/b;->b:Lcom/baidu/platform/comapi/map/b/a$a;

    invoke-direct {v3, v2, v4}, Lcom/baidu/platform/comapi/map/b/a$c;-><init>(Lcom/baidu/platform/comapi/map/b/a$a;Lcom/baidu/platform/comapi/map/b/a$a;)V

    iget-wide v2, v3, Lcom/baidu/platform/comapi/map/b/a$c;->a:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 198
    iget-wide v4, p0, Lcom/baidu/platform/comapi/map/b/b/d;->k:D

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    cmpl-double v10, v4, v6

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/baidu/platform/comapi/map/b/b/d;->g:Lcom/baidu/platform/comapi/map/b/a$c;

    iget-wide v10, v10, Lcom/baidu/platform/comapi/map/b/a$c;->b:D

    mul-double v4, v4, v10

    cmpg-double v10, v4, v6

    if-gez v10, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    return-void

    .line 203
    :cond_1
    iget-boolean v4, p0, Lcom/baidu/platform/comapi/map/b/b/d;->j:Z

    if-eqz v4, :cond_2

    .line 204
    iget v0, p0, Lcom/baidu/platform/comapi/map/b/b/d;->c:I

    int-to-double v0, v0

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/b/b/d;->f:Lcom/baidu/platform/comapi/map/b/a$c;

    iget-wide v2, v2, Lcom/baidu/platform/comapi/map/b/a$c;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    rem-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p1, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    goto/16 :goto_3

    .line 208
    :cond_2
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->g:Lcom/baidu/platform/comapi/map/b/a$c;

    iget-wide v4, p1, Lcom/baidu/platform/comapi/map/b/a$c;->b:D

    const-wide v6, 0x4066800000000000L    # 180.0

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v4, v12

    if-gez p1, :cond_3

    cmpl-double p1, v0, v10

    if-gtz p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->g:Lcom/baidu/platform/comapi/map/b/a$c;

    iget-wide v4, p1, Lcom/baidu/platform/comapi/map/b/a$c;->b:D

    cmpl-double p1, v4, v12

    if-lez p1, :cond_5

    sub-double/2addr v0, v6

    .line 209
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double p1, v0, v10

    if-lez p1, :cond_5

    :cond_4
    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 210
    :goto_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/b/b/d;->g:Lcom/baidu/platform/comapi/map/b/a$c;

    iget-wide v0, v0, Lcom/baidu/platform/comapi/map/b/a$c;->b:D

    cmpl-double v4, v0, v12

    if-lez v4, :cond_6

    cmpl-double v0, v2, v10

    if-gtz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/b/b/d;->g:Lcom/baidu/platform/comapi/map/b/a$c;

    iget-wide v0, v0, Lcom/baidu/platform/comapi/map/b/a$c;->b:D

    cmpg-double v4, v0, v12

    if-gez v4, :cond_8

    sub-double/2addr v2, v6

    .line 211
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v2, v0, v10

    if-lez v2, :cond_8

    :cond_7
    const/4 v8, 0x1

    :cond_8
    if-nez p1, :cond_9

    if-eqz v8, :cond_b

    .line 212
    :cond_9
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->f:Lcom/baidu/platform/comapi/map/b/a$c;

    iget-wide v0, p1, Lcom/baidu/platform/comapi/map/b/a$c;->a:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sget-boolean p1, Lcom/baidu/platform/comapi/map/MapController;->isCompass:Z

    if-eqz p1, :cond_a

    const/16 p1, 0x1e

    goto :goto_2

    :cond_a
    const/16 p1, 0xa

    :goto_2
    int-to-double v2, p1

    cmpl-double p1, v0, v2

    if-lez p1, :cond_b

    .line 213
    iput-boolean v9, p0, Lcom/baidu/platform/comapi/map/b/b/d;->j:Z

    .line 214
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getGestureMonitor()Lcom/baidu/platform/comapi/map/b/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/b/d;->c()V

    .line 215
    iget p1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->c:I

    int-to-double v0, p1

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->f:Lcom/baidu/platform/comapi/map/b/a$c;

    iget-wide v2, p1, Lcom/baidu/platform/comapi/map/b/a$c;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->c:I

    .line 216
    sget-boolean p1, Lcom/baidu/platform/comapi/map/MapController;->isCompass:Z

    if-eqz p1, :cond_b

    .line 217
    iput-boolean v9, p0, Lcom/baidu/platform/comapi/map/b/b/d;->l:Z

    .line 218
    invoke-static {}, Lcom/baidu/platform/comapi/util/a;->a()Lcom/baidu/platform/comapi/util/a;

    move-result-object p1

    new-instance v0, Lcom/baidu/platform/comapi/map/a/a;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/map/a/a;-><init>()V

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/util/a;->a(Ljava/lang/Object;)V

    .line 223
    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->g:Lcom/baidu/platform/comapi/map/b/a$c;

    iget-wide v0, p1, Lcom/baidu/platform/comapi/map/b/a$c;->b:D

    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/b/b/d;->k:D

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/platform/comapi/map/MapStatus;Lcom/baidu/platform/comapi/map/b/a/b;Landroid/util/Pair;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/platform/comapi/map/MapStatus;",
            "Lcom/baidu/platform/comapi/map/b/a/b;",
            "Landroid/util/Pair<",
            "Lcom/baidu/platform/comapi/map/b/a$d;",
            "Lcom/baidu/platform/comapi/map/b/a$d;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v3, :cond_1b

    .line 306
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/b/b/d;->a()I

    move-result v4

    .line 308
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/baidu/platform/comapi/map/b/a$d;

    iget-wide v5, v5, Lcom/baidu/platform/comapi/map/b/a$d;->a:D

    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/baidu/platform/comapi/map/b/a$d;

    iget-wide v7, v7, Lcom/baidu/platform/comapi/map/b/a$d;->a:D

    mul-double v5, v5, v7

    const-wide/16 v7, 0x0

    cmpl-double v9, v5, v7

    if-lez v9, :cond_0

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/baidu/platform/comapi/map/b/a$d;

    iget-wide v5, v5, Lcom/baidu/platform/comapi/map/b/a$d;->b:D

    iget-object v9, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/baidu/platform/comapi/map/b/a$d;

    iget-wide v9, v9, Lcom/baidu/platform/comapi/map/b/a$d;->b:D

    mul-double v5, v5, v9

    cmpl-double v9, v5, v7

    if-lez v9, :cond_0

    .line 309
    invoke-direct {v0, v1, v4}, Lcom/baidu/platform/comapi/map/b/b/d;->a(Lcom/baidu/platform/comapi/map/MapStatus;I)V

    return-void

    .line 313
    :cond_0
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/baidu/platform/comapi/map/b/a$d;

    iget-wide v5, v5, Lcom/baidu/platform/comapi/map/b/a$d;->a:D

    iget-object v9, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/baidu/platform/comapi/map/b/a$d;

    iget-wide v9, v9, Lcom/baidu/platform/comapi/map/b/a$d;->a:D

    sub-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpg-double v11, v5, v9

    if-ltz v11, :cond_1a

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/baidu/platform/comapi/map/b/a$d;

    iget-wide v5, v5, Lcom/baidu/platform/comapi/map/b/a$d;->b:D

    iget-object v11, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Lcom/baidu/platform/comapi/map/b/a$d;

    iget-wide v11, v11, Lcom/baidu/platform/comapi/map/b/a$d;->b:D

    sub-double/2addr v5, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v11, v5, v9

    if-gez v11, :cond_1

    goto/16 :goto_a

    .line 318
    :cond_1
    new-instance v5, Lcom/baidu/platform/comapi/map/b/a$a;

    iget-object v6, v2, Lcom/baidu/platform/comapi/map/b/a/b;->b:Lcom/baidu/platform/comapi/map/b/a$a;

    iget-object v6, v6, Lcom/baidu/platform/comapi/map/b/a$a;->a:Lcom/baidu/platform/comapi/map/b/a$b;

    iget-object v11, v2, Lcom/baidu/platform/comapi/map/b/a/b;->c:Lcom/baidu/platform/comapi/map/b/a$a;

    iget-object v11, v11, Lcom/baidu/platform/comapi/map/b/a$a;->a:Lcom/baidu/platform/comapi/map/b/a$b;

    invoke-direct {v5, v6, v11}, Lcom/baidu/platform/comapi/map/b/a$a;-><init>(Lcom/baidu/platform/comapi/map/b/a$b;Lcom/baidu/platform/comapi/map/b/a$b;)V

    .line 319
    new-instance v6, Lcom/baidu/platform/comapi/map/b/a$c;

    iget-object v11, v2, Lcom/baidu/platform/comapi/map/b/a/b;->b:Lcom/baidu/platform/comapi/map/b/a$a;

    invoke-direct {v6, v5, v11}, Lcom/baidu/platform/comapi/map/b/a$c;-><init>(Lcom/baidu/platform/comapi/map/b/a$a;Lcom/baidu/platform/comapi/map/b/a$a;)V

    iget-wide v5, v6, Lcom/baidu/platform/comapi/map/b/a$c;->a:D

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    .line 321
    new-instance v11, Lcom/baidu/platform/comapi/map/b/a$a;

    iget-object v12, v2, Lcom/baidu/platform/comapi/map/b/a/b;->b:Lcom/baidu/platform/comapi/map/b/a$a;

    iget-object v12, v12, Lcom/baidu/platform/comapi/map/b/a$a;->b:Lcom/baidu/platform/comapi/map/b/a$b;

    iget-object v13, v2, Lcom/baidu/platform/comapi/map/b/a/b;->c:Lcom/baidu/platform/comapi/map/b/a$a;

    iget-object v13, v13, Lcom/baidu/platform/comapi/map/b/a$a;->b:Lcom/baidu/platform/comapi/map/b/a$b;

    invoke-direct {v11, v12, v13}, Lcom/baidu/platform/comapi/map/b/a$a;-><init>(Lcom/baidu/platform/comapi/map/b/a$b;Lcom/baidu/platform/comapi/map/b/a$b;)V

    .line 322
    new-instance v12, Lcom/baidu/platform/comapi/map/b/a$c;

    iget-object v2, v2, Lcom/baidu/platform/comapi/map/b/a/b;->b:Lcom/baidu/platform/comapi/map/b/a$a;

    invoke-direct {v12, v11, v2}, Lcom/baidu/platform/comapi/map/b/a$c;-><init>(Lcom/baidu/platform/comapi/map/b/a$a;Lcom/baidu/platform/comapi/map/b/a$a;)V

    iget-wide v11, v12, Lcom/baidu/platform/comapi/map/b/a$c;->a:D

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    .line 324
    iget-wide v13, v0, Lcom/baidu/platform/comapi/map/b/b/d;->k:D

    const/4 v15, 0x1

    cmpl-double v16, v13, v7

    if-eqz v16, :cond_2

    iget-object v2, v0, Lcom/baidu/platform/comapi/map/b/b/d;->g:Lcom/baidu/platform/comapi/map/b/a$c;

    iget-wide v9, v2, Lcom/baidu/platform/comapi/map/b/a$c;->b:D

    mul-double v13, v13, v9

    cmpg-double v2, v13, v7

    if-gez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 326
    invoke-direct {v0, v1, v4}, Lcom/baidu/platform/comapi/map/b/b/d;->a(Lcom/baidu/platform/comapi/map/MapStatus;I)V

    return-void

    .line 335
    :cond_3
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/baidu/platform/comapi/map/b/a$d;

    iget-wide v7, v2, Lcom/baidu/platform/comapi/map/b/a$d;->a:D

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/baidu/platform/comapi/map/b/a$d;

    iget-wide v9, v2, Lcom/baidu/platform/comapi/map/b/a$d;->a:D

    mul-double v7, v7, v9

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/baidu/platform/comapi/map/b/a$d;

    iget-wide v9, v2, Lcom/baidu/platform/comapi/map/b/a$d;->a:D

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/baidu/platform/comapi/map/b/a$d;

    iget-wide v13, v2, Lcom/baidu/platform/comapi/map/b/a$d;->a:D

    mul-double v9, v9, v13

    add-double/2addr v7, v9

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/baidu/platform/comapi/map/b/a$d;

    iget-wide v9, v2, Lcom/baidu/platform/comapi/map/b/a$d;->b:D

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/baidu/platform/comapi/map/b/a$d;

    iget-wide v13, v2, Lcom/baidu/platform/comapi/map/b/a$d;->b:D

    mul-double v9, v9, v13

    add-double/2addr v7, v9

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/baidu/platform/comapi/map/b/a$d;

    iget-wide v9, v2, Lcom/baidu/platform/comapi/map/b/a$d;->b:D

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/baidu/platform/comapi/map/b/a$d;

    iget-wide v2, v2, Lcom/baidu/platform/comapi/map/b/a$d;->b:D

    mul-double v9, v9, v2

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    .line 341
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getDensityDPI()I

    move-result v7

    mul-int/lit8 v7, v7, 0x64

    div-int/lit16 v7, v7, 0x140

    int-to-float v7, v7

    cmpl-float v7, v2, v7

    if-lez v7, :cond_1b

    .line 342
    iput v15, v1, Lcom/baidu/platform/comapi/map/MapStatus;->hasAnimation:I

    const/16 v7, 0x258

    .line 343
    iput v7, v1, Lcom/baidu/platform/comapi/map/MapStatus;->animationTime:I

    const/4 v7, 0x0

    move-object v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    .line 355
    :goto_1
    iget-object v14, v0, Lcom/baidu/platform/comapi/map/b/b/d;->e:Ljava/util/Queue;

    invoke-interface {v14}, Ljava/util/Queue;->size()I

    move-result v14

    const-wide v18, 0x3f847ae147ae147bL    # 0.01

    if-ge v9, v14, :cond_8

    .line 356
    iget-object v14, v0, Lcom/baidu/platform/comapi/map/b/b/d;->e:Ljava/util/Queue;

    invoke-interface {v14}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/baidu/platform/comapi/map/b/a$c;

    if-eqz v14, :cond_7

    .line 359
    iget-object v15, v0, Lcom/baidu/platform/comapi/map/b/b/d;->e:Ljava/util/Queue;

    invoke-interface {v15}, Ljava/util/Queue;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_4

    move v15, v4

    .line 360
    iget-wide v3, v14, Lcom/baidu/platform/comapi/map/b/a$c;->b:D

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v3, v3, v16

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v20, v3, v18

    move v3, v15

    if-gez v20, :cond_5

    .line 361
    invoke-direct {v0, v1, v3}, Lcom/baidu/platform/comapi/map/b/b/d;->a(Lcom/baidu/platform/comapi/map/MapStatus;I)V

    return-void

    :cond_4
    move v3, v4

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    :cond_5
    move-object v4, v7

    move-object v15, v8

    .line 365
    iget-wide v7, v14, Lcom/baidu/platform/comapi/map/b/a$c;->b:D

    cmpl-double v18, v7, v16

    if-lez v18, :cond_6

    add-int/lit8 v10, v10, 0x1

    move-object v7, v4

    move-object v8, v14

    goto :goto_2

    :cond_6
    add-int/lit8 v13, v13, 0x1

    move-object v7, v14

    move-object v8, v15

    goto :goto_2

    :cond_7
    move v3, v4

    move-object v4, v7

    move-object v15, v8

    :goto_2
    add-int/lit8 v9, v9, 0x1

    move v4, v3

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v15, 0x1

    goto :goto_1

    :cond_8
    move v3, v4

    move-object v4, v7

    move-object v15, v8

    if-lt v10, v13, :cond_9

    move-object v7, v15

    goto :goto_3

    :cond_9
    move-object v7, v4

    :goto_3
    if-eqz v7, :cond_a

    .line 382
    iget-wide v8, v7, Lcom/baidu/platform/comapi/map/b/a$c;->b:D

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v13

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpg-double v4, v8, v18

    if-gez v4, :cond_b

    .line 383
    invoke-direct {v0, v1, v3}, Lcom/baidu/platform/comapi/map/b/b/d;->a(Lcom/baidu/platform/comapi/map/MapStatus;I)V

    return-void

    :cond_a
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 387
    :cond_b
    iget-wide v8, v7, Lcom/baidu/platform/comapi/map/b/a$c;->b:D

    const-wide v18, 0x4066800000000000L    # 180.0

    const-wide/high16 v20, 0x404e000000000000L    # 60.0

    cmpg-double v4, v8, v13

    if-gez v4, :cond_c

    cmpl-double v4, v5, v20

    if-gtz v4, :cond_d

    :cond_c
    iget-wide v8, v7, Lcom/baidu/platform/comapi/map/b/a$c;->b:D

    cmpl-double v4, v8, v13

    if-lez v4, :cond_e

    sub-double v5, v5, v18

    .line 388
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v6, v4, v20

    if-lez v6, :cond_e

    :cond_d
    const/4 v4, 0x1

    goto :goto_4

    :cond_e
    const/4 v4, 0x0

    .line 392
    :goto_4
    iget-wide v5, v7, Lcom/baidu/platform/comapi/map/b/a$c;->b:D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v5, v8

    if-lez v10, :cond_f

    cmpl-double v5, v11, v20

    if-gtz v5, :cond_10

    :cond_f
    iget-wide v5, v7, Lcom/baidu/platform/comapi/map/b/a$c;->b:D

    cmpg-double v10, v5, v8

    if-gez v10, :cond_11

    sub-double v11, v11, v18

    .line 393
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpl-double v8, v5, v20

    if-lez v8, :cond_11

    :cond_10
    const/4 v5, 0x1

    goto :goto_5

    :cond_11
    const/4 v5, 0x0

    :goto_5
    if-nez v4, :cond_12

    if-eqz v5, :cond_14

    .line 399
    :cond_12
    iget-object v4, v0, Lcom/baidu/platform/comapi/map/b/b/d;->f:Lcom/baidu/platform/comapi/map/b/a$c;

    iget-wide v4, v4, Lcom/baidu/platform/comapi/map/b/a$c;->a:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    sget-boolean v6, Lcom/baidu/platform/comapi/map/MapController;->isCompass:Z

    if-eqz v6, :cond_13

    const/16 v6, 0x1e

    goto :goto_6

    :cond_13
    const/16 v6, 0xf

    :goto_6
    int-to-double v8, v6

    cmpl-double v6, v4, v8

    if-lez v6, :cond_14

    .line 400
    invoke-direct {v0, v1, v3}, Lcom/baidu/platform/comapi/map/b/b/d;->a(Lcom/baidu/platform/comapi/map/MapStatus;I)V

    return-void

    .line 404
    :cond_14
    iget-wide v4, v7, Lcom/baidu/platform/comapi/map/b/a$c;->b:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_15

    const/4 v4, 0x1

    goto :goto_7

    :cond_15
    const/4 v4, 0x0

    :goto_7
    iput-boolean v4, v0, Lcom/baidu/platform/comapi/map/b/b/d;->h:Z

    const v4, 0xc3500

    .line 406
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getDensityDPI()I

    move-result v5

    div-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v5, v2, v4

    if-lez v5, :cond_16

    const/high16 v2, 0x40000000    # 2.0f

    .line 412
    :cond_16
    iget-boolean v4, v0, Lcom/baidu/platform/comapi/map/b/b/d;->h:Z

    if-nez v4, :cond_17

    .line 413
    iget v4, v1, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    sub-float/2addr v4, v2

    iput v4, v1, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    goto :goto_8

    .line 415
    :cond_17
    iget v4, v1, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    add-float/2addr v4, v2

    iput v4, v1, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    .line 418
    :goto_8
    iget v2, v1, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    const/high16 v4, 0x40800000    # 4.0f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_18

    goto :goto_9

    :cond_18
    iget v4, v1, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    :goto_9
    iput v4, v1, Lcom/baidu/platform/comapi/map/MapStatus;->level:F

    if-eqz v3, :cond_19

    .line 420
    iget v2, v1, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    add-int/2addr v2, v3

    rem-int/lit16 v2, v2, 0x168

    iput v2, v1, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    .line 424
    :cond_19
    iget-object v2, v0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v2, v1}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatus(Lcom/baidu/platform/comapi/map/MapStatus;)V

    .line 426
    iget-object v1, v0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/baidu/platform/comapi/map/MapController;->mIsAnimating:Z

    goto :goto_b

    :cond_1a
    :goto_a
    move v3, v4

    .line 314
    invoke-direct {v0, v1, v3}, Lcom/baidu/platform/comapi/map/b/b/d;->a(Lcom/baidu/platform/comapi/map/MapStatus;I)V

    :cond_1b
    :goto_b
    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/map/b/a/b;)V
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v1

    .line 74
    iget-object p1, p1, Lcom/baidu/platform/comapi/map/b/a/b;->a:Lcom/baidu/platform/comapi/map/b/a$a;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/b/a$a;->a()Lcom/baidu/platform/comapi/map/b/a$b;

    move-result-object p1

    .line 75
    invoke-interface {v0}, Lcom/baidu/platform/comapi/map/MapViewInterface;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v0

    iget-wide v2, p1, Lcom/baidu/platform/comapi/map/b/a$b;->a:D

    double-to-int v2, v2

    iget-wide v3, p1, Lcom/baidu/platform/comapi/map/b/a$b;->b:D

    double-to-int p1, v3

    invoke-interface {v0, v2, p1}, Lcom/baidu/platform/comapi/map/Projection;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->b:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    .line 76
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getZoomLevel()F

    move-result p1

    iput p1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->d:F

    .line 77
    iget p1, v1, Lcom/baidu/platform/comapi/map/MapStatus;->rotation:I

    iput p1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->c:I

    const-wide/16 v0, 0x0

    .line 79
    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/b/b/d;->k:D

    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/map/b/a/b;Landroid/util/Pair;)V
    .locals 22
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 231
    iget-object v2, v0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/MapController;->getMapView()Lcom/baidu/platform/comapi/map/MapViewInterface;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 236
    :cond_0
    iget-object v3, v0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v3

    .line 239
    iget-object v4, v1, Lcom/baidu/platform/comapi/map/b/a/b;->d:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 240
    iget-object v5, v1, Lcom/baidu/platform/comapi/map/b/a/b;->d:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x0

    if-gez v4, :cond_1

    const/4 v4, 0x0

    :cond_1
    if-gez v5, :cond_2

    const/4 v5, 0x0

    .line 244
    :cond_2
    invoke-interface {v2}, Lcom/baidu/platform/comapi/map/MapViewInterface;->getProjection()Lcom/baidu/platform/comapi/map/Projection;

    move-result-object v2

    iget-object v6, v0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    .line 245
    invoke-virtual {v6}, Lcom/baidu/platform/comapi/map/MapController;->getScreenWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iget-object v7, v3, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v7, v7, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->left:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v3, Lcom/baidu/platform/comapi/map/MapStatus;->xScreenOffset:F

    add-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, v0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    .line 246
    invoke-virtual {v7}, Lcom/baidu/platform/comapi/map/MapController;->getScreenHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iget-object v8, v3, Lcom/baidu/platform/comapi/map/MapStatus;->winRound:Lcom/baidu/platform/comapi/map/MapStatus$WinRound;

    iget v8, v8, Lcom/baidu/platform/comapi/map/MapStatus$WinRound;->top:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v3, v3, Lcom/baidu/platform/comapi/map/MapStatus;->yScreenOffset:F

    add-float/2addr v7, v3

    float-to-int v3, v7

    .line 244
    invoke-interface {v2, v6, v3}, Lcom/baidu/platform/comapi/map/Projection;->fromPixels(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v2

    const-wide/16 v6, 0x0

    if-eqz v2, :cond_3

    .line 248
    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitude()D

    move-result-wide v6

    .line 249
    invoke-virtual {v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitude()D

    move-result-wide v2

    move-wide/from16 v16, v2

    move-wide v14, v6

    goto :goto_0

    :cond_3
    move-wide v14, v6

    move-wide/from16 v16, v14

    .line 252
    :goto_0
    iget-object v8, v0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    const/4 v9, 0x5

    const/4 v10, 0x1

    shl-int/lit8 v2, v5, 0x10

    or-int v11, v2, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    invoke-virtual/range {v8 .. v21}, Lcom/baidu/platform/comapi/map/MapController;->MapMsgProc(IIIIIDDDD)I

    .line 253
    iget-object v2, v0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/MapController;->getGestureMonitor()Lcom/baidu/platform/comapi/map/b/d;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/MapController;->getZoomLevel()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/map/b/d;->a(F)V

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/baidu/platform/comapi/map/b/b/d;->m:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x64

    cmp-long v6, v2, v4

    if-gtz v6, :cond_5

    iget-object v2, v0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    iget-boolean v2, v2, Lcom/baidu/platform/comapi/map/MapController;->mIsInertialAnimation:Z

    if-nez v2, :cond_4

    goto :goto_1

    .line 261
    :cond_4
    iget-object v2, v0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/MapController;->isEnableZoom()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 262
    iget-object v2, v0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v0, v2, v1, v3}, Lcom/baidu/platform/comapi/map/b/b/d;->a(Lcom/baidu/platform/comapi/map/MapStatus;Lcom/baidu/platform/comapi/map/b/a/b;Landroid/util/Pair;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public a(Lcom/baidu/platform/comapi/map/b/a/b;Landroid/view/MotionEvent;)V
    .locals 7

    .line 85
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->i:Lcom/baidu/platform/comapi/map/b/a/b;

    .line 86
    new-instance v0, Lcom/baidu/platform/comapi/map/b/a$c;

    iget-object v1, p1, Lcom/baidu/platform/comapi/map/b/a/b;->a:Lcom/baidu/platform/comapi/map/b/a$a;

    iget-object v2, p1, Lcom/baidu/platform/comapi/map/b/a/b;->c:Lcom/baidu/platform/comapi/map/b/a$a;

    invoke-direct {v0, v1, v2}, Lcom/baidu/platform/comapi/map/b/a$c;-><init>(Lcom/baidu/platform/comapi/map/b/a$a;Lcom/baidu/platform/comapi/map/b/a$a;)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/b/b/d;->f:Lcom/baidu/platform/comapi/map/b/a$c;

    .line 87
    new-instance v0, Lcom/baidu/platform/comapi/map/b/a$c;

    iget-object v1, p1, Lcom/baidu/platform/comapi/map/b/a/b;->b:Lcom/baidu/platform/comapi/map/b/a$a;

    iget-object p1, p1, Lcom/baidu/platform/comapi/map/b/a/b;->c:Lcom/baidu/platform/comapi/map/b/a$a;

    invoke-direct {v0, v1, p1}, Lcom/baidu/platform/comapi/map/b/a$c;-><init>(Lcom/baidu/platform/comapi/map/b/a$a;Lcom/baidu/platform/comapi/map/b/a$a;)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/b/b/d;->g:Lcom/baidu/platform/comapi/map/b/a$c;

    .line 89
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getListeners()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 91
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatusInner()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object v0

    const/4 v1, 0x1

    .line 92
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    sub-float/2addr v2, v4

    .line 93
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    sub-float/2addr v1, v4

    .line 94
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 95
    new-instance v5, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    add-float/2addr v6, v2

    float-to-int v2, v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    add-float/2addr p2, v1

    float-to-int p2, p2

    invoke-direct {v5, v2, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 98
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v3, p2, :cond_1

    .line 99
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/baidu/platform/comapi/map/al;

    if-eqz p2, :cond_0

    .line 102
    invoke-interface {p2, v4, v5, v0}, Lcom/baidu/platform/comapi/map/al;->a(Landroid/graphics/Point;Landroid/graphics/Point;Lcom/baidu/mapsdkplatform/comapi/map/x;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    :cond_1
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getMapStatus()Lcom/baidu/platform/comapi/map/MapStatus;

    move-result-object p1

    .line 110
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/map/MapController;->isEnableZoom()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 111
    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/map/b/b/d;->a(Lcom/baidu/platform/comapi/map/MapStatus;)V

    .line 113
    :cond_2
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/map/MapController;->is3DGestureEnable()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/map/MapController;->getMapControlMode()Lcom/baidu/platform/comapi/map/MapController$MapControlMode;

    move-result-object p2

    sget-object v0, Lcom/baidu/platform/comapi/map/MapController$MapControlMode;->STREET:Lcom/baidu/platform/comapi/map/MapController$MapControlMode;

    if-eq p2, v0, :cond_4

    .line 116
    iget p2, p1, Lcom/baidu/platform/comapi/map/MapStatus;->overlooking:I

    if-nez p2, :cond_3

    .line 117
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p2}, Lcom/baidu/platform/comapi/map/MapController;->isCanTouchMove()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 118
    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/map/b/b/d;->b(Lcom/baidu/platform/comapi/map/MapStatus;)V

    .line 121
    :cond_3
    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/map/b/b/d;->c(Lcom/baidu/platform/comapi/map/MapStatus;)V

    .line 124
    :cond_4
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p2, p1}, Lcom/baidu/platform/comapi/map/MapController;->setMapStatus(Lcom/baidu/platform/comapi/map/MapStatus;)V

    .line 126
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->isNaviMode()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getNaviMapViewListener()Lcom/baidu/platform/comapi/map/NaviMapViewListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 127
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->getNaviMapViewListener()Lcom/baidu/platform/comapi/map/NaviMapViewListener;

    move-result-object p1

    const/16 p2, 0x208

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/baidu/platform/comapi/map/NaviMapViewListener;->onAction(ILjava/lang/Object;)V

    .line 131
    :cond_5
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/MapController;->mapStatusChangeStart()V

    .line 133
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->e:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    const/16 p2, 0xa

    if-lt p1, p2, :cond_6

    .line 134
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->e:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 136
    :cond_6
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->e:Ljava/util/Queue;

    iget-object p2, p0, Lcom/baidu/platform/comapi/map/b/b/d;->g:Lcom/baidu/platform/comapi/map/b/a$c;

    invoke-interface {p1, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 137
    invoke-static {}, Lcom/baidu/platform/comapi/util/a;->a()Lcom/baidu/platform/comapi/util/a;

    move-result-object p1

    new-instance p2, Lcom/baidu/platform/comapi/map/a/d;

    invoke-direct {p2}, Lcom/baidu/platform/comapi/map/a/d;-><init>()V

    invoke-virtual {p1, p2}, Lcom/baidu/platform/comapi/util/a;->a(Ljava/lang/Object;)V

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/baidu/platform/comapi/map/b/b/d;->m:J

    return-void
.end method
