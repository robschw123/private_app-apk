.class public final Lcom/baidu/mapapi/map/Dot;
.super Lcom/baidu/mapapi/map/Overlay;
.source "Dot.java"


# instance fields
.field a:Lcom/baidu/mapapi/model/LatLng;

.field b:I

.field c:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/baidu/mapapi/map/Overlay;-><init>()V

    .line 21
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/i;->g:Lcom/baidu/mapsdkplatform/comapi/map/i;

    iput-object v0, p0, Lcom/baidu/mapapi/map/Dot;->type:Lcom/baidu/mapsdkplatform/comapi/map/i;

    return-void
.end method


# virtual methods
.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 91
    invoke-super {p0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 92
    iget-object v0, p0, Lcom/baidu/mapapi/map/Dot;->a:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v1

    const-string v3, "location_x"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 94
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v0

    const-string v2, "location_y"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 95
    iget v0, p0, Lcom/baidu/mapapi/map/Dot;->c:I

    const-string v1, "radius"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    iget v0, p0, Lcom/baidu/mapapi/map/Dot;->b:I

    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(ILandroid/os/Bundle;)V

    return-object p1
.end method

.method public getCenter()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/baidu/mapapi/map/Dot;->a:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/baidu/mapapi/map/Dot;->b:I

    return v0
.end method

.method public getRadius()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/baidu/mapapi/map/Dot;->c:I

    return v0
.end method

.method public setCenter(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 61
    iput-object p1, p0, Lcom/baidu/mapapi/map/Dot;->a:Lcom/baidu/mapapi/model/LatLng;

    .line 62
    iget-object p1, p0, Lcom/baidu/mapapi/map/Dot;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: dot center can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColor(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/baidu/mapapi/map/Dot;->b:I

    .line 73
    iget-object p1, p0, Lcom/baidu/mapapi/map/Dot;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 84
    iput p1, p0, Lcom/baidu/mapapi/map/Dot;->c:I

    .line 85
    iget-object p1, p0, Lcom/baidu/mapapi/map/Dot;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_0
    return-void
.end method
