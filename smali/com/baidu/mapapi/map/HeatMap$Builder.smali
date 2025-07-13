.class public Lcom/baidu/mapapi/map/HeatMap$Builder;
.super Ljava/lang/Object;
.source "HeatMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/map/HeatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/baidu/mapapi/map/WeightedLatLng;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Collection<",
            "Lcom/baidu/mapapi/map/WeightedLatLng;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Lcom/baidu/mapapi/map/Gradient;

.field private e:D

.field private f:I

.field private g:F

.field private h:F

.field private i:Z

.field private j:Lcom/baidu/mapapi/map/HeatMapAnimation;

.field private k:Lcom/baidu/mapapi/map/HeatMapAnimation;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    .line 235
    iput v0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->c:I

    .line 236
    sget-object v0, Lcom/baidu/mapapi/map/HeatMap;->DEFAULT_GRADIENT:Lcom/baidu/mapapi/map/Gradient;

    iput-object v0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->d:Lcom/baidu/mapapi/map/Gradient;

    const-wide v0, 0x3fe3333333333333L    # 0.6

    .line 237
    iput-wide v0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->e:D

    const/4 v0, 0x0

    .line 238
    iput v0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->f:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 241
    iput v1, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->g:F

    const/4 v1, 0x0

    .line 242
    iput v1, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->h:F

    .line 244
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->i:Z

    .line 249
    new-instance v1, Lcom/baidu/mapapi/map/HeatMapAnimation;

    sget-object v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->Linear:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    const/16 v3, 0x64

    invoke-direct {v1, v0, v3, v2}, Lcom/baidu/mapapi/map/HeatMapAnimation;-><init>(ZILcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;)V

    iput-object v1, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->j:Lcom/baidu/mapapi/map/HeatMapAnimation;

    .line 254
    new-instance v1, Lcom/baidu/mapapi/map/HeatMapAnimation;

    sget-object v2, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->Linear:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    invoke-direct {v1, v0, v3, v2}, Lcom/baidu/mapapi/map/HeatMapAnimation;-><init>(ZILcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;)V

    iput-object v1, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->k:Lcom/baidu/mapapi/map/HeatMapAnimation;

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/HeatMap$Builder;)Ljava/util/ArrayList;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b(Lcom/baidu/mapapi/map/HeatMap$Builder;)I
    .locals 0

    .line 229
    iget p0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->c:I

    return p0
.end method

.method static synthetic c(Lcom/baidu/mapapi/map/HeatMap$Builder;)Z
    .locals 0

    .line 229
    iget-boolean p0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->i:Z

    return p0
.end method

.method static synthetic d(Lcom/baidu/mapapi/map/HeatMap$Builder;)Ljava/util/Collection;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->a:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic e(Lcom/baidu/mapapi/map/HeatMap$Builder;)Lcom/baidu/mapapi/map/HeatMapAnimation;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->j:Lcom/baidu/mapapi/map/HeatMapAnimation;

    return-object p0
.end method

.method static synthetic f(Lcom/baidu/mapapi/map/HeatMap$Builder;)Lcom/baidu/mapapi/map/HeatMapAnimation;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->k:Lcom/baidu/mapapi/map/HeatMapAnimation;

    return-object p0
.end method

.method static synthetic g(Lcom/baidu/mapapi/map/HeatMap$Builder;)I
    .locals 0

    .line 229
    iget p0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->f:I

    return p0
.end method

.method static synthetic h(Lcom/baidu/mapapi/map/HeatMap$Builder;)F
    .locals 0

    .line 229
    iget p0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->g:F

    return p0
.end method

.method static synthetic i(Lcom/baidu/mapapi/map/HeatMap$Builder;)F
    .locals 0

    .line 229
    iget p0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->h:F

    return p0
.end method

.method static synthetic j(Lcom/baidu/mapapi/map/HeatMap$Builder;)Lcom/baidu/mapapi/map/Gradient;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->d:Lcom/baidu/mapapi/map/Gradient;

    return-object p0
.end method

.method static synthetic k(Lcom/baidu/mapapi/map/HeatMap$Builder;)D
    .locals 2

    .line 229
    iget-wide v0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->e:D

    return-wide v0
.end method


# virtual methods
.method public build()Lcom/baidu/mapapi/map/HeatMap;
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->a:Ljava/util/Collection;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BDMapSDKException: No input data: you must use either .data or .weightedData before building"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_1
    :goto_0
    new-instance v0, Lcom/baidu/mapapi/map/HeatMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/mapapi/map/HeatMap;-><init>(Lcom/baidu/mapapi/map/HeatMap$Builder;Lcom/baidu/mapapi/map/o;)V

    return-object v0
.end method

.method public data(Ljava/util/Collection;)Lcom/baidu/mapapi/map/HeatMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)",
            "Lcom/baidu/mapapi/map/HeatMap$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 306
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 309
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    invoke-static {p1}, Lcom/baidu/mapapi/map/HeatMap;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/HeatMap$Builder;->weightedData(Ljava/util/Collection;)Lcom/baidu/mapapi/map/HeatMap$Builder;

    move-result-object p1

    return-object p1

    .line 310
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: input points can not contain null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 307
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: No input points."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public datas(Ljava/util/List;)Lcom/baidu/mapapi/map/HeatMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;>;)",
            "Lcom/baidu/mapapi/map/HeatMap$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 321
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 324
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/HeatMap$Builder;->weightedDatas(Ljava/util/List;)Lcom/baidu/mapapi/map/HeatMap$Builder;

    move-result-object p1

    return-object p1

    .line 325
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: input points can not contain null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 322
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: No input datas."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public frameAnimation(Lcom/baidu/mapapi/map/HeatMapAnimation;)Lcom/baidu/mapapi/map/HeatMap$Builder;
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->k:Lcom/baidu/mapapi/map/HeatMapAnimation;

    return-object p0
.end method

.method public gradient(Lcom/baidu/mapapi/map/Gradient;)Lcom/baidu/mapapi/map/HeatMap$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 433
    iput-object p1, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->d:Lcom/baidu/mapapi/map/Gradient;

    return-object p0

    .line 431
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: gradient can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initAnimation(Lcom/baidu/mapapi/map/HeatMapAnimation;)Lcom/baidu/mapapi/map/HeatMap$Builder;
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->j:Lcom/baidu/mapapi/map/HeatMapAnimation;

    return-object p0
.end method

.method public maxHigh(I)Lcom/baidu/mapapi/map/HeatMap$Builder;
    .locals 2

    .line 415
    iget v0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->f:I

    if-ltz v0, :cond_0

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_0

    .line 418
    iput p1, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->f:I

    return-object p0

    .line 416
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: max_high not within bounds."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public maxIntensity(F)Lcom/baidu/mapapi/map/HeatMap$Builder;
    .locals 0

    .line 262
    iput p1, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->g:F

    const/4 p1, 0x1

    .line 263
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->i:Z

    return-object p0
.end method

.method public minIntensity(F)Lcom/baidu/mapapi/map/HeatMap$Builder;
    .locals 0

    .line 273
    iput p1, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->h:F

    return-object p0
.end method

.method public opacity(D)Lcom/baidu/mapapi/map/HeatMap$Builder;
    .locals 3

    .line 445
    iput-wide p1, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->e:D

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-gtz v2, :cond_0

    return-object p0

    .line 448
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BDMapSDKException: Opacity must be in range [0, 1]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public radius(I)Lcom/baidu/mapapi/map/HeatMap$Builder;
    .locals 2

    .line 407
    iget v0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->c:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/16 v1, 0x32

    if-gt v0, v1, :cond_0

    .line 410
    iput p1, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->c:I

    return-object p0

    .line 408
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: Radius not within bounds."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public weightedData(Ljava/util/Collection;)Lcom/baidu/mapapi/map/HeatMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/baidu/mapapi/map/WeightedLatLng;",
            ">;)",
            "Lcom/baidu/mapapi/map/HeatMap$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 339
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 342
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    iput-object p1, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->a:Ljava/util/Collection;

    return-object p0

    .line 343
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: input points can not contain null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 340
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: No input points."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public weightedDatas(Ljava/util/List;)Lcom/baidu/mapapi/map/HeatMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;>;)",
            "Lcom/baidu/mapapi/map/HeatMap$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 368
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 371
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 378
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 379
    invoke-static {v1}, Lcom/baidu/mapapi/map/HeatMap;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 391
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iput-object v0, p0, Lcom/baidu/mapapi/map/HeatMap$Builder;->b:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    return-object p0

    .line 372
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: input points can not contain null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 369
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: No input points."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
