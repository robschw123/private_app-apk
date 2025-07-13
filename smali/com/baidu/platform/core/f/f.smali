.class public Lcom/baidu/platform/core/f/f;
.super Lcom/baidu/platform/base/d;
.source "IndoorRouteParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/baidu/platform/base/d;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;
    .locals 3

    .line 217
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 219
    new-instance p2, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    const/4 v1, 0x1

    .line 220
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-double v1, v1

    invoke-virtual {p2, v1, v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->setLatitudeE6(D)V

    .line 221
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v0

    double-to-int p1, v0

    int-to-double v0, p1

    invoke-virtual {p2, v0, v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->setLongitudeE6(D)V

    .line 222
    invoke-static {p2}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;Lcom/baidu/mapapi/search/route/IndoorRouteResult;)Z
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-eqz v0, :cond_14

    const-string v4, ""

    .line 79
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_9

    .line 84
    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "indoor_navi"

    .line 94
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    const-string v4, "option"

    .line 100
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_2

    return v3

    :cond_2
    const-string v5, "error"

    .line 105
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    const/4 v0, 0x6

    if-eq v4, v0, :cond_4

    const/4 v0, 0x7

    if-eq v4, v0, :cond_3

    return v3

    .line 110
    :cond_3
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->INDOOR_ROUTE_NO_IN_SAME_BUILDING:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v0, v2, Lcom/baidu/mapapi/search/route/IndoorRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return v5

    .line 107
    :cond_4
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->INDOOR_ROUTE_NO_IN_BUILDING:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v0, v2, Lcom/baidu/mapapi/search/route/IndoorRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return v5

    :cond_5
    const-string v4, "routes"

    .line 119
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_6

    return v3

    .line 124
    :cond_6
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_7

    return v3

    .line 128
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "legs"

    .line 130
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_8

    return v3

    :cond_8
    const/4 v6, 0x0

    .line 134
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_13

    .line 135
    new-instance v7, Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    invoke-direct {v7}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;-><init>()V

    .line 136
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_9

    move-object/from16 v16, v0

    goto/16 :goto_8

    :cond_9
    const-string v9, "distance"

    .line 139
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->setDistance(I)V

    const-string v10, "duration"

    .line 140
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->setDuration(I)V

    const-string v11, "sstart_location"

    .line 142
    invoke-direct {v1, v8, v11}, Lcom/baidu/platform/core/f/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v12

    invoke-static {v12}, Lcom/baidu/mapapi/search/core/RouteNode;->location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->setStarting(Lcom/baidu/mapapi/search/core/RouteNode;)V

    const-string v12, "send_location"

    .line 143
    invoke-direct {v1, v8, v12}, Lcom/baidu/platform/core/f/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v13

    invoke-static {v13}, Lcom/baidu/mapapi/search/core/RouteNode;->location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->setTerminal(Lcom/baidu/mapapi/search/core/RouteNode;)V

    const-string v13, "steps"

    .line 146
    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-eqz v8, :cond_11

    .line 148
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 149
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_10

    .line 150
    new-instance v15, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;

    invoke-direct {v15}, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;-><init>()V

    .line 151
    invoke-virtual {v8, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_a

    :goto_2
    move-object/from16 v16, v0

    move-object/from16 v20, v8

    move-object/from16 v17, v9

    move-object/from16 v25, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    goto/16 :goto_6

    .line 155
    :cond_a
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v15, v3}, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->setDistance(I)V

    .line 156
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v15, v3}, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->setDuration(I)V

    const-string v3, "buildingid"

    .line 157
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->setBuildingId(Ljava/lang/String;)V

    const-string v3, "floorid"

    .line 158
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->setFloorId(Ljava/lang/String;)V

    .line 159
    invoke-direct {v1, v5, v11}, Lcom/baidu/platform/core/f/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mapapi/search/core/RouteNode;->location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->setEntrace(Lcom/baidu/mapapi/search/core/RouteNode;)V

    .line 160
    invoke-direct {v1, v5, v12}, Lcom/baidu/platform/core/f/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mapapi/search/core/RouteNode;->location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->setExit(Lcom/baidu/mapapi/search/core/RouteNode;)V

    const-string v3, "spath"

    .line 162
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-nez v3, :cond_b

    goto :goto_2

    :cond_b
    move-object/from16 v16, v0

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v17, 0x5

    const-wide/16 v18, 0x0

    move-object/from16 v20, v8

    move-object/from16 v17, v9

    move-wide/from16 v21, v18

    const/4 v8, 0x5

    .line 168
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_c

    add-int/lit8 v9, v8, 0x1

    .line 169
    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v23

    move-object/from16 v25, v10

    add-double v9, v18, v23

    .line 170
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v18

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    add-double v11, v21, v18

    move-object/from16 v18, v3

    .line 172
    new-instance v3, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    const/4 v2, 0x0

    invoke-direct {v3, v2, v2}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    double-to-int v2, v9

    move-wide/from16 v21, v9

    int-to-double v9, v2

    .line 173
    invoke-virtual {v3, v9, v10}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->setLatitudeE6(D)V

    double-to-int v2, v11

    int-to-double v9, v2

    .line 174
    invoke-virtual {v3, v9, v10}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->setLongitudeE6(D)V

    .line 176
    invoke-static {v3}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    .line 177
    iget-wide v9, v2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-wide v2, v2, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x2

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    move-wide/from16 v18, v21

    move-object/from16 v10, v25

    move-wide/from16 v21, v11

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    goto :goto_3

    :cond_c
    move-object/from16 v25, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    .line 181
    invoke-virtual {v15, v0}, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->setPath(Ljava/util/List;)V

    const-string v0, "instructions"

    .line 182
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->setInstructions(Ljava/lang/String;)V

    const-string v0, "pois"

    .line 184
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 186
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 188
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_e

    .line 189
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_d

    goto :goto_5

    .line 192
    :cond_d
    new-instance v8, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep$IndoorStepNode;

    invoke-direct {v8}, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep$IndoorStepNode;-><init>()V

    const-string v9, "detail"

    .line 194
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep$IndoorStepNode;->setDetail(Ljava/lang/String;)V

    const-string v9, "name"

    .line 195
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep$IndoorStepNode;->setName(Ljava/lang/String;)V

    const-string v9, "type"

    .line 196
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep$IndoorStepNode;->setType(I)V

    const-string v9, "location"

    .line 197
    invoke-direct {v1, v5, v9}, Lcom/baidu/platform/core/f/f;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep$IndoorStepNode;->setLocation(Lcom/baidu/mapapi/model/LatLng;)V

    .line 198
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 200
    :cond_e
    invoke-virtual {v15, v2}, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->setStepNodes(Ljava/util/List;)V

    .line 203
    :cond_f
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p2

    move-object/from16 v0, v16

    move-object/from16 v9, v17

    move-object/from16 v8, v20

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    move-object/from16 v10, v25

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_10
    move-object/from16 v16, v0

    .line 205
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 206
    invoke-virtual {v7, v13}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->setSteps(Ljava/util/List;)V

    goto :goto_7

    :cond_11
    move-object/from16 v16, v0

    .line 209
    :cond_12
    :goto_7
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p2

    move-object/from16 v0, v16

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_13
    move-object v0, v2

    .line 212
    invoke-virtual {v0, v4}, Lcom/baidu/mapapi/search/route/IndoorRouteResult;->setRouteLines(Ljava/util/List;)V

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v2, 0x0

    return v2

    :cond_14
    :goto_9
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/SearchResult;
    .locals 5

    const-string v0, "httpStateError"

    const-string v1, "SDK_InnerError"

    .line 36
    new-instance v2, Lcom/baidu/mapapi/search/route/IndoorRouteResult;

    invoke-direct {v2}, Lcom/baidu/mapapi/search/route/IndoorRouteResult;-><init>()V

    if-eqz p1, :cond_6

    const-string v3, ""

    .line 38
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 45
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 47
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "PermissionCheckError"

    .line 49
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->PERMISSION_UNFINISHED:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v2, Lcom/baidu/mapapi/search/route/IndoorRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-object v2

    .line 52
    :cond_1
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 53
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "NETWORK_ERROR"

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NETWORK_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v2, Lcom/baidu/mapapi/search/route/IndoorRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_0

    :cond_2
    const-string v0, "REQUEST_ERROR"

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 58
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->REQUEST_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v2, Lcom/baidu/mapapi/search/route/IndoorRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_0

    .line 60
    :cond_3
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->SEARCH_SERVER_INTERNAL_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v2, Lcom/baidu/mapapi/search/route/IndoorRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    .line 70
    :cond_4
    invoke-direct {p0, p1, v2}, Lcom/baidu/platform/core/f/f;->a(Ljava/lang/String;Lcom/baidu/mapapi/search/route/IndoorRouteResult;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 71
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v2, Lcom/baidu/mapapi/search/route/IndoorRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    :cond_5
    return-object v2

    .line 67
    :catch_0
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v2, Lcom/baidu/mapapi/search/route/IndoorRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-object v2

    .line 39
    :cond_6
    :goto_1
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v2, Lcom/baidu/mapapi/search/route/IndoorRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-object v2
.end method

.method public a(Lcom/baidu/mapapi/search/core/SearchResult;Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 230
    instance-of v0, p2, Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    check-cast p2, Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    check-cast p1, Lcom/baidu/mapapi/search/route/IndoorRouteResult;

    invoke-interface {p2, p1}, Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;->onGetIndoorRouteResult(Lcom/baidu/mapapi/search/route/IndoorRouteResult;)V

    :cond_1
    :goto_0
    return-void
.end method
