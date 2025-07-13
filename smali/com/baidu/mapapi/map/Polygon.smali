.class public final Lcom/baidu/mapapi/map/Polygon;
.super Lcom/baidu/mapapi/map/Overlay;
.source "Polygon.java"


# instance fields
.field a:Lcom/baidu/mapapi/map/Stroke;

.field b:I

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/HoleOptions;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/baidu/mapapi/map/HoleOptions;

.field f:Z

.field g:Ljava/lang/String;

.field h:Lcom/baidu/mapapi/map/EncodePointType;

.field i:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Overlay;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/baidu/mapapi/map/Polygon;->i:I

    .line 31
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/i;->j:Lcom/baidu/mapsdkplatform/comapi/map/i;

    iput-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->type:Lcom/baidu/mapsdkplatform/comapi/map/i;

    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 2

    .line 232
    iget v0, p0, Lcom/baidu/mapapi/map/Polygon;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "CircleDashTexture.png"

    goto :goto_0

    :cond_0
    const-string v0, "lineDashTexture.png"

    .line 236
    :goto_0
    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 238
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

    .line 243
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 244
    invoke-static {p1, v0}, Lcom/baidu/mapapi/map/Overlay;->b(Ljava/util/List;Landroid/os/Bundle;)Z

    move-result p1

    const-string v1, "has_holes"

    .line 245
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    const-string p1, "holes"

    .line 247
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    .line 183
    invoke-super {p0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 186
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polygon;->f:Z

    const/4 v1, 0x1

    const-string v2, "has_dotted_stroke"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/map/Polygon;->b(Landroid/os/Bundle;)V

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->h:Lcom/baidu/mapapi/map/EncodePointType;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->g:Ljava/lang/String;

    const-string v2, "encodedPoints"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->h:Lcom/baidu/mapapi/map/EncodePointType;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/EncodePointType;->ordinal()I

    move-result v0

    const-string v2, "encodePointType"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 198
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v4

    const-string v2, "location_x"

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 200
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    const-string v2, "location_y"

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 201
    iget-object v2, p0, Lcom/baidu/mapapi/map/Polygon;->c:Ljava/util/List;

    invoke-static {v2, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Ljava/util/List;Landroid/os/Bundle;)V

    .line 202
    iget-boolean v2, p0, Lcom/baidu/mapapi/map/Polygon;->f:Z

    if-eqz v2, :cond_2

    .line 203
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v4

    const-string v2, "dotted_stroke_location_x"

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 204
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    const-string v0, "dotted_stroke_location_y"

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 209
    :cond_2
    :goto_1
    iget v0, p0, Lcom/baidu/mapapi/map/Polygon;->b:I

    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(ILandroid/os/Bundle;)V

    .line 210
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->a:Lcom/baidu/mapapi/map/Stroke;

    const-string v2, "has_stroke"

    if-nez v0, :cond_3

    .line 211
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 213
    :cond_3
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 215
    iget-object v1, p0, Lcom/baidu/mapapi/map/Polygon;->a:Lcom/baidu/mapapi/map/Stroke;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/Stroke;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "stroke"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 217
    :goto_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->d:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 218
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->d:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/baidu/mapapi/map/Polygon;->c(Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_3

    .line 219
    :cond_4
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->e:Lcom/baidu/mapapi/map/HoleOptions;

    if-eqz v0, :cond_5

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    iget-object v1, p0, Lcom/baidu/mapapi/map/Polygon;->e:Lcom/baidu/mapapi/map/HoleOptions;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-direct {p0, v0, p1}, Lcom/baidu/mapapi/map/Polygon;->c(Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_5
    const-string v0, "has_holes"

    .line 224
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_3
    return-object p1
.end method

.method public getEncodedPoint()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getFillColor()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/baidu/mapapi/map/Polygon;->b:I

    return v0
.end method

.method public getHoleOption()Lcom/baidu/mapapi/map/HoleOptions;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->e:Lcom/baidu/mapapi/map/HoleOptions;

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

    .line 178
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->d:Ljava/util/List;

    return-object v0
.end method

.method public getPointType()Lcom/baidu/mapapi/map/EncodePointType;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->h:Lcom/baidu/mapapi/map/EncodePointType;

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

    .line 49
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->c:Ljava/util/List;

    return-object v0
.end method

.method public getStroke()Lcom/baidu/mapapi/map/Stroke;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polygon;->a:Lcom/baidu/mapapi/map/Stroke;

    return-object v0
.end method

.method public setEncodeInfo(Ljava/lang/String;Lcom/baidu/mapapi/map/EncodePointType;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polygon;->g:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/baidu/mapapi/map/Polygon;->h:Lcom/baidu/mapapi/map/EncodePointType;

    .line 88
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polygon;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setFillColor(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/baidu/mapapi/map/Polygon;->b:I

    .line 69
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polygon;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setHoleOption(Lcom/baidu/mapapi/map/HoleOptions;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polygon;->e:Lcom/baidu/mapapi/map/HoleOptions;

    const/4 p1, 0x0

    .line 148
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polygon;->d:Ljava/util/List;

    .line 149
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polygon;->listener:Lcom/baidu/mapapi/map/Overlay$a;

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

    .line 167
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polygon;->d:Ljava/util/List;

    const/4 p1, 0x0

    .line 168
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polygon;->e:Lcom/baidu/mapapi/map/HoleOptions;

    .line 169
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polygon;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 109
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    const/4 v0, 0x0

    .line 113
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 117
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    .line 118
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 119
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/model/LatLng;

    .line 120
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/model/LatLng;

    if-eq v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 122
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points list can not has same points"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    move v0, v1

    goto :goto_0

    .line 127
    :cond_2
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polygon;->c:Ljava/util/List;

    .line 128
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polygon;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void

    .line 114
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points list can not contains null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points count can not less than three"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points list can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public setStroke(Lcom/baidu/mapapi/map/Stroke;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polygon;->a:Lcom/baidu/mapapi/map/Stroke;

    .line 138
    iget-object p1, p0, Lcom/baidu/mapapi/map/Polygon;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method
