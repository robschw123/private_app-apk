.class public final Lcom/baidu/mapapi/map/Arc;
.super Lcom/baidu/mapapi/map/Overlay;
.source "Arc.java"


# static fields
.field private static final f:Ljava/lang/String; = "Arc"


# instance fields
.field a:I

.field b:I

.field c:Lcom/baidu/mapapi/model/LatLng;

.field d:Lcom/baidu/mapapi/model/LatLng;

.field e:Lcom/baidu/mapapi/model/LatLng;


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
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/i;->f:Lcom/baidu/mapsdkplatform/comapi/map/i;

    iput-object v0, p0, Lcom/baidu/mapapi/map/Arc;->type:Lcom/baidu/mapsdkplatform/comapi/map/i;

    return-void
.end method


# virtual methods
.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .line 129
    invoke-super {p0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    iget-object v1, p0, Lcom/baidu/mapapi/map/Arc;->c:Lcom/baidu/mapapi/model/LatLng;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v1, p0, Lcom/baidu/mapapi/map/Arc;->d:Lcom/baidu/mapapi/model/LatLng;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v1, p0, Lcom/baidu/mapapi/map/Arc;->e:Lcom/baidu/mapapi/model/LatLng;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 135
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v1}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v2

    const-string v4, "location_x"

    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 137
    invoke-virtual {v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v1

    const-string v3, "location_y"

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 138
    iget v1, p0, Lcom/baidu/mapapi/map/Arc;->b:I

    const-string/jumbo v2, "width"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Ljava/util/List;Landroid/os/Bundle;)V

    .line 140
    iget v0, p0, Lcom/baidu/mapapi/map/Arc;->a:I

    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(ILandroid/os/Bundle;)V

    return-object p1
.end method

.method public getColor()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/baidu/mapapi/map/Arc;->a:I

    return v0
.end method

.method public getEndPoint()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->e:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getMiddlePoint()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->d:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getStartPoint()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/baidu/mapapi/map/Arc;->c:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/baidu/mapapi/map/Arc;->b:I

    return v0
.end method

.method public setColor(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/baidu/mapapi/map/Arc;->a:I

    .line 86
    iget-object p1, p0, Lcom/baidu/mapapi/map/Arc;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setPoints(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-eq p1, p2, :cond_0

    if-eq p1, p3, :cond_0

    if-eq p2, p3, :cond_0

    .line 108
    iput-object p1, p0, Lcom/baidu/mapapi/map/Arc;->c:Lcom/baidu/mapapi/model/LatLng;

    .line 109
    iput-object p2, p0, Lcom/baidu/mapapi/map/Arc;->d:Lcom/baidu/mapapi/model/LatLng;

    .line 110
    iput-object p3, p0, Lcom/baidu/mapapi/map/Arc;->e:Lcom/baidu/mapapi/model/LatLng;

    .line 111
    iget-object p1, p0, Lcom/baidu/mapapi/map/Arc;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    return-void

    .line 105
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BDMapSDKException: start and middle and end points can not be same"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "BDMapSDKException:start and middle and end points can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWidth(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 122
    iput p1, p0, Lcom/baidu/mapapi/map/Arc;->b:I

    .line 123
    iget-object p1, p0, Lcom/baidu/mapapi/map/Arc;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {p1, p0}, Lcom/baidu/mapapi/map/Overlay$a;->c(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_0
    return-void
.end method
