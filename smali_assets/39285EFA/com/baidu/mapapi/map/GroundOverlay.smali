.class public final Lcom/baidu/mapapi/map/GroundOverlay;
.super Lcom/baidu/mapapi/map/Overlay;
.source "GroundOverlay.java"


# static fields
.field private static final j:Ljava/lang/String; = "GroundOverlay"


# instance fields
.field a:I

.field b:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field c:Lcom/baidu/mapapi/model/LatLng;

.field d:D

.field e:D

.field f:F

.field g:F

.field h:Lcom/baidu/mapapi/model/LatLngBounds;

.field i:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Overlay;-><init>()V

    .line 30
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/i;->d:Lcom/baidu/mapsdkplatform/comapi/map/i;

    iput-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->type:Lcom/baidu/mapsdkplatform/comapi/map/i;

    return-void
.end method


# virtual methods
.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    .line 220
    invoke-super {p0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 221
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "image_info"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 222
    iget v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->h:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v0, v0, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v1

    .line 225
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v3

    .line 226
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->h:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v0, v0, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v5

    .line 228
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v7

    sub-double/2addr v5, v1

    .line 231
    iput-wide v5, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    sub-double/2addr v7, v3

    .line 232
    iput-wide v7, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    .line 233
    new-instance v0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v7, v9

    add-double/2addr v3, v7

    div-double/2addr v5, v9

    add-double/2addr v1, v5

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(DD)V

    .line 235
    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->c:Lcom/baidu/mapapi/model/LatLng;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 236
    iput v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->f:F

    .line 237
    iput v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->g:F

    .line 239
    :cond_0
    iget-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-lez v4, :cond_2

    iget-wide v4, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    cmpg-double v6, v4, v2

    if-lez v6, :cond_2

    const-string/jumbo v2, "x_distance"

    .line 243
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 244
    iget-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    .line 245
    iget-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    iget-object v2, p0, Lcom/baidu/mapapi/map/GroundOverlay;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iget-object v2, v2, Lcom/baidu/mapapi/map/BitmapDescriptor;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    iget-object v2, p0, Lcom/baidu/mapapi/map/GroundOverlay;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iget-object v2, v2, Lcom/baidu/mapapi/map/BitmapDescriptor;->a:Landroid/graphics/Bitmap;

    .line 246
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-int v0, v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    .line 248
    :cond_1
    iget-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    const-string/jumbo v2, "y_distance"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 249
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->c:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v1

    const-string v3, "location_x"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 251
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v0

    const-string v2, "location_y"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 252
    iget v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->f:F

    const-string v1, "anchor_x"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 253
    iget v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->g:F

    const-string v1, "anchor_y"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 254
    iget v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->i:F

    const-string v1, "transparency"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object p1

    .line 240
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: when you add ground overlay, the width and height must greater than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAnchorX()F
    .locals 1

    .line 159
    iget v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->f:F

    return v0
.end method

.method public getAnchorY()F
    .locals 1

    .line 168
    iget v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->g:F

    return v0
.end method

.method public getBounds()Lcom/baidu/mapapi/model/LatLngBounds;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->h:Lcom/baidu/mapapi/model/LatLngBounds;

    return-object v0
.end method

.method public getHeight()D
    .locals 2

    .line 130
    iget-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    return-wide v0
.end method

.method public getImage()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object v0
.end method

.method public getPosition()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->c:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getTransparency()F
    .locals 1

    .line 215
    iget v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->i:F

    return v0
.end method

.method public getWidth()D
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    return-wide v0
.end method

.method public setAnchor(FF)V
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

    .line 148
    :cond_1
    iput p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->f:F

    .line 149
    iput p2, p0, Lcom/baidu/mapapi/map/GroundOverlay;->g:F

    .line 150
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setDimensions(I)V
    .locals 2

    int-to-double v0, p1

    .line 96
    iput-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    .line 97
    iput-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    .line 98
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setDimensions(II)V
    .locals 2

    int-to-double v0, p1

    .line 110
    iput-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    int-to-double p1, p2

    .line 111
    iput-wide p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    .line 112
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setImage(Lcom/baidu/mapapi/map/BitmapDescriptor;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 52
    iput-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 53
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: image can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPosition(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 75
    iput v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->a:I

    .line 76
    iput-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->c:Lcom/baidu/mapapi/model/LatLng;

    .line 77
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: position can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPositionFromBounds(Lcom/baidu/mapapi/model/LatLngBounds;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 181
    iput v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->a:I

    .line 182
    iput-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->h:Lcom/baidu/mapapi/model/LatLngBounds;

    .line 183
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void

    .line 179
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: bounds can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTransparency(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    iput p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->i:F

    .line 206
    iget-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_1
    :goto_0
    return-void
.end method
