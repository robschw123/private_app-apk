.class public Lcom/baidu/mapapi/utils/route/BaiduMapRoutePlan;
.super Ljava/lang/Object;
.source "BaiduMapRoutePlan.java"


# static fields
.field private static a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/baidu/mapapi/utils/route/RouteParaOption;Landroid/content/Context;I)V
    .locals 10

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.map.baidu.com/direction?"

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "origin="

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-object v1, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->a:Lcom/baidu/mapapi/model/LatLng;

    .line 244
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v2

    sget-object v3, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v2, v3, :cond_0

    if-eqz v1, :cond_0

    .line 245
    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    .line 247
    :cond_0
    iget-object v2, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->a:Lcom/baidu/mapapi/model/LatLng;

    const-string v3, "name:"

    const-string/jumbo v4, "|"

    const-string v5, "latlng:"

    const-string v6, ","

    const-string v7, ""

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->c:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 248
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget-wide v8, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    iget-object v1, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 255
    :cond_1
    iget-object v2, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->a:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 256
    iget-wide v8, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 260
    :cond_2
    iget-object v1, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :goto_0
    iget-object v1, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->b:Lcom/baidu/mapapi/model/LatLng;

    .line 263
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v2

    sget-object v8, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v2, v8, :cond_3

    if-eqz v1, :cond_3

    .line 264
    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    :cond_3
    const-string v2, "&destination="

    .line 266
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-object v2, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->b:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->d:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->d:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    .line 268
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget-wide v8, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    iget-object v1, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 275
    :cond_4
    iget-object v2, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->b:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 276
    iget-wide v2, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 280
    :cond_5
    iget-object v1, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-eqz p2, :cond_8

    const/4 v1, 0x1

    if-eq p2, v1, :cond_7

    const/4 v1, 0x2

    if-eq p2, v1, :cond_6

    move-object p2, v7

    goto :goto_2

    :cond_6
    const-string/jumbo p2, "walking"

    goto :goto_2

    :cond_7
    const-string p2, "transit"

    goto :goto_2

    :cond_8
    const-string p2, "driving"

    :goto_2
    const-string v1, "&mode="

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&region="

    .line 302
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/route/RouteParaOption;->getCityName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/route/RouteParaOption;->getCityName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_3

    .line 306
    :cond_9
    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/route/RouteParaOption;->getCityName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_a
    :goto_3
    const-string/jumbo p0, "\u5168\u56fd"

    .line 304
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const-string p0, "&output=html"

    .line 308
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&src="

    .line 309
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 313
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    .line 314
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 315
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 316
    invoke-virtual {p2, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 317
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static finish(Landroid/content/Context;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 170
    invoke-static {p0}, Lcom/baidu/mapapi/utils/b;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static openBaiduMapDrivingRoute(Lcom/baidu/mapapi/utils/route/RouteParaOption;Landroid/content/Context;)Z
    .locals 5

    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    .line 192
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->a:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    new-instance p0, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;

    const-string p1, "BDMapSDKException: startPoint and startName not all null."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 197
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->b:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 198
    :cond_2
    new-instance p0, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;

    const-string p1, "BDMapSDKException: endPoint and endName not all null."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 202
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->a:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->d:Ljava/lang/String;

    .line 203
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->b:Lcom/baidu/mapapi/model/LatLng;

    if-nez v0, :cond_6

    .line 204
    :cond_5
    const-class p0, Lcom/baidu/mapapi/utils/route/BaiduMapRoutePlan;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "poi startName or endName can not be empty string while pt is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 208
    :cond_6
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->f:Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;

    if-nez v0, :cond_7

    .line 209
    sget-object v0, Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;->bus_recommend_way:Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;

    iput-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->f:Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;

    .line 212
    :cond_7
    invoke-static {p1}, Lcom/baidu/mapapi/utils/OpenClientUtil;->getBaiduMapVersion(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    const-string v3, "baidumapsdk"

    if-eqz v0, :cond_a

    const/16 v4, 0x32a

    if-lt v0, v4, :cond_8

    .line 215
    invoke-static {p0, p1, v1}, Lcom/baidu/mapapi/utils/b;->a(Lcom/baidu/mapapi/utils/route/RouteParaOption;Landroid/content/Context;I)Z

    move-result p0

    return p0

    :cond_8
    const-string v0, "Baidumap app version is too lowl.Version is greater than 8.1"

    .line 217
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sget-boolean v0, Lcom/baidu/mapapi/utils/route/BaiduMapRoutePlan;->a:Z

    if-eqz v0, :cond_9

    .line 219
    invoke-static {p0, p1, v1}, Lcom/baidu/mapapi/utils/route/BaiduMapRoutePlan;->a(Lcom/baidu/mapapi/utils/route/RouteParaOption;Landroid/content/Context;I)V

    return v2

    .line 222
    :cond_9
    new-instance p0, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;

    const-string p1, "BDMapSDKException: Baidumap app version is too lowl.Version is greater than 8.1"

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    const-string v0, "BaiduMap app is not installed."

    .line 227
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget-boolean v0, Lcom/baidu/mapapi/utils/route/BaiduMapRoutePlan;->a:Z

    if-eqz v0, :cond_b

    .line 229
    invoke-static {p0, p1, v1}, Lcom/baidu/mapapi/utils/route/BaiduMapRoutePlan;->a(Lcom/baidu/mapapi/utils/route/RouteParaOption;Landroid/content/Context;I)V

    return v2

    .line 232
    :cond_b
    new-instance p0, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;

    const-string p1, "BDMapSDKException: BaiduMap app is not installed."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 188
    :cond_c
    new-instance p0, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;

    const-string p1, "BDMapSDKException: para or context can not be null."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static openBaiduMapNewEnergyRoute(Lcom/baidu/mapapi/utils/route/RouteParaOption;Landroid/content/Context;)Z
    .locals 5

    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    .line 338
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->a:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    new-instance p0, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;

    const-string p1, "BDMapSDKException: startPoint and startName not all null."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 343
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->b:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 344
    :cond_2
    new-instance p0, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;

    const-string p1, "BDMapSDKException: endPoint and endName not all null."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 348
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->a:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->d:Ljava/lang/String;

    .line 349
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->b:Lcom/baidu/mapapi/model/LatLng;

    if-nez v0, :cond_6

    .line 350
    :cond_5
    const-class p0, Lcom/baidu/mapapi/utils/route/BaiduMapRoutePlan;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "poi startName or endName can not be empty string while pt is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 354
    :cond_6
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->f:Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;

    if-nez v0, :cond_7

    .line 355
    sget-object v0, Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;->bus_recommend_way:Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;

    iput-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->f:Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;

    .line 358
    :cond_7
    invoke-static {p1}, Lcom/baidu/mapapi/utils/OpenClientUtil;->getBaiduMapVersion(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "baidumapsdk"

    const/16 v3, 0x65

    if-eqz v0, :cond_a

    const/16 v4, 0x32a

    if-lt v0, v4, :cond_8

    .line 361
    invoke-static {p0, p1, v3}, Lcom/baidu/mapapi/utils/b;->a(Lcom/baidu/mapapi/utils/route/RouteParaOption;Landroid/content/Context;I)Z

    move-result p0

    return p0

    :cond_8
    const-string v0, "Baidumap app version is too lowl.Version is greater than 8.1"

    .line 363
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    sget-boolean v0, Lcom/baidu/mapapi/utils/route/BaiduMapRoutePlan;->a:Z

    if-eqz v0, :cond_9

    .line 365
    invoke-static {p0, p1, v3}, Lcom/baidu/mapapi/utils/route/BaiduMapRoutePlan;->a(Lcom/baidu/mapapi/utils/route/RouteParaOption;Landroid/content/Context;I)V

    return v1

    .line 368
    :cond_9
    new-instance p0, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;

    const-string p1, "BDMapSDKException: Baidumap app version is too lowl.Version is greater than 8.1"

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    const-string v0, "BaiduMap app is not installed."

    .line 373
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    sget-boolean v0, Lcom/baidu/mapapi/utils/route/BaiduMapRoutePlan;->a:Z

    if-eqz v0, :cond_b

    .line 375
    invoke-static {p0, p1, v3}, Lcom/baidu/mapapi/utils/route/BaiduMapRoutePlan;->a(Lcom/baidu/mapapi/utils/route/RouteParaOption;Landroid/content/Context;I)V

    return v1

    .line 378
    :cond_b
    new-instance p0, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;

    const-string p1, "BDMapSDKException: BaiduMap app is not installed."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 334
    :cond_c
    new-instance p0, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;

    const-string p1, "BDMapSDKException: para or context can not be null."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static openBaiduMapTransitRoute(Lcom/baidu/mapapi/utils/route/RouteParaOption;Landroid/content/Context;)Z
    .locals 4

    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    .line 116
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->a:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    new-instance p0, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;

    const-string p1, "BDMapSDKException: startPoint and startName not all null."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 121
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->b:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 122
    :cond_2
    new-instance p0, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;

    const-string p1, "BDMapSDKException: endPoint and endName not all null."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 126
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->a:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->d:Ljava/lang/String;

    .line 127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->b:Lcom/baidu/mapapi/model/LatLng;

    if-nez v0, :cond_6

    .line 128
    :cond_5
    const-class p0, Lcom/baidu/mapapi/utils/route/BaiduMapRoutePlan;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "poi startName or endName can not be empty string while pt is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 132
    :cond_6
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->f:Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;

    if-nez v0, :cond_7

    .line 133
    sget-object v0, Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;->bus_recommend_way:Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;

    iput-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->f:Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;

    .line 136
    :cond_7
    invoke-static {p1}, Lcom/baidu/mapapi/utils/OpenClientUtil;->getBaiduMapVersion(Landroid/content/Context;)I

    move-result v0

    const-string v1, "baidumapsdk"

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    const/16 v3, 0x32a

    if-lt v0, v3, :cond_8

    .line 139
    invoke-static {p0, p1, v2}, Lcom/baidu/mapapi/utils/b;->a(Lcom/baidu/mapapi/utils/route/RouteParaOption;Landroid/content/Context;I)Z

    move-result p0

    return p0

    :cond_8
    const-string v0, "Baidumap app version is too lowl.Version is greater than 8.1"

    .line 141
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-boolean v0, Lcom/baidu/mapapi/utils/route/BaiduMapRoutePlan;->a:Z

    if-eqz v0, :cond_9

    .line 143
    invoke-static {p0, p1, v2}, Lcom/baidu/mapapi/utils/route/BaiduMapRoutePlan;->a(Lcom/baidu/mapapi/utils/route/RouteParaOption;Landroid/content/Context;I)V

    return v2

    .line 146
    :cond_9
    new-instance p0, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;

    const-string p1, "BDMapSDKException: Baidumap app version is too lowl.Version is greater than 8.1"

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    const-string v0, "BaiduMap app is not installed."

    .line 151
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    sget-boolean v0, Lcom/baidu/mapapi/utils/route/BaiduMapRoutePlan;->a:Z

    if-eqz v0, :cond_b

    .line 153
    invoke-static {p0, p1, v2}, Lcom/baidu/mapapi/utils/route/BaiduMapRoutePlan;->a(Lcom/baidu/mapapi/utils/route/RouteParaOption;Landroid/content/Context;I)V

    return v2

    .line 156
    :cond_b
    new-instance p0, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;

    const-string p1, "BDMapSDKException: BaiduMap app is not installed."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 112
    :cond_c
    new-instance p0, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;

    const-string p1, "BDMapSDKException: para or context can not be null."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static openBaiduMapTruckRoute(Lcom/baidu/mapapi/utils/route/RouteParaOption;Landroid/content/Context;)Z
    .locals 5

    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    .line 403
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->a:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 404
    :cond_0
    new-instance p0, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;

    const-string p1, "BDMapSDKException: startPoint and startName not all null."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 408
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->b:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 409
    :cond_2
    new-instance p0, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;

    const-string p1, "BDMapSDKException: endPoint and endName not all null."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 413
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->a:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->d:Ljava/lang/String;

    .line 414
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->b:Lcom/baidu/mapapi/model/LatLng;

    if-nez v0, :cond_6

    .line 415
    :cond_5
    const-class p0, Lcom/baidu/mapapi/utils/route/BaiduMapRoutePlan;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "poi startName or endName can not be empty string while pt is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 419
    :cond_6
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->f:Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;

    if-nez v0, :cond_7

    .line 420
    sget-object v0, Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;->bus_recommend_way:Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;

    iput-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->f:Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;

    .line 423
    :cond_7
    invoke-static {p1}, Lcom/baidu/mapapi/utils/OpenClientUtil;->getBaiduMapVersion(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x7

    const-string v3, "baidumapsdk"

    if-eqz v0, :cond_a

    const/16 v4, 0x32a

    if-lt v0, v4, :cond_8

    const/16 v0, 0x66

    .line 426
    invoke-static {p0, p1, v0}, Lcom/baidu/mapapi/utils/b;->a(Lcom/baidu/mapapi/utils/route/RouteParaOption;Landroid/content/Context;I)Z

    move-result p0

    return p0

    :cond_8
    const-string v0, "Baidumap app version is too lowl.Version is greater than 8.1"

    .line 428
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    sget-boolean v0, Lcom/baidu/mapapi/utils/route/BaiduMapRoutePlan;->a:Z

    if-eqz v0, :cond_9

    .line 430
    invoke-static {p0, p1, v2}, Lcom/baidu/mapapi/utils/route/BaiduMapRoutePlan;->a(Lcom/baidu/mapapi/utils/route/RouteParaOption;Landroid/content/Context;I)V

    return v1

    .line 433
    :cond_9
    new-instance p0, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;

    const-string p1, "BDMapSDKException: Baidumap app version is too lowl.Version is greater than 8.1"

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    const-string v0, "BaiduMap app is not installed."

    .line 438
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    sget-boolean v0, Lcom/baidu/mapapi/utils/route/BaiduMapRoutePlan;->a:Z

    if-eqz v0, :cond_b

    .line 440
    invoke-static {p0, p1, v2}, Lcom/baidu/mapapi/utils/route/BaiduMapRoutePlan;->a(Lcom/baidu/mapapi/utils/route/RouteParaOption;Landroid/content/Context;I)V

    return v1

    .line 443
    :cond_b
    new-instance p0, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;

    const-string p1, "BDMapSDKException: BaiduMap app is not installed."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 399
    :cond_c
    new-instance p0, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;

    const-string p1, "BDMapSDKException: para or context can not be null."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static openBaiduMapWalkingRoute(Lcom/baidu/mapapi/utils/route/RouteParaOption;Landroid/content/Context;)Z
    .locals 5

    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    .line 52
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->a:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    new-instance p0, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;

    const-string p1, "BDMapSDKException: startPoint and startName not all null."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->b:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 58
    :cond_2
    new-instance p0, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;

    const-string p1, "BDMapSDKException: endPoint and endName not all null."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/navi/IllegalNaviArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 62
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->a:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->d:Ljava/lang/String;

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->b:Lcom/baidu/mapapi/model/LatLng;

    if-nez v0, :cond_6

    .line 64
    :cond_5
    const-class p0, Lcom/baidu/mapapi/utils/route/BaiduMapRoutePlan;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "poi startName or endName can not be empty string while pt is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 68
    :cond_6
    iget-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->f:Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;

    if-nez v0, :cond_7

    .line 69
    sget-object v0, Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;->bus_recommend_way:Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;

    iput-object v0, p0, Lcom/baidu/mapapi/utils/route/RouteParaOption;->f:Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;

    .line 72
    :cond_7
    invoke-static {p1}, Lcom/baidu/mapapi/utils/OpenClientUtil;->getBaiduMapVersion(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "baidumapsdk"

    const/4 v3, 0x2

    if-eqz v0, :cond_a

    const/16 v4, 0x32a

    if-lt v0, v4, :cond_8

    .line 75
    invoke-static {p0, p1, v3}, Lcom/baidu/mapapi/utils/b;->a(Lcom/baidu/mapapi/utils/route/RouteParaOption;Landroid/content/Context;I)Z

    move-result p0

    return p0

    :cond_8
    const-string v0, "Baidumap app version is too lowl.Version is greater than 8.1"

    .line 77
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-boolean v0, Lcom/baidu/mapapi/utils/route/BaiduMapRoutePlan;->a:Z

    if-eqz v0, :cond_9

    .line 79
    invoke-static {p0, p1, v3}, Lcom/baidu/mapapi/utils/route/BaiduMapRoutePlan;->a(Lcom/baidu/mapapi/utils/route/RouteParaOption;Landroid/content/Context;I)V

    return v1

    .line 82
    :cond_9
    new-instance p0, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;

    const-string p1, "BDMapSDKException: Baidumap app version is too lowl.Version is greater than 8.1"

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    const-string v0, "BaiduMap app is not installed."

    .line 87
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-boolean v0, Lcom/baidu/mapapi/utils/route/BaiduMapRoutePlan;->a:Z

    if-eqz v0, :cond_b

    .line 89
    invoke-static {p0, p1, v3}, Lcom/baidu/mapapi/utils/route/BaiduMapRoutePlan;->a(Lcom/baidu/mapapi/utils/route/RouteParaOption;Landroid/content/Context;I)V

    return v1

    .line 92
    :cond_b
    new-instance p0, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;

    const-string p1, "BDMapSDKException: BaiduMap app is not installed."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    :cond_c
    new-instance p0, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;

    const-string p1, "BDMapSDKException: para or context can not be null."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setSupportWebRoute(Z)V
    .locals 0

    .line 31
    sput-boolean p0, Lcom/baidu/mapapi/utils/route/BaiduMapRoutePlan;->a:Z

    return-void
.end method
