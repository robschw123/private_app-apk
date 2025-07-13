.class public Lcom/baidu/mapapi/utils/poi/BaiduMapPoiSearch;
.super Ljava/lang/Object;
.source "BaiduMapPoiSearch.java"


# static fields
.field private static a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/baidu/mapapi/utils/poi/PoiParaOption;Landroid/content/Context;)V
    .locals 2

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.map.baidu.com/place/detail?"

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "uid="

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    iget-object p0, p0, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&output=html"

    .line 292
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&src="

    .line 293
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 297
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 298
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 299
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 300
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 301
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-static {p0, p1}, Lcom/baidu/mapapi/utils/poi/BaiduMapPoiSearch;->b(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private static b(Lcom/baidu/mapapi/utils/poi/PoiParaOption;Landroid/content/Context;)V
    .locals 4

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.map.baidu.com/place/search?"

    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "query="

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    iget-object v1, p0, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&location="

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    iget-object v1, p0, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->c:Lcom/baidu/mapapi/model/LatLng;

    .line 312
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v2

    sget-object v3, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v2, v3, :cond_0

    .line 313
    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    .line 318
    :cond_0
    iget-wide v2, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ","

    .line 319
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "&radius="

    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    iget p0, p0, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->d:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "&output=html"

    .line 323
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&src="

    .line 324
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 328
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 329
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 330
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 331
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 332
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_2

    .line 224
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "baidumap://map/streetscape?"

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "panoid="

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&pid="

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&panotype="

    .line 236
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "street"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&src="

    .line 237
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sdk_["

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 239
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p0, 0x10000000

    .line 240
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 243
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 245
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "BDMapSDKException: BaiduMap app is not installed."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 228
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "BDMapSDKException: context cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 225
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "BDMapSDKException: pano id can not be null."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static dispatchPoiToBaiduMap(Ljava/util/List;Landroid/content/Context;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/utils/poi/DispathcPoiData;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 256
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 260
    invoke-static {p1}, Lcom/baidu/mapapi/utils/OpenClientUtil;->getBaiduMapVersion(Landroid/content/Context;)I

    move-result v0

    const-string v1, "baidumapsdk"

    if-eqz v0, :cond_1

    const/16 v2, 0x348

    if-lt v0, v2, :cond_0

    const/4 v0, 0x6

    .line 263
    invoke-static {p0, p1, v0}, Lcom/baidu/mapapi/utils/b;->a(Ljava/util/List;Landroid/content/Context;I)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "Baidumap app version is too lowl.Version is greater than 8.4"

    .line 265
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "BaiduMap app is not installed."

    .line 269
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return p0

    .line 258
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "BDMapSDKException: dispatch poidata is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static finish(Landroid/content/Context;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 282
    invoke-static {p0}, Lcom/baidu/mapapi/utils/b;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static openBaiduMapPanoShow(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 166
    new-instance v0, Lcom/baidu/platform/comapi/pano/a;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/pano/a;-><init>()V

    .line 167
    new-instance v1, Lcom/baidu/mapapi/utils/poi/a;

    invoke-direct {v1, p1}, Lcom/baidu/mapapi/utils/poi/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, v1}, Lcom/baidu/platform/comapi/pano/a;->a(Ljava/lang/String;Lcom/baidu/platform/comapi/pano/a$a;)V

    return-void
.end method

.method public static openBaiduMapPoiDetialsPage(Lcom/baidu/mapapi/utils/poi/PoiParaOption;Landroid/content/Context;)Z
    .locals 4

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    .line 52
    iget-object v0, p0, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 57
    iget-object v0, p0, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 62
    invoke-static {p1}, Lcom/baidu/mapapi/utils/OpenClientUtil;->getBaiduMapVersion(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "baidumapsdk"

    if-eqz v0, :cond_2

    const/16 v3, 0x32a

    if-lt v0, v3, :cond_0

    const/4 v0, 0x3

    .line 65
    invoke-static {p0, p1, v0}, Lcom/baidu/mapapi/utils/b;->a(Lcom/baidu/mapapi/utils/poi/PoiParaOption;Landroid/content/Context;I)Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "Baidumap app version is too lowl.Version is greater than 8.1"

    .line 67
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sget-boolean v0, Lcom/baidu/mapapi/utils/poi/BaiduMapPoiSearch;->a:Z

    if-eqz v0, :cond_1

    .line 69
    invoke-static {p0, p1}, Lcom/baidu/mapapi/utils/poi/BaiduMapPoiSearch;->a(Lcom/baidu/mapapi/utils/poi/PoiParaOption;Landroid/content/Context;)V

    return v1

    .line 72
    :cond_1
    new-instance p0, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;

    const-string p1, "BDMapSDKException: Baidumap app version is too lowl.Version is greater than 8.1"

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string v0, "BaiduMap app is not installed."

    .line 78
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-boolean v0, Lcom/baidu/mapapi/utils/poi/BaiduMapPoiSearch;->a:Z

    if-eqz v0, :cond_3

    .line 80
    invoke-static {p0, p1}, Lcom/baidu/mapapi/utils/poi/BaiduMapPoiSearch;->a(Lcom/baidu/mapapi/utils/poi/PoiParaOption;Landroid/content/Context;)V

    return v1

    .line 83
    :cond_3
    new-instance p0, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;

    const-string p1, "BDMapSDKException: BaiduMap app is not installed."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_4
    new-instance p0, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;

    const-string p1, "BDMapSDKException: poi uid can not be empty string."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 53
    :cond_5
    new-instance p0, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;

    const-string p1, "BDMapSDKException: poi uid can not be null."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    :cond_6
    new-instance p0, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;

    const-string p1, "BDMapSDKException: para or context can not be null."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static openBaiduMapPoiNearbySearch(Lcom/baidu/mapapi/utils/poi/PoiParaOption;Landroid/content/Context;)Z
    .locals 5

    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    .line 107
    iget-object v0, p0, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->b:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 112
    iget-object v0, p0, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->c:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_7

    .line 117
    iget-object v0, p0, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->c:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_6

    iget-object v0, p0, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->c:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_6

    .line 122
    iget v0, p0, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->d:I

    if-eqz v0, :cond_5

    .line 127
    iget-object v0, p0, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 132
    invoke-static {p1}, Lcom/baidu/mapapi/utils/OpenClientUtil;->getBaiduMapVersion(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "baidumapsdk"

    if-eqz v0, :cond_2

    const/16 v3, 0x32a

    if-lt v0, v3, :cond_0

    const/4 v0, 0x4

    .line 135
    invoke-static {p0, p1, v0}, Lcom/baidu/mapapi/utils/b;->a(Lcom/baidu/mapapi/utils/poi/PoiParaOption;Landroid/content/Context;I)Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "Baidumap app version is too lowl.Version is greater than 8.1"

    .line 137
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sget-boolean v0, Lcom/baidu/mapapi/utils/poi/BaiduMapPoiSearch;->a:Z

    if-eqz v0, :cond_1

    .line 139
    invoke-static {p0, p1}, Lcom/baidu/mapapi/utils/poi/BaiduMapPoiSearch;->b(Lcom/baidu/mapapi/utils/poi/PoiParaOption;Landroid/content/Context;)V

    return v1

    .line 142
    :cond_1
    new-instance p0, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;

    const-string p1, "BDMapSDKException: Baidumap app version is too lowl.Version is greater than 8.1"

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string v0, "BaiduMap app is not installed."

    .line 147
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget-boolean v0, Lcom/baidu/mapapi/utils/poi/BaiduMapPoiSearch;->a:Z

    if-eqz v0, :cond_3

    .line 149
    invoke-static {p0, p1}, Lcom/baidu/mapapi/utils/poi/BaiduMapPoiSearch;->b(Lcom/baidu/mapapi/utils/poi/PoiParaOption;Landroid/content/Context;)V

    return v1

    .line 152
    :cond_3
    new-instance p0, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;

    const-string p1, "BDMapSDKException: BaiduMap app is not installed."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 128
    :cond_4
    new-instance p0, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;

    const-string p1, "BDMapSDKException: poi key can not be empty string"

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 123
    :cond_5
    new-instance p0, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;

    const-string p1, "BDMapSDKException: poi search radius larger than 0."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :cond_6
    new-instance p0, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;

    const-string p1, "BDMapSDKException: poi search center longitude or latitude can not be 0."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 113
    :cond_7
    new-instance p0, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;

    const-string p1, "BDMapSDKException: poi search center can not be null."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 108
    :cond_8
    new-instance p0, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;

    const-string p1, "BDMapSDKException: poi search key can not be null."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 103
    :cond_9
    new-instance p0, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;

    const-string p1, "BDMapSDKException: para or context can not be null."

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/utils/poi/IllegalPoiSearchArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setSupportWebPoi(Z)V
    .locals 0

    .line 33
    sput-boolean p0, Lcom/baidu/mapapi/utils/poi/BaiduMapPoiSearch;->a:Z

    return-void
.end method
