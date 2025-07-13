.class public Lcom/baidu/mapapi/navi/BaiduMapNavigation;
.super Ljava/lang/Object;
.source "BaiduMapNavigation.java"


# static fields
.field private static a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 422
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 423
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 424
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 430
    :catch_1
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static a(Lcom/baidu/mapapi/navi/NaviParaOption;Landroid/content/Context;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, ","

    const-string/jumbo v3, "xy"

    const-string v4, "1"

    const-string v5, "type"

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 347
    iget-object v6, v0, Lcom/baidu/mapapi/navi/NaviParaOption;->a:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/baidu/mapapi/navi/NaviParaOption;->c:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v6, :cond_3

    .line 348
    iget-object v6, v0, Lcom/baidu/mapapi/navi/NaviParaOption;->a:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v6}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v6

    .line 349
    iget-object v7, v0, Lcom/baidu/mapapi/navi/NaviParaOption;->c:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v7}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v7

    .line 351
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://app.navi.baidu.com/mobile/#navi/naving/"

    .line 352
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "&sy=0"

    .line 353
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "&endp="

    .line 354
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "&start="

    .line 355
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "&startwd="

    .line 356
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "&endwd="

    .line 357
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "&fromprod=map_sdk"

    .line 358
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "&app_version="

    .line 359
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "7_5_3"

    .line 360
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 362
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 363
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 366
    :try_start_0
    invoke-virtual {v10, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    iget-object v12, v0, Lcom/baidu/mapapi/navi/NaviParaOption;->b:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v13, ""

    const-string v14, "keyword"

    if-eqz v12, :cond_0

    :try_start_1
    iget-object v12, v0, Lcom/baidu/mapapi/navi/NaviParaOption;->b:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 368
    iget-object v12, v0, Lcom/baidu/mapapi/navi/NaviParaOption;->b:Ljava/lang/String;

    invoke-virtual {v10, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 370
    :cond_0
    invoke-virtual {v10, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 375
    invoke-virtual {v11, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    iget-object v4, v0, Lcom/baidu/mapapi/navi/NaviParaOption;->d:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/baidu/mapapi/navi/NaviParaOption;->d:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 377
    iget-object v0, v0, Lcom/baidu/mapapi/navi/NaviParaOption;->d:Ljava/lang/String;

    invoke-virtual {v10, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 379
    :cond_1
    invoke-virtual {v10, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 381
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 382
    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 385
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 387
    :goto_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "&positions="

    .line 388
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v0, "&ctrl_type="

    .line 391
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&mrsl="

    .line 392
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/vt=map&state=entry"

    .line 393
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 395
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    .line 396
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 397
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 398
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 399
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 401
    :cond_3
    new-instance v0, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;

    const-string v1, "BDMapSDKException: you must set start and end point."

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_4
    new-instance v0, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;

    const-string v1, "BDMapSDKException: para or context can not be null."

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static finish(Landroid/content/Context;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 413
    invoke-static {p0}, Lcom/baidu/mapapi/utils/b;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static openBaiduMapBikeNavi(Lcom/baidu/mapapi/navi/NaviParaOption;Landroid/content/Context;)Z
    .locals 4

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 259
    iget-object v0, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->c:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->a:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_2

    .line 263
    invoke-static {p1}, Lcom/baidu/mapapi/utils/OpenClientUtil;->getBaiduMapVersion(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "baidumapsdk"

    if-eqz v0, :cond_1

    const/16 v3, 0x365

    if-lt v0, v3, :cond_0

    const/16 v0, 0x8

    .line 266
    invoke-static {p0, p1, v0}, Lcom/baidu/mapapi/utils/b;->a(Lcom/baidu/mapapi/navi/NaviParaOption;Landroid/content/Context;I)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "Baidumap app version is too lowl.Version is greater than 8.6.6"

    .line 269
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string p0, "BaiduMap app is not installed."

    .line 275
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 260
    :cond_2
    new-instance p0, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;

    const-string p1, "BDMapSDKException: start point or end point can not be null."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 256
    :cond_3
    new-instance p0, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;

    const-string p1, "BDMapSDKException: para or context can not be null."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static openBaiduMapNavi(Lcom/baidu/mapapi/navi/NaviParaOption;Landroid/content/Context;)Z
    .locals 4

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    .line 60
    iget-object v0, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->c:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->a:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_4

    .line 65
    invoke-static {p1}, Lcom/baidu/mapapi/utils/OpenClientUtil;->getBaiduMapVersion(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "baidumapsdk"

    if-eqz v0, :cond_2

    const/16 v3, 0x33e

    if-lt v0, v3, :cond_0

    const/4 v0, 0x5

    .line 68
    invoke-static {p0, p1, v0}, Lcom/baidu/mapapi/utils/b;->a(Lcom/baidu/mapapi/navi/NaviParaOption;Landroid/content/Context;I)Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "Baidumap app version is too lowl.Version is greater than 8.2"

    .line 71
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget-boolean v0, Lcom/baidu/mapapi/navi/BaiduMapNavigation;->a:Z

    if-eqz v0, :cond_1

    .line 73
    invoke-static {p0, p1}, Lcom/baidu/mapapi/navi/BaiduMapNavigation;->a(Lcom/baidu/mapapi/navi/NaviParaOption;Landroid/content/Context;)V

    return v1

    .line 76
    :cond_1
    new-instance p0, Lcom/baidu/mapapi/navi/BaiduMapAppNotSupportNaviException;

    const-string p1, "BDMapSDKException: Baidumap app version is too lowl.Version is greater than 8.2"

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/navi/BaiduMapAppNotSupportNaviException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string v0, "BaiduMap app is not installed."

    .line 83
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-boolean v0, Lcom/baidu/mapapi/navi/BaiduMapNavigation;->a:Z

    if-eqz v0, :cond_3

    .line 85
    invoke-static {p0, p1}, Lcom/baidu/mapapi/navi/BaiduMapNavigation;->a(Lcom/baidu/mapapi/navi/NaviParaOption;Landroid/content/Context;)V

    return v1

    .line 88
    :cond_3
    new-instance p0, Lcom/baidu/mapapi/navi/BaiduMapAppNotSupportNaviException;

    const-string p1, "BDMapSDKException: BaiduMap app is not installed."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/navi/BaiduMapAppNotSupportNaviException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 61
    :cond_4
    new-instance p0, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;

    const-string p1, "BDMapSDKException: start point or end point can not be null."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_5
    new-instance p0, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;

    const-string p1, "BDMapSDKException: para or context can not be null."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static openBaiduMapWalkNavi(Lcom/baidu/mapapi/navi/NaviParaOption;Landroid/content/Context;)Z
    .locals 4

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 183
    iget-object v0, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->c:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->a:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_2

    .line 187
    invoke-static {p1}, Lcom/baidu/mapapi/utils/OpenClientUtil;->getBaiduMapVersion(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "baidumapsdk"

    if-eqz v0, :cond_1

    const/16 v3, 0x365

    if-lt v0, v3, :cond_0

    const/4 v0, 0x7

    .line 190
    invoke-static {p0, p1, v0}, Lcom/baidu/mapapi/utils/b;->a(Lcom/baidu/mapapi/navi/NaviParaOption;Landroid/content/Context;I)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "Baidumap app version is too lowl.Version is greater than 8.6.6"

    .line 193
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string p0, "BaiduMap app is not installed."

    .line 199
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 184
    :cond_2
    new-instance p0, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;

    const-string p1, "BDMapSDKException: start point or end point can not be null."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 180
    :cond_3
    new-instance p0, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;

    const-string p1, "BDMapSDKException: para or context can not be null."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static openBaiduMapWalkNaviAR(Lcom/baidu/mapapi/navi/NaviParaOption;Landroid/content/Context;)Z
    .locals 4

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 221
    iget-object v0, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->c:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->a:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_2

    .line 225
    invoke-static {p1}, Lcom/baidu/mapapi/utils/OpenClientUtil;->getBaiduMapVersion(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "baidumapsdk"

    if-eqz v0, :cond_1

    const/16 v3, 0x365

    if-lt v0, v3, :cond_0

    const/16 v0, 0x9

    .line 228
    invoke-static {p0, p1, v0}, Lcom/baidu/mapapi/utils/b;->a(Lcom/baidu/mapapi/navi/NaviParaOption;Landroid/content/Context;I)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "Baidumap app version is too lowl.Version is greater than 8.6.6"

    .line 231
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string p0, "BaiduMap app is not installed."

    .line 237
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 222
    :cond_2
    new-instance p0, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;

    const-string p1, "BDMapSDKException: start point or end point can not be null."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 218
    :cond_3
    new-instance p0, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;

    const-string p1, "BDMapSDKException: para or context can not be null."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static openWebBaiduMapNavi(Lcom/baidu/mapapi/navi/NaviParaOption;Landroid/content/Context;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 298
    iget-object v0, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->a:Lcom/baidu/mapapi/model/LatLng;

    const-string v1, "android.intent.action.VIEW"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->c:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->a:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v0

    .line 300
    iget-object p0, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->c:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {p0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p0

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://daohang.map.baidu.com/mobile/#navi/naving/start="

    .line 303
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ","

    .line 305
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "&endp="

    .line 307
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "&fromprod="

    .line 311
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-static {p1}, Lcom/baidu/mapapi/navi/BaiduMapNavigation;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/vt=map&state=entry"

    .line 313
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 315
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 316
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 317
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 318
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 319
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->d:Ljava/lang/String;

    .line 321
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://daohang.map.baidu.com/mobile/#search/search/qt=nav&sn=2$$$$$$"

    .line 324
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget-object v2, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "$$$$$$&en=2$$$$$$"

    .line 326
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    iget-object p0, p0, Lcom/baidu/mapapi/navi/NaviParaOption;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "$$$$$$&fromprod="

    .line 328
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-static {p1}, Lcom/baidu/mapapi/navi/BaiduMapNavigation;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 331
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 332
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 334
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    .line 336
    :cond_1
    new-instance p0, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;

    const-string p1, "BDMapSDKException: you must set start and end point or set the start and end name."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 295
    :cond_2
    new-instance p0, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;

    const-string p1, "BDMapSDKException: para or context can not be null."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setSupportWebNavi(Z)V
    .locals 0

    .line 41
    sput-boolean p0, Lcom/baidu/mapapi/navi/BaiduMapNavigation;->a:Z

    return-void
.end method
