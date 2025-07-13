.class public Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;
.super Lio/dcloud/js/geolocation/GeoManagerBase;
.source "BaiduGeoManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BaiduGeoManager"

.field static mInstance:Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;


# instance fields
.field hasAppkey:Z

.field isGeocode:Z

.field isStreamApp:Z

.field mClient:Lcom/baidu/location/LocationClient;

.field mContinuousMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/baidu/location/LocationClient;",
            ">;"
        }
    .end annotation
.end field

.field mOption:Lcom/baidu/location/LocationClientOption;

.field mSingleTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/baidu/location/LocationClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pContext"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1}, Lio/dcloud/js/geolocation/GeoManagerBase;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->hasAppkey:Z

    const/4 v1, 0x1

    .line 46
    iput-boolean v1, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->isGeocode:Z

    .line 47
    iput-boolean v0, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->isStreamApp:Z

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mClient:Lcom/baidu/location/LocationClient;

    .line 51
    iput-object v0, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mOption:Lcom/baidu/location/LocationClientOption;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mContinuousMap:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mSingleTimeMap:Ljava/util/HashMap;

    const-string v0, "com.baidu.lbsapi.API_KEY"

    .line 59
    invoke-static {v0}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->hasAppkey:Z

    .line 60
    invoke-static {p1}, Lio/dcloud/common/util/AppRuntime;->hasPrivacyForNotShown(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 63
    invoke-static {v1}, Lcom/baidu/location/LocationClient;->setAgreePrivacy(Z)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->stopContinuousLocating()V

    return-void
.end method

.method static synthetic access$100(Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->getCoorType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lcom/baidu/location/BDLocation;Ljava/lang/String;ZZ)V
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p6}, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->callBack2Front(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lcom/baidu/location/BDLocation;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private callBack2Front(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lcom/baidu/location/BDLocation;Ljava/lang/String;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mWebview",
            "mCallbackId",
            "location",
            "CoordsType",
            "isDLGeo",
            "continuous"
        }
    .end annotation

    if-nez p6, :cond_0

    .line 208
    iget-object v0, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mSingleTimeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mSingleTimeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->stop()V

    .line 213
    :cond_0
    invoke-direct {p0, p3, p4}, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->makeJSON(Lcom/baidu/location/BDLocation;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    if-nez p3, :cond_1

    .line 215
    invoke-direct {p0, p1, p2, p5, p6}, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->geoDataError(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->callback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    :goto_0
    return-void
.end method

.method private geoDataError(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pWebViewImpl",
            "pCallbackId",
            "isDLGeo",
            "continuous"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x28

    .line 325
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lio/dcloud/feature/R$string;->dcloud_feature_geolocation_baidu_exception_location_error:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "{code:%d,message:\'%s\'}"

    invoke-static {v1, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz p3, :cond_0

    .line 327
    sget v5, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move v7, p4

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execGEOCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_0

    .line 329
    :cond_0
    sget v5, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move v7, p4

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :goto_0
    return-void
.end method

.method private getCoorType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coorType"
        }
    .end annotation

    const-string v0, "bd09ll"

    .line 275
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "bd09"

    .line 277
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    const-string p1, "gcj02"

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pContext"
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 69
    sget-object v0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mInstance:Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;

    if-eqz v0, :cond_0

    return-object v0

    .line 72
    :cond_0
    new-instance v0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;

    invoke-direct {v0, p0}, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mInstance:Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;

    return-object v0
.end method

.method private makeJSON(Lcom/baidu/location/BDLocation;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pLoc",
            "coordsType"
        }
    .end annotation

    const-string v0, "timestamp"

    const/4 v1, 0x0

    .line 234
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v3, "latitude"

    .line 235
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "longitude"

    .line 236
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "altitude"

    .line 237
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAltitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "accuracy"

    .line 238
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "altitudeAccuracy"

    const/4 v4, 0x0

    .line 239
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "heading"

    .line 240
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getDirection()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v2, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "velocity"

    .line 241
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getSpeed()F

    move-result v5

    float-to-double v5, v5

    invoke-virtual {v2, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "coordsType"

    .line 242
    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    :try_start_2
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 245
    new-instance v5, Ljava/text/ParsePosition;

    invoke-direct {v5, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 246
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v3

    .line 247
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v2, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 249
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 250
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    :goto_0
    iget-boolean v0, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->isGeocode:Z

    if-eqz v0, :cond_1

    .line 253
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "address"

    .line 254
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "country"

    .line 255
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "province"

    .line 256
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getProvince()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "city"

    .line 257
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "district"

    .line 258
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getDistrict()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "street"

    .line 259
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getStreet()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "streetNum"

    .line 260
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getStreetNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "poiName"

    .line 261
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getPoiList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getPoiList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getPoiList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    :cond_0
    move-object v4, v1

    :goto_1
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "postalCode"

    .line 262
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cityCode"

    .line 263
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getCityCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "addresses"

    .line 264
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 267
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v2, v1

    .line 269
    :cond_1
    :goto_3
    invoke-direct {p0, p1, p2}, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->saveGeoData(Lcom/baidu/location/BDLocation;Ljava/lang/String;)V

    return-object v2
.end method

.method private saveGeoData(Lcom/baidu/location/BDLocation;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pLoc",
            "coordsType"
        }
    .end annotation

    .line 302
    iget-boolean v0, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->isStreamApp:Z

    if-nez v0, :cond_1

    .line 303
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 304
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "latitude"

    .line 307
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "longitude"

    .line 308
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "coords"

    .line 309
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "coordsType"

    .line 310
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    iget-boolean p2, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->isGeocode:Z

    if-eqz p2, :cond_0

    const-string p2, "addresses"

    .line 312
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p1, "start_statistics_data"

    .line 314
    invoke-static {p1}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "geo_data"

    .line 315
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 318
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private stopContinuousLocating()V
    .locals 5

    .line 196
    iget-object v0, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mContinuousMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 197
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and value= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 198
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 199
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/LocationClient;

    invoke-virtual {v1}, Lcom/baidu/location/LocationClient;->stop()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public callback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "webview",
            "callId",
            "json",
            "code",
            "isJson",
            "isDLGeo",
            "continuous"
        }
    .end annotation

    if-eqz p6, :cond_0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p7

    .line 224
    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execGEOCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p7

    .line 226
    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :goto_0
    return-void
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pWebViewImpl",
            "pActionName",
            "pJsArgs"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v12, ""

    .line 80
    :try_start_0
    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x7

    const-string v4, "null"

    if-le v2, v3, :cond_0

    const/4 v2, 0x6

    :try_start_1
    aget-object v2, v1, v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    const v5, 0x7fffffff

    .line 82
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v6, v2

    goto :goto_1

    :cond_1
    const v6, 0x7fffffff

    .line 85
    :goto_1
    array-length v2, v1

    const/16 v5, 0x8

    if-le v2, v5, :cond_2

    aget-object v2, v1, v3

    goto :goto_2

    :cond_2
    const-string v2, "5000"

    :goto_2
    const/16 v3, 0x1388

    .line 87
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x3e8

    if-nez v4, :cond_4

    .line 88
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ge v2, v5, :cond_3

    const/16 v7, 0x3e8

    goto :goto_3

    :cond_3
    move v7, v2

    goto :goto_3

    :cond_4
    const/16 v7, 0x1388

    :goto_3
    const-string v2, "getCurrentPosition"

    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "only support gcj02|bd09|bd09ll"

    const/16 v4, 0x11

    const-string v5, "DLGEO"

    const-string v8, "{code:%d,message:\'%s\'}"

    const-string v9, "wgs84"

    const/4 v10, 0x5

    const/4 v13, 0x2

    const/4 v14, 0x3

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-eqz v2, :cond_7

    .line 94
    :try_start_2
    aget-object v2, v1, v10

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v11, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->isGeocode:Z

    .line 95
    aget-object v2, v1, v15

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 96
    aget-object v2, v1, v14

    invoke-static {v9, v2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v15

    if-eqz v2, :cond_5

    .line 98
    aget-object v3, v1, v16

    const/4 v4, 0x0

    const/4 v8, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    aget-object v9, v1, v14

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v5, v7

    move v7, v8

    move v8, v0

    invoke-virtual/range {v1 .. v10}, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->startLocating(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ZIIZLjava/lang/String;Z)V

    goto/16 :goto_4

    :cond_5
    new-array v0, v13, [Ljava/lang/Object;

    .line 100
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v16

    if-eqz v2, :cond_6

    sget-object v3, Lio/dcloud/common/constant/DOMException;->MSG_GEOLOCATION_PROVIDER_ERROR:Ljava/lang/String;

    :cond_6
    aput-object v3, v0, v15

    invoke-static {v8, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 101
    aget-object v18, v1, v16

    sget v20, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v17, p1

    invoke-static/range {v17 .. v22}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_4

    :cond_7
    const-string v2, "watchPosition"

    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 105
    aget-object v2, v1, v10

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v11, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->isGeocode:Z

    .line 106
    aget-object v2, v1, v13

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 107
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v2

    new-instance v4, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager$1;

    invoke-direct {v4, v11}, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager$1;-><init>(Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;)V

    invoke-interface {v2, v4}, Lio/dcloud/common/DHInterface/IFrameView;->addFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    .line 117
    aget-object v2, v1, v14

    invoke-static {v9, v2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v15

    if-eqz v2, :cond_8

    .line 119
    aget-object v3, v1, v16

    aget-object v4, v1, v15

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    aget-object v9, v1, v14

    const/4 v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v5, v10

    move v10, v0

    invoke-virtual/range {v1 .. v10}, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->startLocating(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ZIIZLjava/lang/String;Z)V

    goto :goto_4

    :cond_8
    new-array v0, v13, [Ljava/lang/Object;

    const/16 v4, 0x11

    .line 121
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v16

    if-eqz v2, :cond_9

    sget-object v3, Lio/dcloud/common/constant/DOMException;->MSG_GEOLOCATION_PROVIDER_ERROR:Ljava/lang/String;

    :cond_9
    aput-object v3, v0, v15

    invoke-static {v8, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 122
    aget-object v18, v1, v16

    sget v20, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v17, p1

    invoke-static/range {v17 .. v22}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_4

    :cond_a
    const-string v2, "clearWatch"

    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 126
    iget-object v0, v11, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->keySet:Ljava/util/ArrayList;

    aget-object v2, v1, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, v11, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mContinuousMap:Ljava/util/HashMap;

    aget-object v1, v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->stop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_b
    :goto_4
    return-object v12

    :catch_0
    move-exception v0

    .line 131
    sget-object v1, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e.getMessage()=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v12
.end method

.method public onDestroy()V
    .locals 3

    .line 286
    iget-object v0, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mContinuousMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 287
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/LocationClient;

    invoke-virtual {v1}, Lcom/baidu/location/LocationClient;->stop()V

    goto :goto_0

    .line 291
    :cond_1
    iget-object v0, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mContinuousMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 292
    iget-object v0, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mSingleTimeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 293
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 294
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/LocationClient;

    invoke-virtual {v1}, Lcom/baidu/location/LocationClient;->stop()V

    goto :goto_1

    .line 297
    :cond_3
    iget-object v0, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mSingleTimeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public startLocating(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ZIIZLjava/lang/String;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x0,
            0x0,
            0x0,
            0x10,
            0x10,
            0x10
        }
        names = {
            "pWebViewImpl",
            "pCallbackId",
            "key",
            "enableHighAccuracy",
            "timeOut",
            "intervals",
            "isDLGeo",
            "coordsType",
            "continuous"
        }
    .end annotation

    move-object v8, p0

    move-object v1, p3

    move v2, p5

    .line 137
    iget-boolean v0, v8, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->hasAppkey:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 139
    :try_start_0
    new-instance v0, Lcom/baidu/location/LocationClient;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/baidu/location/LocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mClient:Lcom/baidu/location/LocationClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    :goto_0
    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    iput-object v0, v8, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mOption:Lcom/baidu/location/LocationClientOption;

    .line 144
    invoke-static {p3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, v8, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mOption:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {v0, v4}, Lcom/baidu/location/LocationClientOption;->setScanSpan(I)V

    .line 147
    iget-object v0, v8, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mSingleTimeMap:Ljava/util/HashMap;

    iget-object v1, v8, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mClient:Lcom/baidu/location/LocationClient;

    move-object v5, p2

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    move-object v5, p2

    .line 149
    iget-object v0, v8, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mOption:Lcom/baidu/location/LocationClientOption;

    move/from16 v4, p6

    invoke-virtual {v0, v4}, Lcom/baidu/location/LocationClientOption;->setScanSpan(I)V

    .line 150
    iget-object v0, v8, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mOption:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {v0, v3}, Lcom/baidu/location/LocationClientOption;->setLocationNotify(Z)V

    .line 152
    iget-object v0, v8, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->keySet:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, v8, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mContinuousMap:Ljava/util/HashMap;

    iget-object v3, v8, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :goto_1
    iget-object v0, v8, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lio/dcloud/common/util/NetTool;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p4, :cond_1

    .line 157
    iget-object v0, v8, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mOption:Lcom/baidu/location/LocationClientOption;

    sget-object v1, Lcom/baidu/location/LocationClientOption$LocationMode;->Hight_Accuracy:Lcom/baidu/location/LocationClientOption$LocationMode;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setLocationMode(Lcom/baidu/location/LocationClientOption$LocationMode;)V

    goto :goto_2

    .line 159
    :cond_1
    iget-object v0, v8, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mOption:Lcom/baidu/location/LocationClientOption;

    sget-object v1, Lcom/baidu/location/LocationClientOption$LocationMode;->Battery_Saving:Lcom/baidu/location/LocationClientOption$LocationMode;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setLocationMode(Lcom/baidu/location/LocationClientOption$LocationMode;)V

    .line 161
    :goto_2
    iget-object v0, v8, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mOption:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {v0, p5}, Lcom/baidu/location/LocationClientOption;->setTimeOut(I)V

    goto :goto_3

    .line 163
    :cond_2
    iget-object v0, v8, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mOption:Lcom/baidu/location/LocationClientOption;

    sget-object v1, Lcom/baidu/location/LocationClientOption$LocationMode;->Device_Sensors:Lcom/baidu/location/LocationClientOption$LocationMode;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setLocationMode(Lcom/baidu/location/LocationClientOption$LocationMode;)V

    const v0, 0x7fffffff

    if-ne v0, v2, :cond_3

    .line 165
    iget-object v0, v8, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mOption:Lcom/baidu/location/LocationClientOption;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setTimeOut(I)V

    goto :goto_3

    .line 167
    :cond_3
    iget-object v0, v8, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mOption:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {v0, p5}, Lcom/baidu/location/LocationClientOption;->setTimeOut(I)V

    .line 170
    :goto_3
    iget-object v0, v8, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mOption:Lcom/baidu/location/LocationClientOption;

    iget-boolean v1, v8, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->isGeocode:Z

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setIsNeedAddress(Z)V

    .line 171
    iget-object v0, v8, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mOption:Lcom/baidu/location/LocationClientOption;

    move-object/from16 v6, p8

    invoke-direct {p0, v6}, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->getCoorType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setCoorType(Ljava/lang/String;)V

    .line 172
    iget-object v0, v8, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_5

    .line 173
    iget-object v1, v8, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mOption:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient;->setLocOption(Lcom/baidu/location/LocationClientOption;)V

    .line 174
    iget-object v0, v8, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mClient:Lcom/baidu/location/LocationClient;

    new-instance v9, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager$2;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p8

    move/from16 v6, p7

    move/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager$2;-><init>(Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v9}, Lcom/baidu/location/LocationClient;->registerLocationListener(Lcom/baidu/location/BDAbstractLocationListener;)V

    .line 184
    iget-object v0, v8, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->mClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->start()V

    goto :goto_4

    :cond_4
    move-object v5, p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x10

    .line 187
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "has not baidu appkey"

    aput-object v1, v0, v3

    const-string v1, "{code:%d,message:\'%s\'}"

    invoke-static {v1, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 188
    sget v1, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object p3, p1

    move-object p4, p2

    move-object p5, v0

    move/from16 p6, v1

    move/from16 p7, v2

    move/from16 p8, v3

    invoke-static/range {p3 .. p8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :cond_5
    :goto_4
    return-void
.end method
