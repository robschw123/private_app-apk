.class public Lio/dcloud/js/map/adapter/DHMapUtil;
.super Ljava/lang/Object;
.source "DHMapUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateArea(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/js/map/adapter/MapPoint;Lio/dcloud/js/map/adapter/MapPoint;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "webview",
            "sPoint",
            "ePoint",
            "callBackId"
        }
    .end annotation

    const/16 v0, -0x64

    .line 235
    :try_start_0
    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/MapPoint;->getLatLng()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    invoke-virtual {p2}, Lio/dcloud/js/map/adapter/MapPoint;->getLatLng()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/baidu/mapapi/utils/AreaUtil;->calculateArea(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v3

    const-wide/16 p1, 0x0

    cmpl-double v1, v3, p1

    if-nez v1, :cond_0

    .line 237
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lio/dcloud/feature/amap/R$string;->dcloud_feature_map_baidu_compute_result_zero:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/constant/DOMException;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 238
    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void

    .line 241
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 242
    sget v5, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;DIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lio/dcloud/feature/amap/R$string;->dcloud_feature_map_baidu_data_error:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/constant/DOMException;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 246
    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static calculateDistance(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/js/map/adapter/MapPoint;Lio/dcloud/js/map/adapter/MapPoint;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "webview",
            "sPoint",
            "ePoint",
            "callBackId"
        }
    .end annotation

    const/16 v0, -0x64

    .line 212
    :try_start_0
    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/MapPoint;->getLatLng()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    invoke-virtual {p2}, Lio/dcloud/js/map/adapter/MapPoint;->getLatLng()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/baidu/mapapi/utils/DistanceUtil;->getDistance(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v3

    const-wide/16 p1, 0x0

    cmpl-double v1, v3, p1

    if-nez v1, :cond_0

    .line 214
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lio/dcloud/feature/amap/R$string;->dcloud_feature_map_baidu_compute_result_zero:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/constant/DOMException;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 215
    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void

    .line 218
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 219
    sget v5, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;DIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lio/dcloud/feature/amap/R$string;->dcloud_feature_map_baidu_data_error:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/constant/DOMException;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 223
    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static convertCoordinates(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/js/map/adapter/MapPoint;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "webview",
            "point",
            "coordType",
            "callBackId"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 180
    :cond_0
    sget-object v0, Lcom/baidu/mapapi/utils/CoordinateConverter$CoordType;->COMMON:Lcom/baidu/mapapi/utils/CoordinateConverter$CoordType;

    .line 181
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "wgs84"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 182
    sget-object v0, Lcom/baidu/mapapi/utils/CoordinateConverter$CoordType;->GPS:Lcom/baidu/mapapi/utils/CoordinateConverter$CoordType;

    .line 184
    :cond_1
    new-instance p2, Lcom/baidu/mapapi/utils/CoordinateConverter;

    invoke-direct {p2}, Lcom/baidu/mapapi/utils/CoordinateConverter;-><init>()V

    .line 185
    invoke-virtual {p2, v0}, Lcom/baidu/mapapi/utils/CoordinateConverter;->from(Lcom/baidu/mapapi/utils/CoordinateConverter$CoordType;)Lcom/baidu/mapapi/utils/CoordinateConverter;

    .line 186
    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/MapPoint;->getLatLng()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/baidu/mapapi/utils/CoordinateConverter;->coord(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/utils/CoordinateConverter;

    .line 187
    invoke-virtual {p2}, Lcom/baidu/mapapi/utils/CoordinateConverter;->convert()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    .line 188
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    if-nez p1, :cond_2

    const/16 p2, -0x64

    .line 190
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lio/dcloud/feature/amap/R$string;->dcloud_feature_map_baidu_switch_coordinate_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/constant/DOMException;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 191
    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-object p1

    .line 200
    :cond_2
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bd09ll"

    aput-object v2, v0, v1

    const-string v1, "{long:%f,lat:%f,type:\'%s\'}"

    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget v5, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p3

    invoke-static/range {v2 .. v7}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :cond_3
    return-object p1
.end method

.method public static geocode(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0,
            0x10
        }
        names = {
            "webview",
            "address",
            "coordType",
            "city",
            "callBackId"
        }
    .end annotation

    .line 78
    invoke-static {}, Lcom/baidu/mapapi/search/geocode/GeoCoder;->newInstance()Lcom/baidu/mapapi/search/geocode/GeoCoder;

    move-result-object p2

    .line 79
    new-instance v0, Lio/dcloud/js/map/adapter/DHMapUtil$1;

    invoke-direct {v0, p0, p4}, Lio/dcloud/js/map/adapter/DHMapUtil$1;-><init>(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/baidu/mapapi/search/geocode/GeoCoder;->setOnGetGeoCodeResultListener(Lcom/baidu/mapapi/search/geocode/OnGetGeoCoderResultListener;)V

    .line 114
    new-instance p0, Lcom/baidu/mapapi/search/geocode/GeoCodeOption;

    invoke-direct {p0}, Lcom/baidu/mapapi/search/geocode/GeoCodeOption;-><init>()V

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/geocode/GeoCodeOption;->address(Ljava/lang/String;)Lcom/baidu/mapapi/search/geocode/GeoCodeOption;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/baidu/mapapi/search/geocode/GeoCodeOption;->city(Ljava/lang/String;)Lcom/baidu/mapapi/search/geocode/GeoCodeOption;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/baidu/mapapi/search/geocode/GeoCoder;->geocode(Lcom/baidu/mapapi/search/geocode/GeoCodeOption;)Z

    return-void
.end method

.method public static openSysMap(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pWebView",
            "callbackId",
            "points",
            "pDdes"
        }
    .end annotation

    const/4 p1, 0x1

    const-string v0, ","

    const-string v1, "geo:"

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 57
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p2, v2

    aget-object v1, v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p2, v2

    aget-object p1, p2, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?q="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 59
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p2, v2

    aget-object v1, v1, v2

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p2, v2

    aget-object p1, p2, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 61
    :goto_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 62
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static reverseGeocode(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/js/map/adapter/MapPoint;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0,
            0x10
        }
        names = {
            "webview",
            "point",
            "coordType",
            "city",
            "callBackId"
        }
    .end annotation

    .line 127
    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/MapPoint;->getLatLng()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p3

    .line 128
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bd09ll"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    .line 129
    invoke-static {p0, p1, p2, p3}, Lio/dcloud/js/map/adapter/DHMapUtil;->convertCoordinates(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/js/map/adapter/MapPoint;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object p3

    .line 131
    :cond_0
    invoke-static {}, Lcom/baidu/mapapi/search/geocode/GeoCoder;->newInstance()Lcom/baidu/mapapi/search/geocode/GeoCoder;

    move-result-object p1

    .line 132
    new-instance p2, Lio/dcloud/js/map/adapter/DHMapUtil$2;

    invoke-direct {p2, p0, p4}, Lio/dcloud/js/map/adapter/DHMapUtil$2;-><init>(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/baidu/mapapi/search/geocode/GeoCoder;->setOnGetGeoCodeResultListener(Lcom/baidu/mapapi/search/geocode/OnGetGeoCoderResultListener;)V

    .line 167
    new-instance p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;

    invoke-direct {p0}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;-><init>()V

    invoke-virtual {p0, p3}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/baidu/mapapi/search/geocode/GeoCoder;->reverseGeoCode(Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;)Z

    return-void
.end method
