.class public Lcom/baidu/platform/core/f/h;
.super Lcom/baidu/platform/base/d;
.source "MassTransitRouteParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/baidu/platform/base/d;-><init>()V

    return-void
.end method

.method private a(ILorg/json/JSONObject;)Lcom/baidu/mapapi/search/core/TransitResultNode;
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v1, "wd"

    .line 393
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "city_name"

    .line 394
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    const-string p1, "city_code"

    .line 397
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_1
    const-string p1, "city_id"

    .line 400
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    :goto_0
    const-string v3, "location"

    .line 402
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 405
    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    const-string v3, "lat"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-string v5, "lng"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 406
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object p2

    sget-object v3, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne p2, v3, :cond_2

    .line 407
    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->baiduToGcj(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    .line 410
    :cond_2
    new-instance p2, Lcom/baidu/mapapi/search/core/TransitResultNode;

    invoke-direct {p2, p1, v2, v0, v1}, Lcom/baidu/mapapi/search/core/TransitResultNode;-><init>(ILjava/lang/String;Lcom/baidu/mapapi/model/LatLng;Ljava/lang/String;)V

    return-object p2
.end method

.method private a(Lorg/json/JSONObject;)Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;
    .locals 10

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 224
    :cond_0
    new-instance v0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;-><init>()V

    const-string v1, "distance"

    .line 226
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->setDistance(I)V

    const-string v1, "duration"

    .line 227
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->setDuration(I)V

    const-string v1, "instructions"

    .line 228
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->setInstructions(Ljava/lang/String;)V

    const-string v1, "path"

    .line 229
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->setPathString(Ljava/lang/String;)V

    const-string v1, "traffic_condition"

    .line 230
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 231
    invoke-direct {p0, v1}, Lcom/baidu/platform/core/f/h;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->setTrafficConditions(Ljava/util/List;)V

    const-string v1, "start_location"

    .line 234
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "lng"

    const-string v3, "lat"

    if-eqz v1, :cond_2

    .line 236
    new-instance v4, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 237
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v1

    sget-object v5, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v1, v5, :cond_1

    .line 238
    invoke-static {v4}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->baiduToGcj(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    .line 240
    :cond_1
    invoke-virtual {v0, v4}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->setStartLocation(Lcom/baidu/mapapi/model/LatLng;)V

    :cond_2
    const-string v1, "end_location"

    .line 243
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 245
    new-instance v4, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v4, v5, v6, v1, v2}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 246
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v1

    sget-object v2, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v1, v2, :cond_3

    .line 247
    invoke-static {v4}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->baiduToGcj(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    .line 249
    :cond_3
    invoke-virtual {v0, v4}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->setEndLocation(Lcom/baidu/mapapi/model/LatLng;)V

    :cond_4
    const-string v1, "vehicle_info"

    .line 252
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string v1, "type"

    .line 254
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "detail"

    .line 255
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "arrive_time"

    const-string v4, "departure_time"

    const-string v5, "arrive_station"

    const-string v6, "departure_station"

    const-string v7, "booking"

    const-string v8, "price"

    const-string v9, "name"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 323
    :pswitch_0
    sget-object v1, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;->ESTEP_COACH:Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->setVehileType(Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;)V

    if-nez p1, :cond_5

    goto/16 :goto_0

    .line 326
    :cond_5
    new-instance v1, Lcom/baidu/mapapi/search/core/CoachInfo;

    invoke-direct {v1}, Lcom/baidu/mapapi/search/core/CoachInfo;-><init>()V

    .line 327
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/core/CoachInfo;->setName(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/baidu/mapapi/search/core/CoachInfo;->setPrice(D)V

    .line 329
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/core/CoachInfo;->setBooking(Ljava/lang/String;)V

    const-string v2, "provider_name"

    .line 330
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/core/CoachInfo;->setProviderName(Ljava/lang/String;)V

    const-string v2, "provider_url"

    .line 331
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/core/CoachInfo;->setProviderUrl(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/core/CoachInfo;->setDepartureStation(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/core/CoachInfo;->setArriveStation(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/core/CoachInfo;->setDepartureTime(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/baidu/mapapi/search/core/CoachInfo;->setArriveTime(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->setCoachInfo(Lcom/baidu/mapapi/search/core/CoachInfo;)V

    goto/16 :goto_0

    .line 318
    :pswitch_1
    sget-object p1, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;->ESTEP_WALK:Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->setVehileType(Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;)V

    goto/16 :goto_0

    .line 312
    :pswitch_2
    sget-object p1, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;->ESTEP_DRIVING:Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->setVehileType(Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;)V

    goto/16 :goto_0

    .line 295
    :pswitch_3
    sget-object v2, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;->ESTEP_BUS:Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->setVehileType(Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;)V

    if-nez p1, :cond_6

    goto/16 :goto_0

    .line 298
    :cond_6
    new-instance v2, Lcom/baidu/mapapi/search/core/BusInfo;

    invoke-direct {v2}, Lcom/baidu/mapapi/search/core/BusInfo;-><init>()V

    .line 299
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/mapapi/search/core/BusInfo;->setName(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/baidu/mapapi/search/core/BusInfo;->setType(I)V

    const-string v1, "stop_num"

    .line 301
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/baidu/mapapi/search/core/BusInfo;->setStopNum(I)V

    const-string v1, "on_station"

    .line 302
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/baidu/mapapi/search/core/BusInfo;->setDepartureStation(Ljava/lang/String;)V

    const-string v1, "off_station"

    .line 303
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/baidu/mapapi/search/core/BusInfo;->setArriveStation(Ljava/lang/String;)V

    const-string v1, "first_time"

    .line 304
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/baidu/mapapi/search/core/BusInfo;->setDepartureTime(Ljava/lang/String;)V

    const-string v1, "last_time"

    .line 305
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/baidu/mapapi/search/core/BusInfo;->setArriveTime(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->setBusInfo(Lcom/baidu/mapapi/search/core/BusInfo;)V

    goto/16 :goto_0

    .line 276
    :pswitch_4
    sget-object v1, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;->ESTEP_PLANE:Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->setVehileType(Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;)V

    if-nez p1, :cond_7

    goto/16 :goto_0

    .line 279
    :cond_7
    new-instance v1, Lcom/baidu/mapapi/search/core/PlaneInfo;

    invoke-direct {v1}, Lcom/baidu/mapapi/search/core/PlaneInfo;-><init>()V

    .line 280
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/core/PlaneInfo;->setName(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/baidu/mapapi/search/core/PlaneInfo;->setPrice(D)V

    const-string v2, "discount"

    .line 282
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/baidu/mapapi/search/core/PlaneInfo;->setDiscount(D)V

    const-string v2, "airlines"

    .line 283
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/core/PlaneInfo;->setAirlines(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/core/PlaneInfo;->setBooking(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/core/PlaneInfo;->setDepartureStation(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/core/PlaneInfo;->setArriveStation(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/core/PlaneInfo;->setDepartureTime(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/baidu/mapapi/search/core/PlaneInfo;->setArriveTime(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->setPlaneInfo(Lcom/baidu/mapapi/search/core/PlaneInfo;)V

    goto :goto_0

    .line 259
    :pswitch_5
    sget-object v1, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;->ESTEP_TRAIN:Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->setVehileType(Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;)V

    if-nez p1, :cond_8

    goto :goto_0

    .line 262
    :cond_8
    new-instance v1, Lcom/baidu/mapapi/search/core/TrainInfo;

    invoke-direct {v1}, Lcom/baidu/mapapi/search/core/TrainInfo;-><init>()V

    .line 263
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/core/TrainInfo;->setName(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/baidu/mapapi/search/core/TrainInfo;->setPrice(D)V

    .line 265
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/core/TrainInfo;->setBooking(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/core/TrainInfo;->setDepartureStation(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/core/TrainInfo;->setArriveStation(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/core/TrainInfo;->setDepartureTime(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/baidu/mapapi/search/core/TrainInfo;->setArriveTime(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->setTrainInfo(Lcom/baidu/mapapi/search/core/TrainInfo;)V

    :cond_9
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;",
            ">;>;"
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_5

    .line 195
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 197
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 198
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 200
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 202
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 204
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 205
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_2

    .line 209
    :cond_1
    invoke-direct {p0, v6}, Lcom/baidu/platform/core/f/h;->a(Lorg/json/JSONObject;)Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;

    move-result-object v6

    .line 210
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 213
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0

    :cond_5
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/TaxiInfo;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 454
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 459
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 461
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    return-object v0

    .line 467
    :cond_1
    new-instance p1, Lcom/baidu/mapapi/search/core/TaxiInfo;

    invoke-direct {p1}, Lcom/baidu/mapapi/search/core/TaxiInfo;-><init>()V

    const-string v0, "remark"

    .line 468
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setDesc(Ljava/lang/String;)V

    const-string v0, "distance"

    .line 469
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setDistance(I)V

    const-string v0, "duration"

    .line 470
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setDuration(I)V

    const-string v0, "total_price"

    .line 471
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setTotalPrice(F)V

    const-string v0, "start_price"

    .line 472
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setStartPrice(F)V

    const-string v0, "km_price"

    .line 473
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/core/TaxiInfo;->setPerKMPrice(F)V

    return-object p1

    :cond_2
    :goto_1
    return-object v0
.end method

.method private b(Lorg/json/JSONObject;)Lcom/baidu/mapapi/search/route/SuggestAddrInfo;
    .locals 2

    .line 415
    new-instance v0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;-><init>()V

    const-string v1, "origin_list"

    .line 417
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/platform/core/f/h;->d(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->setSuggestStartNode(Ljava/util/List;)V

    const-string v1, "destination_list"

    .line 418
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/baidu/platform/core/f/h;->d(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->setSuggestEndNode(Ljava/util/List;)V

    return-object v0
.end method

.method private b(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$TrafficCondition;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 349
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_1

    .line 351
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 353
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 354
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 356
    new-instance v3, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$TrafficCondition;

    invoke-direct {v3}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$TrafficCondition;-><init>()V

    const-string v4, "status"

    .line 359
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$TrafficCondition;->setTrafficStatus(I)V

    const-string v4, "geo_cnt"

    .line 360
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$TrafficCondition;->setTrafficGeoCnt(I)V

    .line 362
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/PriceInfo;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 373
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 375
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 376
    new-instance v2, Lcom/baidu/mapapi/search/core/PriceInfo;

    invoke-direct {v2}, Lcom/baidu/mapapi/search/core/PriceInfo;-><init>()V

    .line 377
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "ticket_type"

    .line 379
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/baidu/mapapi/search/core/PriceInfo;->setTicketType(I)V

    const-string v4, "ticket_price"

    .line 380
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/baidu/mapapi/search/core/PriceInfo;->setTicketPrice(D)V

    .line 382
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private d(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/PoiInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 425
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 426
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    if-nez v2, :cond_0

    goto :goto_1

    .line 430
    :cond_0
    new-instance v3, Lcom/baidu/mapapi/search/core/PoiInfo;

    invoke-direct {v3}, Lcom/baidu/mapapi/search/core/PoiInfo;-><init>()V

    const-string v4, "address"

    .line 432
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/mapapi/search/core/PoiInfo;->address:Ljava/lang/String;

    const-string v4, "uid"

    .line 433
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/mapapi/search/core/PoiInfo;->uid:Ljava/lang/String;

    const-string v4, "name"

    .line 434
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/baidu/mapapi/search/core/PoiInfo;->name:Ljava/lang/String;

    const-string v4, "location"

    .line 436
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 438
    new-instance v4, Lcom/baidu/mapapi/model/LatLng;

    const-string v5, "lat"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-string v7, "lng"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    iput-object v4, v3, Lcom/baidu/mapapi/search/core/PoiInfo;->location:Lcom/baidu/mapapi/model/LatLng;

    .line 439
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v2

    sget-object v4, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v2, v4, :cond_1

    .line 440
    iget-object v2, v3, Lcom/baidu/mapapi/search/core/PoiInfo;->location:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v2}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->baiduToGcj(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    iput-object v2, v3, Lcom/baidu/mapapi/search/core/PoiInfo;->location:Lcom/baidu/mapapi/model/LatLng;

    .line 443
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 445
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/SearchResult;
    .locals 5

    const-string v0, "httpStateError"

    const-string v1, "SDK_InnerError"

    .line 35
    new-instance v2, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;

    invoke-direct {v2}, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;-><init>()V

    if-eqz p1, :cond_6

    const-string v3, ""

    .line 37
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 44
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 46
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "PermissionCheckError"

    .line 47
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->PERMISSION_UNFINISHED:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v2, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-object v2

    .line 50
    :cond_1
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 51
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "NETWORK_ERROR"

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NETWORK_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v2, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_0

    :cond_2
    const-string v0, "REQUEST_ERROR"

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 56
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->REQUEST_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v2, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_0

    .line 58
    :cond_3
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->SEARCH_SERVER_INTERNAL_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v2, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :cond_4
    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, p1, v2, v0}, Lcom/baidu/platform/core/f/h;->a(Ljava/lang/String;Lcom/baidu/mapapi/search/core/SearchResult;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 72
    invoke-virtual {p0, p1, v2}, Lcom/baidu/platform/core/f/h;->a(Ljava/lang/String;Lcom/baidu/mapapi/search/route/MassTransitRouteResult;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 73
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v2, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    :cond_5
    return-object v2

    .line 65
    :catch_0
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v2, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-object v2

    .line 38
    :cond_6
    :goto_1
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, v2, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return-object v2
.end method

.method public a(Lcom/baidu/mapapi/search/core/SearchResult;Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 479
    instance-of v0, p2, Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 483
    :cond_0
    check-cast p2, Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;

    check-cast p1, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;

    invoke-interface {p2, p1}, Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;->onGetMassTransitRouteResult(Lcom/baidu/mapapi/search/route/MassTransitRouteResult;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/baidu/mapapi/search/route/MassTransitRouteResult;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_4

    .line 91
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "status_sdk"

    .line 100
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    const/16 v1, 0x3ea

    if-eq p1, v1, :cond_1

    return v0

    .line 111
    :cond_1
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->MASS_TRANSIT_NO_POI_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, p2, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return v3

    .line 108
    :cond_2
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->MASS_TRANSIT_OPTION_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, p2, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return v3

    .line 105
    :cond_3
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->MASS_TRANSIT_SERVER_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, p2, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    return v3

    :cond_4
    const-string p1, "type"

    .line 118
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v4, "result"

    .line 119
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_f

    if-ne p1, v3, :cond_5

    const-string v0, "origin_info"

    .line 123
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/baidu/platform/core/f/h;->a(ILorg/json/JSONObject;)Lcom/baidu/mapapi/search/core/TransitResultNode;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->setOrigin(Lcom/baidu/mapapi/search/core/TransitResultNode;)V

    const-string v0, "destination_info"

    .line 126
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 125
    invoke-direct {p0, p1, v0}, Lcom/baidu/platform/core/f/h;->a(ILorg/json/JSONObject;)Lcom/baidu/mapapi/search/core/TransitResultNode;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->setDestination(Lcom/baidu/mapapi/search/core/TransitResultNode;)V

    .line 128
    invoke-direct {p0, v1}, Lcom/baidu/platform/core/f/h;->b(Lorg/json/JSONObject;)Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    move-result-object p1

    .line 129
    invoke-virtual {p2, p1}, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->setSuggestAddrInfo(Lcom/baidu/mapapi/search/route/SuggestAddrInfo;)V

    .line 130
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->AMBIGUOUS_ROURE_ADDR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, p2, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto/16 :goto_3

    :cond_5
    if-ne p1, v2, :cond_e

    const-string v2, "origin"

    .line 133
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/baidu/platform/core/f/h;->a(ILorg/json/JSONObject;)Lcom/baidu/mapapi/search/core/TransitResultNode;

    move-result-object v2

    .line 134
    invoke-virtual {p2, v2}, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->setOrigin(Lcom/baidu/mapapi/search/core/TransitResultNode;)V

    const-string v4, "destination"

    .line 135
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/baidu/platform/core/f/h;->a(ILorg/json/JSONObject;)Lcom/baidu/mapapi/search/core/TransitResultNode;

    move-result-object p1

    .line 136
    invoke-virtual {p2, p1}, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->setDestination(Lcom/baidu/mapapi/search/core/TransitResultNode;)V

    const-string v4, "total"

    .line 137
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->setTotal(I)V

    const-string v4, "taxi"

    .line 138
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/baidu/platform/core/f/h;->b(Ljava/lang/String;)Lcom/baidu/mapapi/search/core/TaxiInfo;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->setTaxiInfo(Lcom/baidu/mapapi/search/core/TaxiInfo;)V

    const-string v4, "routes"

    .line 140
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 141
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-gtz v4, :cond_6

    goto/16 :goto_2

    .line 145
    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 146
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_c

    .line 148
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_7

    goto :goto_1

    .line 152
    :cond_7
    new-instance v6, Lcom/baidu/mapapi/search/route/MassTransitRouteLine;

    invoke-direct {v6}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine;-><init>()V

    const-string v7, "distance"

    .line 153
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine;->setDistance(I)V

    const-string v7, "duration"

    .line 154
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine;->setDuration(I)V

    const-string v7, "arrive_time"

    .line 155
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine;->setArriveTime(Ljava/lang/String;)V

    const-string v7, "price"

    .line 156
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine;->setPrice(D)V

    const-string v7, "price_detail"

    .line 158
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 159
    invoke-direct {p0, v7}, Lcom/baidu/platform/core/f/h;->c(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine;->setPriceInfo(Ljava/util/List;)V

    if-eqz v2, :cond_8

    .line 163
    new-instance v7, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-direct {v7}, Lcom/baidu/mapapi/search/core/RouteNode;-><init>()V

    .line 164
    invoke-virtual {v2}, Lcom/baidu/mapapi/search/core/TransitResultNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/baidu/mapapi/search/core/RouteNode;->setLocation(Lcom/baidu/mapapi/model/LatLng;)V

    .line 165
    invoke-virtual {v6, v7}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine;->setStarting(Lcom/baidu/mapapi/search/core/RouteNode;)V

    :cond_8
    if-eqz p1, :cond_9

    .line 169
    new-instance v7, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-direct {v7}, Lcom/baidu/mapapi/search/core/RouteNode;-><init>()V

    .line 170
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/core/TransitResultNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/baidu/mapapi/search/core/RouteNode;->setLocation(Lcom/baidu/mapapi/model/LatLng;)V

    .line 171
    invoke-virtual {v6, v7}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine;->setTerminal(Lcom/baidu/mapapi/search/core/RouteNode;)V

    :cond_9
    const-string v7, "steps"

    .line 175
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 176
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-gtz v7, :cond_a

    goto :goto_1

    .line 179
    :cond_a
    invoke-direct {p0, v5}, Lcom/baidu/platform/core/f/h;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine;->setNewSteps(Ljava/util/List;)V

    .line 181
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 183
    :cond_c
    invoke-virtual {p2, v4}, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->setRoutelines(Ljava/util/List;)V

    .line 184
    sget-object p1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    iput-object p1, p2, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    goto :goto_3

    :cond_d
    :goto_2
    return v0

    :cond_e
    :goto_3
    return v3

    :cond_f
    return v0

    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_10
    :goto_4
    return v0
.end method
