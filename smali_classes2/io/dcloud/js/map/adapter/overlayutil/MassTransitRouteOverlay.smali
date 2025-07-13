.class public Lio/dcloud/js/map/adapter/overlayutil/MassTransitRouteOverlay;
.super Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;
.source "MassTransitRouteOverlay.java"


# instance fields
.field private isSameCity:Z

.field private mRouteLine:Lcom/baidu/mapapi/search/route/MassTransitRouteLine;


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

    .line 34
    invoke-direct {p0, p1}, Lio/dcloud/js/map/adapter/overlayutil/OverlayManager;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    return-void
.end method

.method private getIconForStep(Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;)Lcom/baidu/mapapi/map/BitmapDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "step"
        }
    .end annotation

    .line 201
    sget-object v0, Lio/dcloud/js/map/adapter/overlayutil/MassTransitRouteOverlay$1;->$SwitchMap$com$baidu$mapapi$search$route$MassTransitRouteLine$TransitStep$StepVehicleInfoType:[I

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->getVehileType()Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    const-string p1, "Icon_bus_station.png"

    .line 210
    invoke-static {p1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object p1

    return-object p1

    :pswitch_1
    const-string p1, "Icon_subway_station.png"

    .line 205
    invoke-static {p1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object p1

    return-object p1

    :pswitch_2
    const-string p1, "Icon_walk_route.png"

    .line 203
    invoke-static {p1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getLineColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOverlayOptions()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/OverlayOptions;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 74
    iget-object v1, v0, Lio/dcloud/js/map/adapter/overlayutil/MassTransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/MassTransitRouteLine;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 78
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    iget-object v2, v0, Lio/dcloud/js/map/adapter/overlayutil/MassTransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/MassTransitRouteLine;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine;->getNewSteps()Ljava/util/List;

    move-result-object v2

    .line 80
    iget-boolean v3, v0, Lio/dcloud/js/map/adapter/overlayutil/MassTransitRouteOverlay;->isSameCity:Z

    const/16 v5, 0x4e

    const-string v8, "index"

    const/16 v9, 0xb2

    const/16 v10, 0xa

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    .line 84
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    if-ge v3, v14, :cond_3

    .line 86
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;

    .line 87
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    add-int/lit8 v6, v3, 0x1

    .line 88
    invoke-virtual {v15, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    invoke-virtual {v14}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->getStartLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v16

    if-eqz v16, :cond_1

    .line 91
    new-instance v7, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v7}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v14}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->getStartLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    .line 92
    invoke-virtual {v4, v11, v11}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/baidu/mapapi/map/MarkerOptions;->extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    invoke-direct {v0, v14}, Lio/dcloud/js/map/adapter/overlayutil/MassTransitRouteOverlay;->getIconForStep(Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    .line 91
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v12

    if-ne v3, v4, :cond_2

    invoke-virtual {v14}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->getEndLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 97
    new-instance v3, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v3}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v14}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->getEndLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v3

    .line 98
    invoke-virtual {v3, v11, v11}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v3

    .line 99
    invoke-direct {v0, v14}, Lio/dcloud/js/map/adapter/overlayutil/MassTransitRouteOverlay;->getIconForStep(Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v3

    .line 97
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move v3, v6

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 106
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_12

    .line 107
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;

    .line 109
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->getVehileType()Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

    move-result-object v6

    sget-object v7, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;->ESTEP_WALK:Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

    if-eq v6, v7, :cond_5

    .line 112
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/js/map/adapter/overlayutil/MassTransitRouteOverlay;->getLineColor()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/js/map/adapter/overlayutil/MassTransitRouteOverlay;->getLineColor()I

    move-result v6

    goto :goto_2

    :cond_4
    const/16 v6, 0xff

    invoke-static {v9, v13, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    move v6, v7

    goto :goto_2

    .line 115
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/js/map/adapter/overlayutil/MassTransitRouteOverlay;->getLineColor()I

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/js/map/adapter/overlayutil/MassTransitRouteOverlay;->getLineColor()I

    move-result v6

    goto :goto_2

    :cond_6
    const/16 v6, 0xd0

    const/16 v7, 0x58

    invoke-static {v9, v7, v6, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    move v6, v8

    .line 117
    :goto_2
    new-instance v7, Lcom/baidu/mapapi/map/PolylineOptions;

    invoke-direct {v7}, Lcom/baidu/mapapi/map/PolylineOptions;-><init>()V

    .line 118
    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->getWayPoints()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/baidu/mapapi/map/PolylineOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/baidu/mapapi/map/PolylineOptions;->width(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/baidu/mapapi/map/PolylineOptions;->color(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v4

    .line 119
    invoke-virtual {v4, v13}, Lcom/baidu/mapapi/map/PolylineOptions;->zIndex(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v4

    .line 117
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 125
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_8

    .line 126
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    .line 131
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_c

    const/4 v6, 0x0

    .line 133
    :goto_5
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_b

    .line 134
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;

    .line 135
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 136
    invoke-virtual {v14, v8, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    invoke-virtual {v7}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->getStartLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v15

    if-eqz v15, :cond_9

    .line 139
    new-instance v15, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v15}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v7}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->getStartLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    .line 140
    invoke-virtual {v5, v11, v11}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    invoke-virtual {v5, v14}, Lcom/baidu/mapapi/map/MarkerOptions;->extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    invoke-direct {v0, v7}, Lio/dcloud/js/map/adapter/overlayutil/MassTransitRouteOverlay;->getIconForStep(Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    .line 139
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    if-ne v12, v4, :cond_a

    .line 144
    invoke-virtual {v7}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->getEndLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 145
    new-instance v5, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v5}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v7}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->getEndLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    .line 146
    invoke-virtual {v5, v11, v11}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    invoke-direct {v0, v7}, Lio/dcloud/js/map/adapter/overlayutil/MassTransitRouteOverlay;->getIconForStep(Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    .line 145
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v6, v6, 0x1

    const/16 v5, 0x4e

    goto :goto_5

    :cond_b
    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x4e

    goto/16 :goto_4

    :cond_c
    const/4 v3, 0x0

    .line 155
    :goto_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_12

    const/4 v4, 0x0

    .line 157
    :goto_7
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_11

    .line 158
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;

    .line 160
    invoke-virtual {v5}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->getVehileType()Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

    move-result-object v6

    sget-object v7, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;->ESTEP_WALK:Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

    if-eq v6, v7, :cond_e

    .line 163
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/js/map/adapter/overlayutil/MassTransitRouteOverlay;->getLineColor()I

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/js/map/adapter/overlayutil/MassTransitRouteOverlay;->getLineColor()I

    move-result v6

    move v8, v6

    const/16 v6, 0xff

    const/16 v7, 0x4e

    goto :goto_8

    :cond_d
    const/16 v6, 0xff

    const/16 v7, 0x4e

    invoke-static {v9, v13, v7, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    :goto_8
    move v12, v8

    const/16 v8, 0xd0

    const/16 v11, 0x58

    goto :goto_9

    :cond_e
    const/16 v6, 0xff

    const/16 v7, 0x4e

    .line 166
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/js/map/adapter/overlayutil/MassTransitRouteOverlay;->getLineColor()I

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/js/map/adapter/overlayutil/MassTransitRouteOverlay;->getLineColor()I

    move-result v8

    goto :goto_8

    :cond_f
    const/16 v8, 0xd0

    const/16 v11, 0x58

    invoke-static {v9, v11, v8, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    .line 168
    :goto_9
    invoke-virtual {v5}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->getWayPoints()Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_10

    .line 169
    new-instance v14, Lcom/baidu/mapapi/map/PolylineOptions;

    invoke-direct {v14}, Lcom/baidu/mapapi/map/PolylineOptions;-><init>()V

    .line 170
    invoke-virtual {v5}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->getWayPoints()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v14, v5}, Lcom/baidu/mapapi/map/PolylineOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/baidu/mapapi/map/PolylineOptions;->width(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/baidu/mapapi/map/PolylineOptions;->color(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v5

    .line 171
    invoke-virtual {v5, v13}, Lcom/baidu/mapapi/map/PolylineOptions;->zIndex(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v5

    .line 169
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_11
    const/16 v6, 0xff

    const/16 v7, 0x4e

    const/16 v8, 0xd0

    const/16 v11, 0x58

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 179
    :cond_12
    iget-object v2, v0, Lio/dcloud/js/map/adapter/overlayutil/MassTransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/MassTransitRouteLine;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v2

    if-eqz v2, :cond_14

    iget-object v2, v0, Lio/dcloud/js/map/adapter/overlayutil/MassTransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/MassTransitRouteLine;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 180
    new-instance v2, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v2}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    iget-object v3, v0, Lio/dcloud/js/map/adapter/overlayutil/MassTransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/MassTransitRouteLine;

    invoke-virtual {v3}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    .line 181
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/js/map/adapter/overlayutil/MassTransitRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 182
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/js/map/adapter/overlayutil/MassTransitRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v3

    goto :goto_a

    :cond_13
    const-string v3, "Icon_start.png"

    invoke-static {v3}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v3

    .line 181
    :goto_a
    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    .line 183
    invoke-virtual {v2, v10}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    .line 180
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_14
    iget-object v2, v0, Lio/dcloud/js/map/adapter/overlayutil/MassTransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/MassTransitRouteLine;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v2

    if-eqz v2, :cond_16

    iget-object v2, v0, Lio/dcloud/js/map/adapter/overlayutil/MassTransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/MassTransitRouteLine;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 187
    new-instance v2, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v2}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    iget-object v3, v0, Lio/dcloud/js/map/adapter/overlayutil/MassTransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/MassTransitRouteLine;

    .line 189
    invoke-virtual {v3}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    .line 190
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/js/map/adapter/overlayutil/MassTransitRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/js/map/adapter/overlayutil/MassTransitRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v3

    goto :goto_b

    :cond_15
    const-string v3, "Icon_end.png"

    .line 192
    invoke-static {v3}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v3

    .line 190
    :goto_b
    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    .line 193
    invoke-virtual {v2, v10}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    .line 188
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    return-object v1
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

.method public setData(Lcom/baidu/mapapi/search/route/MassTransitRouteLine;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routeOverlay"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lio/dcloud/js/map/adapter/overlayutil/MassTransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/MassTransitRouteLine;

    return-void
.end method

.method public setSameCity(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sameCity"
        }
    .end annotation

    .line 49
    iput-boolean p1, p0, Lio/dcloud/js/map/adapter/overlayutil/MassTransitRouteOverlay;->isSameCity:Z

    return-void
.end method
