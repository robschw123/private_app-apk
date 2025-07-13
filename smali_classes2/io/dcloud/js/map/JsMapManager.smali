.class public Lio/dcloud/js/map/JsMapManager;
.super Ljava/lang/Object;
.source "JsMapManager.java"


# static fields
.field private static mJsMapManager:Lio/dcloud/js/map/JsMapManager;


# instance fields
.field private mFeatureMgr:Lio/dcloud/common/DHInterface/AbsMgr;

.field private mJsMapObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/js/map/JsMapObject;",
            ">;"
        }
    .end annotation
.end field

.field private mJsMapViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/js/map/JsMapView;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMapRoutes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/js/map/JsMapRoute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/js/map/JsMapManager;->mJsMapObjects:Ljava/util/HashMap;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/js/map/JsMapManager;->mMapRoutes:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/js/map/JsMapManager;->mJsMapViews:Ljava/util/HashMap;

    return-void
.end method

.method public static getJsMapManager()Lio/dcloud/js/map/JsMapManager;
    .locals 1

    .line 120
    sget-object v0, Lio/dcloud/js/map/JsMapManager;->mJsMapManager:Lio/dcloud/js/map/JsMapManager;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lio/dcloud/js/map/JsMapManager;

    invoke-direct {v0}, Lio/dcloud/js/map/JsMapManager;-><init>()V

    sput-object v0, Lio/dcloud/js/map/JsMapManager;->mJsMapManager:Lio/dcloud/js/map/JsMapManager;

    .line 123
    :cond_0
    sget-object v0, Lio/dcloud/js/map/JsMapManager;->mJsMapManager:Lio/dcloud/js/map/JsMapManager;

    return-object v0
.end method

.method public static getStrToStrArry(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pJson"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 231
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 232
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_1

    .line 234
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 235
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    .line 237
    :cond_0
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 239
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 243
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method public static hexString2Int(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pString"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 262
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "#"

    .line 263
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 264
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 266
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    .line 267
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const/16 v1, 0x10

    .line 270
    :try_start_0
    invoke-static {p0, v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return v0
.end method


# virtual methods
.method public dispose(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appid"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lio/dcloud/js/map/JsMapManager;->mJsMapViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedHashMap;

    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/js/map/JsMapView;

    invoke-virtual {v1}, Lio/dcloud/js/map/JsMapView;->dispose()V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    :cond_1
    return-void
.end method

.method public findWebviewByUuid(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Lio/dcloud/common/DHInterface/IWebview;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "webview",
            "uuid"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lio/dcloud/js/map/JsMapManager;->mFeatureMgr:Lio/dcloud/common/DHInterface/AbsMgr;

    if-eqz v0, :cond_0

    .line 280
    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v2, 0xa

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v5, "ui"

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const-string v5, "findWebview"

    const/4 v7, 0x2

    aput-object v5, v3, v7

    const/4 v5, 0x3

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v4

    aput-object p2, v7, v6

    aput-object v7, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lio/dcloud/common/DHInterface/AbsMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 282
    check-cast p1, Lio/dcloud/common/DHInterface/IWebview;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getJsMapViewById(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/js/map/JsMapView;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appid",
            "id"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lio/dcloud/js/map/JsMapManager;->mJsMapViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lio/dcloud/js/map/JsMapManager;->mJsMapViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedHashMap;

    .line 72
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/js/map/JsMapView;

    iget-object v2, v2, Lio/dcloud/js/map/JsMapView;->mJsId:Ljava/lang/String;

    .line 74
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/js/map/JsMapView;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getJsMapViewByUuid(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/js/map/JsMapView;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appid",
            "uuid"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lio/dcloud/js/map/JsMapManager;->mJsMapViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lio/dcloud/js/map/JsMapManager;->mJsMapViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedHashMap;

    .line 85
    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/js/map/JsMapView;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getJsObject(Ljava/lang/String;)Lio/dcloud/js/map/JsMapObject;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pId"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lio/dcloud/js/map/JsMapManager;->mJsMapObjects:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/js/map/JsMapObject;

    return-object p1
.end method

.method public getJsToPointArry(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pWebview",
            "pJson"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/common/DHInterface/IWebview;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/js/map/JsMapPoint;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 203
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 205
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 206
    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 207
    invoke-static {v1, p2}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lio/dcloud/js/map/JsMapManager;->getMapPoint(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)Lio/dcloud/js/map/JsMapPoint;

    move-result-object v2

    .line 208
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 211
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method public getMapPoint(Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)Lio/dcloud/js/map/JsMapPoint;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pWebview",
            "_json"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    const-string v1, "longitude"

    .line 180
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "latitude"

    .line 181
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 182
    new-instance v2, Lio/dcloud/js/map/JsMapPoint;

    invoke-direct {v2, p1, v1, p2}, Lio/dcloud/js/map/JsMapPoint;-><init>(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 185
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public putJsMapView(Ljava/lang/String;Ljava/lang/String;Lio/dcloud/js/map/JsMapView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "appid",
            "uuid",
            "mapView"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lio/dcloud/js/map/JsMapManager;->mJsMapViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 95
    iget-object v1, p0, Lio/dcloud/js/map/JsMapManager;->mJsMapViews:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_0
    iget-object v0, p0, Lio/dcloud/js/map/JsMapManager;->mJsMapViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lio/dcloud/js/map/JsMapManager;->mJsMapViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public putJsObject(Ljava/lang/String;Lio/dcloud/js/map/JsMapObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pId",
            "pJsMapObjects"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lio/dcloud/js/map/JsMapManager;->mJsMapObjects:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeJsMapView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appid",
            "uuid"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lio/dcloud/js/map/JsMapManager;->mJsMapViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lio/dcloud/js/map/JsMapManager;->mJsMapViews:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedHashMap;

    .line 105
    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeJsObject(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/js/map/JsMapObject;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "appid",
            "uuid"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lio/dcloud/js/map/JsMapManager;->mJsMapObjects:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/js/map/JsMapObject;

    .line 160
    instance-of v1, v0, Lio/dcloud/js/map/JsMapView;

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {p0, p1, p2}, Lio/dcloud/js/map/JsMapManager;->removeJsMapView(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public setFeatureMgr(Lio/dcloud/common/DHInterface/AbsMgr;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pFeatureMgr"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lio/dcloud/js/map/JsMapManager;->mFeatureMgr:Lio/dcloud/common/DHInterface/AbsMgr;

    return-void
.end method
