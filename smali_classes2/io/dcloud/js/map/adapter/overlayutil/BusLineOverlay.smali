.class public Lio/dcloud/js/map/adapter/overlayutil/BusLineOverlay;
.super Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;
.source "BusLineOverlay.java"


# instance fields
.field private mBusLineResult:Lcom/baidu/mapapi/search/busline/BusLineResult;


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

    .line 33
    invoke-direct {p0, p1}, Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lio/dcloud/js/map/adapter/overlayutil/BusLineOverlay;->mBusLineResult:Lcom/baidu/mapapi/search/busline/BusLineResult;

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

    .line 49
    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/BusLineOverlay;->mBusLineResult:Lcom/baidu/mapapi/search/busline/BusLineResult;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/busline/BusLineResult;->getStations()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 52
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iget-object v1, p0, Lio/dcloud/js/map/adapter/overlayutil/BusLineOverlay;->mBusLineResult:Lcom/baidu/mapapi/search/busline/BusLineResult;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/busline/BusLineResult;->getStations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0xa

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/search/busline/BusLineResult$BusStation;

    .line 54
    new-instance v4, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v4}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    .line 55
    invoke-virtual {v2}, Lcom/baidu/mapapi/search/busline/BusLineResult$BusStation;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    .line 56
    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    .line 57
    invoke-virtual {v2, v3, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    const-string v3, "Icon_bus_station.png"

    .line 59
    invoke-static {v3}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v3

    .line 58
    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    .line 54
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iget-object v2, p0, Lio/dcloud/js/map/adapter/overlayutil/BusLineOverlay;->mBusLineResult:Lcom/baidu/mapapi/search/busline/BusLineResult;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/busline/BusLineResult;->getSteps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/search/busline/BusLineResult$BusStep;

    .line 64
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/busline/BusLineResult$BusStep;->getWayPoints()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 65
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/busline/BusLineResult$BusStep;->getWayPoints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 68
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 69
    new-instance v2, Lcom/baidu/mapapi/map/PolylineOptions;

    invoke-direct {v2}, Lcom/baidu/mapapi/map/PolylineOptions;-><init>()V

    .line 70
    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/PolylineOptions;->width(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v2

    const/16 v3, 0xb2

    const/16 v4, 0x4e

    const/16 v5, 0xff

    const/4 v6, 0x0

    .line 71
    invoke-static {v3, v6, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/PolylineOptions;->color(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/baidu/mapapi/map/PolylineOptions;->zIndex(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v2

    .line 72
    invoke-virtual {v2, v1}, Lcom/baidu/mapapi/map/PolylineOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v1

    .line 70
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0

    :cond_5
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBusStationClick(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/BusLineOverlay;->mBusLineResult:Lcom/baidu/mapapi/search/busline/BusLineResult;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/busline/BusLineResult;->getStations()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/BusLineOverlay;->mBusLineResult:Lcom/baidu/mapapi/search/busline/BusLineResult;

    .line 88
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/busline/BusLineResult;->getStations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "baidumapsdk"

    const-string v0, "BusLineOverlay onBusStationClick"

    .line 89
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onMarkerClick(Lcom/baidu/mapapi/map/Marker;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "marker"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/BusLineOverlay;->mOverlayList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/BusLineOverlay;->mOverlayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/BusLineOverlay;->mOverlayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/dcloud/js/map/adapter/overlayutil/BusLineOverlay;->onBusStationClick(I)Z

    move-result p1

    return p1

    :cond_0
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

.method public setData(Lcom/baidu/mapapi/search/busline/BusLineResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lio/dcloud/js/map/adapter/overlayutil/BusLineOverlay;->mBusLineResult:Lcom/baidu/mapapi/search/busline/BusLineResult;

    return-void
.end method
