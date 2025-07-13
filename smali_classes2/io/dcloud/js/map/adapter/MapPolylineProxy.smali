.class public Lio/dcloud/js/map/adapter/MapPolylineProxy;
.super Ljava/lang/Object;
.source "MapPolylineProxy.java"


# instance fields
.field private mJsId:Ljava/lang/String;

.field private mLineWidth:I

.field private mMapPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/js/map/adapter/MapPoint;",
            ">;"
        }
    .end annotation
.end field

.field mMapPolylineImpl:Lcom/baidu/mapapi/map/Polyline;

.field private mStrokeColor:I

.field private mStrokeOpacity:F


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pMapPoints"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/js/map/adapter/MapPoint;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1000000

    .line 43
    iput v0, p0, Lio/dcloud/js/map/adapter/MapPolylineProxy;->mStrokeColor:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 47
    iput v0, p0, Lio/dcloud/js/map/adapter/MapPolylineProxy;->mStrokeOpacity:F

    const/4 v0, 0x5

    .line 51
    iput v0, p0, Lio/dcloud/js/map/adapter/MapPolylineProxy;->mLineWidth:I

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lio/dcloud/js/map/adapter/MapPolylineProxy;->mMapPolylineImpl:Lcom/baidu/mapapi/map/Polyline;

    .line 61
    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapPolylineProxy;->mMapPoints:Ljava/util/ArrayList;

    return-void
.end method

.method private combineOpacity(ID)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "color",
            "opacity"
        }
    .end annotation

    const-wide v0, 0x406fe00000000000L    # 255.0

    mul-double p2, p2, v0

    double-to-int p2, p2

    shl-int/lit8 p2, p2, 0x18

    add-int/2addr p2, p1

    return p2
.end method

.method private createRectangle()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    iget-object v1, p0, Lio/dcloud/js/map/adapter/MapPolylineProxy;->mMapPoints:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    iget-object v1, p0, Lio/dcloud/js/map/adapter/MapPolylineProxy;->mMapPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/js/map/adapter/MapPoint;

    .line 140
    invoke-virtual {v2}, Lio/dcloud/js/map/adapter/MapPoint;->getLatLng()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getLineWidth()F
    .locals 1

    .line 120
    iget v0, p0, Lio/dcloud/js/map/adapter/MapPolylineProxy;->mLineWidth:I

    int-to-float v0, v0

    return v0
.end method

.method public getMapPolyLine()Lcom/baidu/mapapi/map/Polyline;
    .locals 1

    .line 73
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapPolylineProxy;->mMapPolylineImpl:Lcom/baidu/mapapi/map/Polyline;

    return-object v0
.end method

.method public getMapPolyline()Lcom/baidu/mapapi/map/PolylineOptions;
    .locals 4

    .line 69
    new-instance v0, Lcom/baidu/mapapi/map/PolylineOptions;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/PolylineOptions;-><init>()V

    iget v1, p0, Lio/dcloud/js/map/adapter/MapPolylineProxy;->mStrokeColor:I

    iget v2, p0, Lio/dcloud/js/map/adapter/MapPolylineProxy;->mStrokeOpacity:F

    float-to-double v2, v2

    invoke-direct {p0, v1, v2, v3}, Lio/dcloud/js/map/adapter/MapPolylineProxy;->combineOpacity(ID)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/PolylineOptions;->color(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    invoke-direct {p0}, Lio/dcloud/js/map/adapter/MapPolylineProxy;->createRectangle()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/PolylineOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    iget v1, p0, Lio/dcloud/js/map/adapter/MapPolylineProxy;->mLineWidth:I

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/PolylineOptions;->width(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1

    .line 92
    iget v0, p0, Lio/dcloud/js/map/adapter/MapPolylineProxy;->mStrokeColor:I

    return v0
.end method

.method public getStrokeOpacity()F
    .locals 1

    .line 105
    iget v0, p0, Lio/dcloud/js/map/adapter/MapPolylineProxy;->mStrokeOpacity:F

    return v0
.end method

.method public initMapPolyline(Lio/dcloud/js/map/adapter/DHMapView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapView"
        }
    .end annotation

    .line 65
    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/DHMapView;->getBaiduMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object p1

    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/MapPolylineProxy;->getMapPolyline()Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    move-result-object p1

    check-cast p1, Lcom/baidu/mapapi/map/Polyline;

    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapPolylineProxy;->mMapPolylineImpl:Lcom/baidu/mapapi/map/Polyline;

    return-void
.end method

.method public setLineWidth(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pLineWidth"
        }
    .end annotation

    .line 126
    iput p1, p0, Lio/dcloud/js/map/adapter/MapPolylineProxy;->mLineWidth:I

    .line 127
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapPolylineProxy;->mMapPolylineImpl:Lcom/baidu/mapapi/map/Polyline;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/Polyline;->setWidth(I)V

    :cond_0
    return-void
.end method

.method public setPath(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pMapPoints"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/js/map/adapter/MapPoint;",
            ">;)V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapPolylineProxy;->mMapPoints:Ljava/util/ArrayList;

    .line 86
    iget-object p1, p0, Lio/dcloud/js/map/adapter/MapPolylineProxy;->mMapPolylineImpl:Lcom/baidu/mapapi/map/Polyline;

    if-eqz p1, :cond_0

    .line 87
    invoke-direct {p0}, Lio/dcloud/js/map/adapter/MapPolylineProxy;->createRectangle()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/Polyline;->setPoints(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pStrokeColor"
        }
    .end annotation

    const/high16 v0, -0x78000000

    or-int/2addr p1, v0

    .line 96
    iput p1, p0, Lio/dcloud/js/map/adapter/MapPolylineProxy;->mStrokeColor:I

    .line 97
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapPolylineProxy;->mMapPolylineImpl:Lcom/baidu/mapapi/map/Polyline;

    if-eqz v0, :cond_0

    .line 98
    iget v1, p0, Lio/dcloud/js/map/adapter/MapPolylineProxy;->mStrokeOpacity:F

    float-to-double v1, v1

    invoke-direct {p0, p1, v1, v2}, Lio/dcloud/js/map/adapter/MapPolylineProxy;->combineOpacity(ID)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/Polyline;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setStrokeOpacity(F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pStrokeOpacity"
        }
    .end annotation

    .line 111
    iput p1, p0, Lio/dcloud/js/map/adapter/MapPolylineProxy;->mStrokeOpacity:F

    .line 112
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapPolylineProxy;->mMapPolylineImpl:Lcom/baidu/mapapi/map/Polyline;

    if-eqz v0, :cond_0

    .line 113
    iget v1, p0, Lio/dcloud/js/map/adapter/MapPolylineProxy;->mStrokeColor:I

    float-to-double v2, p1

    invoke-direct {p0, v1, v2, v3}, Lio/dcloud/js/map/adapter/MapPolylineProxy;->combineOpacity(ID)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/Polyline;->setColor(I)V

    :cond_0
    return-void
.end method
