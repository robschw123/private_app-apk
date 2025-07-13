.class public final Lcom/baidu/mapapi/map/MultiPointOption;
.super Lcom/baidu/mapapi/map/OverlayOptions;
.source "MultiPointOption.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/MultiPointItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/baidu/mapapi/map/OverlayOptions;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 11
    iput v0, p0, Lcom/baidu/mapapi/map/MultiPointOption;->e:F

    .line 12
    iput v0, p0, Lcom/baidu/mapapi/map/MultiPointOption;->f:F

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/MultiPointOption;->g:Z

    return-void
.end method


# virtual methods
.method a()Lcom/baidu/mapapi/map/Overlay;
    .locals 2

    .line 163
    new-instance v0, Lcom/baidu/mapapi/map/MultiPoint;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MultiPoint;-><init>()V

    .line 164
    iget-object v1, p0, Lcom/baidu/mapapi/map/MultiPointOption;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iput-object v1, v0, Lcom/baidu/mapapi/map/MultiPoint;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 165
    iget-object v1, p0, Lcom/baidu/mapapi/map/MultiPointOption;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 168
    iput-object v1, v0, Lcom/baidu/mapapi/map/MultiPoint;->a:Ljava/util/List;

    .line 169
    iget v1, p0, Lcom/baidu/mapapi/map/MultiPointOption;->d:I

    iput v1, v0, Lcom/baidu/mapapi/map/MultiPoint;->d:I

    .line 170
    iget v1, p0, Lcom/baidu/mapapi/map/MultiPointOption;->c:I

    iput v1, v0, Lcom/baidu/mapapi/map/MultiPoint;->c:I

    .line 171
    iget v1, p0, Lcom/baidu/mapapi/map/MultiPointOption;->e:F

    iput v1, v0, Lcom/baidu/mapapi/map/MultiPoint;->e:F

    .line 172
    iget v1, p0, Lcom/baidu/mapapi/map/MultiPointOption;->f:F

    iput v1, v0, Lcom/baidu/mapapi/map/MultiPoint;->f:F

    .line 173
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/MultiPointOption;->g:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/MultiPoint;->H:Z

    return-object v0

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BDMapSDKException: when you add mMultiPointItems, you must set the mMultiPointItems"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAnchorX()F
    .locals 1

    .line 111
    iget v0, p0, Lcom/baidu/mapapi/map/MultiPointOption;->e:F

    return v0
.end method

.method public getAnchorY()F
    .locals 1

    .line 120
    iget v0, p0, Lcom/baidu/mapapi/map/MultiPointOption;->f:F

    return v0
.end method

.method public getIcon()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/baidu/mapapi/map/MultiPointOption;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object v0
.end method

.method public getMultiPointItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/MultiPointItem;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/baidu/mapapi/map/MultiPointOption;->a:Ljava/util/List;

    return-object v0
.end method

.method public getPointSizeHeight()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/baidu/mapapi/map/MultiPointOption;->d:I

    return v0
.end method

.method public getPointSizeWidth()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/baidu/mapapi/map/MultiPointOption;->c:I

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/MultiPointOption;->g:Z

    return v0
.end method

.method public setAnchor(FF)Lcom/baidu/mapapi/map/MultiPointOption;
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

    .line 82
    :cond_1
    iput p1, p0, Lcom/baidu/mapapi/map/MultiPointOption;->e:F

    .line 83
    iput p2, p0, Lcom/baidu/mapapi/map/MultiPointOption;->f:F

    :cond_2
    :goto_0
    return-object p0
.end method

.method public setIcon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MultiPointOption;
    .locals 1

    if-eqz p1, :cond_2

    .line 42
    iget v0, p0, Lcom/baidu/mapapi/map/MultiPointOption;->c:I

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/map/MultiPointOption;->c:I

    .line 45
    :cond_0
    iget v0, p0, Lcom/baidu/mapapi/map/MultiPointOption;->d:I

    if-nez v0, :cond_1

    .line 46
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/map/MultiPointOption;->d:I

    .line 48
    :cond_1
    iput-object p1, p0, Lcom/baidu/mapapi/map/MultiPointOption;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object p0

    .line 40
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: MultiPoint icon can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMultiPointItems(Ljava/util/List;)Lcom/baidu/mapapi/map/MultiPointOption;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/MultiPointItem;",
            ">;)",
            "Lcom/baidu/mapapi/map/MultiPointOption;"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 25
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iput-object p1, p0, Lcom/baidu/mapapi/map/MultiPointOption;->a:Ljava/util/List;

    return-object p0

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: multiPointItems list can not contains null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: multiPointItems list can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPointSize(II)Lcom/baidu/mapapi/map/MultiPointOption;
    .locals 1

    .line 60
    iget v0, p0, Lcom/baidu/mapapi/map/MultiPointOption;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/baidu/mapapi/map/MultiPointOption;->d:I

    if-lez v0, :cond_0

    .line 63
    iput p1, p0, Lcom/baidu/mapapi/map/MultiPointOption;->c:I

    .line 64
    iput p2, p0, Lcom/baidu/mapapi/map/MultiPointOption;->d:I

    return-object p0

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BDMapSDKException: MultiPoint setPointSize can not be 0 Or can\'t less than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visible(Z)Lcom/baidu/mapapi/map/MultiPointOption;
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/MultiPointOption;->g:Z

    return-object p0
.end method
