.class public Lcom/baidu/platform/core/f/c;
.super Lcom/baidu/platform/core/f/k;
.source "DriveRouteParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/baidu/platform/core/f/k;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONArray;Ljava/util/List;)Lcom/baidu/mapapi/search/core/RouteNode;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/RouteNode;",
            ">;)",
            "Lcom/baidu/mapapi/search/core/RouteNode;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 202
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 206
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 210
    :cond_1
    invoke-direct {p0, v3}, Lcom/baidu/platform/core/f/c;->a(Lorg/json/JSONObject;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    if-ne v2, v4, :cond_2

    return-object v3

    .line 216
    :cond_2
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)Lcom/baidu/mapapi/search/core/RouteNode;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 184
    :cond_0
    new-instance v0, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/core/RouteNode;-><init>()V

    const-string/jumbo v1, "wd"

    .line 185
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/core/RouteNode;->setTitle(Ljava/lang/String;)V

    const-string v1, "uid"

    .line 186
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/core/RouteNode;->setUid(Ljava/lang/String;)V

    .line 188
    new-instance v1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    const-string v3, "spt"

    .line 189
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 191
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->setLongitudeE6(D)V

    const/4 v2, 0x1

    .line 192
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result p1

    int-to-double v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->setLatitudeE6(D)V

    .line 194
    :cond_1
    invoke-static {v1}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/search/core/RouteNode;->setLocation(Lcom/baidu/mapapi/model/LatLng;)V

    return-object v0
.end method

.method private a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 370
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    goto :goto_2

    .line 373
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x5

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_0
    if-ge v2, v0, :cond_2

    .line 377
    rem-int/lit8 v7, v2, 0x2

    if-eqz v7, :cond_1

    .line 378
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v7

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v7

    goto :goto_1

    .line 380
    :cond_1
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v7

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v7

    .line 381
    new-instance v7, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-direct {v7, v3, v4, v5, v6}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(DD)V

    .line 382
    invoke-static {v7}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_b

    .line 262
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-gtz v3, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 267
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-gtz v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    .line 271
    :goto_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    if-ge v9, v3, :cond_a

    .line 275
    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    if-nez v11, :cond_3

    const/4 v13, 0x1

    goto/16 :goto_6

    .line 279
    :cond_3
    new-instance v12, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    invoke-direct {v12}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;-><init>()V

    const-string v13, "distance"

    .line 280
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->setDistance(I)V

    const-string v13, "direction"

    .line 281
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    mul-int/lit8 v13, v13, 0x1e

    invoke-virtual {v12, v13}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->setDirection(I)V

    const-string v13, "instructions"

    .line 282
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 283
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x4

    if-lt v14, v15, :cond_4

    const-string v14, "/?[a-zA-Z]{1,10};"

    const-string v15, ""

    .line 284
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "<[^>]*>"

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "[(/>)<]"

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 286
    :cond_4
    invoke-virtual {v12, v13}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->setInstructions(Ljava/lang/String;)V

    const-string v13, "start_instructions"

    .line 288
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_6

    .line 290
    invoke-virtual {v12}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getDistance()I

    move-result v13

    const/16 v14, 0x3e8

    const-string v15, " - "

    if-ge v13, v14, :cond_5

    .line 292
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "\u7c73"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move/from16 v16, v6

    goto :goto_3

    .line 294
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v16, v6

    int-to-double v5, v13

    const-wide v17, 0x408f400000000000L    # 1000.0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double v5, v5, v17

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u516c\u91cc"

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v13, v5

    .line 297
    :goto_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    if-gt v10, v5, :cond_7

    .line 299
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v10, -0x1

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getExitInstructions()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    :cond_6
    move/from16 v16, v6

    .line 302
    :cond_7
    :goto_4
    invoke-virtual {v12, v13}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->setEntranceInstructions(Ljava/lang/String;)V

    const-string v5, "end_instructions"

    .line 304
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->setExitInstructions(Ljava/lang/String;)V

    const-string v5, "turn"

    .line 305
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v12, v5}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->setNumTurns(I)V

    const-string v5, "road_level"

    .line 306
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v12, v5}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->setRoadLevel(I)V

    const-string v5, "road_name"

    .line 307
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->setRoadName(Ljava/lang/String;)V

    const-string v5, "spath"

    .line 308
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/baidu/platform/core/f/c;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    .line 309
    invoke-virtual {v12, v5}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->setPathList(Ljava/util/List;)V

    if-eqz v5, :cond_8

    .line 311
    new-instance v6, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-direct {v6}, Lcom/baidu/mapapi/search/core/RouteNode;-><init>()V

    .line 312
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v6, v11}, Lcom/baidu/mapapi/search/core/RouteNode;->setLocation(Lcom/baidu/mapapi/model/LatLng;)V

    .line 313
    invoke-virtual {v12, v6}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->setEntrance(Lcom/baidu/mapapi/search/core/RouteNode;)V

    .line 314
    new-instance v6, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-direct {v6}, Lcom/baidu/mapapi/search/core/RouteNode;-><init>()V

    .line 315
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    const/4 v13, 0x1

    sub-int/2addr v11, v13

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v6, v5}, Lcom/baidu/mapapi/search/core/RouteNode;->setLocation(Lcom/baidu/mapapi/model/LatLng;)V

    .line 316
    invoke-virtual {v12, v6}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->setExit(Lcom/baidu/mapapi/search/core/RouteNode;)V

    goto :goto_5

    :cond_8
    const/4 v13, 0x1

    :goto_5
    move/from16 v6, v16

    if-eqz v7, :cond_9

    if-ge v9, v6, :cond_9

    .line 321
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/baidu/platform/core/f/c;->b(Lorg/json/JSONObject;)[I

    move-result-object v5

    .line 322
    invoke-virtual {v12, v5}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->setTrafficList([I)V

    :cond_9
    add-int/lit8 v10, v10, 0x1

    .line 328
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_a
    return-object v8

    :cond_b
    :goto_7
    const/4 v1, 0x0

    return-object v1
.end method

.method private b(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/TaxiInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 224
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_4

    .line 228
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 230
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 234
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge p1, v3, :cond_4

    .line 235
    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_3

    .line 239
    :cond_1
    new-instance v4, Lcom/baidu/mapapi/search/core/TaxiInfo;

    invoke-direct {v4}, Lcom/baidu/mapapi/search/core/TaxiInfo;-><init>()V

    const-string v5, "total_price"

    .line 240
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v5, ""

    .line 241
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 244
    :cond_2
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v4, v3}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setTotalPrice(F)V

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x0

    .line 242
    invoke-virtual {v4, v3}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setTotalPrice(F)V

    .line 246
    :goto_2
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return-object v1

    :catch_0
    move-exception p1

    .line 250
    invoke-static {}, Lcom/baidu/mapapi/common/Logger;->debugEnable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 251
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5
    :goto_4
    return-object v0
.end method

.method private b(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 394
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5

    if-nez p2, :cond_0

    goto :goto_4

    .line 397
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 400
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    const-string v5, "n"

    .line 404
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "s"

    .line 405
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    add-int v7, v4, v6

    .line 407
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-lt v7, v8, :cond_2

    goto :goto_2

    .line 410
    :cond_2
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v1

    :cond_5
    :goto_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Ljava/lang/String;Lcom/baidu/mapapi/search/route/DrivingRouteResult;)Z
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-eqz v0, :cond_10

    const-string v4, ""

    .line 65
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_7

    .line 70
    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "result"

    .line 79
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    const-string v5, "error"

    .line 84
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    const/4 v4, 0x4

    if-eq v0, v4, :cond_2

    return v3

    .line 89
    :cond_2
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->ST_EN_TOO_NEAR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v0, v2, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return v5

    :cond_3
    const-string v0, "cars"

    .line 96
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_4

    return v3

    :cond_4
    const-string v4, "option"

    .line 100
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "content"

    .line 101
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v4, :cond_f

    if-nez v0, :cond_5

    goto/16 :goto_6

    :cond_5
    const-string v6, "start"

    .line 107
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/baidu/platform/core/f/c;->a(Lorg/json/JSONObject;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v6

    .line 108
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v8, "end"

    .line 109
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-direct {v1, v4, v7}, Lcom/baidu/platform/core/f/c;->a(Lorg/json/JSONArray;Ljava/util/List;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v4

    const-string v8, "steps"

    .line 112
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const-string v9, "stepts"

    .line 113
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 112
    invoke-direct {v1, v8, v9}, Lcom/baidu/platform/core/f/c;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v8

    .line 116
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v10, "routes"

    .line 117
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    if-nez v10, :cond_6

    return v3

    :cond_6
    const/4 v11, 0x0

    .line 121
    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_e

    .line 123
    new-instance v12, Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-direct {v12}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;-><init>()V

    .line 125
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    if-nez v13, :cond_7

    move-object/from16 v17, v0

    move-object/from16 v16, v10

    goto/16 :goto_5

    :cond_7
    const-string v14, "legs"

    .line 130
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    if-nez v14, :cond_8

    return v3

    .line 134
    :cond_8
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v15

    .line 137
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v0

    move-object/from16 v16, v10

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v5, v15, :cond_b

    move/from16 v18, v15

    .line 140
    invoke-virtual {v14, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    if-nez v15, :cond_9

    move-object/from16 v19, v14

    goto :goto_2

    :cond_9
    move-object/from16 v19, v14

    const-string v14, "distance"

    .line 144
    invoke-virtual {v15, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    add-int/2addr v10, v14

    const-string v14, "duration"

    .line 145
    invoke-virtual {v15, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    add-int/2addr v0, v14

    const-string v14, "stepis"

    .line 146
    invoke-virtual {v15, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 149
    invoke-direct {v1, v14, v8}, Lcom/baidu/platform/core/f/c;->b(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_a

    .line 151
    invoke-interface {v3, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_a
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move/from16 v15, v18

    move-object/from16 v14, v19

    goto :goto_1

    .line 154
    :cond_b
    invoke-virtual {v12, v6}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->setStarting(Lcom/baidu/mapapi/search/core/RouteNode;)V

    .line 155
    invoke-virtual {v12, v4}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->setTerminal(Lcom/baidu/mapapi/search/core/RouteNode;)V

    .line 156
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    const/4 v14, 0x0

    if-nez v5, :cond_c

    .line 157
    invoke-virtual {v12, v14}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->setWayPoints(Ljava/util/List;)V

    goto :goto_3

    .line 159
    :cond_c
    invoke-virtual {v12, v7}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->setWayPoints(Ljava/util/List;)V

    .line 161
    :goto_3
    invoke-virtual {v12, v10}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->setDistance(I)V

    .line 162
    invoke-virtual {v12, v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->setDuration(I)V

    const-string v0, "congestion_length"

    .line 163
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->setCongestionDistance(I)V

    const-string v0, "light_num"

    .line 164
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->setLightNum(I)V

    const-string v0, "toll"

    .line 165
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->setToll(I)V

    .line 166
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 167
    invoke-virtual {v12, v14}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->setSteps(Ljava/util/List;)V

    goto :goto_4

    .line 169
    :cond_d
    invoke-virtual {v12, v3}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->setSteps(Ljava/util/List;)V

    .line 172
    :goto_4
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v10, v16

    move-object/from16 v0, v17

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_e
    move-object/from16 v17, v0

    .line 174
    invoke-virtual {v2, v9}, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->setRouteLines(Ljava/util/List;)V

    const-string v0, "taxis"

    move-object/from16 v3, v17

    .line 175
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/baidu/platform/core/f/c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->setTaxiInfos(Ljava/util/List;)V

    const/4 v0, 0x1

    return v0

    :cond_f
    :goto_6
    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    .line 72
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return v2

    :cond_10
    :goto_7
    const/4 v2, 0x0

    return v2
.end method

.method private b(Lorg/json/JSONObject;)[I
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "end"

    .line 338
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "status"

    .line 339
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz v1, :cond_6

    if-nez p1, :cond_1

    goto :goto_4

    .line 343
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 344
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 345
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_4

    .line 347
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optInt(I)I

    move-result v6

    if-ge v5, v3, :cond_2

    .line 350
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->optInt(I)I

    move-result v7

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_3

    .line 353
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 359
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    .line 360
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_5

    .line 361
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    return-object p1

    :cond_6
    :goto_4
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/baidu/mapapi/search/route/DrivingRouteResult;)V
    .locals 4

    const-string v0, "httpStateError"

    const-string v1, "SDK_InnerError"

    if-eqz p1, :cond_6

    const-string v2, ""

    .line 28
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 34
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 36
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "PermissionCheckError"

    .line 37
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->PERMISSION_UNFINISHED:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, p2, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-void

    .line 40
    :cond_1
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 41
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "NETWORK_ERROR"

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NETWORK_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, p2, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_0

    :cond_2
    const-string v0, "REQUEST_ERROR"

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 45
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->REQUEST_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, p2, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_0

    .line 47
    :cond_3
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->SEARCH_SERVER_INTERNAL_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, p2, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_4
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/platform/core/f/c;->a(Ljava/lang/String;Lcom/baidu/mapapi/search/core/SearchResult;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/baidu/platform/core/f/c;->b(Ljava/lang/String;Lcom/baidu/mapapi/search/route/DrivingRouteResult;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 59
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, p2, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    :cond_5
    return-void

    .line 53
    :catch_0
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, p2, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-void

    .line 29
    :cond_6
    :goto_1
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, p2, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-void
.end method
