.class public Lcom/baidu/platform/core/f/m;
.super Lcom/baidu/platform/core/f/k;
.source "TransitRouteParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/baidu/platform/core/f/k;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/baidu/mapapi/search/core/RouteNode;
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string v0, ""

    .line 237
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 241
    new-instance p2, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-direct {p2}, Lcom/baidu/mapapi/search/core/RouteNode;-><init>()V

    const-string/jumbo v0, "wd"

    .line 242
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/baidu/mapapi/search/core/RouteNode;->setTitle(Ljava/lang/String;)V

    const-string v0, "uid"

    .line 243
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/baidu/mapapi/search/core/RouteNode;->setUid(Ljava/lang/String;)V

    const-string v0, "pt"

    .line 244
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/mapapi/model/CoordUtil;->decodeLocation(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/baidu/mapapi/search/core/RouteNode;->setLocation(Lcom/baidu/mapapi/model/LatLng;)V

    return-object p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lorg/json/JSONObject;)Lcom/baidu/mapapi/search/core/TaxiInfo;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 203
    :cond_0
    new-instance v1, Lcom/baidu/mapapi/search/core/TaxiInfo;

    invoke-direct {v1}, Lcom/baidu/mapapi/search/core/TaxiInfo;-><init>()V

    const-string v2, "detail"

    .line 205
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 206
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_3

    .line 209
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v0, :cond_4

    .line 214
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const-string v5, "desc"

    .line 218
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\u767d\u5929"

    .line 219
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v0, "km_price"

    .line 220
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v0, v2

    const-string v2, "start_price"

    .line 221
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    const-string v3, "total_price"

    .line 222
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v4, v3

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_2
    const-string v3, "remark"

    .line 227
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setDesc(Ljava/lang/String;)V

    const-string v3, "distance"

    .line 228
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setDistance(I)V

    const-string v3, "duration"

    .line 229
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setDuration(I)V

    .line 230
    invoke-virtual {v1, v4}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setTotalPrice(F)V

    .line 231
    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setStartPrice(F)V

    .line 232
    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setPerKMPrice(F)V

    return-object v1

    :cond_5
    :goto_3
    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 258
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 261
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_4

    .line 262
    aget-char v4, p1, v2

    const/16 v5, 0x3c

    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    .line 265
    :cond_1
    aget-char v4, p1, v2

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    .line 270
    aget-char v4, p1, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;Lcom/baidu/mapapi/search/route/TransitRouteResult;)Z
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-eqz v0, :cond_15

    .line 62
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    goto/16 :goto_9

    .line 67
    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "result"

    .line 76
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    const-string v5, "error"

    .line 81
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v5, :cond_3

    const/16 v4, 0xc8

    if-eq v0, v4, :cond_2

    return v3

    .line 89
    :cond_2
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NOT_SUPPORT_BUS_2CITY:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v0, v2, Lcom/baidu/mapapi/search/route/TransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return v5

    .line 86
    :cond_3
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->ST_EN_TOO_NEAR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v0, v2, Lcom/baidu/mapapi/search/route/TransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return v5

    :cond_4
    const-string v0, "bus"

    .line 95
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_5

    return v3

    :cond_5
    const-string v4, "taxi"

    .line 102
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 104
    invoke-direct {v1, v4}, Lcom/baidu/platform/core/f/m;->a(Lorg/json/JSONObject;)Lcom/baidu/mapapi/search/core/TaxiInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/baidu/mapapi/search/route/TransitRouteResult;->setTaxiInfo(Lcom/baidu/mapapi/search/core/TaxiInfo;)V

    :cond_6
    const-string v4, "option"

    .line 107
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_7

    return v3

    :cond_7
    const-string v6, "start"

    .line 112
    invoke-direct {v1, v4, v6}, Lcom/baidu/platform/core/f/m;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v6

    const-string v7, "end"

    .line 113
    invoke-direct {v1, v4, v7}, Lcom/baidu/platform/core/f/m;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v4

    const-string v7, "routes"

    .line 115
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 116
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-gtz v7, :cond_8

    goto/16 :goto_8

    .line 120
    :cond_8
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    .line 121
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_13

    .line 124
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    const-string v10, "legs"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 126
    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    if-nez v9, :cond_9

    goto/16 :goto_6

    .line 130
    :cond_9
    new-instance v10, Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-direct {v10}, Lcom/baidu/mapapi/search/route/TransitRouteLine;-><init>()V

    const-string v11, "distance"

    .line 131
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v12}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->setDistance(I)V

    const-string v12, "duration"

    .line 132
    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v10, v13}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->setDuration(I)V

    .line 133
    invoke-virtual {v10, v6}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->setStarting(Lcom/baidu/mapapi/search/core/RouteNode;)V

    .line 134
    invoke-virtual {v10, v4}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->setTerminal(Lcom/baidu/mapapi/search/core/RouteNode;)V

    const-string v13, "steps"

    .line 135
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-eqz v9, :cond_12

    .line 136
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-gtz v13, :cond_a

    goto/16 :goto_6

    .line 140
    :cond_a
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 141
    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_11

    .line 142
    invoke-virtual {v9, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v5, "step"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 143
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-gtz v15, :cond_b

    goto/16 :goto_4

    .line 146
    :cond_b
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 147
    new-instance v15, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;

    invoke-direct {v15}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;-><init>()V

    const-string v3, "start_location"

    .line 148
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mapapi/model/CoordUtil;->decodeLocation(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mapapi/search/core/RouteNode;->location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->setEntrace(Lcom/baidu/mapapi/search/core/RouteNode;)V

    const-string v3, "end_location"

    .line 149
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mapapi/model/CoordUtil;->decodeLocation(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mapapi/search/core/RouteNode;->location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->setExit(Lcom/baidu/mapapi/search/core/RouteNode;)V

    const-string v3, "type"

    move-object/from16 v16, v0

    .line 150
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v17, v4

    const/4 v4, 0x5

    if-ne v0, v4, :cond_c

    .line 154
    sget-object v0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;->WAKLING:Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    invoke-virtual {v15, v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->setStepType(Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;)V

    goto :goto_2

    .line 156
    :cond_c
    sget-object v0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;->BUSLINE:Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    invoke-virtual {v15, v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->setStepType(Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;)V

    :goto_2
    const-string v0, "instructions"

    .line 158
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/baidu/platform/core/f/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->setInstructions(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->setDistance(I)V

    .line 160
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->setDuration(I)V

    const-string v0, "path"

    .line 162
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->setPathString(Ljava/lang/String;)V

    const-string v0, "vehicle"

    .line 163
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 164
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/baidu/platform/core/f/m;->c(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/VehicleInfo;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->setVehicleInfo(Lcom/baidu/mapapi/search/core/VehicleInfo;)V

    .line 166
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 167
    invoke-virtual {v15}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v4

    const-string v5, "start_uid"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/search/core/RouteNode;->setUid(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v15}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v4

    const-string v5, "start_name"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/search/core/RouteNode;->setTitle(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v15}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getExit()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v4

    const-string v5, "end_uid"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/search/core/RouteNode;->setUid(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v15}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getExit()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v4

    const-string v5, "end_name"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/search/core/RouteNode;->setTitle(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 175
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_d

    .line 176
    sget-object v0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;->SUBWAY:Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    invoke-virtual {v15, v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->setStepType(Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;)V

    goto :goto_3

    .line 178
    :cond_d
    sget-object v0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;->BUSLINE:Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    invoke-virtual {v15, v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->setStepType(Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;)V

    goto :goto_3

    .line 182
    :cond_e
    sget-object v0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;->BUSLINE:Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    invoke-virtual {v15, v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->setStepType(Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;)V

    .line 187
    :cond_f
    :goto_3
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_10
    :goto_4
    move-object/from16 v16, v0

    move-object/from16 v17, v4

    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v16

    move-object/from16 v4, v17

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_11
    move-object/from16 v16, v0

    move-object/from16 v17, v4

    .line 189
    invoke-virtual {v10, v13}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->setSteps(Ljava/util/List;)V

    .line 190
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_12
    :goto_6
    move-object/from16 v16, v0

    move-object/from16 v17, v4

    :goto_7
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v16

    move-object/from16 v4, v17

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 193
    :cond_13
    invoke-virtual {v2, v7}, Lcom/baidu/mapapi/search/route/TransitRouteResult;->setRoutelines(Ljava/util/List;)V

    const/4 v0, 0x1

    return v0

    :cond_14
    :goto_8
    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    .line 69
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return v2

    :cond_15
    :goto_9
    const/4 v2, 0x0

    return v2
.end method

.method private c(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/VehicleInfo;
    .locals 2

    const/4 v0, 0x0

    .line 279
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 282
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    .line 287
    :cond_0
    new-instance p1, Lcom/baidu/mapapi/search/core/VehicleInfo;

    invoke-direct {p1}, Lcom/baidu/mapapi/search/core/VehicleInfo;-><init>()V

    const-string/jumbo v0, "zone_price"

    .line 288
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/core/VehicleInfo;->setZonePrice(I)V

    const-string v0, "total_price"

    .line 289
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/core/VehicleInfo;->setTotalPrice(I)V

    const-string v0, "name"

    .line 290
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/core/VehicleInfo;->setTitle(Ljava/lang/String;)V

    const-string v0, "stop_num"

    .line 291
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/core/VehicleInfo;->setPassStationNum(I)V

    const-string v0, "uid"

    .line 292
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/core/VehicleInfo;->setUid(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/baidu/mapapi/search/route/TransitRouteResult;)V
    .locals 4

    const-string v0, "httpStateError"

    const-string v1, "SDK_InnerError"

    if-eqz p1, :cond_6

    const-string v2, ""

    .line 25
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 32
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 34
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "PermissionCheckError"

    .line 35
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->PERMISSION_UNFINISHED:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, p2, Lcom/baidu/mapapi/search/route/TransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-void

    .line 38
    :cond_1
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 39
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "NETWORK_ERROR"

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NETWORK_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, p2, Lcom/baidu/mapapi/search/route/TransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_0

    :cond_2
    const-string v0, "REQUEST_ERROR"

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 43
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->REQUEST_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, p2, Lcom/baidu/mapapi/search/route/TransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_0

    .line 45
    :cond_3
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->SEARCH_SERVER_INTERNAL_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, p2, Lcom/baidu/mapapi/search/route/TransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_4
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/platform/core/f/m;->a(Ljava/lang/String;Lcom/baidu/mapapi/search/core/SearchResult;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/baidu/platform/core/f/m;->b(Ljava/lang/String;Lcom/baidu/mapapi/search/route/TransitRouteResult;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 56
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, p2, Lcom/baidu/mapapi/search/route/TransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    :cond_5
    return-void

    .line 51
    :catch_0
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, p2, Lcom/baidu/mapapi/search/route/TransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-void

    .line 26
    :cond_6
    :goto_1
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, p2, Lcom/baidu/mapapi/search/route/TransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-void
.end method
