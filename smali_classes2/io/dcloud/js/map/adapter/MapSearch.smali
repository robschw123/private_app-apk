.class public Lio/dcloud/js/map/adapter/MapSearch;
.super Ljava/lang/Object;
.source "MapSearch.java"

# interfaces
.implements Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;
.implements Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;


# static fields
.field private static final POISEARCH_TYPE:I = 0x0

.field private static final ROUTESEARCH_TYPE:I = 0x1


# instance fields
.field public mCallbackId:Ljava/lang/String;

.field private mDrivingPolicy:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;

.field private mIWebview:Lio/dcloud/common/DHInterface/IWebview;

.field private mIndex:I

.field mMapView:Lio/dcloud/js/map/adapter/DHMapView;

.field private mPageCapacity:I

.field private mPoiSearch:Lcom/baidu/mapapi/search/poi/PoiSearch;

.field private mSearchHandler:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

.field private mTransitPolicy:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;


# direct methods
.method public constructor <init>(Lio/dcloud/common/DHInterface/IWebview;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pIWebview"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lio/dcloud/js/map/adapter/MapSearch;->mPoiSearch:Lcom/baidu/mapapi/search/poi/PoiSearch;

    const/16 v1, 0xa

    .line 83
    iput v1, p0, Lio/dcloud/js/map/adapter/MapSearch;->mPageCapacity:I

    const/4 v1, 0x0

    .line 87
    iput v1, p0, Lio/dcloud/js/map/adapter/MapSearch;->mIndex:I

    .line 91
    sget-object v1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;->EBUS_TIME_FIRST:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    iput-object v1, p0, Lio/dcloud/js/map/adapter/MapSearch;->mTransitPolicy:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    .line 95
    sget-object v1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;->ECAR_TIME_FIRST:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;

    iput-object v1, p0, Lio/dcloud/js/map/adapter/MapSearch;->mDrivingPolicy:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;

    .line 609
    iput-object v0, p0, Lio/dcloud/js/map/adapter/MapSearch;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    .line 106
    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapSearch;->mIWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 107
    invoke-static {}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->newInstance()Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapSearch;->mSearchHandler:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    .line 108
    invoke-virtual {p1, p0}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->setOnGetRoutePlanResultListener(Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;)V

    .line 110
    invoke-static {}, Lcom/baidu/mapapi/search/poi/PoiSearch;->newInstance()Lcom/baidu/mapapi/search/poi/PoiSearch;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapSearch;->mPoiSearch:Lcom/baidu/mapapi/search/poi/PoiSearch;

    .line 111
    invoke-virtual {p1, p0}, Lcom/baidu/mapapi/search/poi/PoiSearch;->setOnGetPoiSearchResultListener(Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;)V

    return-void
.end method

.method private create_jsDrivingRouteObj(Lcom/baidu/mapapi/search/route/DrivingRouteLine;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routePlan"
        }
    .end annotation

    .line 399
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 401
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    const-string v2, "sp"

    invoke-direct {p0, v1, v2}, Lio/dcloud/js/map/adapter/MapSearch;->create_js_Point_Obj(Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    const-string v3, "ep"

    invoke-direct {p0, v1, v3}, Lio/dcloud/js/map/adapter/MapSearch;->create_js_Point_Obj(Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "route"

    const-string v3, "plus.maps.Route"

    invoke-static {v0, v2, v3, v1}, Lio/dcloud/js/map/MapJsUtil;->create_Js_Var(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getDistance()I

    move-result v1

    int-to-double v3, v1

    const-string v1, "distance"

    invoke-static {v0, v2, v1, v3, v4}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;D)V

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Route_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "_UUID_"

    .line 409
    invoke-static {v0, v2, v3, v1}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    new-instance v3, Lio/dcloud/js/map/JsMapRoute;

    iget-object v4, p0, Lio/dcloud/js/map/adapter/MapSearch;->mIWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-direct {v3, v4}, Lio/dcloud/js/map/JsMapRoute;-><init>(Lio/dcloud/common/DHInterface/IWebview;)V

    .line 411
    invoke-virtual {v3, p1}, Lio/dcloud/js/map/JsMapRoute;->setRoute(Ljava/lang/Object;)V

    .line 412
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lio/dcloud/js/map/JsMapManager;->putJsObject(Ljava/lang/String;Lio/dcloud/js/map/JsMapObject;)V

    .line 413
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 414
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getWayPoints()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 415
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getWayPoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/search/core/RouteNode;

    .line 416
    invoke-virtual {v3}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lio/dcloud/js/map/adapter/MapSearch;->create_js_Point_Obj(Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 418
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    int-to-double v3, p1

    const-string p1, "pointCount"

    invoke-static {v0, v2, p1, v3, v4}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;D)V

    const-string p1, "pointList"

    .line 419
    invoke-static {v0, v2, p1, v1}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 421
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lio/dcloud/js/map/MapJsUtil;->wrapJsEvalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private create_jsTransitRouteObj(Lcom/baidu/mapapi/search/route/TransitRouteLine;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routePlan"
        }
    .end annotation

    .line 432
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 434
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    const-string v2, "sp"

    invoke-direct {p0, v1, v2}, Lio/dcloud/js/map/adapter/MapSearch;->create_js_Point_Obj(Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    const-string v3, "ep"

    invoke-direct {p0, v1, v3}, Lio/dcloud/js/map/adapter/MapSearch;->create_js_Point_Obj(Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "route"

    const-string v3, "plus.maps.Route"

    invoke-static {v0, v2, v3, v1}, Lio/dcloud/js/map/MapJsUtil;->create_Js_Var(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getDistance()I

    move-result v1

    int-to-double v3, v1

    const-string v1, "distance"

    invoke-static {v0, v2, v1, v3, v4}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;D)V

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Route_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "_UUID_"

    .line 442
    invoke-static {v0, v2, v3, v1}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    new-instance v3, Lio/dcloud/js/map/JsMapRoute;

    iget-object v4, p0, Lio/dcloud/js/map/adapter/MapSearch;->mIWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-direct {v3, v4}, Lio/dcloud/js/map/JsMapRoute;-><init>(Lio/dcloud/common/DHInterface/IWebview;)V

    .line 444
    invoke-virtual {v3, p1}, Lio/dcloud/js/map/JsMapRoute;->setRoute(Ljava/lang/Object;)V

    .line 445
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lio/dcloud/js/map/JsMapManager;->putJsObject(Ljava/lang/String;Lio/dcloud/js/map/JsMapObject;)V

    .line 446
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 447
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;

    .line 448
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 449
    invoke-virtual {v3}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getWayPoints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/mapapi/model/LatLng;

    const/4 v6, 0x0

    .line 450
    invoke-direct {p0, v5, v6}, Lio/dcloud/js/map/adapter/MapSearch;->create_js_Point_Obj(Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 452
    :cond_0
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 454
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    int-to-double v3, p1

    const-string p1, "pointCount"

    invoke-static {v0, v2, p1, v3, v4}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;D)V

    const-string p1, "pointList"

    .line 455
    invoke-static {v0, v2, p1, v1}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 456
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lio/dcloud/js/map/MapJsUtil;->wrapJsEvalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private create_js_Point_Obj(Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pPoint",
            "pName"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 325
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "var "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 327
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 328
    iget-wide v1, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    .line 329
    iget-wide v3, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    .line 330
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "plus.maps.Point"

    invoke-static {v0, p2, v1, p1}, Lio/dcloud/js/map/MapJsUtil;->create_Js_Var(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private create_js_Position_Obj(Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pt",
            "posName"
        }
    .end annotation

    .line 353
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "p"

    .line 355
    invoke-direct {p0, p1, v1}, Lio/dcloud/js/map/adapter/MapSearch;->create_js_Point_Obj(Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "plus.maps.Position"

    .line 356
    invoke-static {v0, p2, p1, v1}, Lio/dcloud/js/map/MapJsUtil;->create_Js_Var(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private create_js_Position_Obj(Lcom/baidu/mapapi/search/core/PoiInfo;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "poi"
        }
    .end annotation

    .line 340
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 342
    iget-object v1, p1, Lcom/baidu/mapapi/search/core/PoiInfo;->location:Lcom/baidu/mapapi/model/LatLng;

    const-string v2, "p"

    invoke-direct {p0, v1, v2}, Lio/dcloud/js/map/adapter/MapSearch;->create_js_Point_Obj(Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "pos"

    const-string v3, "plus.maps.Position"

    .line 344
    invoke-static {v0, v1, v3, v2}, Lio/dcloud/js/map/MapJsUtil;->create_Js_Var(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v2, p1, Lcom/baidu/mapapi/search/core/PoiInfo;->address:Ljava/lang/String;

    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->makeQueryStringAllRegExp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "address"

    invoke-static {v0, v1, v3, v2}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v2, p1, Lcom/baidu/mapapi/search/core/PoiInfo;->city:Ljava/lang/String;

    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->makeQueryStringAllRegExp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "city"

    invoke-static {v0, v1, v3, v2}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v2, p1, Lcom/baidu/mapapi/search/core/PoiInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->makeQueryStringAllRegExp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-static {v0, v1, v3, v2}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v2, p1, Lcom/baidu/mapapi/search/core/PoiInfo;->phoneNum:Ljava/lang/String;

    const-string v3, "phone"

    invoke-static {v0, v1, v3, v2}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object p1, p1, Lcom/baidu/mapapi/search/core/PoiInfo;->postCode:Ljava/lang/String;

    const-string v2, "postcode"

    invoke-static {v0, v1, v2, p1}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lio/dcloud/js/map/MapJsUtil;->wrapJsEvalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private create_js_SearchPoiResult_Obj(Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pName",
            "pRet"
        }
    .end annotation

    const-string v0, "plus.maps.__SearchPoiResult__"

    const/4 v1, 0x0

    .line 335
    invoke-static {p2, p1, v0, v1}, Lio/dcloud/js/map/MapJsUtil;->create_Js_Var(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method private create_js_SearchRouteResult_Obj(Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pName",
            "pRet"
        }
    .end annotation

    const-string v0, "plus.maps.__SearchRouteResult__"

    const/4 v1, 0x0

    .line 460
    invoke-static {p2, p1, v0, v1}, Lio/dcloud/js/map/MapJsUtil;->create_Js_Var(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method private newWalkingRouteObj(Lcom/baidu/mapapi/search/route/WalkingRouteLine;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routePlan"
        }
    .end annotation

    .line 473
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 475
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    const-string v2, "sp"

    invoke-direct {p0, v1, v2}, Lio/dcloud/js/map/adapter/MapSearch;->create_js_Point_Obj(Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 477
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    const-string v3, "ep"

    invoke-direct {p0, v1, v3}, Lio/dcloud/js/map/adapter/MapSearch;->create_js_Point_Obj(Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "route"

    const-string v3, "plus.maps.Route"

    invoke-static {v0, v2, v3, v1}, Lio/dcloud/js/map/MapJsUtil;->create_Js_Var(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getDistance()I

    move-result v1

    int-to-double v3, v1

    const-string v1, "distance"

    invoke-static {v0, v2, v1, v3, v4}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;D)V

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Route_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "_UUID_"

    .line 483
    invoke-static {v0, v2, v3, v1}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    new-instance v3, Lio/dcloud/js/map/JsMapRoute;

    iget-object v4, p0, Lio/dcloud/js/map/adapter/MapSearch;->mIWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-direct {v3, v4}, Lio/dcloud/js/map/JsMapRoute;-><init>(Lio/dcloud/common/DHInterface/IWebview;)V

    .line 485
    invoke-virtual {v3, p1}, Lio/dcloud/js/map/JsMapRoute;->setRoute(Ljava/lang/Object;)V

    .line 486
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lio/dcloud/js/map/JsMapManager;->putJsObject(Ljava/lang/String;Lio/dcloud/js/map/JsMapObject;)V

    .line 487
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 488
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;

    .line 489
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 490
    invoke-virtual {v3}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->getWayPoints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/mapapi/model/LatLng;

    const/4 v6, 0x0

    .line 491
    invoke-direct {p0, v5, v6}, Lio/dcloud/js/map/adapter/MapSearch;->create_js_Point_Obj(Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 493
    :cond_0
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 495
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    int-to-double v3, p1

    const-string p1, "pointCount"

    invoke-static {v0, v2, p1, v3, v4}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;D)V

    const-string p1, "pointList"

    .line 496
    invoke-static {v0, v2, p1, v1}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 497
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lio/dcloud/js/map/MapJsUtil;->wrapJsEvalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private onSearchComplete(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "searchType",
            "pScript"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 306
    iget-object p1, p0, Lio/dcloud/js/map/adapter/MapSearch;->mIWebview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapSearch;->mCallbackId:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lio/dcloud/js/map/MapJsUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 308
    iget-object p1, p0, Lio/dcloud/js/map/adapter/MapSearch;->mIWebview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapSearch;->mCallbackId:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lio/dcloud/js/map/MapJsUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private route_callback_js(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;IIILorg/json/JSONArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sPoint",
            "ePoint",
            "routeNumber",
            "state",
            "type",
            "routeList"
        }
    .end annotation

    .line 616
    new-instance p5, Ljava/lang/StringBuffer;

    invoke-direct {p5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "srr"

    .line 617
    invoke-direct {p0, v0, p5}, Lio/dcloud/js/map/adapter/MapSearch;->create_js_SearchRouteResult_Obj(Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    int-to-double v1, p4

    const-string p4, "__state__"

    .line 618
    invoke-static {p5, v0, p4, v1, v2}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;D)V

    const-string p4, "__type__"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 619
    invoke-static {p5, v0, p4, v1, v2}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;D)V

    const-string p4, "startPosition"

    .line 620
    invoke-direct {p0, p1, p4}, Lio/dcloud/js/map/adapter/MapSearch;->create_js_Position_Obj(Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p4}, Lio/dcloud/js/map/MapJsUtil;->wrapJsEvalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p5, v0, p4, p1, v1}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "endPosition"

    .line 621
    invoke-direct {p0, p2, p1}, Lio/dcloud/js/map/adapter/MapSearch;->create_js_Position_Obj(Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lio/dcloud/js/map/MapJsUtil;->wrapJsEvalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p5, v0, p1, p2, v1}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    int-to-double p1, p3

    const-string p3, "routeNumber"

    .line 622
    invoke-static {p5, v0, p3, p1, p2}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;D)V

    const-string p1, "routeList"

    .line 623
    invoke-static {p5, v0, p1, p6}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 624
    invoke-virtual {p5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lio/dcloud/js/map/MapJsUtil;->wrapJsEvalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Lio/dcloud/js/map/adapter/MapSearch;->onSearchComplete(ILjava/lang/String;)V

    return-void
.end method

.method private route_error_callback_js(ILjava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "state",
            "msg",
            "type"
        }
    .end annotation

    .line 703
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "srr"

    .line 704
    invoke-direct {p0, v1, v0}, Lio/dcloud/js/map/adapter/MapSearch;->create_js_SearchRouteResult_Obj(Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    int-to-double v2, p1

    const-string p1, "__state__"

    .line 705
    invoke-static {v0, v1, p1, v2, v3}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;D)V

    int-to-double v2, p3

    const-string p1, "__type__"

    .line 706
    invoke-static {v0, v1, p1, v2, v3}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;D)V

    const-string p1, "__msg__"

    .line 707
    invoke-static {v0, v1, p1, p2}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lio/dcloud/js/map/MapJsUtil;->wrapJsEvalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, Lio/dcloud/js/map/adapter/MapSearch;->onSearchComplete(ILjava/lang/String;)V

    return-void
.end method

.method private toPositionArray(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/PoiInfo;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 361
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 362
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/search/core/PoiInfo;

    .line 363
    invoke-direct {p0, v1}, Lio/dcloud/js/map/adapter/MapSearch;->create_js_Position_Obj(Lcom/baidu/mapapi/search/core/PoiInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private toRouteArray(Lcom/baidu/mapapi/search/route/DrivingRouteResult;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routes"
        }
    .end annotation

    .line 376
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 377
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->getRouteLines()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    .line 378
    invoke-direct {p0, v1}, Lio/dcloud/js/map/adapter/MapSearch;->create_jsDrivingRouteObj(Lcom/baidu/mapapi/search/route/DrivingRouteLine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private toRouteArray(Lcom/baidu/mapapi/search/route/TransitRouteResult;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routes"
        }
    .end annotation

    .line 384
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 385
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/TransitRouteResult;->getRouteLines()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/search/route/TransitRouteLine;

    .line 386
    invoke-direct {p0, v1}, Lio/dcloud/js/map/adapter/MapSearch;->create_jsTransitRouteObj(Lcom/baidu/mapapi/search/route/TransitRouteLine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private toRouteArray(Lcom/baidu/mapapi/search/route/WalkingRouteResult;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routes"
        }
    .end annotation

    .line 369
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 370
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/WalkingRouteResult;->getRouteLines()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    .line 371
    invoke-direct {p0, v1}, Lio/dcloud/js/map/adapter/MapSearch;->newWalkingRouteObj(Lcom/baidu/mapapi/search/route/WalkingRouteLine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 115
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapSearch;->mSearchHandler:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->destroy()V

    .line 116
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapSearch;->mPoiSearch:Lcom/baidu/mapapi/search/poi/PoiSearch;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/poi/PoiSearch;->destroy()V

    return-void
.end method

.method public drivingSearch(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pStart",
            "pStartCity",
            "pEnd",
            "pEndCity"
        }
    .end annotation

    .line 267
    instance-of v0, p1, Lio/dcloud/js/map/adapter/MapPoint;

    if-eqz v0, :cond_0

    .line 268
    check-cast p1, Lio/dcloud/js/map/adapter/MapPoint;

    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/MapPoint;->getLatLng()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/mapapi/search/route/PlanNode;->withLocation(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object p1

    goto :goto_0

    .line 270
    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/baidu/mapapi/search/route/PlanNode;->withCityNameAndPlaceName(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object p1

    .line 273
    :goto_0
    instance-of p2, p3, Lio/dcloud/js/map/adapter/MapPoint;

    if-eqz p2, :cond_1

    .line 274
    check-cast p3, Lio/dcloud/js/map/adapter/MapPoint;

    invoke-virtual {p3}, Lio/dcloud/js/map/adapter/MapPoint;->getLatLng()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p2

    invoke-static {p2}, Lcom/baidu/mapapi/search/route/PlanNode;->withLocation(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object p2

    goto :goto_1

    .line 276
    :cond_1
    check-cast p3, Ljava/lang/String;

    invoke-static {p4, p3}, Lcom/baidu/mapapi/search/route/PlanNode;->withCityNameAndPlaceName(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object p2

    .line 278
    :goto_1
    iget-object p3, p0, Lio/dcloud/js/map/adapter/MapSearch;->mSearchHandler:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    new-instance p4, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;

    invoke-direct {p4}, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;-><init>()V

    invoke-virtual {p4, p1}, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->from(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->to(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/js/map/adapter/MapSearch;->mDrivingPolicy:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->policy(Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;)Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->drivingSearch(Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;)Z

    return-void
.end method

.method public getPageCapacity()I
    .locals 1

    .line 123
    iget v0, p0, Lio/dcloud/js/map/adapter/MapSearch;->mPageCapacity:I

    return v0
.end method

.method public onGetBikingRouteResult(Lcom/baidu/mapapi/search/route/BikingRouteResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bikingRouteResult"
        }
    .end annotation

    return-void
.end method

.method public onGetDrivingRouteResult(Lcom/baidu/mapapi/search/route/DrivingRouteResult;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    .line 630
    iget-object v2, p1, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v3, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-eq v2, v3, :cond_1

    .line 631
    :cond_0
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lio/dcloud/feature/amap/R$string;->dcloud_feature_map_baidu_error_no_search_result:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lio/dcloud/js/map/adapter/MapSearch;->route_error_callback_js(ILjava/lang/String;I)V

    .line 633
    :cond_1
    iget-object v2, p1, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v3, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->AMBIGUOUS_ROURE_ADDR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v2, v3, :cond_2

    .line 634
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lio/dcloud/feature/amap/R$string;->dcloud_feature_map_baidu_error_position_has_diff_meaning:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1, v0}, Lio/dcloud/js/map/adapter/MapSearch;->route_error_callback_js(ILjava/lang/String;I)V

    return-void

    .line 637
    :cond_2
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v0, v1, :cond_3

    const/4 v6, 0x0

    .line 639
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->getRouteLines()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    .line 640
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->getRouteLines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    .line 641
    invoke-direct {p0, p1}, Lio/dcloud/js/map/adapter/MapSearch;->toRouteArray(Lcom/baidu/mapapi/search/route/DrivingRouteResult;)Lorg/json/JSONArray;

    move-result-object v8

    move-object v2, p0

    .line 640
    invoke-direct/range {v2 .. v8}, Lio/dcloud/js/map/adapter/MapSearch;->route_callback_js(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;IIILorg/json/JSONArray;)V

    :cond_3
    return-void
.end method

.method public onGetIndoorRouteResult(Lcom/baidu/mapapi/search/route/IndoorRouteResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indoorRouteResult"
        }
    .end annotation

    return-void
.end method

.method public onGetMassTransitRouteResult(Lcom/baidu/mapapi/search/route/MassTransitRouteResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "massTransitRouteResult"
        }
    .end annotation

    return-void
.end method

.method public onGetPoiDetailResult(Lcom/baidu/mapapi/search/poi/PoiDetailResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    return-void
.end method

.method public onGetPoiDetailResult(Lcom/baidu/mapapi/search/poi/PoiDetailSearchResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "poiDetailSearchResult"
        }
    .end annotation

    return-void
.end method

.method public onGetPoiIndoorResult(Lcom/baidu/mapapi/search/poi/PoiIndoorResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "poiIndoorResult"
        }
    .end annotation

    return-void
.end method

.method public onGetPoiResult(Lcom/baidu/mapapi/search/poi/PoiResult;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 730
    iget-object v1, p1, Lcom/baidu/mapapi/search/poi/PoiResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v2, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 732
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lio/dcloud/feature/amap/R$string;->dcloud_feature_map_baidu_error_no_search_result:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lio/dcloud/js/map/adapter/MapSearch;->route_error_callback_js(ILjava/lang/String;I)V

    .line 734
    :cond_1
    iget-object v1, p1, Lcom/baidu/mapapi/search/poi/PoiResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v2, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v1, v2, :cond_3

    const-string v1, "spr"

    .line 737
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 738
    invoke-direct {p0, v1, v2}, Lio/dcloud/js/map/adapter/MapSearch;->create_js_SearchPoiResult_Obj(Ljava/lang/String;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    int-to-double v3, v0

    const-string v5, "__state__"

    .line 739
    invoke-static {v2, v1, v5, v3, v4}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;D)V

    const-wide/16 v3, 0x0

    const-string v5, "__type__"

    .line 740
    invoke-static {v2, v1, v5, v3, v4}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;D)V

    if-eqz p1, :cond_2

    .line 747
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/poi/PoiResult;->getTotalPoiNum()I

    move-result v3

    .line 748
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/poi/PoiResult;->getCurrentPageCapacity()I

    move-result v4

    .line 749
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/poi/PoiResult;->getTotalPageNum()I

    move-result v5

    .line 750
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/poi/PoiResult;->getCurrentPageNum()I

    move-result v6

    .line 751
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/poi/PoiResult;->getAllPoi()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 753
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    int-to-double v7, v3

    const-string v3, "totalNumber"

    .line 755
    invoke-static {v2, v1, v3, v7, v8}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;D)V

    int-to-double v3, v4

    const-string v7, "currentNumber"

    .line 756
    invoke-static {v2, v1, v7, v3, v4}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;D)V

    int-to-double v3, v5

    const-string v5, "pageNumber"

    .line 757
    invoke-static {v2, v1, v5, v3, v4}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;D)V

    int-to-double v3, v6

    const-string v5, "pageIndex"

    .line 758
    invoke-static {v2, v1, v5, v3, v4}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;D)V

    .line 759
    invoke-direct {p0, p1}, Lio/dcloud/js/map/adapter/MapSearch;->toPositionArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v3, "poiList"

    .line 760
    invoke-static {v2, v1, v3, p1}, Lio/dcloud/js/map/MapJsUtil;->assignJsVar(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 761
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lio/dcloud/js/map/MapJsUtil;->wrapJsEvalString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/dcloud/js/map/adapter/MapSearch;->onSearchComplete(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onGetTransitRouteResult(Lcom/baidu/mapapi/search/route/TransitRouteResult;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 658
    iget-object v2, p1, Lcom/baidu/mapapi/search/route/TransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v3, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-eq v2, v3, :cond_1

    .line 659
    :cond_0
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lio/dcloud/feature/amap/R$string;->dcloud_feature_map_baidu_error_no_search_result:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lio/dcloud/js/map/adapter/MapSearch;->route_error_callback_js(ILjava/lang/String;I)V

    .line 661
    :cond_1
    iget-object v2, p1, Lcom/baidu/mapapi/search/route/TransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v3, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->AMBIGUOUS_ROURE_ADDR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v2, v3, :cond_2

    .line 662
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lio/dcloud/feature/amap/R$string;->dcloud_feature_map_baidu_error_position_has_diff_meaning:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, v1}, Lio/dcloud/js/map/adapter/MapSearch;->route_error_callback_js(ILjava/lang/String;I)V

    return-void

    .line 665
    :cond_2
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v2, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v0, v2, :cond_3

    const/4 v7, 0x0

    .line 667
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/TransitRouteResult;->getRouteLines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/TransitRouteLine;

    .line 668
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v5

    .line 669
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/TransitRouteResult;->getRouteLines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x1

    invoke-direct {p0, p1}, Lio/dcloud/js/map/adapter/MapSearch;->toRouteArray(Lcom/baidu/mapapi/search/route/TransitRouteResult;)Lorg/json/JSONArray;

    move-result-object v9

    move-object v3, p0

    .line 668
    invoke-direct/range {v3 .. v9}, Lio/dcloud/js/map/adapter/MapSearch;->route_callback_js(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;IIILorg/json/JSONArray;)V

    :cond_3
    return-void
.end method

.method public onGetWalkingRouteResult(Lcom/baidu/mapapi/search/route/WalkingRouteResult;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    .line 681
    iget-object v2, p1, Lcom/baidu/mapapi/search/route/WalkingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v3, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-eq v2, v3, :cond_1

    .line 682
    :cond_0
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lio/dcloud/feature/amap/R$string;->dcloud_feature_map_baidu_error_no_search_result:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lio/dcloud/js/map/adapter/MapSearch;->route_error_callback_js(ILjava/lang/String;I)V

    .line 684
    :cond_1
    iget-object v2, p1, Lcom/baidu/mapapi/search/route/WalkingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v3, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->AMBIGUOUS_ROURE_ADDR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v2, v3, :cond_2

    .line 685
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lio/dcloud/feature/amap/R$string;->dcloud_feature_map_baidu_error_position_has_diff_meaning:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1, v0}, Lio/dcloud/js/map/adapter/MapSearch;->route_error_callback_js(ILjava/lang/String;I)V

    return-void

    .line 688
    :cond_2
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v0, v1, :cond_3

    const/4 v6, 0x0

    .line 690
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/WalkingRouteResult;->getRouteLines()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    .line 691
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    .line 692
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/WalkingRouteResult;->getRouteLines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    invoke-direct {p0, p1}, Lio/dcloud/js/map/adapter/MapSearch;->toRouteArray(Lcom/baidu/mapapi/search/route/WalkingRouteResult;)Lorg/json/JSONArray;

    move-result-object v8

    move-object v2, p0

    .line 691
    invoke-direct/range {v2 .. v8}, Lio/dcloud/js/map/adapter/MapSearch;->route_callback_js(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;IIILorg/json/JSONArray;)V

    :cond_3
    return-void
.end method

.method public poiSearchInCity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pCity",
            "pKeyCode",
            "index"
        }
    .end annotation

    const/4 v0, 0x0

    .line 142
    invoke-static {p3, v0}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lio/dcloud/js/map/adapter/MapSearch;->mIndex:I

    .line 143
    iget-object p3, p0, Lio/dcloud/js/map/adapter/MapSearch;->mPoiSearch:Lcom/baidu/mapapi/search/poi/PoiSearch;

    new-instance v0, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;-><init>()V

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->city(Ljava/lang/String;)Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->keyword(Ljava/lang/String;)Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;

    move-result-object p1

    iget p2, p0, Lio/dcloud/js/map/adapter/MapSearch;->mIndex:I

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->pageNum(I)Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;

    move-result-object p1

    iget p2, p0, Lio/dcloud/js/map/adapter/MapSearch;->mPageCapacity:I

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;->pageCapacity(I)Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/baidu/mapapi/search/poi/PoiSearch;->searchInCity(Lcom/baidu/mapapi/search/poi/PoiCitySearchOption;)Z

    move-result p1

    return p1
.end method

.method public poiSearchInbounds(Ljava/lang/String;Lio/dcloud/js/map/adapter/MapPoint;Lio/dcloud/js/map/adapter/MapPoint;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pKeyCode",
            "ptLB",
            "ptRT",
            "index"
        }
    .end annotation

    const/4 v0, 0x0

    .line 174
    invoke-static {p4, v0}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lio/dcloud/js/map/adapter/MapSearch;->mIndex:I

    .line 175
    new-instance p4, Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-direct {p4}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;-><init>()V

    invoke-virtual {p2}, Lio/dcloud/js/map/adapter/MapPoint;->getLatLng()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    move-result-object p2

    invoke-virtual {p3}, Lio/dcloud/js/map/adapter/MapPoint;->getLatLng()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->build()Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object p2

    .line 176
    iget-object p3, p0, Lio/dcloud/js/map/adapter/MapSearch;->mPoiSearch:Lcom/baidu/mapapi/search/poi/PoiSearch;

    new-instance p4, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;

    invoke-direct {p4}, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;-><init>()V

    invoke-virtual {p4, p1}, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->keyword(Ljava/lang/String;)Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;

    move-result-object p1

    iget p4, p0, Lio/dcloud/js/map/adapter/MapSearch;->mIndex:I

    invoke-virtual {p1, p4}, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->pageNum(I)Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->bound(Lcom/baidu/mapapi/model/LatLngBounds;)Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;

    move-result-object p1

    iget p2, p0, Lio/dcloud/js/map/adapter/MapSearch;->mPageCapacity:I

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;->pageCapacity(I)Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/baidu/mapapi/search/poi/PoiSearch;->searchInBound(Lcom/baidu/mapapi/search/poi/PoiBoundSearchOption;)Z

    move-result p1

    return p1
.end method

.method public poiSearchNearBy(Ljava/lang/String;Lio/dcloud/js/map/adapter/MapPoint;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pKeyCode",
            "pCenter",
            "pRadius",
            "index"
        }
    .end annotation

    const/4 v0, 0x0

    .line 157
    invoke-static {p3, v0}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result p3

    .line 158
    invoke-static {p4, v0}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lio/dcloud/js/map/adapter/MapSearch;->mIndex:I

    .line 159
    iget-object p4, p0, Lio/dcloud/js/map/adapter/MapSearch;->mPoiSearch:Lcom/baidu/mapapi/search/poi/PoiSearch;

    new-instance v0, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;-><init>()V

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->keyword(Ljava/lang/String;)Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;

    move-result-object p1

    invoke-virtual {p2}, Lio/dcloud/js/map/adapter/MapPoint;->getLatLng()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->radius(I)Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;

    move-result-object p1

    iget p2, p0, Lio/dcloud/js/map/adapter/MapSearch;->mIndex:I

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->pageNum(I)Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;

    move-result-object p1

    iget p2, p0, Lio/dcloud/js/map/adapter/MapSearch;->mPageCapacity:I

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;->pageCapacity(I)Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/baidu/mapapi/search/poi/PoiSearch;->searchNearby(Lcom/baidu/mapapi/search/poi/PoiNearbySearchOption;)Z

    move-result p1

    return p1
.end method

.method public setDrivingPolicy(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pPolicy"
        }
    .end annotation

    const-string v0, "DRIVING_DIS_FIRST"

    .line 215
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    sget-object p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;->ECAR_DIS_FIRST:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;

    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapSearch;->mDrivingPolicy:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;

    goto :goto_0

    :cond_0
    const-string v0, "DRIVING_FEE_FIRST"

    .line 217
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    sget-object p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;->ECAR_FEE_FIRST:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;

    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapSearch;->mDrivingPolicy:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;

    goto :goto_0

    :cond_1
    const-string v0, "DRIVING_NO_EXPRESSWAY"

    .line 219
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 220
    sget-object p1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;->ECAR_AVOID_JAM:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;

    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapSearch;->mDrivingPolicy:Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption$DrivingPolicy;

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public setMapView(Lio/dcloud/js/map/adapter/DHMapView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pMapView"
        }
    .end annotation

    .line 611
    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapSearch;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    return-void
.end method

.method public setPageCapacity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pageCapacity"
        }
    .end annotation

    const/16 v0, 0xa

    .line 129
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lio/dcloud/js/map/adapter/MapSearch;->mPageCapacity:I

    return-void
.end method

.method public setTransitPolicy(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pPolicy"
        }
    .end annotation

    const-string v0, "TRANSIT_FEE_FIRST"

    .line 190
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    sget-object p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;->EBUS_NO_SUBWAY:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapSearch;->mTransitPolicy:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    goto :goto_0

    :cond_0
    const-string v0, "TRANSIT_TIME_FIRST"

    .line 192
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    sget-object p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;->EBUS_TIME_FIRST:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapSearch;->mTransitPolicy:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    goto :goto_0

    :cond_1
    const-string v0, "TRANSIT_TRANSFER_FIRST"

    .line 194
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    sget-object p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;->EBUS_TRANSFER_FIRST:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapSearch;->mTransitPolicy:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    goto :goto_0

    :cond_2
    const-string v0, "TRANSIT_WALK_FIRST"

    .line 196
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 197
    sget-object p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;->EBUS_WALK_FIRST:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapSearch;->mTransitPolicy:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public transitSearch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pStart",
            "pEnd",
            "city"
        }
    .end annotation

    .line 240
    instance-of v0, p1, Lio/dcloud/js/map/adapter/MapPoint;

    if-eqz v0, :cond_0

    .line 241
    check-cast p1, Lio/dcloud/js/map/adapter/MapPoint;

    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/MapPoint;->getLatLng()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/mapapi/search/route/PlanNode;->withLocation(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object p1

    goto :goto_0

    .line 243
    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p3, p1}, Lcom/baidu/mapapi/search/route/PlanNode;->withCityNameAndPlaceName(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object p1

    .line 246
    :goto_0
    instance-of v0, p2, Lio/dcloud/js/map/adapter/MapPoint;

    if-eqz v0, :cond_1

    .line 247
    check-cast p2, Lio/dcloud/js/map/adapter/MapPoint;

    invoke-virtual {p2}, Lio/dcloud/js/map/adapter/MapPoint;->getLatLng()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p2

    invoke-static {p2}, Lcom/baidu/mapapi/search/route/PlanNode;->withLocation(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object p2

    goto :goto_1

    .line 249
    :cond_1
    check-cast p2, Ljava/lang/String;

    invoke-static {p3, p2}, Lcom/baidu/mapapi/search/route/PlanNode;->withCityNameAndPlaceName(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object p2

    .line 251
    :goto_1
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapSearch;->mSearchHandler:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    new-instance v1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;

    invoke-direct {v1}, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;-><init>()V

    invoke-virtual {v1, p3}, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->city(Ljava/lang/String;)Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->from(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->to(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/js/map/adapter/MapSearch;->mTransitPolicy:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->policy(Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;)Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->transitSearch(Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;)Z

    return-void
.end method

.method public walkingSearch(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pStart",
            "pStartCity",
            "pEnd",
            "pEndCity"
        }
    .end annotation

    .line 283
    instance-of v0, p1, Lio/dcloud/js/map/adapter/MapPoint;

    if-eqz v0, :cond_0

    .line 284
    check-cast p1, Lio/dcloud/js/map/adapter/MapPoint;

    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/MapPoint;->getLatLng()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/mapapi/search/route/PlanNode;->withLocation(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object p1

    goto :goto_0

    .line 286
    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/baidu/mapapi/search/route/PlanNode;->withCityNameAndPlaceName(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object p1

    .line 289
    :goto_0
    instance-of p2, p3, Lio/dcloud/js/map/adapter/MapPoint;

    if-eqz p2, :cond_1

    .line 290
    check-cast p3, Lio/dcloud/js/map/adapter/MapPoint;

    invoke-virtual {p3}, Lio/dcloud/js/map/adapter/MapPoint;->getLatLng()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p2

    invoke-static {p2}, Lcom/baidu/mapapi/search/route/PlanNode;->withLocation(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object p2

    goto :goto_1

    .line 292
    :cond_1
    check-cast p3, Ljava/lang/String;

    invoke-static {p4, p3}, Lcom/baidu/mapapi/search/route/PlanNode;->withCityNameAndPlaceName(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object p2

    .line 294
    :goto_1
    iget-object p3, p0, Lio/dcloud/js/map/adapter/MapSearch;->mSearchHandler:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    new-instance p4, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;

    invoke-direct {p4}, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;-><init>()V

    invoke-virtual {p4, p1}, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->from(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->to(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->walkingSearch(Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;)Z

    return-void
.end method
