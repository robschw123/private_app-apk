.class public abstract Lcom/baidu/mapapi/map/Overlay;
.super Ljava/lang/Object;
.source "Overlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/Overlay$a;
    }
.end annotation


# instance fields
.field F:Ljava/lang/String;

.field G:I

.field H:Z

.field I:Landroid/os/Bundle;

.field protected listener:Lcom/baidu/mapapi/map/Overlay$a;

.field public type:Lcom/baidu/mapsdkplatform/comapi/map/i;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->F:Ljava/lang/String;

    return-void
.end method

.method static a(ILandroid/os/Bundle;)V
    .locals 6

    .line 149
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    ushr-int/lit8 v1, p0, 0x18

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 p0, p0, 0xff

    int-to-float v2, v2

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v2, v4

    const-string v5, "red"

    .line 154
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    int-to-float v2, v3

    div-float/2addr v2, v4

    const-string v3, "green"

    .line 155
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    int-to-float p0, p0

    div-float/2addr p0, v4

    const-string v2, "blue"

    .line 156
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    int-to-float p0, v1

    div-float/2addr p0, v4

    const-string v1, "alpha"

    .line 157
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p0, "color"

    .line 158
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static a(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 162
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 163
    new-array v1, v0, [D

    .line 164
    new-array v2, v0, [D

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 166
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v4}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v4

    .line 167
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v5

    aput-wide v5, v1, v3

    .line 168
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "x_array"

    .line 170
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string/jumbo p0, "y_array"

    .line 171
    invoke-virtual {p1, p0, v2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    return-void
.end method

.method static b(ILandroid/os/Bundle;)V
    .locals 6

    .line 264
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    ushr-int/lit8 v1, p0, 0x18

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 p0, p0, 0xff

    int-to-float v2, v2

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v2, v4

    const-string v5, "red"

    .line 269
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    int-to-float v2, v3

    div-float/2addr v2, v4

    const-string v3, "green"

    .line 270
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    int-to-float p0, p0

    div-float/2addr p0, v4

    const-string v2, "blue"

    .line 271
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    int-to-float p0, v1

    div-float/2addr p0, v4

    const-string v1, "alpha"

    .line 272
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p0, "m_topFaceColor"

    .line 273
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static b(Ljava/util/List;Landroid/os/Bundle;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/HoleOptions;",
            ">;",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 175
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 179
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 180
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 182
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/map/HoleOptions;

    .line 183
    instance-of v4, v3, Lcom/baidu/mapapi/map/CircleHoleOptions;

    if-eqz v4, :cond_2

    .line 184
    check-cast v3, Lcom/baidu/mapapi/map/CircleHoleOptions;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    :cond_2
    instance-of v4, v3, Lcom/baidu/mapapi/map/PolygonHoleOptions;

    if-eqz v4, :cond_1

    .line 186
    check-cast v3, Lcom/baidu/mapapi/map/PolygonHoleOptions;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    const-string v3, "has_circle_hole"

    if-eqz p0, :cond_4

    .line 191
    invoke-static {v1, p1}, Lcom/baidu/mapapi/map/Overlay;->c(Ljava/util/List;Landroid/os/Bundle;)Z

    move-result p0

    .line 192
    invoke-virtual {p1, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 194
    :cond_4
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p0, 0x0

    .line 198
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const-string v3, "has_polygon_hole"

    if-eqz v1, :cond_5

    .line 199
    invoke-static {v2, p1}, Lcom/baidu/mapapi/map/Overlay;->d(Ljava/util/List;Landroid/os/Bundle;)Z

    move-result v1

    .line 200
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 202
    :cond_5
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x0

    :goto_2
    if-nez p0, :cond_6

    if-eqz v1, :cond_7

    :cond_6
    const/4 v0, 0x1

    :cond_7
    :goto_3
    return v0
.end method

.method static c(ILandroid/os/Bundle;)V
    .locals 6

    .line 277
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    ushr-int/lit8 v1, p0, 0x18

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 p0, p0, 0xff

    int-to-float v2, v2

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v2, v4

    const-string v5, "red"

    .line 282
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    int-to-float v2, v3

    div-float/2addr v2, v4

    const-string v3, "green"

    .line 283
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    int-to-float p0, p0

    div-float/2addr p0, v4

    const-string v2, "blue"

    .line 284
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    int-to-float p0, v1

    div-float/2addr p0, v4

    const-string v1, "alpha"

    .line 285
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p0, "m_sideFaceColor"

    .line 286
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static c(Ljava/util/List;Landroid/os/Bundle;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/CircleHoleOptions;",
            ">;",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    .line 209
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 210
    new-array v1, v0, [D

    .line 211
    new-array v2, v0, [D

    .line 212
    new-array v3, v0, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    .line 214
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/mapapi/map/CircleHoleOptions;

    invoke-virtual {v6}, Lcom/baidu/mapapi/map/CircleHoleOptions;->getHoleCenter()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v6

    .line 215
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/mapapi/map/CircleHoleOptions;

    invoke-virtual {v7}, Lcom/baidu/mapapi/map/CircleHoleOptions;->getHoleRadius()I

    move-result v7

    if-eqz v6, :cond_1

    if-gtz v7, :cond_0

    goto :goto_1

    .line 219
    :cond_0
    invoke-static {v6}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v6

    .line 220
    invoke-virtual {v6}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v8

    aput-wide v8, v1, v5

    .line 221
    invoke-virtual {v6}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v8

    aput-wide v8, v2, v5

    .line 222
    aput v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v4

    :cond_2
    const-string p0, "circle_hole_x_array"

    .line 225
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string p0, "circle_hole_y_array"

    .line 226
    invoke-virtual {p1, p0, v2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string p0, "circle_hole_radius_array"

    .line 227
    invoke-virtual {p1, p0, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const/4 p0, 0x1

    return p0
.end method

.method private static d(Ljava/util/List;Landroid/os/Bundle;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/PolygonHoleOptions;",
            ">;",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    .line 232
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 233
    new-array v1, v0, [I

    .line 234
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 236
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/mapapi/map/PolygonHoleOptions;

    invoke-virtual {v5}, Lcom/baidu/mapapi/map/PolygonHoleOptions;->getHolePoints()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_0

    return v3

    .line 240
    :cond_0
    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 241
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 244
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_2

    return v3

    :cond_2
    const-string v0, "polygon_hole_count_array"

    .line 249
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 250
    new-array v0, p0, [D

    .line 251
    new-array v1, p0, [D

    :goto_1
    if-ge v3, p0, :cond_3

    .line 253
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v4}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v4

    .line 254
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v5

    aput-wide v5, v0, v3

    .line 255
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const-string p0, "polygon_hole_x_array"

    .line 257
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string p0, "polygon_hole_y_array"

    .line 258
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method a()Landroid/os/Bundle;
    .locals 3

    .line 119
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 120
    iget-object v1, p0, Lcom/baidu/mapapi/map/Overlay;->F:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/baidu/mapapi/map/Overlay;->type:Lcom/baidu/mapsdkplatform/comapi/map/i;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/i;->ordinal()I

    move-result v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->F:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->type:Lcom/baidu/mapsdkplatform/comapi/map/i;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/i;->ordinal()I

    move-result v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Overlay;->H:Z

    const-string/jumbo v1, "visibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    iget v0, p0, Lcom/baidu/mapapi/map/Overlay;->G:I

    const-string/jumbo v1, "z_index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public getExtraInfo()Landroid/os/Bundle;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->I:Landroid/os/Bundle;

    return-object v0
.end method

.method public getOverlayLatLngBounds()Lcom/baidu/mapapi/model/LatLngBounds;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->a(Lcom/baidu/mapapi/map/Overlay;)Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v0

    return-object v0
.end method

.method public getZIndex()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/baidu/mapapi/map/Overlay;->G:I

    return v0
.end method

.method public isRemoved()Z
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->d(Lcom/baidu/mapapi/map/Overlay;)Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Overlay;->H:Z

    return v0
.end method

.method public remove()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/baidu/mapapi/map/Overlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->b(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setExtraInfo(Landroid/os/Bundle;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/baidu/mapapi/map/Overlay;->I:Landroid/os/Bundle;

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Overlay;->H:Z

    .line 67
    iget-object p1, p0, Lcom/baidu/mapapi/map/Overlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setZIndex(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/baidu/mapapi/map/Overlay;->G:I

    .line 87
    iget-object p1, p0, Lcom/baidu/mapapi/map/Overlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method
