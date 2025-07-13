.class public Lio/dcloud/js/map/JsMapPluginImpl;
.super Lio/dcloud/common/DHInterface/StandardFeature;
.source "JsMapPluginImpl.java"

# interfaces
.implements Lio/dcloud/common/DHInterface/IWaiter;


# instance fields
.field mMapManager:Lio/dcloud/js/map/JsMapManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lio/dcloud/common/DHInterface/StandardFeature;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pAppid"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lio/dcloud/js/map/JsMapPluginImpl;->mMapManager:Lio/dcloud/js/map/JsMapManager;

    invoke-virtual {v0, p1}, Lio/dcloud/js/map/JsMapManager;->dispose(Ljava/lang/String;)V

    return-void
.end method

.method public doForFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "actionType",
            "args"
        }
    .end annotation

    const-string v0, "appendToFrameView"

    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 190
    check-cast p2, [Ljava/lang/Object;

    const/4 p1, 0x0

    .line 191
    aget-object p1, p2, p1

    check-cast p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    const/4 v0, 0x1

    .line 192
    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lio/dcloud/js/map/JsMapPluginImpl;->mMapManager:Lio/dcloud/js/map/JsMapManager;

    invoke-virtual {v1, v0, p2}, Lio/dcloud/js/map/JsMapManager;->getJsMapViewByUuid(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/js/map/JsMapView;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 196
    invoke-virtual {p2, p1}, Lio/dcloud/js/map/JsMapView;->appendToFrameView(Lio/dcloud/common/adapter/ui/AdaFrameView;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pWebViewImpl",
            "pActionName",
            "pJsArgs"
        }
    .end annotation

    .line 39
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 40
    aget-object v2, p3, v1

    invoke-static {v2}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "createObject"

    .line 41
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_7

    .line 42
    invoke-static {v2, v6}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "mapview"

    .line 44
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 45
    new-instance p2, Lio/dcloud/js/map/JsMapView;

    invoke-direct {p2, p1}, Lio/dcloud/js/map/JsMapView;-><init>(Lio/dcloud/common/DHInterface/IWebview;)V

    .line 46
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 p3, 0x3

    if-le p1, p3, :cond_0

    .line 47
    invoke-static {v2, p3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-virtual {p2, p1}, Lio/dcloud/js/map/JsMapObject;->setJsId(Ljava/lang/String;)V

    .line 50
    :cond_0
    iget-object p1, p0, Lio/dcloud/js/map/JsMapPluginImpl;->mMapManager:Lio/dcloud/js/map/JsMapManager;

    invoke-static {v2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p3

    move-object v3, p2

    check-cast v3, Lio/dcloud/js/map/JsMapView;

    invoke-virtual {p1, v0, p3, v3}, Lio/dcloud/js/map/JsMapManager;->putJsMapView(Ljava/lang/String;Ljava/lang/String;Lio/dcloud/js/map/JsMapView;)V

    goto :goto_0

    :cond_1
    const-string p3, "marker"

    .line 51
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 52
    new-instance p2, Lio/dcloud/js/map/JsMapMarker;

    invoke-direct {p2, p1}, Lio/dcloud/js/map/JsMapMarker;-><init>(Lio/dcloud/common/DHInterface/IWebview;)V

    goto :goto_0

    :cond_2
    const-string p3, "search"

    .line 53
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 54
    new-instance p2, Lio/dcloud/js/map/JsMapSearch;

    invoke-direct {p2, p1}, Lio/dcloud/js/map/JsMapSearch;-><init>(Lio/dcloud/common/DHInterface/IWebview;)V

    goto :goto_0

    :cond_3
    const-string p3, "polyline"

    .line 55
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 56
    new-instance p2, Lio/dcloud/js/map/JsMapPolyline;

    invoke-direct {p2, p1}, Lio/dcloud/js/map/JsMapPolyline;-><init>(Lio/dcloud/common/DHInterface/IWebview;)V

    goto :goto_0

    :cond_4
    const-string p3, "polygon"

    .line 57
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 58
    new-instance p2, Lio/dcloud/js/map/JsMapPolygon;

    invoke-direct {p2, p1}, Lio/dcloud/js/map/JsMapPolygon;-><init>(Lio/dcloud/common/DHInterface/IWebview;)V

    goto :goto_0

    :cond_5
    const-string p3, "circle"

    .line 59
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 60
    new-instance p2, Lio/dcloud/js/map/JsMapCircle;

    invoke-direct {p2, p1}, Lio/dcloud/js/map/JsMapCircle;-><init>(Lio/dcloud/common/DHInterface/IWebview;)V

    goto :goto_0

    :cond_6
    move-object p2, v4

    .line 62
    :goto_0
    invoke-static {v2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/dcloud/js/map/JsMapObject;->setUUID(Ljava/lang/String;)V

    .line 63
    invoke-static {v2, v5}, Lio/dcloud/common/util/JSONUtil;->getJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/dcloud/js/map/JsMapObject;->createObject(Lorg/json/JSONArray;)V

    .line 64
    iget-object p1, p0, Lio/dcloud/js/map/JsMapPluginImpl;->mMapManager:Lio/dcloud/js/map/JsMapManager;

    invoke-static {v2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lio/dcloud/js/map/JsMapManager;->putJsObject(Ljava/lang/String;Lio/dcloud/js/map/JsMapObject;)V

    goto/16 :goto_6

    :cond_7
    const-string v3, "updateObject"

    .line 65
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 66
    new-instance p1, Lio/dcloud/js/map/JsMapPluginImpl$1;

    invoke-direct {p1, p0, v2}, Lio/dcloud/js/map/JsMapPluginImpl$1;-><init>(Lio/dcloud/js/map/JsMapPluginImpl;Lorg/json/JSONArray;)V

    invoke-static {p1, v4}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_8
    const-string v3, "execMethod"

    .line 78
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 79
    invoke-static {v2, v6}, Lio/dcloud/common/util/JSONUtil;->getJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object p2

    .line 80
    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "openSysMap"

    .line 81
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 82
    invoke-static {p2, v6}, Lio/dcloud/common/util/JSONUtil;->getJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object p2

    .line 84
    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object p3

    const-string v0, "longitude"

    .line 85
    invoke-static {p3, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "latitude"

    .line 86
    invoke-static {p3, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 88
    invoke-static {p2, v6}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v7

    .line 90
    invoke-static {p2, v5}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object p2

    .line 91
    invoke-static {p2, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {p2, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-array v3, v5, [[Ljava/lang/String;

    new-array v8, v5, [Ljava/lang/String;

    aput-object p3, v8, v1

    aput-object v2, v8, v6

    aput-object v8, v3, v1

    new-array p3, v5, [Ljava/lang/String;

    aput-object p2, p3, v1

    aput-object v0, p3, v6

    aput-object p3, v3, v6

    const-string p2, ""

    .line 94
    invoke-static {p1, p2, v3, v7}, Lio/dcloud/js/map/adapter/DHMapUtil;->openSysMap(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_9
    const-string v0, "close"

    .line 95
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_17

    .line 96
    invoke-static {p2, v6}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    .line 97
    iget-object p3, p0, Lio/dcloud/js/map/JsMapPluginImpl;->mMapManager:Lio/dcloud/js/map/JsMapManager;

    invoke-virtual {p3, p2}, Lio/dcloud/js/map/JsMapManager;->getJsObject(Ljava/lang/String;)Lio/dcloud/js/map/JsMapObject;

    move-result-object p3

    if-eqz p3, :cond_17

    .line 99
    check-cast p3, Lio/dcloud/js/map/IFMapDispose;

    invoke-interface {p3}, Lio/dcloud/js/map/IFMapDispose;->dispose()V

    .line 100
    iget-object p3, p0, Lio/dcloud/js/map/JsMapPluginImpl;->mMapManager:Lio/dcloud/js/map/JsMapManager;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lio/dcloud/js/map/JsMapManager;->removeJsObject(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/js/map/JsMapObject;

    goto/16 :goto_6

    :cond_a
    const-string v3, "geocode"

    .line 103
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v7, "city"

    const-string v8, "coordType"

    if-eqz v3, :cond_d

    .line 104
    aget-object p2, p3, v1

    .line 105
    aget-object v0, p3, v6

    invoke-static {v0}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_b

    move-object v1, v4

    goto :goto_1

    .line 106
    :cond_b
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-nez v0, :cond_c

    move-object v0, v4

    goto :goto_2

    .line 107
    :cond_c
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_2
    aget-object p3, p3, v5

    .line 109
    invoke-static {p1, p2, v1, v0, p3}, Lio/dcloud/js/map/adapter/DHMapUtil;->geocode(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_d
    const-string v3, "reverseGeocode"

    .line 110
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 111
    aget-object p2, p3, v1

    invoke-static {p2}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 112
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/dcloud/js/map/JsMapManager;->getMapPoint(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)Lio/dcloud/js/map/JsMapPoint;

    move-result-object p2

    .line 114
    aget-object v0, p3, v6

    invoke-static {v0}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_e

    move-object v1, v4

    goto :goto_3

    .line 115
    :cond_e
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    if-nez v0, :cond_f

    move-object v0, v4

    goto :goto_4

    .line 116
    :cond_f
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_4
    aget-object p3, p3, v5

    .line 118
    invoke-virtual {p2}, Lio/dcloud/js/map/JsMapPoint;->getMapPoint()Lio/dcloud/js/map/adapter/MapPoint;

    move-result-object p2

    invoke-static {p1, p2, v1, v0, p3}, Lio/dcloud/js/map/adapter/DHMapUtil;->reverseGeocode(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/js/map/adapter/MapPoint;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_10
    const-string v3, "updateObjectSYNC"

    .line 119
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 120
    iget-object p1, p0, Lio/dcloud/js/map/JsMapPluginImpl;->mMapManager:Lio/dcloud/js/map/JsMapManager;

    invoke-static {v2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/dcloud/js/map/JsMapManager;->getJsObject(Ljava/lang/String;)Lio/dcloud/js/map/JsMapObject;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 122
    invoke-static {v2, v6}, Lio/dcloud/common/util/JSONUtil;->getJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object p2

    .line 123
    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, v6}, Lio/dcloud/common/util/JSONUtil;->getJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lio/dcloud/js/map/JsMapObject;->updateObjectSYNC(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    :cond_11
    const-string v3, "calculateDistance"

    .line 125
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 126
    aget-object p2, p3, v1

    invoke-static {p2}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 127
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/dcloud/js/map/JsMapManager;->getMapPoint(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)Lio/dcloud/js/map/JsMapPoint;

    move-result-object p2

    .line 129
    aget-object v0, p3, v6

    invoke-static {v0}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 130
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lio/dcloud/js/map/JsMapManager;->getMapPoint(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)Lio/dcloud/js/map/JsMapPoint;

    move-result-object v0

    .line 132
    aget-object p3, p3, v5

    .line 133
    invoke-virtual {p2}, Lio/dcloud/js/map/JsMapPoint;->getMapPoint()Lio/dcloud/js/map/adapter/MapPoint;

    move-result-object p2

    invoke-virtual {v0}, Lio/dcloud/js/map/JsMapPoint;->getMapPoint()Lio/dcloud/js/map/adapter/MapPoint;

    move-result-object v0

    invoke-static {p1, p2, v0, p3}, Lio/dcloud/js/map/adapter/DHMapUtil;->calculateDistance(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/js/map/adapter/MapPoint;Lio/dcloud/js/map/adapter/MapPoint;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_12
    const-string v3, "calculateArea"

    .line 134
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 135
    aget-object p2, p3, v1

    invoke-static {p2}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 136
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object v0

    const-string v1, "southwest"

    .line 137
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 136
    invoke-virtual {v0, p1, v1}, Lio/dcloud/js/map/JsMapManager;->getMapPoint(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)Lio/dcloud/js/map/JsMapPoint;

    move-result-object v0

    .line 138
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object v1

    const-string v2, "northease"

    .line 139
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 138
    invoke-virtual {v1, p1, p2}, Lio/dcloud/js/map/JsMapManager;->getMapPoint(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)Lio/dcloud/js/map/JsMapPoint;

    move-result-object p2

    .line 140
    aget-object p3, p3, v6

    .line 141
    invoke-virtual {v0}, Lio/dcloud/js/map/JsMapPoint;->getMapPoint()Lio/dcloud/js/map/adapter/MapPoint;

    move-result-object v0

    invoke-virtual {p2}, Lio/dcloud/js/map/JsMapPoint;->getMapPoint()Lio/dcloud/js/map/adapter/MapPoint;

    move-result-object p2

    invoke-static {p1, v0, p2, p3}, Lio/dcloud/js/map/adapter/DHMapUtil;->calculateArea(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/js/map/adapter/MapPoint;Lio/dcloud/js/map/adapter/MapPoint;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_13
    const-string v3, "convertCoordinates"

    .line 142
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 143
    aget-object p2, p3, v1

    invoke-static {p2}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 144
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/dcloud/js/map/JsMapManager;->getMapPoint(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)Lio/dcloud/js/map/JsMapPoint;

    move-result-object p2

    .line 146
    aget-object v0, p3, v6

    invoke-static {v0}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_14

    move-object v0, v4

    goto :goto_5

    .line 147
    :cond_14
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_5
    aget-object p3, p3, v5

    .line 149
    invoke-virtual {p2}, Lio/dcloud/js/map/JsMapPoint;->getMapPoint()Lio/dcloud/js/map/adapter/MapPoint;

    move-result-object p2

    invoke-static {p1, p2, v0, p3}, Lio/dcloud/js/map/adapter/DHMapUtil;->convertCoordinates(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/js/map/adapter/MapPoint;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    goto :goto_6

    :cond_15
    const-string p3, "getMapById"

    .line 150
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_16

    .line 151
    invoke-static {v2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    .line 152
    iget-object p3, p0, Lio/dcloud/js/map/JsMapPluginImpl;->mMapManager:Lio/dcloud/js/map/JsMapManager;

    invoke-virtual {p3, v0, p2}, Lio/dcloud/js/map/JsMapManager;->getJsMapViewById(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/js/map/JsMapView;

    move-result-object p2

    if-eqz p2, :cond_17

    .line 154
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewUUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/dcloud/js/map/JsMapView;->setCallBackWebUuid(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Lio/dcloud/js/map/JsMapView;->getJsJsonMap()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 157
    invoke-static {p1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    goto :goto_6

    :cond_16
    const-string p1, "setStyles"

    .line 160
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 161
    invoke-static {v2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-static {v2, v6}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object p2

    .line 163
    iget-object p3, p0, Lio/dcloud/js/map/JsMapPluginImpl;->mMapManager:Lio/dcloud/js/map/JsMapManager;

    invoke-virtual {p3, v0, p1}, Lio/dcloud/js/map/JsMapManager;->getJsMapViewByUuid(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/js/map/JsMapView;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 165
    invoke-virtual {p1, p2}, Lio/dcloud/js/map/JsMapView;->setStyles(Lorg/json/JSONObject;)V

    :cond_17
    :goto_6
    return-object v4
.end method

.method public init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pFeatureMgr",
            "pFeatureName"
        }
    .end annotation

    .line 173
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/js/map/JsMapPluginImpl;->mMapManager:Lio/dcloud/js/map/JsMapManager;

    .line 174
    invoke-virtual {p2, p1}, Lio/dcloud/js/map/JsMapManager;->setFeatureMgr(Lio/dcloud/common/DHInterface/AbsMgr;)V

    return-void
.end method

.method public isOldMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
