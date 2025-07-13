.class public Lcom/baidu/platform/core/b/b;
.super Lcom/baidu/platform/base/d;
.source "DistrictParser.java"


# instance fields
.field b:Z

.field c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/baidu/platform/base/d;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/baidu/platform/core/b/b;->b:Z

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/baidu/platform/core/b/b;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/baidu/mapapi/search/district/DistrictResult;)Z
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    const-string v3, ""

    .line 95
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 100
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "result"

    .line 109
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "city_result"

    .line 110
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v0, :cond_b

    if-nez v3, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string v4, "error"

    .line 114
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const-string v0, "content"

    .line 118
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    const-string v3, "sgeo"

    .line 123
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "code"

    const-string v5, "geo"

    const-string v6, "cname"

    if-eqz v3, :cond_a

    const-string v7, "geo_elements"

    .line 126
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 127
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_a

    .line 128
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    .line 129
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_9

    .line 130
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    if-nez v9, :cond_4

    goto :goto_3

    :cond_4
    const-string v10, "point"

    .line 135
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 137
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-gtz v10, :cond_5

    goto :goto_3

    .line 140
    :cond_5
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v12, v10, :cond_7

    .line 144
    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->optInt(I)I

    move-result v15

    .line 145
    rem-int/lit8 v16, v12, 0x2

    if-nez v16, :cond_6

    add-int/2addr v14, v15

    goto :goto_2

    :cond_6
    add-int/2addr v13, v15

    .line 149
    new-instance v15, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-direct {v15, v13, v14}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    invoke-static {v15}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 152
    :cond_7
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 154
    :cond_9
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 156
    invoke-virtual {v1, v7}, Lcom/baidu/mapapi/search/district/DistrictResult;->setPolylines(Ljava/util/List;)V

    .line 157
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mapapi/model/CoordUtil;->decodeLocation(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/district/DistrictResult;->setCenterPt(Lcom/baidu/mapapi/model/LatLng;)V

    .line 158
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/district/DistrictResult;->setCityCode(I)V

    .line 159
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/search/district/DistrictResult;->setCityName(Ljava/lang/String;)V

    .line 160
    sget-object v0, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object v0, v1, Lcom/baidu/mapapi/search/district/DistrictResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const/4 v0, 0x1

    return v0

    :cond_a
    const-string v3, "uid"

    .line 170
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/baidu/mapapi/search/district/DistrictResult;->setCityName(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v6, p0

    iput-object v3, v6, Lcom/baidu/platform/core/b/b;->c:Ljava/lang/String;

    .line 172
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mapapi/model/CoordUtil;->decodeLocation(Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/baidu/mapapi/search/district/DistrictResult;->setCenterPt(Lcom/baidu/mapapi/model/LatLng;)V

    .line 173
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/search/district/DistrictResult;->setCityCode(I)V

    return v2

    :cond_b
    :goto_4
    move-object/from16 v6, p0

    return v2

    :catch_0
    move-exception v0

    move-object/from16 v6, p0

    .line 102
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return v2

    :cond_c
    :goto_5
    move-object/from16 v6, p0

    return v2
.end method

.method private b(Ljava/lang/String;Lcom/baidu/mapapi/search/district/DistrictResult;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    const-string v1, ""

    .line 185
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 190
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const-string p1, "result"

    .line 199
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "content"

    .line 200
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz p1, :cond_7

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    const-string v2, "error"

    .line 204
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    return v0

    .line 208
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 210
    iget-object v0, p0, Lcom/baidu/platform/core/b/b;->c:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    :try_start_1
    const-string v0, "geo"

    .line 213
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->decodeLocationList2D(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_5

    .line 220
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 221
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 222
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/model/LatLng;

    .line 223
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 225
    :cond_4
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 229
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 230
    invoke-virtual {p2, p1}, Lcom/baidu/mapapi/search/district/DistrictResult;->setPolylines(Ljava/util/List;)V

    .line 232
    :cond_6
    iget-object p1, p0, Lcom/baidu/platform/core/b/b;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/baidu/mapapi/search/district/DistrictResult;->setCityName(Ljava/lang/String;)V

    .line 233
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, p2, Lcom/baidu/mapapi/search/district/DistrictResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    .line 234
    iput-object v2, p0, Lcom/baidu/platform/core/b/b;->c:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_7
    :goto_3
    return v0

    :catch_1
    move-exception p1

    .line 192
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_8
    :goto_4
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/SearchResult;
    .locals 5

    const-string v0, "httpStateError"

    const-string v1, "SDK_InnerError"

    .line 32
    new-instance v2, Lcom/baidu/mapapi/search/district/DistrictResult;

    invoke-direct {v2}, Lcom/baidu/mapapi/search/district/DistrictResult;-><init>()V

    if-eqz p1, :cond_7

    const-string v3, ""

    .line 34
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 41
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 43
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "PermissionCheckError"

    .line 44
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->PERMISSION_UNFINISHED:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v2, Lcom/baidu/mapapi/search/district/DistrictResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-object v2

    .line 47
    :cond_1
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 48
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "NETWORK_ERROR"

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NETWORK_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v2, Lcom/baidu/mapapi/search/district/DistrictResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_0

    :cond_2
    const-string v0, "REQUEST_ERROR"

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 52
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->REQUEST_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v2, Lcom/baidu/mapapi/search/district/DistrictResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_0

    .line 54
    :cond_3
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->SEARCH_SERVER_INTERNAL_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v2, Lcom/baidu/mapapi/search/district/DistrictResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :cond_4
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, p1, v2, v0}, Lcom/baidu/platform/core/b/b;->a(Ljava/lang/String;Lcom/baidu/mapapi/search/core/SearchResult;Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 67
    iget-boolean v0, p0, Lcom/baidu/platform/core/b/b;->b:Z

    if-nez v0, :cond_5

    .line 68
    invoke-direct {p0, p1, v2}, Lcom/baidu/platform/core/b/b;->a(Ljava/lang/String;Lcom/baidu/mapapi/search/district/DistrictResult;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 69
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v2, Lcom/baidu/mapapi/search/district/DistrictResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_1

    .line 73
    :cond_5
    invoke-direct {p0, p1, v2}, Lcom/baidu/platform/core/b/b;->b(Ljava/lang/String;Lcom/baidu/mapapi/search/district/DistrictResult;)Z

    :cond_6
    :goto_1
    return-object v2

    .line 61
    :catch_0
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v2, Lcom/baidu/mapapi/search/district/DistrictResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-object v2

    .line 35
    :cond_7
    :goto_2
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v2, Lcom/baidu/mapapi/search/district/DistrictResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-object v2
.end method

.method public a(Lcom/baidu/mapapi/search/core/SearchResult;Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 280
    instance-of v0, p2, Lcom/baidu/mapapi/search/district/OnGetDistricSearchResultListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    check-cast p2, Lcom/baidu/mapapi/search/district/OnGetDistricSearchResultListener;

    check-cast p1, Lcom/baidu/mapapi/search/district/DistrictResult;

    invoke-interface {p2, p1}, Lcom/baidu/mapapi/search/district/OnGetDistricSearchResultListener;->onGetDistrictResult(Lcom/baidu/mapapi/search/district/DistrictResult;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/baidu/platform/core/b/b;->b:Z

    return-void
.end method
