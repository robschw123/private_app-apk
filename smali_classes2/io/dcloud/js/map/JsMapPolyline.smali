.class Lio/dcloud/js/map/JsMapPolyline;
.super Lio/dcloud/js/map/JsMapObject;
.source "JsMapPolyline.java"

# interfaces
.implements Lio/dcloud/js/map/adapter/IFJsOverlay;


# instance fields
.field private mPolyline:Lio/dcloud/js/map/adapter/MapPolylineProxy;


# direct methods
.method protected constructor <init>(Lio/dcloud/common/DHInterface/IWebview;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pWebview"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Lio/dcloud/js/map/JsMapObject;-><init>(Lio/dcloud/common/DHInterface/IWebview;)V

    return-void
.end method

.method private jsArrToPointArr(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pArrayJsPoint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/js/map/JsMapPoint;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/js/map/adapter/MapPoint;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 65
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 66
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/js/map/JsMapPoint;

    invoke-virtual {v2}, Lio/dcloud/js/map/JsMapPoint;->getMapPoint()Lio/dcloud/js/map/adapter/MapPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
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

    .line 42
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/js/map/JsMapPolyline;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/dcloud/js/map/JsMapManager;->getJsToPointArry(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 43
    invoke-direct {p0, p1}, Lio/dcloud/js/map/JsMapPolyline;->jsArrToPointArr(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 44
    new-instance v0, Lio/dcloud/js/map/adapter/MapPolylineProxy;

    invoke-direct {v0, p1}, Lio/dcloud/js/map/adapter/MapPolylineProxy;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lio/dcloud/js/map/JsMapPolyline;->mPolyline:Lio/dcloud/js/map/adapter/MapPolylineProxy;

    return-void
.end method

.method public getMapOverlay()Ljava/lang/Object;
    .locals 1

    .line 74
    iget-object v0, p0, Lio/dcloud/js/map/JsMapPolyline;->mPolyline:Lio/dcloud/js/map/adapter/MapPolylineProxy;

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

    .line 79
    invoke-super {p0, p1}, Lio/dcloud/js/map/JsMapObject;->onAddToMapView(Lio/dcloud/js/map/adapter/DHMapView;)V

    .line 80
    iget-object v0, p0, Lio/dcloud/js/map/JsMapPolyline;->mPolyline:Lio/dcloud/js/map/adapter/MapPolylineProxy;

    invoke-virtual {v0, p1}, Lio/dcloud/js/map/adapter/MapPolylineProxy;->initMapPolyline(Lio/dcloud/js/map/adapter/DHMapView;)V

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

    const-string v0, "setPath"

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/js/map/JsMapPolyline;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lio/dcloud/js/map/JsMapManager;->getJsToPointArry(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 51
    invoke-direct {p0, p1}, Lio/dcloud/js/map/JsMapPolyline;->jsArrToPointArr(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 52
    iget-object p2, p0, Lio/dcloud/js/map/JsMapPolyline;->mPolyline:Lio/dcloud/js/map/adapter/MapPolylineProxy;

    invoke-virtual {p2, p1}, Lio/dcloud/js/map/adapter/MapPolylineProxy;->setPath(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const-string v0, "setStrokeColor"

    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object p1, p0, Lio/dcloud/js/map/JsMapPolyline;->mPolyline:Lio/dcloud/js/map/adapter/MapPolylineProxy;

    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lio/dcloud/js/map/adapter/MapPolylineProxy;->setStrokeColor(I)V

    goto :goto_0

    :cond_1
    const-string v0, "setStrokeOpacity"

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    iget-object p1, p0, Lio/dcloud/js/map/JsMapPolyline;->mPolyline:Lio/dcloud/js/map/adapter/MapPolylineProxy;

    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;F)F

    move-result p2

    invoke-virtual {p1, p2}, Lio/dcloud/js/map/adapter/MapPolylineProxy;->setStrokeOpacity(F)V

    goto :goto_0

    :cond_2
    const-string v0, "setLineWidth"

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 58
    iget-object p1, p0, Lio/dcloud/js/map/JsMapPolyline;->mPolyline:Lio/dcloud/js/map/adapter/MapPolylineProxy;

    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lio/dcloud/js/map/adapter/MapPolylineProxy;->setLineWidth(I)V

    :cond_3
    :goto_0
    return-void
.end method
