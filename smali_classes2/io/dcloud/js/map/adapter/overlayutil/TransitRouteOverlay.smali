.class public Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;
.super Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;
.source "TransitRouteOverlay.java"


# instance fields
.field private mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;


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

    .line 35
    invoke-direct {p0, p1}, Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    return-void
.end method

.method private getIconForStep(Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;)Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "step"
        }
    .end annotation

    .line 111
    sget-object v0, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay$1;->$SwitchMap$com$baidu$mapapi$search$route$TransitRouteLine$TransitStep$TransitRouteStepType:[I

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getStepType()Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "Icon_walk_route.png"

    .line 117
    invoke-static {p1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "Icon_subway_station.png"

    .line 115
    invoke-static {p1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "Icon_bus_station.png"

    .line 113
    invoke-static {p1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getLineColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getOverlayOptions()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/OverlayOptions;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    iget-object v1, p0, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xa

    if-eqz v1, :cond_3

    iget-object v1, p0, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    .line 48
    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 50
    iget-object v1, p0, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;

    .line 51
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 52
    iget-object v5, p0, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v5}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const-string v6, "index"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    invoke-virtual {v3}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v5

    const/high16 v6, 0x3f000000    # 0.5f

    if-eqz v5, :cond_2

    .line 54
    new-instance v5, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v5}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    .line 55
    invoke-virtual {v3}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    .line 56
    invoke-virtual {v5, v6, v6}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    .line 57
    invoke-direct {p0, v3}, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->getIconForStep(Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    .line 54
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_2
    iget-object v4, p0, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    .line 61
    invoke-virtual {v5}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getExit()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 62
    new-instance v4, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v4}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    .line 63
    invoke-virtual {v3}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getExit()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    .line 64
    invoke-virtual {v4, v6, v6}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    .line 65
    invoke-direct {p0, v3}, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->getIconForStep(Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v3

    .line 62
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 70
    :cond_3
    iget-object v1, p0, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 71
    new-instance v1, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v1}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    iget-object v3, p0, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    .line 72
    invoke-virtual {v3}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    .line 73
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v3

    goto :goto_1

    :cond_4
    const-string v3, "Icon_start.png"

    .line 75
    invoke-static {v3}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v3

    .line 73
    :goto_1
    invoke-virtual {v1, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    .line 75
    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    .line 71
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_5
    iget-object v1, p0, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 78
    new-instance v1, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v1}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    iget-object v3, p0, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    .line 80
    invoke-virtual {v3}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    .line 81
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v3

    goto :goto_2

    :cond_6
    const-string v3, "Icon_end.png"

    .line 83
    invoke-static {v3}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v3

    .line 81
    :goto_2
    invoke-virtual {v1, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    .line 84
    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    .line 79
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_7
    iget-object v1, p0, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    .line 88
    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 90
    iget-object v1, p0, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;

    .line 91
    invoke-virtual {v3}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getWayPoints()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_8

    goto :goto_3

    .line 95
    :cond_8
    invoke-virtual {v3}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getStepType()Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    move-result-object v4

    sget-object v5, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;->WAKLING:Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    const/16 v6, 0xb2

    const/4 v7, 0x0

    if-eq v4, v5, :cond_a

    .line 97
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->getLineColor()I

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->getLineColor()I

    move-result v4

    goto :goto_4

    :cond_9
    const/16 v4, 0x4e

    const/16 v5, 0xff

    invoke-static {v6, v7, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    goto :goto_4

    .line 100
    :cond_a
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->getLineColor()I

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->getLineColor()I

    move-result v4

    goto :goto_4

    :cond_b
    const/16 v4, 0x58

    const/16 v5, 0xd0

    invoke-static {v6, v4, v5, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    .line 102
    :goto_4
    new-instance v5, Lcom/baidu/mapapi/map/PolylineOptions;

    invoke-direct {v5}, Lcom/baidu/mapapi/map/PolylineOptions;-><init>()V

    .line 103
    invoke-virtual {v3}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getWayPoints()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/baidu/mapapi/map/PolylineOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/mapapi/map/PolylineOptions;->width(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/map/PolylineOptions;->color(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v3

    .line 104
    invoke-virtual {v3, v7}, Lcom/baidu/mapapi/map/PolylineOptions;->zIndex(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v3

    .line 102
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    return-object v0
.end method

.method public getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onMarkerClick(Lcom/baidu/mapapi/map/Marker;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "marker"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->mOverlayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/Overlay;

    .line 174
    instance-of v2, v1, Lcom/baidu/mapapi/map/Marker;

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "index"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->onRouteNodeClick(I)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

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

.method public onRouteNodeClick(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    .line 165
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "baidumapsdk"

    const-string v0, "TransitRouteOverlay onRouteNodeClick"

    .line 166
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setData(Lcom/baidu/mapapi/search/route/TransitRouteLine;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routeOverlay"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    return-void
.end method
