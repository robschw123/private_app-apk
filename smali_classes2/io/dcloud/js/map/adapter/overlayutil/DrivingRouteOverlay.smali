.class public Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;
.super Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;
.source "DrivingRouteOverlay.java"


# instance fields
.field focus:Z

.field private mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;


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

    .line 38
    invoke-direct {p0, p1}, Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->focus:Z

    return-void
.end method


# virtual methods
.method public getCustomTextureList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Icon_road_blue_arrow.png"

    .line 175
    invoke-static {v1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Icon_road_green_arrow.png"

    .line 176
    invoke-static {v1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Icon_road_yellow_arrow.png"

    .line 177
    invoke-static {v1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Icon_road_red_arrow.png"

    .line 178
    invoke-static {v1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Icon_road_nofocus.png"

    .line 179
    invoke-static {v1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

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

    .line 43
    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    iget-object v1, p0, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    .line 50
    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 52
    iget-object v1, p0, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    .line 53
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 54
    iget-object v6, p0, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const-string v7, "index"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v6

    const-string v7, "Icon_line_node.png"

    const/high16 v8, 0x3f000000    # 0.5f

    if-eqz v6, :cond_2

    .line 56
    new-instance v6, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v6}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    .line 57
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v9

    invoke-virtual {v9}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v6

    .line 58
    invoke-virtual {v6, v8, v8}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v6

    .line 59
    invoke-virtual {v6, v2}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v6

    .line 60
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getDirection()I

    move-result v9

    rsub-int v9, v9, 0x168

    int-to-float v9, v9

    invoke-virtual {v6, v9}, Lcom/baidu/mapapi/map/MarkerOptions;->rotate(F)Lcom/baidu/mapapi/map/MarkerOptions;

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

    .line 66
    :cond_2
    iget-object v5, p0, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v5}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iget-object v6, p0, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    .line 67
    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    if-ne v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getExit()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 68
    new-instance v5, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v5}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    .line 69
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getExit()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    .line 70
    invoke-virtual {v4, v8, v8}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    .line 71
    invoke-virtual {v4, v2}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    .line 73
    invoke-static {v7}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v5

    .line 72
    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    .line 68
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 79
    :cond_3
    iget-object v1, p0, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 80
    new-instance v1, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v1}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    iget-object v4, p0, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    .line 81
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    .line 82
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v4

    goto :goto_1

    :cond_4
    const-string v4, "Icon_start.png"

    .line 84
    invoke-static {v4}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v4

    .line 82
    :goto_1
    invoke-virtual {v1, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    .line 84
    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    .line 80
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_5
    iget-object v1, p0, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 87
    new-instance v1, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v1}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    iget-object v4, p0, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    .line 89
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    .line 90
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v4

    goto :goto_2

    :cond_6
    const-string v4, "Icon_end.png"

    .line 92
    invoke-static {v4}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v4

    .line 90
    :goto_2
    invoke-virtual {v1, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    .line 93
    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    .line 88
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_7
    iget-object v1, p0, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    .line 97
    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e

    .line 99
    iget-object v1, p0, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v1

    .line 100
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 103
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 104
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v2, :cond_a

    add-int/lit8 v8, v2, -0x1

    if-ne v7, v8, :cond_8

    .line 108
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    invoke-virtual {v8}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getWayPoints()Ljava/util/List;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 110
    :cond_8
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    invoke-virtual {v8}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getWayPoints()Ljava/util/List;

    move-result-object v8

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    invoke-virtual {v9}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getWayPoints()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-interface {v8, v6, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    :goto_4
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    invoke-virtual {v8}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getWayPoints()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 114
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    invoke-virtual {v8}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getTrafficList()[I

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    invoke-virtual {v8}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getTrafficList()[I

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_9

    const/4 v8, 0x0

    .line 115
    :goto_5
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    invoke-virtual {v9}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getTrafficList()[I

    move-result-object v9

    array-length v9, v9

    if-ge v8, v9, :cond_9

    .line 116
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    invoke-virtual {v9}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getTrafficList()[I

    move-result-object v9

    aget v9, v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 133
    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 136
    :goto_6
    new-instance v2, Lcom/baidu/mapapi/map/PolylineOptions;

    invoke-direct {v2}, Lcom/baidu/mapapi/map/PolylineOptions;-><init>()V

    invoke-virtual {v2, v4}, Lcom/baidu/mapapi/map/PolylineOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/baidu/mapapi/map/PolylineOptions;->textureIndex(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v2

    const/4 v4, 0x7

    .line 137
    invoke-virtual {v2, v4}, Lcom/baidu/mapapi/map/PolylineOptions;->width(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mapapi/map/PolylineOptions;->dottedLine(Z)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/PolylineOptions;->focus(Z)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v2

    .line 138
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->getLineColor()I

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->getLineColor()I

    move-result v3

    goto :goto_7

    :cond_c
    const/16 v3, 0xb2

    const/16 v4, 0x4e

    const/16 v5, 0xff

    invoke-static {v3, v6, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    :goto_7
    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/PolylineOptions;->color(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/baidu/mapapi/map/PolylineOptions;->zIndex(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v2

    if-eqz v1, :cond_d

    .line 140
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->getCustomTextureList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/baidu/mapapi/map/PolylineOptions;->customTextureList(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    .line 142
    :cond_d
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
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

    .line 208
    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->mOverlayList:Ljava/util/List;

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

    .line 209
    instance-of v2, v1, Lcom/baidu/mapapi/map/Marker;

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "index"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->onRouteNodeClick(I)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onPolylineClick(Lcom/baidu/mapapi/map/Polyline;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "polyline"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->mOverlayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/Overlay;

    .line 222
    instance-of v3, v1, Lcom/baidu/mapapi/map/Polyline;

    if-eqz v3, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 228
    :goto_0
    invoke-virtual {p0, p1}, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->setFocus(Z)V

    return v2
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

    .line 199
    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    .line 200
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "baidumapsdk"

    const-string v0, "DrivingRouteOverlay onRouteNodeClick"

    .line 201
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setData(Lcom/baidu/mapapi/search/route/DrivingRouteLine;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routeLine"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    return-void
.end method

.method public setFocus(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .line 233
    iput-boolean p1, p0, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->focus:Z

    .line 234
    iget-object v0, p0, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->mOverlayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/Overlay;

    .line 235
    instance-of v2, v1, Lcom/baidu/mapapi/map/Polyline;

    if-eqz v2, :cond_0

    .line 237
    check-cast v1, Lcom/baidu/mapapi/map/Polyline;

    invoke-virtual {v1, p1}, Lcom/baidu/mapapi/map/Polyline;->setFocus(Z)V

    :cond_1
    return-void
.end method
