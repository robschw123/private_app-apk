.class public Lcom/baidu/mapapi/map/GradientLine;
.super Lcom/baidu/mapapi/map/Overlay;
.source "GradientLine.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field b:[I

.field c:[I

.field d:I

.field e:Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Overlay;-><init>()V

    const/4 v0, 0x5

    .line 20
    iput v0, p0, Lcom/baidu/mapapi/map/GradientLine;->d:I

    .line 21
    sget-object v0, Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;->NONE:Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

    iput-object v0, p0, Lcom/baidu/mapapi/map/GradientLine;->e:Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

    .line 25
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/i;->n:Lcom/baidu/mapsdkplatform/comapi/map/i;

    iput-object v0, p0, Lcom/baidu/mapapi/map/GradientLine;->type:Lcom/baidu/mapsdkplatform/comapi/map/i;

    return-void
.end method

.method private static a(Ljava/util/List;Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;Landroid/os/Bundle;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;",
            "Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 174
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 175
    new-array v1, v0, [D

    .line 176
    new-array v2, v0, [D

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 178
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/model/LatLng;

    .line 179
    sget-object v5, Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;->FROM_EAST_TO_WEST:Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

    const-wide v6, 0x4076800000000000L    # 360.0

    const-wide/16 v8, 0x0

    const-string v10, "lineDirectionCross180"

    if-ne p1, v5, :cond_0

    iget-wide v11, v4, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    cmpg-double v5, v11, v8

    if-gez v5, :cond_0

    .line 180
    new-instance v5, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v8, v4, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v11, v4, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    add-double/2addr v11, v6

    invoke-direct {v5, v8, v9, v11, v12}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 181
    sget-object v4, Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;->FROM_EAST_TO_WEST:Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

    invoke-virtual {v4}, Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;->ordinal()I

    move-result v4

    invoke-virtual {p2, v10, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_1
    move-object v4, v5

    goto :goto_2

    .line 182
    :cond_0
    sget-object v5, Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;->FROM_WEST_TO_EAST:Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

    if-ne p1, v5, :cond_1

    iget-wide v11, v4, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    cmpl-double v5, v11, v8

    if-lez v5, :cond_1

    .line 183
    new-instance v5, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v8, v4, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v11, v4, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    sub-double/2addr v11, v6

    invoke-direct {v5, v8, v9, v11, v12}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 184
    sget-object v4, Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;->FROM_WEST_TO_EAST:Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

    invoke-virtual {v4}, Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;->ordinal()I

    move-result v4

    invoke-virtual {p2, v10, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 186
    :cond_1
    sget-object v5, Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;->NONE:Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

    invoke-virtual {v5}, Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;->ordinal()I

    move-result v5

    invoke-virtual {p2, v10, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    :goto_2
    invoke-static {v4}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v4

    .line 189
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v5

    aput-wide v5, v1, v3

    .line 190
    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "x_array"

    .line 192
    invoke-virtual {p2, p0, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string/jumbo p0, "y_array"

    .line 193
    invoke-virtual {p2, p0, v2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    return-void
.end method

.method private static a([ILandroid/os/Bundle;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 197
    array-length v0, p0

    if-lez v0, :cond_0

    const-string v0, "color_indexs"

    .line 198
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method private static b([ILandroid/os/Bundle;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 203
    array-length v0, p0

    if-lez v0, :cond_0

    const-string v0, "color_array"

    .line 204
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 145
    invoke-super {p0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 146
    iget-object v0, p0, Lcom/baidu/mapapi/map/GradientLine;->a:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    .line 149
    iget-object v0, p0, Lcom/baidu/mapapi/map/GradientLine;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v1

    const-string v3, "location_x"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 151
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v0

    const-string v2, "location_y"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 152
    iget v0, p0, Lcom/baidu/mapapi/map/GradientLine;->d:I

    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    iget-object v0, p0, Lcom/baidu/mapapi/map/GradientLine;->b:[I

    if-eqz v0, :cond_3

    .line 157
    array-length v0, v0

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/baidu/mapapi/map/GradientLine;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/mapapi/map/GradientLine;->e:Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

    invoke-static {v0, v1, p1}, Lcom/baidu/mapapi/map/GradientLine;->a(Ljava/util/List;Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;Landroid/os/Bundle;)V

    .line 161
    iget-object v0, p0, Lcom/baidu/mapapi/map/GradientLine;->b:[I

    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/GradientLine;->a([ILandroid/os/Bundle;)V

    .line 162
    iget-object v0, p0, Lcom/baidu/mapapi/map/GradientLine;->c:[I

    if-eqz v0, :cond_1

    .line 166
    array-length v1, v0

    if-eqz v1, :cond_0

    .line 169
    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/GradientLine;->b([ILandroid/os/Bundle;)V

    return-object p1

    .line 167
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: colors array size can not be Equal to zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 163
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: colors array can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: Indexs array size can not be Equal to zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 154
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: Indexs array can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: when you add GradientLine, you must at least supply 2 points"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getColors()[I
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/baidu/mapapi/map/GradientLine;->c:[I

    return-object v0
.end method

.method public getIndexs()[I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/baidu/mapapi/map/GradientLine;->b:[I

    return-object v0
.end method

.method public getLineDirectionCross180()Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/baidu/mapapi/map/GradientLine;->e:Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

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

    .line 104
    iget-object v0, p0, Lcom/baidu/mapapi/map/GradientLine;->a:Ljava/util/List;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .line 131
    iget v0, p0, Lcom/baidu/mapapi/map/GradientLine;->d:I

    int-to-float v0, v0

    return v0
.end method

.method public lineDirectionCross180(Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/baidu/mapapi/map/GradientLine;->e:Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

    return-void
.end method

.method public setColorIndex([I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 54
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 58
    iput-object p1, p0, Lcom/baidu/mapapi/map/GradientLine;->b:[I

    .line 59
    iget-object p1, p0, Lcom/baidu/mapapi/map/GradientLine;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: indexList can not empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColorList([I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 82
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 86
    iput-object p1, p0, Lcom/baidu/mapapi/map/GradientLine;->c:[I

    .line 87
    iget-object p1, p0, Lcom/baidu/mapapi/map/GradientLine;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: colorList can not empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 37
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 40
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iput-object p1, p0, Lcom/baidu/mapapi/map/GradientLine;->a:Ljava/util/List;

    .line 45
    iget-object p1, p0, Lcom/baidu/mapapi/map/GradientLine;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points list can not contains null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points count can not less than 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points list can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWidth(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 70
    iput p1, p0, Lcom/baidu/mapapi/map/GradientLine;->d:I

    .line 71
    iget-object p1, p0, Lcom/baidu/mapapi/map/GradientLine;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_0
    return-void
.end method
