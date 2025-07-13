.class public Lio/dcloud/js/map/adapter/overlayutil/PoiOverlay;
.super Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;
.source "PoiOverlay.java"


# static fields
.field private static final MAX_POI_SIZE:I = 0xa


# instance fields
.field private mPoiResult:Lcom/baidu/mapapi/search/poi/PoiResult;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/map/BaiduMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baiduMap"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lio/dcloud/js/map/adapter/overlayutil/PoiOverlay;->mPoiResult:Lcom/baidu/mapapi/search/poi/PoiResult;

    return-void
.end method


# virtual methods
.method public final getOverlayOptions()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/OverlayOptions;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/PoiOverlay;->mPoiResult:Lcom/baidu/mapapi/search/poi/PoiResult;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/poi/PoiResult;->getAllPoi()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 49
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 52
    :goto_0
    iget-object v3, p0, Lio/dcloud/js/map/adapter/overlayutil/PoiOverlay;->mPoiResult:Lcom/baidu/mapapi/search/poi/PoiResult;

    invoke-virtual {v3}, Lcom/baidu/mapapi/search/poi/PoiResult;->getAllPoi()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_2

    .line 53
    iget-object v3, p0, Lio/dcloud/js/map/adapter/overlayutil/PoiOverlay;->mPoiResult:Lcom/baidu/mapapi/search/poi/PoiResult;

    invoke-virtual {v3}, Lcom/baidu/mapapi/search/poi/PoiResult;->getAllPoi()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/search/core/PoiInfo;

    iget-object v3, v3, Lcom/baidu/mapapi/search/core/PoiInfo;->location:Lcom/baidu/mapapi/model/LatLng;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 58
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "index"

    .line 59
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    new-instance v4, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v4}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Icon_mark"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 61
    invoke-static {v5}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    .line 62
    invoke-virtual {v4, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v3

    iget-object v4, p0, Lio/dcloud/js/map/adapter/overlayutil/PoiOverlay;->mPoiResult:Lcom/baidu/mapapi/search/poi/PoiResult;

    .line 63
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/poi/PoiResult;->getAllPoi()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/search/core/PoiInfo;

    iget-object v4, v4, Lcom/baidu/mapapi/search/core/PoiInfo;->location:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v3

    .line 60
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPoiResult()Lcom/baidu/mapapi/search/poi/PoiResult;
    .locals 1

    .line 76
    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/PoiOverlay;->mPoiResult:Lcom/baidu/mapapi/search/poi/PoiResult;

    return-object v0
.end method

.method public final onMarkerClick(Lcom/baidu/mapapi/map/Marker;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "marker"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/PoiOverlay;->mOverlayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 102
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/dcloud/js/map/adapter/overlayutil/PoiOverlay;->onPoiClick(I)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public onPoiClick(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onPolylineClick(Lcom/baidu/mapapi/map/Polyline;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "polyline"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public setData(Lcom/baidu/mapapi/search/poi/PoiResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "poiResult"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lio/dcloud/js/map/adapter/overlayutil/PoiOverlay;->mPoiResult:Lcom/baidu/mapapi/search/poi/PoiResult;

    return-void
.end method
