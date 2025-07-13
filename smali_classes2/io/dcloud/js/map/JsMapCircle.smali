.class Lio/dcloud/js/map/JsMapCircle;
.super Lio/dcloud/js/map/JsMapObject;
.source "JsMapCircle.java"

# interfaces
.implements Lio/dcloud/js/map/adapter/IFJsOverlay;


# instance fields
.field private mMapCircle:Lio/dcloud/js/map/adapter/MapCircleProxy;


# direct methods
.method public constructor <init>(Lio/dcloud/common/DHInterface/IWebview;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pWebview"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lio/dcloud/js/map/JsMapObject;-><init>(Lio/dcloud/common/DHInterface/IWebview;)V

    return-void
.end method


# virtual methods
.method protected createObject(Lorg/json/JSONArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pJsArgs"
        }
    .end annotation

    .line 53
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/js/map/JsMapCircle;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/dcloud/js/map/JsMapManager;->getMapPoint(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)Lio/dcloud/js/map/JsMapPoint;

    move-result-object v0

    const/4 v1, 0x1

    .line 54
    invoke-static {p1, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 55
    new-instance v1, Lio/dcloud/js/map/adapter/MapCircleProxy;

    invoke-virtual {v0}, Lio/dcloud/js/map/JsMapPoint;->getMapPoint()Lio/dcloud/js/map/adapter/MapPoint;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lio/dcloud/js/map/adapter/MapCircleProxy;-><init>(Lio/dcloud/js/map/adapter/MapPoint;I)V

    iput-object v1, p0, Lio/dcloud/js/map/JsMapCircle;->mMapCircle:Lio/dcloud/js/map/adapter/MapCircleProxy;

    return-void
.end method

.method public getMapOverlay()Ljava/lang/Object;
    .locals 1

    .line 60
    iget-object v0, p0, Lio/dcloud/js/map/JsMapCircle;->mMapCircle:Lio/dcloud/js/map/adapter/MapCircleProxy;

    return-object v0
.end method

.method public onAddToMapView(Lio/dcloud/js/map/adapter/DHMapView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pMapView"
        }
    .end annotation

    .line 65
    invoke-super {p0, p1}, Lio/dcloud/js/map/JsMapObject;->onAddToMapView(Lio/dcloud/js/map/adapter/DHMapView;)V

    .line 66
    iget-object v0, p0, Lio/dcloud/js/map/JsMapCircle;->mMapCircle:Lio/dcloud/js/map/adapter/MapCircleProxy;

    invoke-virtual {v0, p1}, Lio/dcloud/js/map/adapter/MapCircleProxy;->initMapCircle(Lio/dcloud/js/map/adapter/DHMapView;)V

    return-void
.end method

.method protected updateObject(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pStrEvent",
            "pJsArgs"
        }
    .end annotation

    const-string v0, "setCenter"

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/js/map/JsMapCircle;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lio/dcloud/js/map/JsMapManager;->getMapPoint(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)Lio/dcloud/js/map/JsMapPoint;

    move-result-object p1

    .line 35
    iget-object p2, p0, Lio/dcloud/js/map/JsMapCircle;->mMapCircle:Lio/dcloud/js/map/adapter/MapCircleProxy;

    invoke-virtual {p1}, Lio/dcloud/js/map/JsMapPoint;->getMapPoint()Lio/dcloud/js/map/adapter/MapPoint;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/dcloud/js/map/adapter/MapCircleProxy;->setCenter(Lio/dcloud/js/map/adapter/MapPoint;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "setRadius"

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget-object p1, p0, Lio/dcloud/js/map/JsMapCircle;->mMapCircle:Lio/dcloud/js/map/adapter/MapCircleProxy;

    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lio/dcloud/js/map/adapter/MapCircleProxy;->setRadius(I)V

    goto :goto_0

    :cond_1
    const-string v0, "setStrokeColor"

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    iget-object p1, p0, Lio/dcloud/js/map/JsMapCircle;->mMapCircle:Lio/dcloud/js/map/adapter/MapCircleProxy;

    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/dcloud/js/map/JsMapManager;->hexString2Int(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lio/dcloud/js/map/adapter/MapCircleProxy;->setStrokeColor(I)V

    goto :goto_0

    :cond_2
    const-string v0, "setStrokeOpacity"

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    iget-object p1, p0, Lio/dcloud/js/map/JsMapCircle;->mMapCircle:Lio/dcloud/js/map/adapter/MapCircleProxy;

    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    float-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lio/dcloud/js/map/adapter/MapCircleProxy;->setStrokeOpacity(D)V

    goto :goto_0

    :cond_3
    const-string v0, "setFillColor"

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 43
    iget-object p1, p0, Lio/dcloud/js/map/JsMapCircle;->mMapCircle:Lio/dcloud/js/map/adapter/MapCircleProxy;

    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/dcloud/js/map/JsMapManager;->hexString2Int(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lio/dcloud/js/map/adapter/MapCircleProxy;->setFillColor(I)V

    goto :goto_0

    :cond_4
    const-string v0, "setFillOpacity"

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 45
    iget-object p1, p0, Lio/dcloud/js/map/JsMapCircle;->mMapCircle:Lio/dcloud/js/map/adapter/MapCircleProxy;

    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    float-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lio/dcloud/js/map/adapter/MapCircleProxy;->setFillOpacity(D)V

    goto :goto_0

    :cond_5
    const-string v0, "setLineWidth"

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 47
    iget-object p1, p0, Lio/dcloud/js/map/JsMapCircle;->mMapCircle:Lio/dcloud/js/map/adapter/MapCircleProxy;

    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lio/dcloud/js/map/adapter/MapCircleProxy;->setLineWidth(I)V

    :cond_6
    :goto_0
    return-void
.end method
