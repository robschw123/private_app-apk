.class public Lcom/baidu/platform/core/d/d;
.super Lcom/baidu/platform/base/d;
.source "PoiDetailSearchParser.java"


# static fields
.field private static final b:Ljava/lang/String; = "d"


# instance fields
.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/baidu/platform/base/d;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/baidu/platform/core/d/d;->c:Z

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Lcom/baidu/mapapi/model/LatLng;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "lat"

    .line 251
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-string v2, "lng"

    .line 252
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 254
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object p1

    sget-object v4, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne p1, v4, :cond_1

    .line 255
    new-instance p1, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    invoke-static {p1}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->baiduToGcj(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    goto :goto_0

    .line 257
    :cond_1
    new-instance p1, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    :goto_0
    return-object p1
.end method

.method private a(Ljava/lang/String;Lcom/baidu/mapapi/search/core/SearchResult;)Z
    .locals 2

    const/4 v0, 0x0

    .line 110
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string p1, "status"

    .line 120
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const-string p1, "result"

    .line 126
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 127
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 134
    :cond_2
    iget-boolean v0, p0, Lcom/baidu/platform/core/d/d;->c:Z

    if-eqz v0, :cond_3

    .line 135
    check-cast p2, Lcom/baidu/mapapi/search/poi/PoiDetailSearchResult;

    invoke-direct {p0, p1, p2}, Lcom/baidu/platform/core/d/d;->a(Lorg/json/JSONArray;Lcom/baidu/mapapi/search/poi/PoiDetailSearchResult;)Z

    move-result p1

    goto :goto_0

    .line 137
    :cond_3
    check-cast p2, Lcom/baidu/mapapi/search/poi/PoiDetailResult;

    invoke-direct {p0, p1, p2}, Lcom/baidu/platform/core/d/d;->a(Lorg/json/JSONArray;Lcom/baidu/mapapi/search/poi/PoiDetailResult;)Z

    move-result p1

    :goto_0
    return p1

    :cond_4
    :goto_1
    return v0

    :catch_0
    move-exception p1

    .line 112
    sget-object p2, Lcom/baidu/platform/core/d/d;->b:Ljava/lang/String;

    const-string v1, "Parse detail search result error"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private a(Lorg/json/JSONArray;Lcom/baidu/mapapi/search/poi/PoiDetailResult;)Z
    .locals 6

    const/4 v0, 0x0

    .line 202
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    .line 203
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v1, "name"

    .line 207
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->setName(Ljava/lang/String;)V

    const-string v1, "location"

    .line 209
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 210
    invoke-direct {p0, v1}, Lcom/baidu/platform/core/d/d;->a(Lorg/json/JSONObject;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    .line 211
    invoke-virtual {p2, v1}, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->setLocation(Lcom/baidu/mapapi/model/LatLng;)V

    const-string v1, "address"

    .line 213
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->setAddress(Ljava/lang/String;)V

    const-string v1, "telephone"

    .line 214
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->setTelephone(Ljava/lang/String;)V

    const-string v1, "uid"

    .line 215
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->setUid(Ljava/lang/String;)V

    const-string v1, "detail_info"

    .line 217
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 218
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "tag"

    .line 219
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->setTag(Ljava/lang/String;)V

    const-string v1, "detail_url"

    .line 220
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->setDetailUrl(Ljava/lang/String;)V

    const-string v1, "type"

    .line 221
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->setType(Ljava/lang/String;)V

    const-string v1, "price"

    const-wide/16 v2, 0x0

    .line 222
    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->setPrice(D)V

    const-string v1, "overall_rating"

    .line 223
    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->setOverallRating(D)V

    const-string v1, "taste_rating"

    .line 224
    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->setTasteRating(D)V

    const-string v1, "service_rating"

    .line 225
    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->setServiceRating(D)V

    const-string v1, "environment_rating"

    .line 226
    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->setEnvironmentRating(D)V

    const-string v1, "facility_rating"

    .line 227
    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->setFacilityRating(D)V

    const-string v1, "hygiene_rating"

    .line 228
    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->setHygieneRating(D)V

    const-string v1, "technology_rating"

    .line 229
    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->setTechnologyRating(D)V

    const-string v1, "image_num"

    .line 230
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->setImageNum(I)V

    const-string v1, "groupon_num"

    .line 231
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->setGrouponNum(I)V

    const-string v1, "comment_num"

    .line 232
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->setCommentNum(I)V

    const-string v1, "discount_num"

    .line 233
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->setDiscountNum(I)V

    const-string v1, "favorite_num"

    .line 234
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->setFavoriteNum(I)V

    const-string v1, "checkin_num"

    .line 235
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->setCheckinNum(I)V

    const-string v0, "shop_hours"

    .line 236
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->setShopHours(Ljava/lang/String;)V

    .line 239
    :cond_1
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, p2, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private a(Lorg/json/JSONArray;Lcom/baidu/mapapi/search/poi/PoiDetailSearchResult;)Z
    .locals 10

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 146
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 147
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_2

    .line 148
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 151
    :cond_0
    new-instance v4, Lcom/baidu/mapapi/search/core/PoiDetailInfo;

    invoke-direct {v4}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;-><init>()V

    const-string v5, "name"

    .line 152
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->setName(Ljava/lang/String;)V

    const-string v5, "location"

    .line 153
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 154
    invoke-direct {p0, v5}, Lcom/baidu/platform/core/d/d;->a(Lorg/json/JSONObject;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v5

    .line 155
    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->setLocation(Lcom/baidu/mapapi/model/LatLng;)V

    const-string v5, "address"

    .line 157
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->setAddress(Ljava/lang/String;)V

    const-string v5, "adcode"

    .line 158
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->setAdCode(I)V

    const-string v5, "province"

    .line 160
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->setProvince(Ljava/lang/String;)V

    const-string v5, "city"

    .line 161
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->setCity(Ljava/lang/String;)V

    const-string v5, "area"

    .line 162
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->setArea(Ljava/lang/String;)V

    const-string v5, "telephone"

    .line 163
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->setTelephone(Ljava/lang/String;)V

    const-string v5, "uid"

    .line 164
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->setUid(Ljava/lang/String;)V

    const-string v5, "setStreetId"

    .line 165
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->setStreetId(Ljava/lang/String;)V

    const-string v5, "detail"

    .line 166
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->setDetail(Ljava/lang/String;)V

    const-string v5, "detail_info"

    .line 168
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 169
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "distance"

    .line 170
    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->setDistance(I)V

    const-string v5, "type"

    .line 171
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->setType(Ljava/lang/String;)V

    const-string v5, "tag"

    .line 172
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->setTag(Ljava/lang/String;)V

    const-string v5, "detail_url"

    .line 173
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->setDetailUrl(Ljava/lang/String;)V

    const-string v5, "price"

    const-wide/16 v6, 0x0

    .line 174
    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->setPrice(D)V

    const-string v5, "shop_hours"

    .line 175
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->setShopHours(Ljava/lang/String;)V

    const-string v5, "overall_rating"

    .line 176
    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->setOverallRating(D)V

    const-string v5, "taste_rating"

    .line 177
    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->setTasteRating(D)V

    const-string v5, "service_rating"

    .line 178
    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->setServiceRating(D)V

    const-string v5, "environment_rating"

    .line 179
    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->setEnvironmentRating(D)V

    const-string v5, "facility_rating"

    .line 180
    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->setFacilityRating(D)V

    const-string v5, "hygiene_rating"

    .line 181
    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->setHygieneRating(D)V

    const-string v5, "technology_rating"

    .line 182
    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->setTechnologyRating(D)V

    const-string v5, "image_num"

    .line 183
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->setImageNum(I)V

    const-string v5, "groupon_num"

    .line 184
    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->setGrouponNum(I)V

    const-string v5, "comment_num"

    .line 185
    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->setCommentNum(I)V

    const-string v5, "discount_num"

    .line 186
    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->setDiscountNum(I)V

    const-string v5, "favorite_num"

    .line 187
    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->setFavoriteNum(I)V

    const-string v5, "checkin_num"

    .line 188
    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->setCheckinNum(I)V

    .line 191
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 194
    :cond_3
    invoke-virtual {p2, v0}, Lcom/baidu/mapapi/search/poi/PoiDetailSearchResult;->setPoiDetailInfoList(Ljava/util/List;)V

    .line 196
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, p2, Lcom/baidu/mapapi/search/poi/PoiDetailSearchResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/SearchResult;
    .locals 4

    .line 39
    iget-boolean v0, p0, Lcom/baidu/platform/core/d/d;->c:Z

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Lcom/baidu/mapapi/search/poi/PoiDetailSearchResult;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/poi/PoiDetailSearchResult;-><init>()V

    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/poi/PoiDetailResult;-><init>()V

    :goto_0
    if-eqz p1, :cond_b

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 54
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 56
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v0, Lcom/baidu/mapapi/search/core/SearchResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_2
    const-string v2, "SDK_InnerError"

    .line 66
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/baidu/platform/core/d/d;->a(Ljava/lang/String;Lcom/baidu/mapapi/search/core/SearchResult;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 68
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v0, Lcom/baidu/mapapi/search/core/SearchResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    :cond_3
    return-object v0

    .line 74
    :cond_4
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 75
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    const-string v1, "PermissionCheckError"

    .line 81
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 82
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->PERMISSION_UNFINISHED:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v0, Lcom/baidu/mapapi/search/core/SearchResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-object v0

    :cond_6
    const-string v1, "httpStateError"

    .line 87
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 88
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v1, "NETWORK_ERROR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "REQUEST_ERROR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 98
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->SEARCH_SERVER_INTERNAL_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v0, Lcom/baidu/mapapi/search/core/SearchResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_1

    .line 95
    :cond_7
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->REQUEST_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v0, Lcom/baidu/mapapi/search/core/SearchResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_1

    .line 92
    :cond_8
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NETWORK_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v0, Lcom/baidu/mapapi/search/core/SearchResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    :cond_9
    :goto_1
    return-object v0

    .line 76
    :cond_a
    :goto_2
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v0, Lcom/baidu/mapapi/search/core/SearchResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-object v0

    :catch_0
    move-exception p1

    .line 60
    sget-object v1, Lcom/baidu/platform/core/d/d;->b:Ljava/lang/String;

    const-string v2, "Parse detail search result failed"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v0, Lcom/baidu/mapapi/search/core/SearchResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-object v0

    .line 47
    :cond_b
    :goto_3
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v0, Lcom/baidu/mapapi/search/core/SearchResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-object v0
.end method

.method public a(Lcom/baidu/mapapi/search/core/SearchResult;Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_2

    .line 265
    instance-of v0, p2, Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/platform/core/d/d;->c:Z

    if-eqz v0, :cond_1

    .line 270
    check-cast p2, Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;

    check-cast p1, Lcom/baidu/mapapi/search/poi/PoiDetailSearchResult;

    invoke-interface {p2, p1}, Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;->onGetPoiDetailResult(Lcom/baidu/mapapi/search/poi/PoiDetailSearchResult;)V

    goto :goto_0

    .line 272
    :cond_1
    check-cast p2, Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;

    check-cast p1, Lcom/baidu/mapapi/search/poi/PoiDetailResult;

    invoke-interface {p2, p1}, Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;->onGetPoiDetailResult(Lcom/baidu/mapapi/search/poi/PoiDetailResult;)V

    :cond_2
    :goto_0
    return-void
.end method

.method a(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/baidu/platform/core/d/d;->c:Z

    return-void
.end method
