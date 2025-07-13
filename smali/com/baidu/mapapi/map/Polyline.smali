.class public final Lcom/baidu/mapapi/map/Polyline;
.super Lcom/baidu/mapapi/map/Overlay;
.source "Polyline.java"


# instance fields
.field a:I

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field c:[I

.field d:[I

.field e:I

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field l:I

.field m:Z

.field n:Z

.field o:Z

.field p:Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;

.field q:Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;

.field r:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Overlay;-><init>()V

    const/4 v0, 0x5

    .line 23
    iput v0, p0, Lcom/baidu/mapapi/map/Polyline;->e:I

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->f:Z

    .line 25
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->g:Z

    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/Polyline;->h:Z

    .line 27
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/Polyline;->i:Z

    .line 30
    iput v0, p0, Lcom/baidu/mapapi/map/Polyline;->l:I

    .line 31
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/Polyline;->m:Z

    .line 32
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->n:Z

    .line 33
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->o:Z

    .line 34
    sget-object v0, Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;->LineCapButt:Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;

    iput-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->p:Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;

    .line 35
    sget-object v0, Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;->LineJoinRound:Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;

    iput-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->q:Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;

    .line 36
    sget-object v0, Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;->NONE:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    iput-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->r:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    .line 40
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/i;->i:Lcom/baidu/mapsdkplatform/comapi/map/i;

    iput-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->type:Lcom/baidu/mapsdkplatform/comapi/map/i;

    return-void
.end method

.method private a(ZLjava/lang/String;)Landroid/os/Bundle;
    .locals 1

    if-eqz p1, :cond_2

    .line 506
    iget p1, p0, Lcom/baidu/mapapi/map/Polyline;->l:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "CircleDashTexture.png"

    goto :goto_0

    :cond_0
    const-string p1, "lineDashTexture.png"

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, p1

    .line 512
    :goto_1
    invoke-static {p2}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 514
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 517
    :cond_2
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->j:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method private static a(Ljava/util/List;Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;Landroid/os/Bundle;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;",
            "Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 554
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 555
    new-array v1, v0, [D

    .line 556
    new-array v2, v0, [D

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 558
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/model/LatLng;

    .line 559
    sget-object v5, Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;->FROM_EAST_TO_WEST:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    const-wide v6, 0x4076800000000000L    # 360.0

    const-wide/16 v8, 0x0

    if-ne p1, v5, :cond_0

    iget-wide v10, v4, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    cmpg-double v5, v10, v8

    if-gez v5, :cond_0

    .line 560
    new-instance v5, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v8, v4, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v10, v4, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    add-double/2addr v10, v6

    invoke-direct {v5, v8, v9, v10, v11}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    :goto_1
    move-object v4, v5

    goto :goto_2

    .line 561
    :cond_0
    sget-object v5, Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;->FROM_WEST_TO_EAST:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    if-ne p1, v5, :cond_1

    iget-wide v10, v4, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    cmpl-double v5, v10, v8

    if-lez v5, :cond_1

    .line 562
    new-instance v5, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v8, v4, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v10, v4, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    sub-double/2addr v10, v6

    invoke-direct {v5, v8, v9, v10, v11}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    goto :goto_1

    .line 564
    :cond_1
    :goto_2
    invoke-static {v4}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v4

    .line 565
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v5

    aput-wide v5, v1, v3

    .line 566
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "x_array"

    .line 568
    invoke-virtual {p2, p0, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string/jumbo p0, "y_array"

    .line 569
    invoke-virtual {p2, p0, v2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    return-void
.end method

.method private static a([ILandroid/os/Bundle;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 405
    array-length v0, p0

    if-lez v0, :cond_0

    const-string v0, "traffic_array"

    .line 406
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method private b(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 573
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    if-eqz v0, :cond_3

    .line 577
    array-length v1, v0

    if-eqz v1, :cond_2

    .line 580
    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Polyline;->d([ILandroid/os/Bundle;)V

    .line 582
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->r:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    invoke-static {v0, v1, p1}, Lcom/baidu/mapapi/map/Polyline;->a(Ljava/util/List;Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;Landroid/os/Bundle;)V

    .line 584
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 586
    aput v2, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    array-length v3, v2

    if-ne v0, v3, :cond_1

    .line 590
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    aput v2, v1, v0

    .line 592
    :cond_1
    invoke-static {v1, p1}, Lcom/baidu/mapapi/map/Polyline;->c([ILandroid/os/Bundle;)V

    return-object p1

    .line 578
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: colors array size can not be Equal to zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 574
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: colors array can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private b(ZLjava/lang/String;)Landroid/os/Bundle;
    .locals 4

    const-string v0, "total"

    if-eqz p1, :cond_3

    .line 522
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    .line 523
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 525
    iget v0, p0, Lcom/baidu/mapapi/map/Polyline;->l:I

    if-ne v0, v1, :cond_0

    const-string v0, "CircleDashTexture.png"

    goto :goto_0

    :cond_0
    const-string v0, "lineDashTexture.png"

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v0

    .line 531
    :goto_1
    invoke-static {p2}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 533
    invoke-virtual {p2}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "texture_0"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-object p1

    .line 537
    :cond_3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 539
    :goto_2
    iget-object v2, p0, Lcom/baidu/mapapi/map/Polyline;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_5

    .line 540
    iget-object v2, p0, Lcom/baidu/mapapi/map/Polyline;->k:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "texture_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 542
    iget-object v3, p0, Lcom/baidu/mapapi/map/Polyline;->k:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v3}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 547
    :cond_5
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method private static b([ILandroid/os/Bundle;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 411
    array-length v0, p0

    if-lez v0, :cond_0

    const-string v0, "color_array"

    .line 412
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const/4 p0, 0x1

    const-string v0, "total"

    .line 413
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private static c([ILandroid/os/Bundle;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 597
    array-length v0, p0

    if-lez v0, :cond_0

    const-string v0, "color_indexs"

    .line 598
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method private static d([ILandroid/os/Bundle;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 603
    array-length v0, p0

    if-lez v0, :cond_0

    const-string v0, "color_array"

    .line 604
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    .line 419
    invoke-super {p0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 420
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_b

    .line 423
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v3

    const-string v5, "location_x"

    invoke-virtual {p1, v5, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 425
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v3

    const-string v0, "location_y"

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 426
    iget v0, p0, Lcom/baidu/mapapi/map/Polyline;->e:I

    const-string/jumbo v3, "width"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 427
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->o:Z

    if-eqz v0, :cond_0

    .line 428
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/Polyline;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 431
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->n:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 432
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/k;->b(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/mapapi/map/Polyline;->r:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    invoke-static {v0, v1, p1}, Lcom/baidu/mapapi/map/Polyline;->a(Ljava/util/List;Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;Landroid/os/Bundle;)V

    .line 436
    iget v0, p0, Lcom/baidu/mapapi/map/Polyline;->a:I

    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(ILandroid/os/Bundle;)V

    .line 437
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->c:[I

    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Polyline;->a([ILandroid/os/Bundle;)V

    .line 438
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Polyline;->b([ILandroid/os/Bundle;)V

    .line 439
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->c:[I

    const-string v1, "baidumapsdk"

    if-eqz v0, :cond_2

    array-length v4, v0

    if-lez v4, :cond_2

    array-length v0, v0

    iget-object v4, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-le v0, v4, :cond_2

    const-string v0, "the size of textureIndexs is larger than the size of points"

    .line 440
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_2
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->f:Z

    const-string v4, "dotline"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 444
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->g:Z

    const-string v5, "focus"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 445
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->i:Z

    const-string v5, "isClickable"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 446
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->n:Z

    if-eqz v0, :cond_3

    .line 447
    iput-boolean v2, p0, Lcom/baidu/mapapi/map/Polyline;->m:Z

    .line 448
    iput-boolean v2, p0, Lcom/baidu/mapapi/map/Polyline;->o:Z

    .line 450
    :cond_3
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->m:Z

    const-string v5, "isThined"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 451
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->o:Z

    const-string v5, "isGradient"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 452
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->q:Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;->ordinal()I

    move-result v0

    const-string v5, "lineJoinType"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 453
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->p:Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;->ordinal()I

    move-result v0

    const-string v5, "lineCapType"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 455
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->r:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;->ordinal()I

    move-result v0

    const-string v5, "lineDirectionCross180"

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->j:Lcom/baidu/mapapi/map/BitmapDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "line_texture.png"

    const-string v6, "custom"

    const/4 v7, 0x0

    const-string v8, "image_info"

    if-eqz v0, :cond_4

    .line 460
    :try_start_1
    invoke-virtual {p1, v6, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 461
    invoke-direct {p0, v2, v7}, Lcom/baidu/mapapi/map/Polyline;->a(ZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 463
    :cond_4
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->f:Z

    if-eqz v0, :cond_5

    .line 464
    invoke-direct {p0, v3, v7}, Lcom/baidu/mapapi/map/Polyline;->a(ZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "dotted_line_type"

    .line 465
    iget v9, p0, Lcom/baidu/mapapi/map/Polyline;->l:I

    invoke-virtual {p1, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 467
    :cond_5
    invoke-direct {p0, v3, v5}, Lcom/baidu/mapapi/map/Polyline;->a(ZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 469
    :goto_0
    invoke-virtual {p1, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 472
    :goto_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->k:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "image_info_list"

    const-string v9, "customlist"

    if-eqz v0, :cond_6

    .line 473
    :try_start_2
    invoke-virtual {p1, v9, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 474
    invoke-direct {p0, v2, v7}, Lcom/baidu/mapapi/map/Polyline;->b(ZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    .line 477
    :cond_6
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->f:Z

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    move-object v5, v7

    .line 481
    :goto_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    if-eqz v0, :cond_8

    array-length v0, v0

    if-lez v0, :cond_8

    .line 482
    invoke-direct {p0, v3, v5}, Lcom/baidu/mapapi/map/Polyline;->b(ZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    .line 484
    :cond_8
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->j:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-eqz v0, :cond_9

    .line 485
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 486
    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    .line 488
    :cond_9
    invoke-direct {p0, v3, v5}, Lcom/baidu/mapapi/map/Polyline;->a(ZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 492
    :goto_3
    invoke-virtual {p1, v9, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_4
    const-string v0, "keep"

    .line 494
    iget-boolean v5, p0, Lcom/baidu/mapapi/map/Polyline;->h:Z

    if-eqz v5, :cond_a

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    const-string v0, "load texture resource failed!"

    .line 496
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_6
    return-object p1

    .line 421
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: when you add Polyline, you must at least supply 2 points"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getColor()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/baidu/mapapi/map/Polyline;->a:I

    return v0
.end method

.method public getColorList()[I
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    return-object v0
.end method

.method public getDottedLineType()I
    .locals 1

    .line 327
    iget v0, p0, Lcom/baidu/mapapi/map/Polyline;->l:I

    return v0
.end method

.method public getLineCapType()Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->p:Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;

    return-object v0
.end method

.method public getLineDirectionCross180()Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->r:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    return-object v0
.end method

.method public getLineJoinType()Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->q:Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    return-object v0
.end method

.method public getTexture()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->j:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/baidu/mapapi/map/Polyline;->e:I

    return v0
.end method

.method public isClickable()Z
    .locals 1

    .line 273
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->i:Z

    return v0
.end method

.method public isDottedLine()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->f:Z

    return v0
.end method

.method public isFocus()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->g:Z

    return v0
.end method

.method public isGeodesic()Z
    .locals 1

    .line 383
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->n:Z

    return v0
.end method

.method public isGradient()Z
    .locals 1

    .line 401
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->o:Z

    return v0
.end method

.method public isIsKeepScale()Z
    .locals 1

    .line 244
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->h:Z

    return v0
.end method

.method public isThined()Z
    .locals 1

    .line 292
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->m:Z

    return v0
.end method

.method public setClickable(Z)V
    .locals 0

    .line 263
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Polyline;->i:Z

    .line 264
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/baidu/mapapi/map/Polyline;->a:I

    .line 87
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setColorList([I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 101
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 105
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    return-void

    .line 102
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: colorList can not empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDottedLine(Z)V
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Polyline;->f:Z

    .line 126
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setDottedLineType(Lcom/baidu/mapapi/map/PolylineDottedLineType;)V
    .locals 0

    .line 282
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/PolylineDottedLineType;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/Polyline;->l:I

    .line 283
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setFocus(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Polyline;->g:Z

    .line 136
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setGeodesic(Z)V
    .locals 0

    .line 373
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Polyline;->n:Z

    .line 374
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setGradient(Z)V
    .locals 0

    .line 391
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Polyline;->o:Z

    .line 392
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setIndexs([I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 230
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 234
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->c:[I

    return-void

    .line 231
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: indexList can not empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIsKeepScale(Z)V
    .locals 0

    .line 254
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Polyline;->h:Z

    return-void
.end method

.method public setLineCapType(Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->p:Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;

    .line 365
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setLineDirectionCross180(Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->r:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    return-void
.end method

.method public setLineJoinType(Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->q:Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;

    .line 346
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 177
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 180
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    .line 185
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void

    .line 181
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points list can not contains null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 178
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points count can not less than 2 or more than 10000"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 175
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points list can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTexture(Lcom/baidu/mapapi/map/BitmapDescriptor;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->j:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 147
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setTextureList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 211
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->k:Ljava/util/List;

    return-void

    .line 212
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: textureList can not empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setThined(Z)V
    .locals 0

    .line 301
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Polyline;->m:Z

    .line 302
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 196
    iput p1, p0, Lcom/baidu/mapapi/map/Polyline;->e:I

    .line 197
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_0
    return-void
.end method
