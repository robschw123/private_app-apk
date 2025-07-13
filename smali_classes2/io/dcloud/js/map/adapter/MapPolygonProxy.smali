.class public Lio/dcloud/js/map/adapter/MapPolygonProxy;
.super Ljava/lang/Object;
.source "MapPolygonProxy.java"


# instance fields
.field private mFillColor:I

.field private mFillOpacity:F

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

.field mMapPolygonImpl:Lcom/baidu/mapapi/map/Polygon;

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

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1000000

    .line 38
    iput v0, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mStrokeColor:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 42
    iput v0, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mStrokeOpacity:F

    const/4 v0, 0x5

    .line 46
    iput v0, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mLineWidth:I

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mFillColor:I

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mFillOpacity:F

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mMapPolygonImpl:Lcom/baidu/mapapi/map/Polygon;

    .line 66
    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mMapPoints:Ljava/util/ArrayList;

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

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    iget-object v1, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mMapPoints:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    iget-object v1, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mMapPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/js/map/adapter/MapPoint;

    .line 184
    invoke-virtual {v2}, Lio/dcloud/js/map/adapter/MapPoint;->getLatLng()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getFillColor()I
    .locals 1

    .line 149
    iget v0, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mFillColor:I

    return v0
.end method

.method public getFillOpacity()F
    .locals 1

    .line 164
    iget v0, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mFillOpacity:F

    return v0
.end method

.method public getLineWidth()I
    .locals 1

    .line 132
    iget v0, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mLineWidth:I

    return v0
.end method

.method public getMapPolygon()Lcom/baidu/mapapi/map/PolygonOptions;
    .locals 5

    .line 74
    new-instance v0, Lcom/baidu/mapapi/map/Stroke;

    iget v1, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mLineWidth:I

    iget v2, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mStrokeColor:I

    iget v3, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mStrokeOpacity:F

    float-to-double v3, v3

    .line 75
    invoke-direct {p0, v2, v3, v4}, Lio/dcloud/js/map/adapter/MapPolygonProxy;->combineOpacity(ID)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/map/Stroke;-><init>(II)V

    .line 76
    new-instance v1, Lcom/baidu/mapapi/map/PolygonOptions;

    invoke-direct {v1}, Lcom/baidu/mapapi/map/PolygonOptions;-><init>()V

    invoke-direct {p0}, Lio/dcloud/js/map/adapter/MapPolygonProxy;->createRectangle()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/map/PolygonOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolygonOptions;

    move-result-object v1

    iget v2, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mFillColor:I

    iget v3, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mFillOpacity:F

    float-to-double v3, v3

    invoke-direct {p0, v2, v3, v4}, Lio/dcloud/js/map/adapter/MapPolygonProxy;->combineOpacity(ID)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/map/PolygonOptions;->fillColor(I)Lcom/baidu/mapapi/map/PolygonOptions;

    move-result-object v1

    .line 77
    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/PolygonOptions;->stroke(Lcom/baidu/mapapi/map/Stroke;)Lcom/baidu/mapapi/map/PolygonOptions;

    move-result-object v0

    return-object v0
.end method

.method public getPolygon()Lcom/baidu/mapapi/map/Polygon;
    .locals 1

    .line 109
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mMapPolygonImpl:Lcom/baidu/mapapi/map/Polygon;

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1

    .line 96
    iget v0, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mStrokeColor:I

    return v0
.end method

.method public getStrokeOpacity()F
    .locals 1

    .line 115
    iget v0, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mStrokeOpacity:F

    return v0
.end method

.method public initMapPolygon(Lio/dcloud/js/map/adapter/DHMapView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapview"
        }
    .end annotation

    .line 70
    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/DHMapView;->getBaiduMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object p1

    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/MapPolygonProxy;->getMapPolygon()Lcom/baidu/mapapi/map/PolygonOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    move-result-object p1

    check-cast p1, Lcom/baidu/mapapi/map/Polygon;

    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mMapPolygonImpl:Lcom/baidu/mapapi/map/Polygon;

    return-void
.end method

.method public setFillColor(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pFillColor"
        }
    .end annotation

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    .line 155
    iput p1, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mFillColor:I

    .line 156
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mMapPolygonImpl:Lcom/baidu/mapapi/map/Polygon;

    if-eqz v0, :cond_0

    .line 157
    iget v1, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mFillOpacity:F

    float-to-double v1, v1

    invoke-direct {p0, p1, v1, v2}, Lio/dcloud/js/map/adapter/MapPolygonProxy;->combineOpacity(ID)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/Polygon;->setFillColor(I)V

    :cond_0
    return-void
.end method

.method public setFillOpacity(F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pFillOpacity"
        }
    .end annotation

    .line 170
    iput p1, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mFillOpacity:F

    .line 171
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mMapPolygonImpl:Lcom/baidu/mapapi/map/Polygon;

    if-eqz v0, :cond_0

    .line 172
    iget v1, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mFillColor:I

    float-to-double v2, p1

    invoke-direct {p0, v1, v2, v3}, Lio/dcloud/js/map/adapter/MapPolygonProxy;->combineOpacity(ID)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/Polygon;->setFillColor(I)V

    :cond_0
    return-void
.end method

.method public setLineWidth(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pLineWidth"
        }
    .end annotation

    .line 138
    iput p1, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mLineWidth:I

    .line 139
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mMapPolygonImpl:Lcom/baidu/mapapi/map/Polygon;

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Lcom/baidu/mapapi/map/Stroke;

    iget v1, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mStrokeColor:I

    iget v2, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mStrokeOpacity:F

    float-to-double v2, v2

    .line 141
    invoke-direct {p0, v1, v2, v3}, Lio/dcloud/js/map/adapter/MapPolygonProxy;->combineOpacity(ID)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/baidu/mapapi/map/Stroke;-><init>(II)V

    .line 142
    iget-object p1, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mMapPolygonImpl:Lcom/baidu/mapapi/map/Polygon;

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/Polygon;->setStroke(Lcom/baidu/mapapi/map/Stroke;)V

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
            "pAryPoint"
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

    .line 89
    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mMapPoints:Ljava/util/ArrayList;

    .line 90
    iget-object p1, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mMapPolygonImpl:Lcom/baidu/mapapi/map/Polygon;

    if-eqz p1, :cond_0

    .line 91
    invoke-direct {p0}, Lio/dcloud/js/map/adapter/MapPolygonProxy;->createRectangle()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/Polygon;->setPoints(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pStrokeColor"
        }
    .end annotation

    const/high16 v0, -0x1000000

    add-int/2addr p1, v0

    .line 100
    iput p1, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mStrokeColor:I

    .line 101
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mMapPolygonImpl:Lcom/baidu/mapapi/map/Polygon;

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Lcom/baidu/mapapi/map/Stroke;

    iget v1, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mLineWidth:I

    iget v2, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mStrokeOpacity:F

    float-to-double v2, v2

    .line 103
    invoke-direct {p0, p1, v2, v3}, Lio/dcloud/js/map/adapter/MapPolygonProxy;->combineOpacity(ID)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/baidu/mapapi/map/Stroke;-><init>(II)V

    .line 104
    iget-object p1, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mMapPolygonImpl:Lcom/baidu/mapapi/map/Polygon;

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/Polygon;->setStroke(Lcom/baidu/mapapi/map/Stroke;)V

    :cond_0
    return-void
.end method

.method public setStrokeOpacity(F)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pStrokeOpacity"
        }
    .end annotation

    .line 121
    iput p1, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mStrokeOpacity:F

    .line 122
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mMapPolygonImpl:Lcom/baidu/mapapi/map/Polygon;

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Lcom/baidu/mapapi/map/Stroke;

    iget v1, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mLineWidth:I

    iget v2, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mStrokeColor:I

    float-to-double v3, p1

    .line 124
    invoke-direct {p0, v2, v3, v4}, Lio/dcloud/js/map/adapter/MapPolygonProxy;->combineOpacity(ID)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/baidu/mapapi/map/Stroke;-><init>(II)V

    .line 125
    iget-object p1, p0, Lio/dcloud/js/map/adapter/MapPolygonProxy;->mMapPolygonImpl:Lcom/baidu/mapapi/map/Polygon;

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/Polygon;->setStroke(Lcom/baidu/mapapi/map/Stroke;)V

    :cond_0
    return-void
.end method
