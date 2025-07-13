.class Lio/dcloud/js/map/JsMapMarker;
.super Lio/dcloud/js/map/JsMapObject;
.source "JsMapMarker.java"

# interfaces
.implements Lio/dcloud/js/map/adapter/IFJsOverlay;


# instance fields
.field private mMapMarker:Lio/dcloud/js/map/adapter/MapMarker;


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

    .line 44
    invoke-direct {p0, p1}, Lio/dcloud/js/map/JsMapObject;-><init>(Lio/dcloud/common/DHInterface/IWebview;)V

    return-void
.end method

.method private init(Lio/dcloud/js/map/JsMapPoint;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pMapPoint"
        }
    .end annotation

    .line 48
    new-instance v0, Lio/dcloud/js/map/adapter/MapMarker;

    invoke-virtual {p1}, Lio/dcloud/js/map/JsMapPoint;->getMapPoint()Lio/dcloud/js/map/adapter/MapPoint;

    move-result-object p1

    iget-object v1, p0, Lio/dcloud/js/map/JsMapMarker;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-direct {v0, p1, v1}, Lio/dcloud/js/map/adapter/MapMarker;-><init>(Lio/dcloud/js/map/adapter/MapPoint;Lio/dcloud/common/DHInterface/IWebview;)V

    iput-object v0, p0, Lio/dcloud/js/map/JsMapMarker;->mMapMarker:Lio/dcloud/js/map/adapter/MapMarker;

    .line 49
    iget-object p1, p0, Lio/dcloud/js/map/JsMapMarker;->mUUID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lio/dcloud/js/map/adapter/MapMarker;->setUuid(Ljava/lang/String;)V

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

    iget-object v1, p0, Lio/dcloud/js/map/JsMapMarker;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    const/4 v2, 0x0

    .line 54
    invoke-static {p1, v2}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object p1

    .line 53
    invoke-virtual {v0, v1, p1}, Lio/dcloud/js/map/JsMapManager;->getMapPoint(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)Lio/dcloud/js/map/JsMapPoint;

    move-result-object p1

    .line 55
    invoke-direct {p0, p1}, Lio/dcloud/js/map/JsMapMarker;->init(Lio/dcloud/js/map/JsMapPoint;)V

    return-void
.end method

.method public getMapOverlay()Ljava/lang/Object;
    .locals 1

    .line 97
    iget-object v0, p0, Lio/dcloud/js/map/JsMapMarker;->mMapMarker:Lio/dcloud/js/map/adapter/MapMarker;

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

    .line 103
    invoke-super {p0, p1}, Lio/dcloud/js/map/JsMapObject;->onAddToMapView(Lio/dcloud/js/map/adapter/DHMapView;)V

    .line 104
    iget-object v0, p0, Lio/dcloud/js/map/JsMapMarker;->mMapMarker:Lio/dcloud/js/map/adapter/MapMarker;

    invoke-virtual {v0, p1}, Lio/dcloud/js/map/adapter/MapMarker;->initMapMarker(Lio/dcloud/js/map/adapter/DHMapView;)V

    return-void
.end method

.method protected updateObject(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 3
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

    const-string v0, "setPoint"

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/js/map/JsMapMarker;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 62
    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object p2

    .line 61
    invoke-virtual {p1, v0, p2}, Lio/dcloud/js/map/JsMapManager;->getMapPoint(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)Lio/dcloud/js/map/JsMapPoint;

    move-result-object p1

    .line 63
    iget-object p2, p0, Lio/dcloud/js/map/JsMapMarker;->mMapMarker:Lio/dcloud/js/map/adapter/MapMarker;

    invoke-virtual {p1}, Lio/dcloud/js/map/JsMapPoint;->getMapPoint()Lio/dcloud/js/map/adapter/MapPoint;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/dcloud/js/map/adapter/MapMarker;->setMapPoint(Lio/dcloud/js/map/adapter/MapPoint;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "setLabel"

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object p1, p0, Lio/dcloud/js/map/JsMapMarker;->mMapMarker:Lio/dcloud/js/map/adapter/MapMarker;

    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/dcloud/js/map/adapter/MapMarker;->setLabel(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "setBubble"

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 67
    iget-object p1, p0, Lio/dcloud/js/map/JsMapMarker;->mMapMarker:Lio/dcloud/js/map/adapter/MapMarker;

    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Lio/dcloud/js/map/adapter/MapMarker;->setBubble(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "setIcon"

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    iget-object p1, p0, Lio/dcloud/js/map/JsMapMarker;->mMapMarker:Lio/dcloud/js/map/adapter/MapMarker;

    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/dcloud/js/map/adapter/MapMarker;->setIcon(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "setBubbleIcon"

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    iget-object p1, p0, Lio/dcloud/js/map/JsMapMarker;->mMapMarker:Lio/dcloud/js/map/adapter/MapMarker;

    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/dcloud/js/map/adapter/MapMarker;->setBubbleIcon(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "setBubbleLabel"

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 73
    iget-object p1, p0, Lio/dcloud/js/map/JsMapMarker;->mMapMarker:Lio/dcloud/js/map/adapter/MapMarker;

    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/dcloud/js/map/adapter/MapMarker;->setBubbleLabel(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "hide"

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 75
    iget-object p1, p0, Lio/dcloud/js/map/JsMapMarker;->mMapMarker:Lio/dcloud/js/map/adapter/MapMarker;

    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/MapMarker;->hide()V

    goto/16 :goto_0

    :cond_6
    const-string v0, "show"

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 77
    iget-object p1, p0, Lio/dcloud/js/map/JsMapMarker;->mMapMarker:Lio/dcloud/js/map/adapter/MapMarker;

    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/MapMarker;->show()V

    goto :goto_0

    :cond_7
    const-string v0, "bringToTop"

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 79
    iget-object p1, p0, Lio/dcloud/js/map/JsMapMarker;->mMapMarker:Lio/dcloud/js/map/adapter/MapMarker;

    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/MapMarker;->bringToTop()V

    goto :goto_0

    :cond_8
    const-string v0, "hideBubble"

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 81
    iget-object p1, p0, Lio/dcloud/js/map/JsMapMarker;->mMapMarker:Lio/dcloud/js/map/adapter/MapMarker;

    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/MapMarker;->hideBubble()V

    goto :goto_0

    :cond_9
    const-string v0, "setIcons"

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 83
    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object p1

    .line 84
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result p2

    .line 85
    iget-object v0, p0, Lio/dcloud/js/map/JsMapMarker;->mMapMarker:Lio/dcloud/js/map/adapter/MapMarker;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/js/map/adapter/MapMarker;->setIcons(Lorg/json/JSONArray;I)V

    goto :goto_0

    :cond_a
    const-string v0, "setDraggable"

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 87
    iget-object p1, p0, Lio/dcloud/js/map/JsMapMarker;->mMapMarker:Lio/dcloud/js/map/adapter/MapMarker;

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lio/dcloud/js/map/adapter/MapMarker;->setDraggable(Z)V

    goto :goto_0

    :cond_b
    const-string v0, "loadImage"

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 89
    iget-object p1, p0, Lio/dcloud/js/map/JsMapMarker;->mMapMarker:Lio/dcloud/js/map/adapter/MapMarker;

    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/dcloud/js/map/adapter/MapMarker;->loadImage(Ljava/lang/String;)V

    goto :goto_0

    :cond_c
    const-string v0, "loadImageDataURL"

    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 91
    iget-object p1, p0, Lio/dcloud/js/map/JsMapMarker;->mMapMarker:Lio/dcloud/js/map/adapter/MapMarker;

    invoke-static {p2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/dcloud/js/map/adapter/MapMarker;->loadImageDataURL(Ljava/lang/String;)V

    :cond_d
    :goto_0
    return-void
.end method
