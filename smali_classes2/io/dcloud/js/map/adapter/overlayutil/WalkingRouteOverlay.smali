.class public Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;
.super Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;
.source "WalkingRouteOverlay.java"


# instance fields
.field private mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;


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

    .line 30
    invoke-direct {p0, p1}, Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    return-void
.end method


# virtual methods
.method public getLineColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getOverlayOptions()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/OverlayOptions;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 49
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    iget-object v2, p0, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0xa

    if-eqz v2, :cond_3

    iget-object v2, p0, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    .line 51
    invoke-virtual {v2}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 52
    iget-object v2, p0, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;

    .line 53
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 54
    iget-object v6, p0, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const-string v7, "index"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v6

    const-string v7, "Icon_line_node.png"

    const/high16 v8, 0x3f000000    # 0.5f

    if-eqz v6, :cond_2

    .line 56
    new-instance v6, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v6}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    .line 57
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v9

    invoke-virtual {v9}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v6

    .line 58
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->getDirection()I

    move-result v9

    rsub-int v9, v9, 0x168

    int-to-float v9, v9

    invoke-virtual {v6, v9}, Lcom/baidu/mapapi/map/MarkerOptions;->rotate(F)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v6

    .line 59
    invoke-virtual {v6, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v6

    .line 60
    invoke-virtual {v6, v8, v8}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v6

    .line 61
    invoke-virtual {v6, v5}, Lcom/baidu/mapapi/map/MarkerOptions;->extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    .line 63
    invoke-static {v7}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v6

    .line 62
    invoke-virtual {v5, v6}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    .line 56
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_2
    iget-object v5, p0, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v5}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iget-object v6, p0, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    .line 68
    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->getExit()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 69
    new-instance v5, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v5}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    .line 70
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->getExit()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    .line 71
    invoke-virtual {v4, v8, v8}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    .line 72
    invoke-virtual {v4, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    .line 74
    invoke-static {v7}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v5

    .line 73
    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    .line 69
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 80
    :cond_3
    iget-object v2, p0, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 81
    new-instance v2, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v2}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    iget-object v4, p0, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    .line 82
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    .line 83
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v4

    goto :goto_1

    :cond_4
    const-string v4, "Icon_start.png"

    .line 85
    invoke-static {v4}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v4

    .line 83
    :goto_1
    invoke-virtual {v2, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    .line 85
    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    .line 81
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_5
    iget-object v2, p0, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 89
    new-instance v2, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v2}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    iget-object v4, p0, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    .line 91
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    .line 92
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v4

    goto :goto_2

    :cond_6
    const-string v4, "Icon_end.png"

    .line 94
    invoke-static {v4}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v4

    .line 92
    :goto_2
    invoke-virtual {v2, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    .line 95
    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    .line 90
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_7
    iget-object v2, p0, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    .line 100
    invoke-virtual {v2}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 102
    iget-object v2, p0, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;

    .line 103
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->getWayPoints()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 105
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_9

    .line 107
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_9
    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    new-instance v1, Lcom/baidu/mapapi/map/PolylineOptions;

    invoke-direct {v1}, Lcom/baidu/mapapi/map/PolylineOptions;-><init>()V

    invoke-virtual {v1, v5}, Lcom/baidu/mapapi/map/PolylineOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/baidu/mapapi/map/PolylineOptions;->width(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v1

    .line 111
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;->getLineColor()I

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;->getLineColor()I

    move-result v5

    goto :goto_4

    :cond_a
    const/16 v5, 0xb2

    const/16 v7, 0x4e

    const/16 v8, 0xff

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    :goto_4
    invoke-virtual {v1, v5}, Lcom/baidu/mapapi/map/PolylineOptions;->color(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/baidu/mapapi/map/PolylineOptions;->zIndex(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v1

    .line 110
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/model/LatLng;

    goto :goto_3

    :cond_b
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

    .line 160
    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;->mOverlayList:Ljava/util/List;

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

    .line 161
    instance-of v2, v1, Lcom/baidu/mapapi/map/Marker;

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "index"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;->onRouteNodeClick(I)Z

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

    .line 151
    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    .line 152
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "baidumapsdk"

    const-string v0, "WalkingRouteOverlay onRouteNodeClick"

    .line 153
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setData(Lcom/baidu/mapapi/search/route/WalkingRouteLine;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    return-void
.end method
