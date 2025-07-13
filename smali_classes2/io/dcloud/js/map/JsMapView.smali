.class Lio/dcloud/js/map/JsMapView;
.super Lio/dcloud/js/map/JsMapObject;
.source "JsMapView.java"

# interfaces
.implements Lio/dcloud/js/map/IFMapDispose;


# instance fields
.field private id:Ljava/lang/String;

.field private mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;


# direct methods
.method public constructor <init>(Lio/dcloud/common/DHInterface/IWebview;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pWebViewImpl"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1}, Lio/dcloud/js/map/JsMapObject;-><init>(Lio/dcloud/common/DHInterface/IWebview;)V

    .line 48
    new-instance v0, Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;-><init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/js/map/JsMapObject;)V

    iput-object v0, p0, Lio/dcloud/js/map/JsMapView;->mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    const-string p1, "Map_Path"

    const-string v0, "JsMapView create DHMapFrameItem"

    .line 49
    invoke-static {p1, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/js/map/JsMapView;)Lio/dcloud/js/map/adapter/DHMapFrameItem;
    .locals 0

    .line 27
    iget-object p0, p0, Lio/dcloud/js/map/JsMapView;->mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    return-object p0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "jsId"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lio/dcloud/js/map/JsMapView;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appendToFrameView(Lio/dcloud/common/adapter/ui/AdaFrameView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameView"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lio/dcloud/js/map/JsMapView;->mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-virtual {v0, p1}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->appendToFrameView(Lio/dcloud/common/adapter/ui/AdaFrameView;)V

    return-void
.end method

.method protected createObject(Lorg/json/JSONArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pJsArgs"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lio/dcloud/js/map/JsMapView;->mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-virtual {v0, p1}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->createMap(Lorg/json/JSONArray;)V

    .line 218
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    .line 219
    iget-object p1, p0, Lio/dcloud/js/map/JsMapView;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p0, p1}, Lio/dcloud/js/map/JsMapView;->appendToFrameView(Lio/dcloud/common/adapter/ui/AdaFrameView;)V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 225
    iget-object v0, p0, Lio/dcloud/js/map/JsMapView;->mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-virtual {v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->dispose()V

    return-void
.end method

.method public getJsJsonMap()Lorg/json/JSONObject;
    .locals 3

    .line 233
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 234
    iget-object v1, p0, Lio/dcloud/js/map/JsMapView;->mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, "uuid"

    .line 236
    iget-object v1, v1, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mUUID:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "options"

    .line 237
    iget-object v2, p0, Lio/dcloud/js/map/JsMapView;->mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-virtual {v2}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->getMapOptions()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 239
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCallBackWebUuid(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uuid"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lio/dcloud/js/map/JsMapView;->mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->getMapView()Lio/dcloud/js/map/adapter/DHMapView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lio/dcloud/js/map/JsMapView;->mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-virtual {v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->getMapView()Lio/dcloud/js/map/adapter/DHMapView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/dcloud/js/map/adapter/DHMapView;->addMapCallBackWebUuid(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setMapView(Lio/dcloud/js/map/adapter/DHMapFrameItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pMapFrameItem"
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lio/dcloud/js/map/JsMapView;->mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    return-void
.end method

.method public setStyles(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "styles"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lio/dcloud/js/map/JsMapView;->mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0, p1}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->setStyles(Lorg/json/JSONObject;)V

    :cond_0
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

    .line 53
    invoke-super {p0, p1}, Lio/dcloud/js/map/JsMapObject;->setUUID(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lio/dcloud/js/map/JsMapView;->mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    iput-object p1, v0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mUUID:Ljava/lang/String;

    return-void
.end method

.method protected updateObject(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "pStrEvent",
            "pJsArgs"
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "setZoom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v4, 0x10

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "setTraffic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0xf

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "addOverlay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v4, 0xe

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "getCurrentCenter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v4, 0xd

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "setCenter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v4, 0xc

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "reset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v4, 0xb

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "removeOverlay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v4, 0xa

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "show"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v4, 0x9

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "hide"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v4, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "clearOverlays"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_a
    const-string v0, "showUserLocation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_b
    const-string v0, "setMapType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_c
    const-string v0, "centerAndZoom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_d
    const-string v0, "showZoomControls"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_e
    const-string v0, "resize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    :cond_e
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_f
    const-string v0, "addRoute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_0

    :cond_f
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_10
    const-string v0, "getUserLocation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_0

    :cond_10
    const/4 v4, 0x0

    :goto_0
    const-string p1, "LOCATION"

    const-string v0, "baidu-map"

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 83
    :pswitch_0
    iget-object p1, p0, Lio/dcloud/js/map/JsMapView;->mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-static {p2, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->setZoom(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 103
    :pswitch_1
    iget-object p1, p0, Lio/dcloud/js/map/JsMapView;->mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-static {p2, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->setTraffic(Z)V

    goto/16 :goto_1

    .line 126
    :pswitch_2
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object p1

    invoke-static {p2, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/dcloud/js/map/JsMapManager;->getJsObject(Ljava/lang/String;)Lio/dcloud/js/map/JsMapObject;

    move-result-object p1

    .line 127
    instance-of p2, p1, Lio/dcloud/js/map/adapter/IFJsOverlay;

    if-eqz p2, :cond_12

    .line 128
    iget-object p2, p0, Lio/dcloud/js/map/JsMapView;->mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    move-object v0, p1

    check-cast v0, Lio/dcloud/js/map/adapter/IFJsOverlay;

    invoke-interface {v0}, Lio/dcloud/js/map/adapter/IFJsOverlay;->getMapOverlay()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->addOverlay(Ljava/lang/Object;)V

    .line 129
    iget-object p2, p0, Lio/dcloud/js/map/JsMapView;->mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-virtual {p2}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->getMapView()Lio/dcloud/js/map/adapter/DHMapView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/dcloud/js/map/JsMapObject;->onAddToMapView(Lio/dcloud/js/map/adapter/DHMapView;)V

    goto/16 :goto_1

    .line 180
    :pswitch_3
    invoke-static {p2, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-le v0, v2, :cond_11

    .line 182
    invoke-static {p2, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    .line 183
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/js/map/JsMapView;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-virtual {v0, v1, p2}, Lio/dcloud/js/map/JsMapManager;->findWebviewByUuid(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 185
    iget-object v0, p0, Lio/dcloud/js/map/JsMapView;->mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-virtual {v0, p2, p1}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->getCurrentCenter(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void

    .line 189
    :cond_11
    iget-object p2, p0, Lio/dcloud/js/map/JsMapView;->mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    iget-object v0, p0, Lio/dcloud/js/map/JsMapView;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-virtual {p2, v0, p1}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->getCurrentCenter(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 78
    :pswitch_4
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/js/map/JsMapView;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-static {p2, v3}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lio/dcloud/js/map/JsMapManager;->getMapPoint(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)Lio/dcloud/js/map/JsMapPoint;

    move-result-object p1

    .line 79
    iget-object p2, p0, Lio/dcloud/js/map/JsMapView;->mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-virtual {p1}, Lio/dcloud/js/map/JsMapPoint;->getMapPoint()Lio/dcloud/js/map/adapter/MapPoint;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->setCenter(Lio/dcloud/js/map/adapter/MapPoint;)V

    goto/16 :goto_1

    .line 87
    :pswitch_5
    iget-object p1, p0, Lio/dcloud/js/map/JsMapView;->mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->reset()V

    goto/16 :goto_1

    .line 141
    :pswitch_6
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object p1

    invoke-static {p2, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/dcloud/js/map/JsMapManager;->getJsObject(Ljava/lang/String;)Lio/dcloud/js/map/JsMapObject;

    move-result-object p1

    .line 142
    instance-of p2, p1, Lio/dcloud/js/map/adapter/IFJsOverlay;

    if-eqz p2, :cond_12

    .line 143
    iget-object p2, p0, Lio/dcloud/js/map/JsMapView;->mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    check-cast p1, Lio/dcloud/js/map/adapter/IFJsOverlay;

    invoke-interface {p1}, Lio/dcloud/js/map/adapter/IFJsOverlay;->getMapOverlay()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->removeOverlay(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 91
    :pswitch_7
    iget-object p1, p0, Lio/dcloud/js/map/JsMapView;->mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->show()V

    goto/16 :goto_1

    .line 95
    :pswitch_8
    iget-object p1, p0, Lio/dcloud/js/map/JsMapView;->mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->hide()V

    goto/16 :goto_1

    .line 172
    :pswitch_9
    iget-object p1, p0, Lio/dcloud/js/map/JsMapView;->mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->clearOverlays()V

    goto/16 :goto_1

    .line 107
    :pswitch_a
    iget-object v2, p0, Lio/dcloud/js/map/JsMapView;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lio/dcloud/js/map/JsMapView$1;

    iget-object v4, p0, Lio/dcloud/js/map/JsMapView;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v4

    invoke-direct {v3, p0, v4, p2}, Lio/dcloud/js/map/JsMapView$1;-><init>(Lio/dcloud/js/map/JsMapView;Lio/dcloud/common/DHInterface/IApp;Lorg/json/JSONArray;)V

    invoke-static {v2, v0, p1, v1, v3}, Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    goto :goto_1

    .line 99
    :pswitch_b
    iget-object p1, p0, Lio/dcloud/js/map/JsMapView;->mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-static {p2, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->setMapType(Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :pswitch_c
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/js/map/JsMapView;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-static {p2, v3}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/dcloud/js/map/JsMapManager;->getMapPoint(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)Lio/dcloud/js/map/JsMapPoint;

    move-result-object p1

    .line 74
    iget-object v0, p0, Lio/dcloud/js/map/JsMapView;->mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-virtual {p1}, Lio/dcloud/js/map/JsMapPoint;->getMapPoint()Lio/dcloud/js/map/adapter/MapPoint;

    move-result-object p1

    invoke-static {p2, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->centerAndZoom(Lio/dcloud/js/map/adapter/MapPoint;Ljava/lang/String;)V

    goto :goto_1

    .line 122
    :pswitch_d
    iget-object p1, p0, Lio/dcloud/js/map/JsMapView;->mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-static {p2, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->setShowZoomControls(Ljava/lang/String;)V

    goto :goto_1

    .line 176
    :pswitch_e
    iget-object p1, p0, Lio/dcloud/js/map/JsMapView;->mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-virtual {p1, p2}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->resize(Lorg/json/JSONArray;)V

    goto :goto_1

    .line 134
    :pswitch_f
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object p1

    invoke-static {p2, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/dcloud/js/map/JsMapManager;->getJsObject(Ljava/lang/String;)Lio/dcloud/js/map/JsMapObject;

    move-result-object p1

    .line 135
    instance-of p2, p1, Lio/dcloud/js/map/adapter/IFJsOverlay;

    if-eqz p2, :cond_12

    .line 136
    iget-object p2, p0, Lio/dcloud/js/map/JsMapView;->mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    check-cast p1, Lio/dcloud/js/map/adapter/IFJsOverlay;

    invoke-interface {p1}, Lio/dcloud/js/map/adapter/IFJsOverlay;->getMapOverlay()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->addOverlay(Ljava/lang/Object;)V

    goto :goto_1

    .line 148
    :pswitch_10
    iget-object v2, p0, Lio/dcloud/js/map/JsMapView;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lio/dcloud/js/map/JsMapView$2;

    iget-object v4, p0, Lio/dcloud/js/map/JsMapView;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v4

    invoke-direct {v3, p0, v4, p2}, Lio/dcloud/js/map/JsMapView$2;-><init>(Lio/dcloud/js/map/JsMapView;Lio/dcloud/common/DHInterface/IApp;Lorg/json/JSONArray;)V

    invoke-static {v2, v0, p1, v1, v3}, Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    :cond_12
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5b8378ea -> :sswitch_10
        -0x4a6279d8 -> :sswitch_f
        -0x37b2634c -> :sswitch_e
        -0x299b18ba -> :sswitch_d
        -0x1d967fcb -> :sswitch_c
        -0x1ce1dc0c -> :sswitch_b
        -0xeee6fc3 -> :sswitch_a
        -0xc6c3c70 -> :sswitch_9
        0x30dd42 -> :sswitch_8
        0x35dafd -> :sswitch_7
        0x636072c -> :sswitch_6
        0x6761d4f -> :sswitch_5
        0x6ff2357 -> :sswitch_4
        0x26f37378 -> :sswitch_3
        0x30b19c6f -> :sswitch_2
        0x71a0ab3b -> :sswitch_1
        0x76535355 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected updateObjectSYNC(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 1
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

    .line 197
    invoke-super {p0, p1, p2}, Lio/dcloud/js/map/JsMapObject;->updateObjectSYNC(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getBounds"

    .line 198
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 199
    iget-object p1, p0, Lio/dcloud/js/map/JsMapView;->mMapFrameItem:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->getBounds()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method
