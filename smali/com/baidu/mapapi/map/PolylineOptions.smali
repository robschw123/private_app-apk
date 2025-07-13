.class public final Lcom/baidu/mapapi/map/PolylineOptions;
.super Lcom/baidu/mapapi/map/OverlayOptions;
.source "PolylineOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;,
        Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;,
        Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;
    }
.end annotation


# instance fields
.field a:I

.field b:Z

.field c:Landroid/os/Bundle;

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;

.field private q:Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 15
    invoke-direct {p0}, Lcom/baidu/mapapi/map/OverlayOptions;-><init>()V

    const/high16 v0, -0x1000000

    .line 62
    iput v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->d:I

    const/4 v0, 0x5

    .line 66
    iput v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->h:I

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->k:Z

    const/4 v1, 0x0

    .line 70
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->l:Z

    .line 72
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->b:Z

    .line 73
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->m:Z

    .line 74
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->n:Z

    .line 76
    iput v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->o:I

    .line 77
    sget-object v2, Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;->LineJoinRound:Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;

    iput-object v2, p0, Lcom/baidu/mapapi/map/PolylineOptions;->p:Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;

    .line 78
    sget-object v2, Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;->LineCapButt:Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;

    iput-object v2, p0, Lcom/baidu/mapapi/map/PolylineOptions;->q:Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;

    .line 79
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->r:Z

    .line 80
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->s:Z

    .line 81
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->t:Z

    .line 82
    sget-object v0, Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;->NONE:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    iput-object v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->u:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    return-void
.end method

.method private a(Lcom/baidu/mapapi/map/Polyline;)Lcom/baidu/mapapi/map/Polyline;
    .locals 4

    .line 422
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->b:Z

    iput-boolean v0, p1, Lcom/baidu/mapapi/map/Polyline;->H:Z

    .line 423
    iget-object v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->u:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    iput-object v0, p1, Lcom/baidu/mapapi/map/Polyline;->r:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    .line 424
    iget-object v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->e:Ljava/util/List;

    iput-object v0, p1, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    .line 425
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->t:Z

    iput-boolean v0, p1, Lcom/baidu/mapapi/map/Polyline;->o:Z

    .line 427
    iget-object v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 432
    iget-object v2, p0, Lcom/baidu/mapapi/map/PolylineOptions;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 433
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 436
    :cond_0
    iput-object v0, p1, Lcom/baidu/mapapi/map/Polyline;->d:[I

    return-object p1

    .line 428
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: colors array can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method a()Lcom/baidu/mapapi/map/Overlay;
    .locals 6

    .line 353
    new-instance v0, Lcom/baidu/mapapi/map/Polyline;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/Polyline;-><init>()V

    .line 354
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->e:Ljava/util/List;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_7

    .line 357
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->t:Z

    if-eqz v1, :cond_0

    .line 358
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/map/i;->n:Lcom/baidu/mapsdkplatform/comapi/map/i;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Polyline;->type:Lcom/baidu/mapsdkplatform/comapi/map/i;

    .line 359
    invoke-direct {p0, v0}, Lcom/baidu/mapapi/map/PolylineOptions;->a(Lcom/baidu/mapapi/map/Polyline;)Lcom/baidu/mapapi/map/Polyline;

    move-result-object v0

    return-object v0

    .line 362
    :cond_0
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->b:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Polyline;->H:Z

    .line 363
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->m:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Polyline;->f:Z

    .line 364
    iget v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->a:I

    iput v1, v0, Lcom/baidu/mapapi/map/Polyline;->G:I

    .line 365
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->c:Landroid/os/Bundle;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Polyline;->I:Landroid/os/Bundle;

    .line 366
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->e:Ljava/util/List;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    .line 367
    iget v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->d:I

    iput v1, v0, Lcom/baidu/mapapi/map/Polyline;->a:I

    .line 368
    iget v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->h:I

    iput v1, v0, Lcom/baidu/mapapi/map/Polyline;->e:I

    .line 369
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->i:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Polyline;->j:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 370
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->j:Ljava/util/List;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Polyline;->k:Ljava/util/List;

    .line 371
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->k:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Polyline;->g:Z

    .line 372
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->l:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Polyline;->h:Z

    .line 373
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->n:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Polyline;->i:Z

    .line 374
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->r:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Polyline;->m:Z

    .line 375
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->s:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Polyline;->n:Z

    .line 376
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->t:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/Polyline;->o:Z

    .line 377
    iget v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->o:I

    iput v1, v0, Lcom/baidu/mapapi/map/Polyline;->l:I

    .line 378
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->p:Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Polyline;->q:Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;

    .line 379
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->q:Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Polyline;->p:Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;

    .line 380
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->u:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    iput-object v1, v0, Lcom/baidu/mapapi/map/Polyline;->r:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    .line 381
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->f:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/mapapi/map/PolylineOptions;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 383
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/baidu/mapapi/map/PolylineOptions;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/baidu/mapapi/map/PolylineOptions;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 384
    iget-object v2, p0, Lcom/baidu/mapapi/map/PolylineOptions;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 387
    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->f:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 388
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 390
    iget-object v3, p0, Lcom/baidu/mapapi/map/PolylineOptions;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 391
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 394
    :cond_2
    iput-object v1, v0, Lcom/baidu/mapapi/map/Polyline;->c:[I

    .line 396
    :cond_3
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->g:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p0, Lcom/baidu/mapapi/map/PolylineOptions;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_4

    .line 398
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/baidu/mapapi/map/PolylineOptions;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/baidu/mapapi/map/PolylineOptions;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 399
    iget-object v3, p0, Lcom/baidu/mapapi/map/PolylineOptions;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v4, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 402
    :cond_4
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->g:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 403
    iget-object v1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 405
    iget-object v3, p0, Lcom/baidu/mapapi/map/PolylineOptions;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 406
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 409
    :cond_5
    iput-object v1, v0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    :cond_6
    return-object v0

    .line 355
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BDMapSDKException: when you add polyline, you must at least supply 2 points"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public clickable(Z)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 273
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->n:Z

    return-object p0
.end method

.method public color(I)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 125
    iput p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->d:I

    return-object p0
.end method

.method public colorsValues(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/baidu/mapapi/map/PolylineOptions;"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 221
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iput-object p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->g:Ljava/util/List;

    return-object p0

    .line 222
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: colors list can not contains null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 219
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: colors list can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public customTexture(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->i:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object p0
.end method

.method public customTextureList(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;)",
            "Lcom/baidu/mapapi/map/PolylineOptions;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 158
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "baidumapsdk"

    if-nez v0, :cond_0

    const-string v0, "custom texture list is empty,the texture will not work"

    .line 159
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-nez v2, :cond_1

    const-string v2, "the custom texture item is null,it will be discard"

    .line 163
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :cond_2
    iput-object p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->j:Ljava/util/List;

    return-object p0

    .line 156
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: customTexture list can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public dottedLine(Z)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 463
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->m:Z

    return-object p0
.end method

.method public dottedLineType(Lcom/baidu/mapapi/map/PolylineDottedLineType;)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 284
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/PolylineDottedLineType;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->o:I

    return-object p0
.end method

.method public extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 516
    iput-object p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->c:Landroid/os/Bundle;

    return-object p0
.end method

.method public focus(Z)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 452
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->k:Z

    return-object p0
.end method

.method public getColor()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->d:I

    return v0
.end method

.method public getCustomTexture()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->i:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object v0
.end method

.method public getCustomTextureList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->j:Ljava/util/List;

    return-object v0
.end method

.method public getExtraInfo()Landroid/os/Bundle;
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->c:Landroid/os/Bundle;

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

    .line 98
    iget-object v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->e:Ljava/util/List;

    return-object v0
.end method

.method public getTextureIndexs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->f:Ljava/util/List;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->h:I

    return v0
.end method

.method public getZIndex()I
    .locals 1

    .line 506
    iget v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->a:I

    return v0
.end method

.method public isDottedLine()Z
    .locals 1

    .line 473
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->m:Z

    return v0
.end method

.method public isFocus()Z
    .locals 1

    .line 486
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->k:Z

    return v0
.end method

.method public isGeodesic(Z)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 337
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->s:Z

    return-object p0
.end method

.method public isGradient(Z)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 347
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->t:Z

    return-object p0
.end method

.method public isThined(Z)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 317
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->r:Z

    return-object p0
.end method

.method public isVisible()Z
    .locals 1

    .line 482
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/PolylineOptions;->b:Z

    return v0
.end method

.method public keepScale(Z)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->l:Z

    return-object p0
.end method

.method public lineCapType(Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->q:Lcom/baidu/mapapi/map/PolylineOptions$LineCapType;

    return-object p0
.end method

.method public lineDirectionCross180(Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->u:Lcom/baidu/mapapi/map/PolylineOptions$LineDirectionCross180;

    return-object p0
.end method

.method public lineJoinType(Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->p:Lcom/baidu/mapapi/map/PolylineOptions$LineJoinType;

    return-object p0
.end method

.method public points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)",
            "Lcom/baidu/mapapi/map/PolylineOptions;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 198
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 201
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iput-object p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->e:Ljava/util/List;

    return-object p0

    .line 202
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points list can not contains null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 199
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points count can not less than 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 196
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points list can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public textureIndex(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/baidu/mapapi/map/PolylineOptions;"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 244
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iput-object p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->f:Ljava/util/List;

    return-object p0

    .line 245
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: index list can not contains null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 242
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: indexs list can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visible(Z)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 447
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->b:Z

    return-object p0
.end method

.method public width(I)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    if-lez p1, :cond_0

    .line 261
    iput p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->h:I

    :cond_0
    return-object p0
.end method

.method public zIndex(I)Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 0

    .line 496
    iput p1, p0, Lcom/baidu/mapapi/map/PolylineOptions;->a:I

    return-object p0
.end method
