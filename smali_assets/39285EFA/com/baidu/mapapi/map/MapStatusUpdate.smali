.class public final Lcom/baidu/mapapi/map/MapStatusUpdate;
.super Ljava/lang/Object;
.source "MapStatusUpdate.java"


# static fields
.field private static final o:Ljava/lang/String; = "MapStatusUpdate"


# instance fields
.field a:Lcom/baidu/mapapi/map/MapStatus;

.field b:Lcom/baidu/mapapi/model/LatLng;

.field c:Lcom/baidu/mapapi/model/LatLngBounds;

.field d:I

.field e:I

.field f:F

.field g:I

.field h:I

.field i:F

.field j:Landroid/graphics/Point;

.field k:I

.field l:I

.field m:I

.field n:I

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/baidu/mapapi/map/MapStatusUpdate;->k:I

    .line 49
    iput v0, p0, Lcom/baidu/mapapi/map/MapStatusUpdate;->l:I

    .line 50
    iput v0, p0, Lcom/baidu/mapapi/map/MapStatusUpdate;->m:I

    .line 51
    iput v0, p0, Lcom/baidu/mapapi/map/MapStatusUpdate;->n:I

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/baidu/mapapi/map/MapStatusUpdate;->k:I

    .line 49
    iput v0, p0, Lcom/baidu/mapapi/map/MapStatusUpdate;->l:I

    .line 50
    iput v0, p0, Lcom/baidu/mapapi/map/MapStatusUpdate;->m:I

    .line 51
    iput v0, p0, Lcom/baidu/mapapi/map/MapStatusUpdate;->n:I

    .line 57
    iput p1, p0, Lcom/baidu/mapapi/map/MapStatusUpdate;->p:I

    return-void
.end method

.method private a(F)F
    .locals 5

    .line 396
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getDensityDpi()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x439b0000    # 310.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x41900000    # 18.0f

    sub-float/2addr v1, p1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 399
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    double-to-float p1, v1

    return p1
.end method

.method private a(Lcom/baidu/mapapi/model/LatLngBounds;Lcom/baidu/mapsdkplatform/comapi/map/d;II)F
    .locals 10

    .line 254
    iget-object v0, p1, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 255
    iget-object p1, p1, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p1

    .line 257
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v1

    double-to-int v4, v1

    .line 258
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v0

    double-to-int v7, v0

    .line 259
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v0

    double-to-int v6, v0

    .line 260
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v0

    double-to-int v5, v0

    move-object v3, p2

    move v8, p3

    move v9, p4

    .line 262
    invoke-virtual/range {v3 .. v9}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(IIIIII)F

    move-result p1

    return p1
.end method

.method private a(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/MapStatusUpdate;
    .locals 1

    .line 382
    new-instance v0, Lcom/baidu/mapapi/map/MapStatusUpdate;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MapStatusUpdate;-><init>()V

    .line 383
    monitor-enter p0

    .line 384
    :try_start_0
    iput-object p1, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->a:Lcom/baidu/mapapi/map/MapStatus;

    .line 385
    iget-object p1, p0, Lcom/baidu/mapapi/map/MapStatusUpdate;->c:Lcom/baidu/mapapi/model/LatLngBounds;

    iput-object p1, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->c:Lcom/baidu/mapapi/model/LatLngBounds;

    .line 386
    iget p1, p0, Lcom/baidu/mapapi/map/MapStatusUpdate;->k:I

    iput p1, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->k:I

    .line 387
    iget p1, p0, Lcom/baidu/mapapi/map/MapStatusUpdate;->l:I

    iput p1, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->l:I

    .line 388
    iget p1, p0, Lcom/baidu/mapapi/map/MapStatusUpdate;->m:I

    iput p1, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->m:I

    .line 389
    iget p1, p0, Lcom/baidu/mapapi/map/MapStatusUpdate;->n:I

    iput p1, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->n:I

    .line 390
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Lcom/baidu/mapapi/model/LatLngBounds;Lcom/baidu/mapsdkplatform/comapi/map/d;F)Lcom/baidu/mapapi/model/LatLng;
    .locals 11

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 343
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/mapapi/model/LatLngBounds;->getCenter()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p1

    .line 348
    iget p2, p0, Lcom/baidu/mapapi/map/MapStatusUpdate;->k:I

    int-to-float v0, p2

    mul-float v0, v0, p3

    float-to-double v0, v0

    .line 349
    iget v2, p0, Lcom/baidu/mapapi/map/MapStatusUpdate;->m:I

    int-to-float v3, v2

    mul-float v3, v3, p3

    float-to-double v3, v3

    .line 350
    iget v5, p0, Lcom/baidu/mapapi/map/MapStatusUpdate;->l:I

    int-to-float v5, v5

    mul-float v5, v5, p3

    float-to-double v5, v5

    .line 351
    iget v7, p0, Lcom/baidu/mapapi/map/MapStatusUpdate;->n:I

    int-to-float v7, v7

    mul-float v7, v7, p3

    float-to-double v7, v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    if-le p2, v2, :cond_1

    .line 354
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide p2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v3

    div-double/2addr v0, v9

    sub-double/2addr p2, v0

    goto :goto_0

    :cond_1
    if-ge p2, v2, :cond_2

    .line 356
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide p2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v3, v0

    div-double/2addr v3, v9

    add-double/2addr p2, v3

    goto :goto_0

    .line 358
    :cond_2
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide p2

    .line 361
    :goto_0
    iget v0, p0, Lcom/baidu/mapapi/map/MapStatusUpdate;->l:I

    iget v1, p0, Lcom/baidu/mapapi/map/MapStatusUpdate;->n:I

    if-ge v0, v1, :cond_3

    .line 362
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v7, v5

    div-double/2addr v7, v9

    sub-double/2addr v0, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    :goto_1
    div-double/2addr v5, v9

    add-double/2addr v0, v5

    goto :goto_2

    :cond_3
    if-le v0, v1, :cond_4

    .line 366
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v5, v7

    goto :goto_1

    .line 369
    :cond_4
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v0

    .line 372
    :goto_2
    new-instance p1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-direct {p1, v0, v1, p2, p3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(DD)V

    .line 373
    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(IIIILcom/baidu/mapsdkplatform/comapi/map/d;)Z
    .locals 2

    .line 315
    invoke-virtual {p5}, Lcom/baidu/mapsdkplatform/comapi/map/d;->F()Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object p5

    const/4 v0, 0x1

    if-nez p5, :cond_0

    return v0

    .line 320
    :cond_0
    iget v1, p5, Lcom/baidu/mapapi/map/MapStatusUpdate;->k:I

    if-ne p1, v1, :cond_2

    iget p1, p5, Lcom/baidu/mapapi/map/MapStatusUpdate;->l:I

    if-ne p2, p1, :cond_2

    iget p1, p5, Lcom/baidu/mapapi/map/MapStatusUpdate;->m:I

    if-ne p3, p1, :cond_2

    iget p1, p5, Lcom/baidu/mapapi/map/MapStatusUpdate;->n:I

    if-eq p4, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private a(Lcom/baidu/mapapi/model/LatLngBounds;Lcom/baidu/mapsdkplatform/comapi/map/d;)Z
    .locals 17

    move-object/from16 v0, p1

    .line 277
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mapsdkplatform/comapi/map/d;->F()Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 282
    :cond_0
    iget-object v3, v0, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v3, v3, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    .line 283
    iget-object v5, v0, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v5, v5, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    .line 284
    iget-object v7, v0, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v7, v7, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    .line 285
    iget-object v0, v0, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v9, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    .line 287
    iget-object v0, v1, Lcom/baidu/mapapi/map/MapStatusUpdate;->c:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v0, v0, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v11, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    .line 288
    iget-object v0, v1, Lcom/baidu/mapapi/map/MapStatusUpdate;->c:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v0, v0, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v13, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    .line 289
    iget-object v0, v1, Lcom/baidu/mapapi/map/MapStatusUpdate;->c:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v0, v0, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    move-wide v15, v3

    iget-wide v2, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    .line 290
    iget-object v0, v1, Lcom/baidu/mapapi/map/MapStatusUpdate;->c:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v0, v0, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    cmpl-double v4, v15, v11

    if-nez v4, :cond_2

    cmpl-double v4, v5, v13

    if-nez v4, :cond_2

    cmpl-double v4, v7, v2

    if-nez v4, :cond_2

    cmpl-double v2, v9, v0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method a(Lcom/baidu/mapsdkplatform/comapi/map/d;Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/MapStatus;
    .locals 32

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v14, p2

    const/4 v8, 0x0

    if-eqz v7, :cond_d

    if-nez v14, :cond_0

    goto/16 :goto_2

    .line 65
    :cond_0
    iget v0, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->p:I

    const-string v1, "Bound paddingTop or paddingBottom too larger, please check"

    const-string v2, "Bound paddingLeft or paddingRight too larger, please check"

    packed-switch v0, :pswitch_data_0

    return-object v8

    .line 164
    :pswitch_0
    iget-object v0, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->c:Lcom/baidu/mapapi/model/LatLngBounds;

    if-nez v0, :cond_1

    return-object v8

    .line 168
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->H()I

    move-result v0

    iget v3, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->k:I

    sub-int/2addr v0, v3

    iget v3, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->m:I

    sub-int/2addr v0, v3

    if-gez v0, :cond_2

    .line 170
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->H()I

    move-result v0

    .line 171
    sget-object v3, Lcom/baidu/mapapi/map/MapStatusUpdate;->o:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->I()I

    move-result v2

    iget v3, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->l:I

    sub-int/2addr v2, v3

    iget v3, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->n:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_3

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->I()I

    move-result v2

    .line 177
    sget-object v3, Lcom/baidu/mapapi/map/MapStatusUpdate;->o:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_3
    iget-object v1, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->c:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v1, v1, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v1

    .line 181
    iget-object v3, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->c:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v3, v3, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v3}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v3

    .line 182
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v4

    .line 183
    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v8

    .line 184
    invoke-virtual {v3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v10

    .line 185
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v12

    double-to-int v1, v4

    double-to-int v9, v8

    double-to-int v10, v10

    double-to-int v11, v12

    move-object/from16 v7, p1

    move v8, v1

    move v12, v0

    move v13, v2

    .line 186
    invoke-virtual/range {v7 .. v13}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(IIIIII)F

    move-result v16

    .line 188
    iget v1, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->k:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 189
    iget v0, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->l:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 190
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 191
    iget-object v0, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->c:Lcom/baidu/mapapi/model/LatLngBounds;

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/LatLngBounds;->getCenter()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    .line 192
    new-instance v1, Lcom/baidu/mapapi/map/MapStatus;

    iget v13, v14, Lcom/baidu/mapapi/map/MapStatus;->rotate:F

    iget v15, v14, Lcom/baidu/mapapi/map/MapStatus;->overlook:F

    const/16 v18, 0x0

    move-object v12, v1

    move-object v14, v0

    move-object/from16 v17, v2

    invoke-direct/range {v12 .. v18}, Lcom/baidu/mapapi/map/MapStatus;-><init>(FLcom/baidu/mapapi/model/LatLng;FFLandroid/graphics/Point;Lcom/baidu/mapapi/model/LatLngBounds;)V

    return-object v1

    .line 195
    :pswitch_1
    iget-object v0, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->c:Lcom/baidu/mapapi/model/LatLngBounds;

    if-nez v0, :cond_4

    return-object v8

    .line 199
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->H()I

    move-result v0

    iget v3, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->k:I

    sub-int/2addr v0, v3

    iget v3, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->m:I

    sub-int/2addr v0, v3

    if-gez v0, :cond_5

    .line 201
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->H()I

    move-result v0

    .line 202
    sget-object v3, Lcom/baidu/mapapi/map/MapStatusUpdate;->o:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->I()I

    move-result v2

    iget v3, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->l:I

    sub-int/2addr v2, v3

    iget v3, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->n:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_6

    .line 207
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->I()I

    move-result v2

    .line 208
    sget-object v3, Lcom/baidu/mapapi/map/MapStatusUpdate;->o:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_6
    iget-object v1, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->c:Lcom/baidu/mapapi/model/LatLngBounds;

    invoke-direct {v6, v1, v7, v0, v2}, Lcom/baidu/mapapi/map/MapStatusUpdate;->a(Lcom/baidu/mapapi/model/LatLngBounds;Lcom/baidu/mapsdkplatform/comapi/map/d;II)F

    move-result v13

    .line 213
    invoke-direct {v6, v13}, Lcom/baidu/mapapi/map/MapStatusUpdate;->a(F)F

    move-result v0

    .line 215
    iget-object v1, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->c:Lcom/baidu/mapapi/model/LatLngBounds;

    invoke-direct {v6, v1, v7, v0}, Lcom/baidu/mapapi/map/MapStatusUpdate;->a(Lcom/baidu/mapapi/model/LatLngBounds;Lcom/baidu/mapsdkplatform/comapi/map/d;F)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v11

    if-nez v11, :cond_7

    .line 217
    sget-object v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->o:Ljava/lang/String;

    const-string v1, "Bound center error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    .line 225
    :cond_7
    iget-object v0, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->c:Lcom/baidu/mapapi/model/LatLngBounds;

    invoke-direct {v6, v0, v7}, Lcom/baidu/mapapi/map/MapStatusUpdate;->a(Lcom/baidu/mapapi/model/LatLngBounds;Lcom/baidu/mapsdkplatform/comapi/map/d;)Z

    move-result v9

    .line 226
    iget v1, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->k:I

    iget v2, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->l:I

    iget v3, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->m:I

    iget v4, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->n:I

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mapapi/map/MapStatusUpdate;->a(IIIILcom/baidu/mapsdkplatform/comapi/map/d;)Z

    move-result v0

    if-nez v9, :cond_9

    if-eqz v0, :cond_8

    goto :goto_0

    .line 231
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->F()Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 232
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->F()Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v0

    iget-object v8, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->a:Lcom/baidu/mapapi/map/MapStatus;

    goto :goto_1

    .line 228
    :cond_9
    :goto_0
    new-instance v8, Lcom/baidu/mapapi/map/MapStatus;

    iget v10, v14, Lcom/baidu/mapapi/map/MapStatus;->rotate:F

    iget v12, v14, Lcom/baidu/mapapi/map/MapStatus;->overlook:F

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v9, v8

    invoke-direct/range {v9 .. v15}, Lcom/baidu/mapapi/map/MapStatus;-><init>(FLcom/baidu/mapapi/model/LatLng;FFLandroid/graphics/Point;Lcom/baidu/mapapi/model/LatLngBounds;)V

    .line 229
    invoke-direct {v6, v8}, Lcom/baidu/mapapi/map/MapStatusUpdate;->a(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    :cond_a
    :goto_1
    return-object v8

    .line 146
    :pswitch_2
    iget-object v0, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->c:Lcom/baidu/mapapi/model/LatLngBounds;

    if-nez v0, :cond_b

    return-object v8

    .line 150
    :cond_b
    iget-object v0, v0, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 151
    iget-object v1, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->c:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v1, v1, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v1

    .line 152
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v2

    .line 153
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    .line 154
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v8

    .line 155
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v0

    double-to-int v2, v2

    double-to-int v3, v4

    double-to-int v10, v8

    double-to-int v11, v0

    .line 156
    iget v12, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->d:I

    iget v13, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->e:I

    move-object/from16 v7, p1

    move v8, v2

    move v9, v3

    invoke-virtual/range {v7 .. v13}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(IIIIII)F

    move-result v18

    .line 158
    iget-object v0, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->c:Lcom/baidu/mapapi/model/LatLngBounds;

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/LatLngBounds;->getCenter()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v16

    .line 160
    new-instance v0, Lcom/baidu/mapapi/map/MapStatus;

    iget v15, v14, Lcom/baidu/mapapi/map/MapStatus;->rotate:F

    iget v1, v14, Lcom/baidu/mapapi/map/MapStatus;->overlook:F

    iget-object v2, v14, Lcom/baidu/mapapi/map/MapStatus;->targetScreen:Landroid/graphics/Point;

    const/16 v20, 0x0

    move-object v14, v0

    move/from16 v17, v1

    move-object/from16 v19, v2

    invoke-direct/range {v14 .. v20}, Lcom/baidu/mapapi/map/MapStatus;-><init>(FLcom/baidu/mapapi/model/LatLng;FFLandroid/graphics/Point;Lcom/baidu/mapapi/model/LatLngBounds;)V

    return-object v0

    .line 137
    :pswitch_3
    new-instance v0, Lcom/baidu/mapapi/map/MapStatus;

    iget v1, v14, Lcom/baidu/mapapi/map/MapStatus;->rotate:F

    iget-object v2, v14, Lcom/baidu/mapapi/map/MapStatus;->target:Lcom/baidu/mapapi/model/LatLng;

    iget v3, v14, Lcom/baidu/mapapi/map/MapStatus;->overlook:F

    iget v4, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->f:F

    iget-object v5, v14, Lcom/baidu/mapapi/map/MapStatus;->targetScreen:Landroid/graphics/Point;

    .line 138
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mapapi/map/MapStatus;->a()D

    move-result-wide v27

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mapapi/map/MapStatus;->b()D

    move-result-wide v29

    const/16 v31, 0x0

    move-object/from16 v21, v0

    move/from16 v22, v1

    move-object/from16 v23, v2

    move/from16 v24, v3

    move/from16 v25, v4

    move-object/from16 v26, v5

    invoke-direct/range {v21 .. v31}, Lcom/baidu/mapapi/map/MapStatus;-><init>(FLcom/baidu/mapapi/model/LatLng;FFLandroid/graphics/Point;DDLcom/baidu/mapapi/model/LatLngBounds;)V

    return-object v0

    .line 131
    :pswitch_4
    iget-object v0, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->j:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->j:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->b(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 132
    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v9

    .line 133
    new-instance v0, Lcom/baidu/mapapi/map/MapStatus;

    iget v8, v14, Lcom/baidu/mapapi/map/MapStatus;->rotate:F

    iget v10, v14, Lcom/baidu/mapapi/map/MapStatus;->overlook:F

    iget v1, v14, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    iget v2, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->i:F

    add-float v11, v1, v2

    iget-object v12, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->j:Landroid/graphics/Point;

    const/4 v13, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lcom/baidu/mapapi/map/MapStatus;-><init>(FLcom/baidu/mapapi/model/LatLng;FFLandroid/graphics/Point;Lcom/baidu/mapapi/model/LatLngBounds;)V

    return-object v0

    .line 127
    :pswitch_5
    new-instance v0, Lcom/baidu/mapapi/map/MapStatus;

    iget v15, v14, Lcom/baidu/mapapi/map/MapStatus;->rotate:F

    iget-object v1, v14, Lcom/baidu/mapapi/map/MapStatus;->target:Lcom/baidu/mapapi/model/LatLng;

    iget v2, v14, Lcom/baidu/mapapi/map/MapStatus;->overlook:F

    iget v3, v14, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    iget v4, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->i:F

    add-float v18, v3, v4

    iget-object v3, v14, Lcom/baidu/mapapi/map/MapStatus;->targetScreen:Landroid/graphics/Point;

    .line 128
    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mapapi/map/MapStatus;->a()D

    move-result-wide v20

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mapapi/map/MapStatus;->b()D

    move-result-wide v22

    const/16 v24, 0x0

    move-object v14, v0

    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v14 .. v24}, Lcom/baidu/mapapi/map/MapStatus;-><init>(FLcom/baidu/mapapi/model/LatLng;FFLandroid/graphics/Point;DDLcom/baidu/mapapi/model/LatLngBounds;)V

    return-object v0

    .line 119
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->H()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->g:I

    add-int/2addr v0, v1

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->I()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->h:I

    add-int/2addr v1, v2

    .line 121
    invoke-virtual {v7, v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->b(II)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 122
    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v9

    .line 123
    new-instance v1, Lcom/baidu/mapapi/map/MapStatus;

    iget v8, v14, Lcom/baidu/mapapi/map/MapStatus;->rotate:F

    iget v10, v14, Lcom/baidu/mapapi/map/MapStatus;->overlook:F

    iget v11, v14, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    iget-object v12, v14, Lcom/baidu/mapapi/map/MapStatus;->targetScreen:Landroid/graphics/Point;

    .line 124
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v13

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v15

    const/16 v17, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v17}, Lcom/baidu/mapapi/map/MapStatus;-><init>(FLcom/baidu/mapapi/model/LatLng;FFLandroid/graphics/Point;DDLcom/baidu/mapapi/model/LatLngBounds;)V

    return-object v1

    .line 116
    :pswitch_7
    new-instance v0, Lcom/baidu/mapapi/map/MapStatus;

    iget v1, v14, Lcom/baidu/mapapi/map/MapStatus;->rotate:F

    iget-object v2, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->b:Lcom/baidu/mapapi/model/LatLng;

    iget v3, v14, Lcom/baidu/mapapi/map/MapStatus;->overlook:F

    iget v4, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->f:F

    iget-object v5, v14, Lcom/baidu/mapapi/map/MapStatus;->targetScreen:Landroid/graphics/Point;

    const/16 v24, 0x0

    move-object/from16 v18, v0

    move/from16 v19, v1

    move-object/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move-object/from16 v23, v5

    invoke-direct/range {v18 .. v24}, Lcom/baidu/mapapi/map/MapStatus;-><init>(FLcom/baidu/mapapi/model/LatLng;FFLandroid/graphics/Point;Lcom/baidu/mapapi/model/LatLngBounds;)V

    return-object v0

    .line 92
    :pswitch_8
    iget-object v0, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->c:Lcom/baidu/mapapi/model/LatLngBounds;

    if-nez v0, :cond_c

    return-object v8

    .line 101
    :cond_c
    iget-object v0, v0, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 102
    iget-object v1, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->c:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v1, v1, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v1

    .line 103
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v2

    .line 104
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    .line 105
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v8

    .line 106
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v0

    double-to-int v2, v2

    double-to-int v3, v4

    double-to-int v10, v8

    double-to-int v11, v0

    .line 108
    iget-object v0, v14, Lcom/baidu/mapapi/map/MapStatus;->a:Lcom/baidu/mapsdkplatform/comapi/map/x;

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/x;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v0, v0, Lcom/baidu/mapapi/map/WinRound;->right:I

    iget-object v1, v14, Lcom/baidu/mapapi/map/MapStatus;->a:Lcom/baidu/mapsdkplatform/comapi/map/x;

    iget-object v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/x;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v1, v1, Lcom/baidu/mapapi/map/WinRound;->left:I

    sub-int v12, v0, v1

    iget-object v0, v14, Lcom/baidu/mapapi/map/MapStatus;->a:Lcom/baidu/mapsdkplatform/comapi/map/x;

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/x;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v0, v0, Lcom/baidu/mapapi/map/WinRound;->bottom:I

    iget-object v1, v14, Lcom/baidu/mapapi/map/MapStatus;->a:Lcom/baidu/mapsdkplatform/comapi/map/x;

    iget-object v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/x;->j:Lcom/baidu/mapapi/map/WinRound;

    iget v1, v1, Lcom/baidu/mapapi/map/WinRound;->top:I

    sub-int v13, v0, v1

    move-object/from16 v7, p1

    move v8, v2

    move v9, v3

    invoke-virtual/range {v7 .. v13}, Lcom/baidu/mapsdkplatform/comapi/map/d;->a(IIIIII)F

    move-result v18

    .line 111
    iget-object v0, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->c:Lcom/baidu/mapapi/model/LatLngBounds;

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/LatLngBounds;->getCenter()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v16

    .line 113
    new-instance v0, Lcom/baidu/mapapi/map/MapStatus;

    iget v15, v14, Lcom/baidu/mapapi/map/MapStatus;->rotate:F

    iget v1, v14, Lcom/baidu/mapapi/map/MapStatus;->overlook:F

    iget-object v2, v14, Lcom/baidu/mapapi/map/MapStatus;->targetScreen:Landroid/graphics/Point;

    const/16 v20, 0x0

    move-object v14, v0

    move/from16 v17, v1

    move-object/from16 v19, v2

    invoke-direct/range {v14 .. v20}, Lcom/baidu/mapapi/map/MapStatus;-><init>(FLcom/baidu/mapapi/model/LatLng;FFLandroid/graphics/Point;Lcom/baidu/mapapi/model/LatLngBounds;)V

    return-object v0

    .line 88
    :pswitch_9
    new-instance v0, Lcom/baidu/mapapi/map/MapStatus;

    iget v8, v14, Lcom/baidu/mapapi/map/MapStatus;->rotate:F

    iget-object v9, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->b:Lcom/baidu/mapapi/model/LatLng;

    iget v10, v14, Lcom/baidu/mapapi/map/MapStatus;->overlook:F

    iget v11, v14, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    iget-object v12, v14, Lcom/baidu/mapapi/map/MapStatus;->targetScreen:Landroid/graphics/Point;

    const/4 v13, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lcom/baidu/mapapi/map/MapStatus;-><init>(FLcom/baidu/mapapi/model/LatLng;FFLandroid/graphics/Point;Lcom/baidu/mapapi/model/LatLngBounds;)V

    return-object v0

    .line 85
    :pswitch_a
    iget-object v0, v6, Lcom/baidu/mapapi/map/MapStatusUpdate;->a:Lcom/baidu/mapapi/map/MapStatus;

    return-object v0

    :cond_d
    :goto_2
    return-object v8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
