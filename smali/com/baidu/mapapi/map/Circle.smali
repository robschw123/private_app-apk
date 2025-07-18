.class public final Lcom/baidu/mapapi/map/Circle;
.super Lcom/baidu/mapapi/map/Overlay;
.source "Circle.java"


# instance fields
.field a:Lcom/baidu/mapapi/model/LatLng;

.field b:I

.field c:I

.field d:Lcom/baidu/mapapi/map/Stroke;

.field e:Z

.field f:I

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/HoleOptions;",
            ">;"
        }
    .end annotation
.end field

.field h:Lcom/baidu/mapapi/map/HoleOptions;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Overlay;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/baidu/mapapi/map/Circle;->f:I

    .line 28
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/i;->h:Lcom/baidu/mapsdkplatform/comapi/map/i;

    iput-object v0, p0, Lcom/baidu/mapapi/map/Circle;->type:Lcom/baidu/mapsdkplatform/comapi/map/i;

    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 2

    .line 230
    iget v0, p0, Lcom/baidu/mapapi/map/Circle;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "CircleDashTexture.png"

    goto :goto_0

    :cond_0
    const-string v0, "lineDashTexture.png"

    .line 234
    :goto_0
    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "image_info"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method private c(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/HoleOptions;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 241
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 242
    invoke-static {p1, v0}, Lcom/baidu/mapapi/map/Overlay;->b(Ljava/util/List;Landroid/os/Bundle;)Z

    move-result p1

    const-string v1, "has_holes"

    .line 243
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    const-string p1, "holes"

    .line 245
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .line 190
    invoke-super {p0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 191
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->a:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v1

    const-string v3, "location_x"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 193
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v1

    const-string v3, "location_y"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 196
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/Circle;->e:Z

    const/4 v2, 0x1

    const-string v3, "has_dotted_stroke"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v5

    const-string v1, "dotted_stroke_location_x"

    invoke-virtual {p1, v1, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 198
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v0

    const-string v5, "dotted_stroke_location_y"

    invoke-virtual {p1, v5, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 199
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/Circle;->b(Landroid/os/Bundle;)V

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->a:Lcom/baidu/mapapi/model/LatLng;

    iget v1, p0, Lcom/baidu/mapapi/map/Circle;->c:I

    .line 206
    invoke-static {v0, v1}, Lcom/baidu/mapapi/model/CoordUtil;->getMCDistanceByOneLatLngAndRadius(Lcom/baidu/mapapi/model/LatLng;I)I

    move-result v0

    const-string v1, "radius"

    .line 205
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    iget v0, p0, Lcom/baidu/mapapi/map/Circle;->b:I

    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(ILandroid/os/Bundle;)V

    .line 208
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->d:Lcom/baidu/mapapi/map/Stroke;

    const-string v1, "has_stroke"

    if-nez v0, :cond_1

    .line 209
    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 211
    :cond_1
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 212
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 213
    iget-object v1, p0, Lcom/baidu/mapapi/map/Circle;->d:Lcom/baidu/mapapi/map/Stroke;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/Stroke;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "stroke"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 216
    :goto_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->g:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->g:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/baidu/mapapi/map/Circle;->c(Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_2

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->h:Lcom/baidu/mapapi/map/HoleOptions;

    if-eqz v0, :cond_3

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    iget-object v1, p0, Lcom/baidu/mapapi/map/Circle;->h:Lcom/baidu/mapapi/map/HoleOptions;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-direct {p0, v0, p1}, Lcom/baidu/mapapi/map/Circle;->c(Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_3
    const-string v0, "has_holes"

    .line 223
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_2
    return-object p1
.end method

.method public getCenter()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->a:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getDottedStrokeType()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/baidu/mapapi/map/Circle;->f:I

    return v0
.end method

.method public getFillColor()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/baidu/mapapi/map/Circle;->b:I

    return v0
.end method

.method public getHoleOption()Lcom/baidu/mapapi/map/HoleOptions;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->h:Lcom/baidu/mapapi/map/HoleOptions;

    return-object v0
.end method

.method public getHoleOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/HoleOptions;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->g:Ljava/util/List;

    return-object v0
.end method

.method public getRadius()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/baidu/mapapi/map/Circle;->c:I

    return v0
.end method

.method public getStroke()Lcom/baidu/mapapi/map/Stroke;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/baidu/mapapi/map/Circle;->d:Lcom/baidu/mapapi/map/Stroke;

    return-object v0
.end method

.method public isDottedStroke()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Circle;->e:Z

    return v0
.end method

.method public setCenter(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 76
    iput-object p1, p0, Lcom/baidu/mapapi/map/Circle;->a:Lcom/baidu/mapapi/model/LatLng;

    .line 77
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: circle center can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDottedStroke(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Circle;->e:Z

    .line 117
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setDottedStrokeType(Lcom/baidu/mapapi/map/CircleDottedStrokeType;)V
    .locals 0

    .line 135
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/CircleDottedStrokeType;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/map/Circle;->f:I

    .line 136
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setFillColor(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/baidu/mapapi/map/Circle;->b:I

    .line 87
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setHoleOption(Lcom/baidu/mapapi/map/HoleOptions;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/baidu/mapapi/map/Circle;->h:Lcom/baidu/mapapi/map/HoleOptions;

    const/4 p1, 0x0

    .line 155
    iput-object p1, p0, Lcom/baidu/mapapi/map/Circle;->g:Ljava/util/List;

    .line 156
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setHoleOptions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/HoleOptions;",
            ">;)V"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcom/baidu/mapapi/map/Circle;->g:Ljava/util/List;

    const/4 p1, 0x0

    .line 175
    iput-object p1, p0, Lcom/baidu/mapapi/map/Circle;->h:Lcom/baidu/mapapi/map/HoleOptions;

    .line 176
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/baidu/mapapi/map/Circle;->c:I

    .line 97
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setStroke(Lcom/baidu/mapapi/map/Stroke;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/baidu/mapapi/map/Circle;->d:Lcom/baidu/mapapi/map/Stroke;

    .line 107
    iget-object p1, p0, Lcom/baidu/mapapi/map/Circle;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method
