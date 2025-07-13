.class Lio/dcloud/js/map/JsMapSearch;
.super Lio/dcloud/js/map/JsMapObject;
.source "JsMapSearch.java"


# instance fields
.field private mMapSearch:Lio/dcloud/js/map/adapter/MapSearch;


# direct methods
.method public constructor <init>(Lio/dcloud/common/DHInterface/IWebview;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pWebview"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1}, Lio/dcloud/js/map/JsMapObject;-><init>(Lio/dcloud/common/DHInterface/IWebview;)V

    .line 45
    new-instance v0, Lio/dcloud/js/map/adapter/MapSearch;

    invoke-direct {v0, p1}, Lio/dcloud/js/map/adapter/MapSearch;-><init>(Lio/dcloud/common/DHInterface/IWebview;)V

    iput-object v0, p0, Lio/dcloud/js/map/JsMapSearch;->mMapSearch:Lio/dcloud/js/map/adapter/MapSearch;

    return-void
.end method


# virtual methods
.method protected createObject(Lorg/json/JSONArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pJsArgs"
        }
    .end annotation

    return-void
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

    .line 125
    invoke-super {p0, p1}, Lio/dcloud/js/map/JsMapObject;->onAddToMapView(Lio/dcloud/js/map/adapter/DHMapView;)V

    .line 126
    iget-object v0, p0, Lio/dcloud/js/map/JsMapSearch;->mMapSearch:Lio/dcloud/js/map/adapter/MapSearch;

    invoke-virtual {v0, p1}, Lio/dcloud/js/map/adapter/MapSearch;->setMapView(Lio/dcloud/js/map/adapter/DHMapView;)V

    return-void
.end method

.method setUUID(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uuid"
        }
    .end annotation

    .line 49
    invoke-super {p0, p1}, Lio/dcloud/js/map/JsMapObject;->setUUID(Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lio/dcloud/js/map/JsMapSearch;->mMapSearch:Lio/dcloud/js/map/adapter/MapSearch;

    iget-object v0, p0, Lio/dcloud/js/map/JsMapSearch;->mUUID:Ljava/lang/String;

    iput-object v0, p1, Lio/dcloud/js/map/adapter/MapSearch;->mCallbackId:Ljava/lang/String;

    return-void
.end method

.method protected updateObject(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 5
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

    :try_start_0
    const-string v0, "setPageCapacity"

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 61
    iget-object p1, p0, Lio/dcloud/js/map/JsMapSearch;->mMapSearch:Lio/dcloud/js/map/adapter/MapSearch;

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/dcloud/js/map/adapter/MapSearch;->setPageCapacity(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_0
    const-string v0, "poiSearchInCity"

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 63
    iget-object p1, p0, Lio/dcloud/js/map/JsMapSearch;->mMapSearch:Lio/dcloud/js/map/adapter/MapSearch;

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Lio/dcloud/js/map/adapter/MapSearch;->poiSearchInCity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_6

    :cond_1
    const-string v0, "poiSearchNearBy"

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x3

    if-eqz v0, :cond_2

    .line 65
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/js/map/JsMapSearch;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lio/dcloud/js/map/JsMapManager;->getMapPoint(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)Lio/dcloud/js/map/JsMapPoint;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lio/dcloud/js/map/JsMapSearch;->mMapSearch:Lio/dcloud/js/map/adapter/MapSearch;

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/dcloud/js/map/JsMapPoint;->getMapPoint()Lio/dcloud/js/map/adapter/MapPoint;

    move-result-object p1

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p1, v2, p2}, Lio/dcloud/js/map/adapter/MapSearch;->poiSearchNearBy(Ljava/lang/String;Lio/dcloud/js/map/adapter/MapPoint;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_6

    :cond_2
    const-string v0, "poiSearchInbounds"

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/js/map/JsMapSearch;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lio/dcloud/js/map/JsMapManager;->getMapPoint(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)Lio/dcloud/js/map/JsMapPoint;

    move-result-object p1

    .line 69
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object v0

    iget-object v2, p0, Lio/dcloud/js/map/JsMapSearch;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lio/dcloud/js/map/JsMapManager;->getMapPoint(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)Lio/dcloud/js/map/JsMapPoint;

    move-result-object v0

    .line 70
    iget-object v2, p0, Lio/dcloud/js/map/JsMapSearch;->mMapSearch:Lio/dcloud/js/map/adapter/MapSearch;

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/dcloud/js/map/JsMapPoint;->getMapPoint()Lio/dcloud/js/map/adapter/MapPoint;

    move-result-object p1

    invoke-virtual {v0}, Lio/dcloud/js/map/JsMapPoint;->getMapPoint()Lio/dcloud/js/map/adapter/MapPoint;

    move-result-object v0

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v1, p1, v0, p2}, Lio/dcloud/js/map/adapter/MapSearch;->poiSearchInbounds(Ljava/lang/String;Lio/dcloud/js/map/adapter/MapPoint;Lio/dcloud/js/map/adapter/MapPoint;Ljava/lang/String;)Z

    goto/16 :goto_6

    :cond_3
    const-string v0, "setTransitPolicy"

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    iget-object p1, p0, Lio/dcloud/js/map/JsMapSearch;->mMapSearch:Lio/dcloud/js/map/adapter/MapSearch;

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/dcloud/js/map/adapter/MapSearch;->setTransitPolicy(Ljava/lang/String;)Z

    goto/16 :goto_6

    :cond_4
    const-string v0, "setDrivingPolicy"

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 74
    iget-object p1, p0, Lio/dcloud/js/map/JsMapSearch;->mMapSearch:Lio/dcloud/js/map/adapter/MapSearch;

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/dcloud/js/map/adapter/MapSearch;->setDrivingPolicy(Ljava/lang/String;)Z

    goto/16 :goto_6

    :cond_5
    const-string v0, "transitSearch"

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 78
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_6

    .line 79
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/js/map/JsMapSearch;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/dcloud/js/map/JsMapManager;->getMapPoint(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)Lio/dcloud/js/map/JsMapPoint;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/js/map/JsMapPoint;->getMapPoint()Lio/dcloud/js/map/adapter/MapPoint;

    move-result-object p1

    goto :goto_0

    .line 81
    :cond_6
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 83
    :goto_0
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_7

    .line 84
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/js/map/JsMapSearch;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/dcloud/js/map/JsMapManager;->getMapPoint(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)Lio/dcloud/js/map/JsMapPoint;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/js/map/JsMapPoint;->getMapPoint()Lio/dcloud/js/map/adapter/MapPoint;

    move-result-object v0

    goto :goto_1

    .line 86
    :cond_7
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_1
    iget-object v1, p0, Lio/dcloud/js/map/JsMapSearch;->mMapSearch:Lio/dcloud/js/map/adapter/MapSearch;

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, v0, p2}, Lio/dcloud/js/map/adapter/MapSearch;->transitSearch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_8
    const-string v0, "drivingSearch"

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 92
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_9

    .line 93
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/js/map/JsMapSearch;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/dcloud/js/map/JsMapManager;->getMapPoint(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)Lio/dcloud/js/map/JsMapPoint;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/js/map/JsMapPoint;->getMapPoint()Lio/dcloud/js/map/adapter/MapPoint;

    move-result-object p1

    goto :goto_2

    .line 95
    :cond_9
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 97
    :goto_2
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_a

    .line 98
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/js/map/JsMapSearch;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lio/dcloud/js/map/JsMapManager;->getMapPoint(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)Lio/dcloud/js/map/JsMapPoint;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/js/map/JsMapPoint;->getMapPoint()Lio/dcloud/js/map/adapter/MapPoint;

    move-result-object v0

    goto :goto_3

    .line 100
    :cond_a
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_3
    iget-object v1, p0, Lio/dcloud/js/map/JsMapSearch;->mMapSearch:Lio/dcloud/js/map/adapter/MapSearch;

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, v2, v0, p2}, Lio/dcloud/js/map/adapter/MapSearch;->drivingSearch(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    const-string v0, "walkingSearch"

    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 106
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_c

    .line 107
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/js/map/JsMapSearch;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/dcloud/js/map/JsMapManager;->getMapPoint(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)Lio/dcloud/js/map/JsMapPoint;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/js/map/JsMapPoint;->getMapPoint()Lio/dcloud/js/map/adapter/MapPoint;

    move-result-object p1

    goto :goto_4

    .line 109
    :cond_c
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 111
    :goto_4
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_d

    .line 112
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/js/map/JsMapSearch;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lio/dcloud/js/map/JsMapManager;->getMapPoint(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)Lio/dcloud/js/map/JsMapPoint;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/js/map/JsMapPoint;->getMapPoint()Lio/dcloud/js/map/adapter/MapPoint;

    move-result-object v0

    goto :goto_5

    .line 114
    :cond_d
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_5
    iget-object v1, p0, Lio/dcloud/js/map/JsMapSearch;->mMapSearch:Lio/dcloud/js/map/adapter/MapSearch;

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, v2, v0, p2}, Lio/dcloud/js/map/adapter/MapSearch;->walkingSearch(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    .line 119
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_e
    :goto_6
    return-void
.end method
