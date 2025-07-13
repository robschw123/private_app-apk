.class public final Lcom/baidu/mapapi/map/MarkerOptions;
.super Lcom/baidu/mapapi/map/OverlayOptions;
.source "MarkerOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field a:I

.field b:Z

.field c:Landroid/os/Bundle;

.field private d:Lcom/baidu/mapapi/model/LatLng;

.field private e:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field private f:F

.field private g:F

.field private h:Z

.field private i:Z

.field private j:F

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Z

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private p:F

.field private q:F

.field private r:F

.field private s:I

.field private t:I

.field private u:Z

.field private v:Landroid/graphics/Point;

.field private w:Z

.field private x:Lcom/baidu/mapapi/map/InfoWindow;

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 9
    invoke-direct {p0}, Lcom/baidu/mapapi/map/OverlayOptions;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 37
    iput v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->f:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 38
    iput v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->g:F

    const/4 v1, 0x1

    .line 39
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->h:Z

    const/4 v2, 0x0

    .line 40
    iput-boolean v2, p0, Lcom/baidu/mapapi/map/MarkerOptions;->i:Z

    .line 44
    iput-boolean v2, p0, Lcom/baidu/mapapi/map/MarkerOptions;->m:Z

    const/16 v3, 0x14

    .line 46
    iput v3, p0, Lcom/baidu/mapapi/map/MarkerOptions;->o:I

    .line 47
    iput v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->p:F

    .line 48
    iput v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->q:F

    .line 49
    iput v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->r:F

    .line 51
    iput v2, p0, Lcom/baidu/mapapi/map/MarkerOptions;->s:I

    .line 52
    sget-object v0, Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;->none:Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->t:I

    .line 54
    iput-boolean v2, p0, Lcom/baidu/mapapi/map/MarkerOptions;->u:Z

    .line 57
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->w:Z

    const v0, 0x7fffffff

    .line 60
    iput v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->y:I

    .line 61
    iput-boolean v2, p0, Lcom/baidu/mapapi/map/MarkerOptions;->z:Z

    const/4 v0, 0x4

    .line 62
    iput v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->A:I

    const/16 v0, 0x16

    .line 63
    iput v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->B:I

    .line 64
    iput-boolean v2, p0, Lcom/baidu/mapapi/map/MarkerOptions;->C:Z

    .line 589
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->b:Z

    return-void
.end method


# virtual methods
.method a()Lcom/baidu/mapapi/map/Overlay;
    .locals 3

    .line 545
    new-instance v0, Lcom/baidu/mapapi/map/Marker;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/Marker;-><init>()V

    .line 547
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->b:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Marker;->H:Z

    .line 548
    iget v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->a:I

    iput v1, v0, Lcom/baidu/mapapi/map/Marker;->G:I

    .line 549
    iget-object v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->c:Landroid/os/Bundle;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Marker;->I:Landroid/os/Bundle;

    .line 550
    iget-object v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->d:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v1, :cond_3

    .line 554
    iput-object v1, v0, Lcom/baidu/mapapi/map/Marker;->a:Lcom/baidu/mapapi/model/LatLng;

    .line 555
    iget-object v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->e:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/baidu/mapapi/map/MarkerOptions;->n:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 556
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BDMapSDKException: when you add marker, you must set the icon or icons"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_1
    :goto_0
    iput-object v1, v0, Lcom/baidu/mapapi/map/Marker;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 559
    iget v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->f:F

    iput v1, v0, Lcom/baidu/mapapi/map/Marker;->c:F

    .line 560
    iget v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->g:F

    iput v1, v0, Lcom/baidu/mapapi/map/Marker;->d:F

    .line 561
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->h:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Marker;->e:Z

    .line 562
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->i:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Marker;->f:Z

    .line 563
    iget v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->j:F

    iput v1, v0, Lcom/baidu/mapapi/map/Marker;->g:F

    .line 564
    iget-object v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Marker;->h:Ljava/lang/String;

    .line 565
    iget v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->l:I

    iput v1, v0, Lcom/baidu/mapapi/map/Marker;->i:I

    .line 566
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->m:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Marker;->j:Z

    .line 567
    iget-object v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->n:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Marker;->s:Ljava/util/ArrayList;

    .line 568
    iget v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->o:I

    iput v1, v0, Lcom/baidu/mapapi/map/Marker;->t:I

    .line 569
    iget v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->r:F

    iput v1, v0, Lcom/baidu/mapapi/map/Marker;->l:F

    .line 570
    iget v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->s:I

    iput v1, v0, Lcom/baidu/mapapi/map/Marker;->r:I

    .line 571
    iget v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->p:F

    iput v1, v0, Lcom/baidu/mapapi/map/Marker;->v:F

    .line 572
    iget v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->q:F

    iput v1, v0, Lcom/baidu/mapapi/map/Marker;->w:F

    .line 573
    iget v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->t:I

    iput v1, v0, Lcom/baidu/mapapi/map/Marker;->m:I

    .line 574
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->u:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Marker;->n:Z

    .line 575
    iget-object v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->x:Lcom/baidu/mapapi/map/InfoWindow;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Marker;->z:Lcom/baidu/mapapi/map/InfoWindow;

    .line 576
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->w:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Marker;->o:Z

    .line 577
    iget v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->y:I

    iput v1, v0, Lcom/baidu/mapapi/map/Marker;->C:I

    .line 578
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->z:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Marker;->q:Z

    .line 579
    iget v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->A:I

    iput v1, v0, Lcom/baidu/mapapi/map/Marker;->D:I

    .line 580
    iget v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->B:I

    iput v1, v0, Lcom/baidu/mapapi/map/Marker;->E:I

    .line 581
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->C:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Marker;->p:Z

    .line 582
    iget-object v1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->v:Landroid/graphics/Point;

    if-eqz v1, :cond_2

    .line 583
    iput-object v1, v0, Lcom/baidu/mapapi/map/Marker;->y:Landroid/graphics/Point;

    :cond_2
    return-object v0

    .line 551
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BDMapSDKException: when you add marker, you must set the position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public alpha(F)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_1

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    iput p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->r:F

    return-object p0

    .line 123
    :cond_1
    :goto_0
    iput v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->r:F

    return-object p0
.end method

.method public anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float v0, p2, v0

    if-ltz v0, :cond_2

    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    goto :goto_0

    .line 384
    :cond_1
    iput p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->f:F

    .line 385
    iput p2, p0, Lcom/baidu/mapapi/map/MarkerOptions;->g:F

    :cond_2
    :goto_0
    return-object p0
.end method

.method public animateType(Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    if-nez p1, :cond_0

    .line 90
    sget-object p1, Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;->none:Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->t:I

    return-object p0
.end method

.method public clickable(Z)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 361
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->w:Z

    return-object p0
.end method

.method public draggable(Z)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 320
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->i:Z

    return-object p0
.end method

.method public endLevel(I)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 511
    iput p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->B:I

    return-object p0
.end method

.method public extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 642
    iput-object p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->c:Landroid/os/Bundle;

    return-object p0
.end method

.method public fixedScreenPosition(Landroid/graphics/Point;)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->v:Landroid/graphics/Point;

    const/4 p1, 0x1

    .line 530
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->u:Z

    return-object p0
.end method

.method public flat(Z)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 341
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->m:Z

    return-object p0
.end method

.method public getAlpha()F
    .locals 1

    .line 179
    iget v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->r:F

    return v0
.end method

.method public getAnchorX()F
    .locals 1

    .line 395
    iget v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->f:F

    return v0
.end method

.method public getAnchorY()F
    .locals 1

    .line 404
    iget v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->g:F

    return v0
.end method

.method public getAnimateType()Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;
    .locals 2

    .line 102
    iget v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->t:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 110
    sget-object v0, Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;->none:Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;

    return-object v0

    .line 108
    :cond_0
    sget-object v0, Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;->jump:Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;

    return-object v0

    .line 106
    :cond_1
    sget-object v0, Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;->grow:Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;

    return-object v0

    .line 104
    :cond_2
    sget-object v0, Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;->drop:Lcom/baidu/mapapi/map/MarkerOptions$MarkerAnimateType;

    return-object v0
.end method

.method public getEndLevel()I
    .locals 1

    .line 507
    iget v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->B:I

    return v0
.end method

.method public getExtraInfo()Landroid/os/Bundle;
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public getForceDisPlay()Z
    .locals 1

    .line 484
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->z:Z

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 187
    iget v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->s:I

    return v0
.end method

.method public getIcon()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->e:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object v0
.end method

.method public getIcons()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIsClickable()Z
    .locals 1

    .line 366
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->w:Z

    return v0
.end method

.method public getJoinCollision()Z
    .locals 1

    .line 520
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->C:Z

    return v0
.end method

.method public getPeriod()I
    .locals 1

    .line 252
    iget v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->o:I

    return v0
.end method

.method public getPosition()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->d:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 478
    iget v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->y:I

    return v0
.end method

.method public getRotate()F
    .locals 1

    .line 429
    iget v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->j:F

    return v0
.end method

.method public getStartLevel()I
    .locals 1

    .line 498
    iget v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->A:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getZIndex()I
    .locals 1

    .line 631
    iget v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->a:I

    return v0
.end method

.method public height(I)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 136
    iput p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->s:I

    return-object p0

    .line 139
    :cond_0
    iput p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->s:I

    return-object p0
.end method

.method public icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 1

    if-eqz p1, :cond_0

    .line 77
    iput-object p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->e:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object p0

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: marker\'s icon can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public icons(Ljava/util/ArrayList;)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;)",
            "Lcom/baidu/mapapi/map/MarkerOptions;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 210
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 213
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 214
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/BitmapDescriptor;

    iget-object v1, v1, Lcom/baidu/mapapi/map/BitmapDescriptor;->a:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0

    .line 218
    :cond_3
    iput-object p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->n:Ljava/util/ArrayList;

    return-object p0

    .line 208
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: marker\'s icons can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public infoWindow(Lcom/baidu/mapapi/map/InfoWindow;)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->x:Lcom/baidu/mapapi/map/InfoWindow;

    return-object p0
.end method

.method public isDraggable()Z
    .locals 1

    .line 351
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->i:Z

    return v0
.end method

.method public isFlat()Z
    .locals 1

    .line 330
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->m:Z

    return v0
.end method

.method public isForceDisPlay(Z)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 488
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->z:Z

    return-object p0
.end method

.method public isJoinCollision(Z)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 524
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->C:Z

    return-object p0
.end method

.method public isPerspective()Z
    .locals 1

    .line 297
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->h:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 610
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/MarkerOptions;->b:Z

    return v0
.end method

.method public period(I)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 1

    if-lez p1, :cond_0

    .line 242
    iput p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->o:I

    return-object p0

    .line 240
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: marker\'s period must be greater than zero "

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public perspective(Z)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 287
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->h:Z

    return-object p0
.end method

.method public position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 1

    if-eqz p1, :cond_0

    .line 266
    iput-object p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->d:Lcom/baidu/mapapi/model/LatLng;

    return-object p0

    .line 264
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: marker\'s position can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public priority(I)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 471
    iput p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->y:I

    return-object p0
.end method

.method public rotate(F)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 2

    :goto_0
    const/4 v0, 0x0

    const/high16 v1, 0x43b40000    # 360.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    add-float/2addr p1, v1

    goto :goto_0

    :cond_0
    rem-float/2addr p1, v1

    .line 419
    iput p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->j:F

    return-object p0
.end method

.method public scaleX(F)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    return-object p0

    .line 154
    :cond_0
    iput p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->p:F

    return-object p0
.end method

.method public scaleY(F)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    return-object p0

    .line 169
    :cond_0
    iput p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->q:F

    return-object p0
.end method

.method public startLevel(I)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 502
    iput p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->A:I

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 442
    iput-object p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->k:Ljava/lang/String;

    return-object p0
.end method

.method public visible(Z)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 600
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->b:Z

    return-object p0
.end method

.method public yOffset(I)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 308
    iput p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->l:I

    return-object p0
.end method

.method public zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;
    .locals 0

    .line 621
    iput p1, p0, Lcom/baidu/mapapi/map/MarkerOptions;->a:I

    return-object p0
.end method
