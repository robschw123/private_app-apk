.class public Lio/dcloud/js/map/adapter/MapCircleProxy;
.super Ljava/lang/Object;
.source "MapCircleProxy.java"


# instance fields
.field private mCenter:Lio/dcloud/js/map/adapter/MapPoint;

.field private mCircle:Lcom/baidu/mapapi/map/Circle;

.field private mFillColor:I

.field private mFillOpacity:D

.field private mJsId:Ljava/lang/String;

.field private mLineWidth:I

.field private mRadius:I

.field private mStrokeColor:I

.field private mStrokeOpacity:D


# direct methods
.method public constructor <init>(Lio/dcloud/js/map/adapter/MapPoint;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pCen",
            "pRad"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1000000

    .line 31
    iput v0, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mStrokeColor:I

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 35
    iput-wide v1, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mStrokeOpacity:D

    .line 39
    iput v0, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mFillColor:I

    const/4 v0, 0x5

    .line 47
    iput v0, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mLineWidth:I

    .line 62
    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mCenter:Lio/dcloud/js/map/adapter/MapPoint;

    .line 63
    iput p2, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mRadius:I

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


# virtual methods
.method public getCenter()Lio/dcloud/js/map/adapter/MapPoint;
    .locals 1

    .line 100
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mCenter:Lio/dcloud/js/map/adapter/MapPoint;

    return-object v0
.end method

.method public getCircle()Lcom/baidu/mapapi/map/Circle;
    .locals 1

    .line 197
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mCircle:Lcom/baidu/mapapi/map/Circle;

    return-object v0
.end method

.method public getFillColor()I
    .locals 1

    .line 135
    iget v0, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mFillColor:I

    return v0
.end method

.method public getFillOpacity()D
    .locals 2

    .line 150
    iget-wide v0, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mFillOpacity:D

    return-wide v0
.end method

.method public getLineWidth()I
    .locals 1

    .line 167
    iget v0, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mLineWidth:I

    return v0
.end method

.method public getMapCircle()Lcom/baidu/mapapi/map/CircleOptions;
    .locals 5

    .line 190
    new-instance v0, Lcom/baidu/mapapi/map/Stroke;

    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/MapCircleProxy;->getLineWidth()I

    move-result v1

    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/MapCircleProxy;->getStrokeColor()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/map/Stroke;-><init>(II)V

    .line 191
    new-instance v1, Lcom/baidu/mapapi/map/CircleOptions;

    invoke-direct {v1}, Lcom/baidu/mapapi/map/CircleOptions;-><init>()V

    iget-object v2, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mCenter:Lio/dcloud/js/map/adapter/MapPoint;

    invoke-virtual {v2}, Lio/dcloud/js/map/adapter/MapPoint;->getLatLng()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/map/CircleOptions;->center(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/CircleOptions;

    move-result-object v1

    iget v2, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mRadius:I

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/map/CircleOptions;->radius(I)Lcom/baidu/mapapi/map/CircleOptions;

    move-result-object v1

    .line 192
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/MapCircleProxy;->getFillColor()I

    move-result v2

    iget-wide v3, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mFillOpacity:D

    invoke-direct {p0, v2, v3, v4}, Lio/dcloud/js/map/adapter/MapCircleProxy;->combineOpacity(ID)I

    move-result v2

    .line 191
    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/map/CircleOptions;->fillColor(I)Lcom/baidu/mapapi/map/CircleOptions;

    move-result-object v1

    .line 193
    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/CircleOptions;->stroke(Lcom/baidu/mapapi/map/Stroke;)Lcom/baidu/mapapi/map/CircleOptions;

    move-result-object v0

    return-object v0
.end method

.method public getRadius()D
    .locals 2

    .line 67
    iget v0, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mRadius:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getStrokeColor()I
    .locals 3

    .line 77
    iget v0, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mStrokeColor:I

    iget-wide v1, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mStrokeOpacity:D

    invoke-direct {p0, v0, v1, v2}, Lio/dcloud/js/map/adapter/MapCircleProxy;->combineOpacity(ID)I

    move-result v0

    return v0
.end method

.method public getStrokeOpacity()D
    .locals 2

    .line 117
    iget-wide v0, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mStrokeOpacity:D

    return-wide v0
.end method

.method public initMapCircle(Lio/dcloud/js/map/adapter/DHMapView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapview"
        }
    .end annotation

    .line 186
    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/DHMapView;->getBaiduMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object p1

    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/MapCircleProxy;->getMapCircle()Lcom/baidu/mapapi/map/CircleOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    move-result-object p1

    check-cast p1, Lcom/baidu/mapapi/map/Circle;

    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mCircle:Lcom/baidu/mapapi/map/Circle;

    return-void
.end method

.method public setCenter(Lio/dcloud/js/map/adapter/MapPoint;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pCenter"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mCenter:Lio/dcloud/js/map/adapter/MapPoint;

    .line 108
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mCircle:Lcom/baidu/mapapi/map/Circle;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/MapPoint;->getLatLng()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/Circle;->setCenter(Lcom/baidu/mapapi/model/LatLng;)V

    :cond_0
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

    .line 142
    iput p1, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mFillColor:I

    .line 143
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mCircle:Lcom/baidu/mapapi/map/Circle;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mFillOpacity:D

    invoke-direct {p0, p1, v1, v2}, Lio/dcloud/js/map/adapter/MapCircleProxy;->combineOpacity(ID)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/Circle;->setFillColor(I)V

    :cond_0
    return-void
.end method

.method public setFillOpacity(D)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pFillOpacity"
        }
    .end annotation

    .line 157
    iput-wide p1, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mFillOpacity:D

    .line 158
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mCircle:Lcom/baidu/mapapi/map/Circle;

    if-eqz v0, :cond_0

    .line 159
    iget v1, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mFillColor:I

    invoke-direct {p0, v1, p1, p2}, Lio/dcloud/js/map/adapter/MapCircleProxy;->combineOpacity(ID)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/Circle;->setFillColor(I)V

    :cond_0
    return-void
.end method

.method public setLineWidth(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pLineWidth"
        }
    .end annotation

    .line 174
    iput p1, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mLineWidth:I

    .line 175
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mCircle:Lcom/baidu/mapapi/map/Circle;

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Lcom/baidu/mapapi/map/Stroke;

    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/MapCircleProxy;->getStrokeColor()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/baidu/mapapi/map/Stroke;-><init>(II)V

    .line 177
    iget-object p1, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mCircle:Lcom/baidu/mapapi/map/Circle;

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/Circle;->setStroke(Lcom/baidu/mapapi/map/Stroke;)V

    :cond_0
    return-void
.end method

.method public setRadius(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pRadius"
        }
    .end annotation

    .line 70
    iput p1, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mRadius:I

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pStrokeColor"
        }
    .end annotation

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    .line 89
    iput p1, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mStrokeColor:I

    .line 90
    iget-object p1, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mCircle:Lcom/baidu/mapapi/map/Circle;

    if-eqz p1, :cond_0

    .line 91
    new-instance p1, Lcom/baidu/mapapi/map/Stroke;

    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/MapCircleProxy;->getLineWidth()I

    move-result v0

    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/MapCircleProxy;->getStrokeColor()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/baidu/mapapi/map/Stroke;-><init>(II)V

    .line 92
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mCircle:Lcom/baidu/mapapi/map/Circle;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/Circle;->setStroke(Lcom/baidu/mapapi/map/Stroke;)V

    :cond_0
    return-void
.end method

.method public setStrokeOpacity(D)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pStrokeOpacity"
        }
    .end annotation

    .line 124
    iput-wide p1, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mStrokeOpacity:D

    .line 125
    iget-object p1, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mCircle:Lcom/baidu/mapapi/map/Circle;

    if-eqz p1, :cond_0

    .line 126
    new-instance p1, Lcom/baidu/mapapi/map/Stroke;

    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/MapCircleProxy;->getLineWidth()I

    move-result p2

    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/MapCircleProxy;->getStrokeColor()I

    move-result v0

    invoke-direct {p1, p2, v0}, Lcom/baidu/mapapi/map/Stroke;-><init>(II)V

    .line 127
    iget-object p2, p0, Lio/dcloud/js/map/adapter/MapCircleProxy;->mCircle:Lcom/baidu/mapapi/map/Circle;

    invoke-virtual {p2, p1}, Lcom/baidu/mapapi/map/Circle;->setStroke(Lcom/baidu/mapapi/map/Stroke;)V

    :cond_0
    return-void
.end method
