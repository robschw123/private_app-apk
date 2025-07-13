.class public Lio/dcloud/js/map/adapter/overlayutil/IndoorRouteOverlay;
.super Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;
.source "IndoorRouteOverlay.java"


# instance fields
.field colorInfo:[I

.field private mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/map/BaiduMap;)V
    .locals 6
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

    const/4 p1, 0x3

    new-array p1, p1, [I

    const/16 v0, 0xb2

    const/4 v1, 0x0

    const/16 v2, 0x4e

    const/16 v3, 0xff

    .line 36
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    aput v4, p1, v1

    const/16 v4, 0x58

    const/16 v5, 0xd0

    invoke-static {v0, v4, v5, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    const/4 v5, 0x1

    aput v1, p1, v5

    invoke-static {v0, v4, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    const/4 v1, 0x2

    aput v0, p1, v1

    iput-object p1, p0, Lio/dcloud/js/map/adapter/overlayutil/IndoorRouteOverlay;->colorInfo:[I

    return-void
.end method


# virtual methods
.method public getLineColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOverlayOptions()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/OverlayOptions;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/IndoorRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 78
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    iget-object v2, p0, Lio/dcloud/js/map/adapter/overlayutil/IndoorRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0xa

    if-eqz v2, :cond_3

    iget-object v2, p0, Lio/dcloud/js/map/adapter/overlayutil/IndoorRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 83
    iget-object v2, p0, Lio/dcloud/js/map/adapter/overlayutil/IndoorRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->getAllStep()Ljava/util/List;

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

    check-cast v4, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;

    .line 84
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 85
    iget-object v6, p0, Lio/dcloud/js/map/adapter/overlayutil/IndoorRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const-string v7, "index"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->getEntrace()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v6

    const-string v7, "Icon_walk_route.png"

    const/high16 v8, 0x3f000000    # 0.5f

    if-eqz v6, :cond_2

    .line 87
    new-instance v6, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v6}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->getEntrace()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v9

    invoke-virtual {v9}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v6

    .line 88
    invoke-virtual {v6, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v6

    invoke-virtual {v6, v8, v8}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/baidu/mapapi/map/MarkerOptions;->extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    .line 89
    invoke-static {v7}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    .line 87
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_2
    iget-object v5, p0, Lio/dcloud/js/map/adapter/overlayutil/IndoorRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    invoke-virtual {v5}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iget-object v6, p0, Lio/dcloud/js/map/adapter/overlayutil/IndoorRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_1

    .line 94
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->getExit()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 95
    new-instance v5, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v5}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->getExit()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    .line 96
    invoke-virtual {v4, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    invoke-static {v7}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    .line 95
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 102
    :cond_3
    iget-object v2, p0, Lio/dcloud/js/map/adapter/overlayutil/IndoorRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 103
    new-instance v2, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v2}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    iget-object v4, p0, Lio/dcloud/js/map/adapter/overlayutil/IndoorRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    .line 104
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/overlayutil/IndoorRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/overlayutil/IndoorRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v4

    goto :goto_1

    :cond_4
    const-string v4, "Icon_start.png"

    .line 105
    invoke-static {v4}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v4

    .line 104
    :goto_1
    invoke-virtual {v2, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    .line 106
    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    .line 103
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_5
    iget-object v2, p0, Lio/dcloud/js/map/adapter/overlayutil/IndoorRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 110
    new-instance v2, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v2}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    iget-object v4, p0, Lio/dcloud/js/map/adapter/overlayutil/IndoorRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    .line 111
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/overlayutil/IndoorRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/overlayutil/IndoorRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v4

    goto :goto_2

    :cond_6
    const-string v4, "Icon_end.png"

    .line 112
    invoke-static {v4}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v4

    .line 111
    :goto_2
    invoke-virtual {v2, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    .line 113
    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    .line 110
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_7
    iget-object v2, p0, Lio/dcloud/js/map/adapter/overlayutil/IndoorRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lio/dcloud/js/map/adapter/overlayutil/IndoorRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 120
    iget-object v2, p0, Lio/dcloud/js/map/adapter/overlayutil/IndoorRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;

    .line 121
    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->getWayPoints()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 123
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_9

    .line 125
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_9
    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    new-instance v1, Lcom/baidu/mapapi/map/PolylineOptions;

    invoke-direct {v1}, Lcom/baidu/mapapi/map/PolylineOptions;-><init>()V

    invoke-virtual {v1, v7}, Lcom/baidu/mapapi/map/PolylineOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/baidu/mapapi/map/PolylineOptions;->width(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v1

    .line 129
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/overlayutil/IndoorRouteOverlay;->getLineColor()I

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/overlayutil/IndoorRouteOverlay;->getLineColor()I

    move-result v7

    goto :goto_4

    :cond_a
    iget-object v7, p0, Lio/dcloud/js/map/adapter/overlayutil/IndoorRouteOverlay;->colorInfo:[I

    add-int/lit8 v8, v5, 0x1

    rem-int/lit8 v5, v5, 0x3

    aget v7, v7, v5

    move v5, v8

    :goto_4
    invoke-virtual {v1, v7}, Lcom/baidu/mapapi/map/PolylineOptions;->color(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/baidu/mapapi/map/PolylineOptions;->zIndex(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v1

    .line 128
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

.method public onMarkerClick(Lcom/baidu/mapapi/map/Marker;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "marker"
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

.method public setData(Lcom/baidu/mapapi/search/route/IndoorRouteLine;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routeOverlay"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lio/dcloud/js/map/adapter/overlayutil/IndoorRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    return-void
.end method
