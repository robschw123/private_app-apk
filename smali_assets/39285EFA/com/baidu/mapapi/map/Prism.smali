.class public final Lcom/baidu/mapapi/map/Prism;
.super Lcom/baidu/mapapi/map/Overlay;
.source "Prism.java"


# instance fields
.field a:F

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field d:I

.field e:Lcom/baidu/mapapi/search/core/BuildingInfo;

.field f:Z

.field g:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field h:I

.field i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Overlay;-><init>()V

    const/high16 v0, -0x1000000

    .line 25
    iput v0, p0, Lcom/baidu/mapapi/map/Prism;->c:I

    const v0, -0xff0100

    .line 26
    iput v0, p0, Lcom/baidu/mapapi/map/Prism;->d:I

    .line 36
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/i;->l:Lcom/baidu/mapsdkplatform/comapi/map/i;

    iput-object v0, p0, Lcom/baidu/mapapi/map/Prism;->type:Lcom/baidu/mapsdkplatform/comapi/map/i;

    return-void
.end method


# virtual methods
.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    .line 209
    invoke-super {p0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 210
    iget v0, p0, Lcom/baidu/mapapi/map/Prism;->c:I

    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Overlay;->b(ILandroid/os/Bundle;)V

    .line 211
    iget v0, p0, Lcom/baidu/mapapi/map/Prism;->d:I

    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Overlay;->c(ILandroid/os/Bundle;)V

    .line 212
    iget-object v0, p0, Lcom/baidu/mapapi/map/Prism;->g:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "image_info"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/Prism;->e:Lcom/baidu/mapapi/search/core/BuildingInfo;

    const/4 v1, 0x0

    const-string v2, "m_height"

    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/core/BuildingInfo;->getHeight()F

    move-result v0

    float-to-double v3, v0

    .line 217
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 218
    iget-object v0, p0, Lcom/baidu/mapapi/map/Prism;->e:Lcom/baidu/mapapi/search/core/BuildingInfo;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/core/BuildingInfo;->getGeom()Ljava/lang/String;

    move-result-object v0

    const-string v2, "encodedPoints"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    sget-object v0, Lcom/baidu/mapapi/map/EncodePointType;->BUILDINGINFO:Lcom/baidu/mapapi/map/EncodePointType;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/EncodePointType;->ordinal()I

    move-result v0

    const-string v2, "encodePointType"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    iget v0, p0, Lcom/baidu/mapapi/map/Prism;->h:I

    const-string v2, "m_showLevel"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Prism;->i:Z

    const-string v2, "m_isAnimation"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/Prism;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 224
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v3

    const-string v5, "location_x"

    invoke-virtual {p1, v5, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 226
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v3

    const-string v0, "location_y"

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 227
    iget-object v0, p0, Lcom/baidu/mapapi/map/Prism;->b:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Ljava/util/List;Landroid/os/Bundle;)V

    .line 228
    iget v0, p0, Lcom/baidu/mapapi/map/Prism;->a:F

    float-to-double v3, v0

    .line 229
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 232
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/Prism;->e:Lcom/baidu/mapapi/search/core/BuildingInfo;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    const-string v0, "m_isBuilding"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public getBuildingInfo()Lcom/baidu/mapapi/search/core/BuildingInfo;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/baidu/mapapi/map/Prism;->e:Lcom/baidu/mapapi/search/core/BuildingInfo;

    return-object v0
.end method

.method public getCustomSideImage()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/baidu/mapapi/map/Prism;->g:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .line 79
    iget v0, p0, Lcom/baidu/mapapi/map/Prism;->a:F

    return v0
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

    .line 88
    iget-object v0, p0, Lcom/baidu/mapapi/map/Prism;->b:Ljava/util/List;

    return-object v0
.end method

.method public getShowLevel()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/baidu/mapapi/map/Prism;->h:I

    return v0
.end method

.method public getSideFaceColor()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/baidu/mapapi/map/Prism;->d:I

    return v0
.end method

.method public getTopFaceColor()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/baidu/mapapi/map/Prism;->c:I

    return v0
.end method

.method public isAnimation()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Prism;->i:Z

    return v0
.end method

.method public setAnimation(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Prism;->i:Z

    return-void
.end method

.method public setBuildingInfo(Lcom/baidu/mapapi/search/core/BuildingInfo;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/baidu/mapapi/map/Prism;->e:Lcom/baidu/mapapi/search/core/BuildingInfo;

    .line 203
    iget-object p1, p0, Lcom/baidu/mapapi/map/Prism;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setCustomSideImage(Lcom/baidu/mapapi/map/BitmapDescriptor;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/baidu/mapapi/map/Prism;->g:Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 144
    iget-object p1, p0, Lcom/baidu/mapapi/map/Prism;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setHeight(F)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/baidu/mapapi/map/Prism;->a:F

    .line 134
    iget-object p1, p0, Lcom/baidu/mapapi/map/Prism;->listener:Lcom/baidu/mapapi/map/Overlay$a;

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

    .line 157
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_4

    const/4 v0, 0x0

    .line 160
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 163
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    .line 164
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 165
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/model/LatLng;

    .line 166
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/model/LatLng;

    if-eq v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 168
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points list can not has same points"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    move v0, v1

    goto :goto_0

    .line 172
    :cond_2
    iput-object p1, p0, Lcom/baidu/mapapi/map/Prism;->b:Ljava/util/List;

    .line 173
    iget-object p1, p0, Lcom/baidu/mapapi/map/Prism;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void

    .line 161
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points list can not contains null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 158
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points count can not less than four"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 155
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

.method public setShowLevel(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/baidu/mapapi/map/Prism;->h:I

    return-void
.end method

.method public setSideFaceColor(I)V
    .locals 0

    .line 192
    iput p1, p0, Lcom/baidu/mapapi/map/Prism;->d:I

    .line 193
    iget-object p1, p0, Lcom/baidu/mapapi/map/Prism;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setTopFaceColor(I)V
    .locals 0

    .line 182
    iput p1, p0, Lcom/baidu/mapapi/map/Prism;->c:I

    .line 183
    iget-object p1, p0, Lcom/baidu/mapapi/map/Prism;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method
