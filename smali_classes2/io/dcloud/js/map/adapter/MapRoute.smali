.class public Lio/dcloud/js/map/adapter/MapRoute;
.super Ljava/lang/Object;
.source "MapRoute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/js/map/adapter/MapRoute$MapLine;
    }
.end annotation


# instance fields
.field mEnd:Lio/dcloud/js/map/adapter/MapPoint;

.field mMapview:Lio/dcloud/js/map/adapter/DHMapView;

.field private mOverlay:Ljava/lang/Object;

.field private mPaint:Landroid/graphics/Paint;

.field private mRoute:Ljava/lang/Object;

.field mStart:Lio/dcloud/js/map/adapter/MapPoint;

.field mWebview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct {p0}, Lio/dcloud/js/map/adapter/MapRoute;->initPaint()V

    return-void
.end method

.method private initPaint()V
    .locals 4

    .line 158
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/dcloud/js/map/adapter/MapRoute;->mPaint:Landroid/graphics/Paint;

    .line 159
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 160
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapRoute;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x36

    const/16 v2, 0x72

    const/16 v3, 0xe3

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapRoute;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 162
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapRoute;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40b00000    # 5.5f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 163
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapRoute;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 164
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapRoute;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 165
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapRoute;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public getRoute()Ljava/lang/Object;
    .locals 1

    .line 132
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapRoute;->mRoute:Ljava/lang/Object;

    return-object v0
.end method

.method public initMapRoute(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/js/map/adapter/DHMapView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pWebview",
            "mapview"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapRoute;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 72
    iput-object p2, p0, Lio/dcloud/js/map/adapter/MapRoute;->mMapview:Lio/dcloud/js/map/adapter/DHMapView;

    .line 73
    iget-object p1, p0, Lio/dcloud/js/map/adapter/MapRoute;->mRoute:Ljava/lang/Object;

    instance-of v0, p1, Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    if-eqz v0, :cond_0

    .line 74
    new-instance p1, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;

    invoke-virtual {p2}, Lio/dcloud/js/map/adapter/DHMapView;->getBaiduMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    .line 75
    iget-object p2, p0, Lio/dcloud/js/map/adapter/MapRoute;->mRoute:Ljava/lang/Object;

    check-cast p2, Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {p1, p2}, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;->setData(Lcom/baidu/mapapi/search/route/WalkingRouteLine;)V

    .line 76
    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapRoute;->mOverlay:Ljava/lang/Object;

    .line 77
    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;->addToMap()V

    .line 78
    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;->zoomToSpan()V

    goto :goto_0

    .line 79
    :cond_0
    instance-of v0, p1, Lcom/baidu/mapapi/search/route/TransitRouteLine;

    if-eqz v0, :cond_1

    .line 80
    new-instance p1, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;

    invoke-virtual {p2}, Lio/dcloud/js/map/adapter/DHMapView;->getBaiduMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    .line 81
    iget-object p2, p0, Lio/dcloud/js/map/adapter/MapRoute;->mRoute:Ljava/lang/Object;

    check-cast p2, Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {p1, p2}, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->setData(Lcom/baidu/mapapi/search/route/TransitRouteLine;)V

    .line 82
    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapRoute;->mOverlay:Ljava/lang/Object;

    .line 83
    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->addToMap()V

    .line 84
    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->zoomToSpan()V

    goto :goto_0

    .line 85
    :cond_1
    instance-of p1, p1, Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    if-eqz p1, :cond_2

    .line 86
    new-instance p1, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;

    invoke-virtual {p2}, Lio/dcloud/js/map/adapter/DHMapView;->getBaiduMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    .line 87
    iget-object p2, p0, Lio/dcloud/js/map/adapter/MapRoute;->mRoute:Ljava/lang/Object;

    check-cast p2, Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {p1, p2}, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->setData(Lcom/baidu/mapapi/search/route/DrivingRouteLine;)V

    .line 88
    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapRoute;->mOverlay:Ljava/lang/Object;

    .line 89
    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->addToMap()V

    .line 90
    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->zoomToSpan()V

    :cond_2
    :goto_0
    return-void
.end method

.method public removeFromMap()V
    .locals 2

    .line 98
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapRoute;->mRoute:Ljava/lang/Object;

    instance-of v1, v0, Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    if-eqz v1, :cond_0

    .line 99
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapRoute;->mOverlay:Ljava/lang/Object;

    check-cast v0, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;

    .line 100
    invoke-virtual {v0}, Lio/dcloud/js/map/adapter/overlayutil/WalkingRouteOverlay;->removeFromMap()V

    goto :goto_0

    .line 101
    :cond_0
    instance-of v1, v0, Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    if-eqz v1, :cond_1

    .line 102
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapRoute;->mOverlay:Ljava/lang/Object;

    check-cast v0, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;

    .line 103
    invoke-virtual {v0}, Lio/dcloud/js/map/adapter/overlayutil/DrivingRouteOverlay;->removeFromMap()V

    goto :goto_0

    .line 104
    :cond_1
    instance-of v0, v0, Lcom/baidu/mapapi/search/route/TransitRouteLine;

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapRoute;->mOverlay:Ljava/lang/Object;

    check-cast v0, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;

    .line 106
    invoke-virtual {v0}, Lio/dcloud/js/map/adapter/overlayutil/TransitRouteOverlay;->removeFromMap()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setRoute(Lio/dcloud/js/map/adapter/MapPoint;Lio/dcloud/js/map/adapter/MapPoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pStart",
            "pEnd"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapRoute;->mStart:Lio/dcloud/js/map/adapter/MapPoint;

    .line 65
    iput-object p2, p0, Lio/dcloud/js/map/adapter/MapRoute;->mEnd:Lio/dcloud/js/map/adapter/MapPoint;

    return-void
.end method

.method public setRoute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pRoute"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapRoute;->mRoute:Ljava/lang/Object;

    return-void
.end method
