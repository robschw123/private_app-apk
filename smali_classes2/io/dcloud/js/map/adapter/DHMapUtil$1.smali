.class Lio/dcloud/js/map/adapter/DHMapUtil$1;
.super Ljava/lang/Object;
.source "DHMapUtil.java"

# interfaces
.implements Lcom/baidu/mapapi/search/geocode/OnGetGeoCoderResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/map/adapter/DHMapUtil;->geocode(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callBackId:Ljava/lang/String;

.field final synthetic val$webview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$webview",
            "val$callBackId"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lio/dcloud/js/map/adapter/DHMapUtil$1;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p2, p0, Lio/dcloud/js/map/adapter/DHMapUtil$1;->val$callBackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetGeoCodeResult(Lcom/baidu/mapapi/search/geocode/GeoCodeResult;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "geocode"
        }
    .end annotation

    .line 89
    iget-object v0, p1, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v0, v1, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    .line 99
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    aput-object v0, v2, p1

    const/4 p1, 0x3

    const-string v0, "bd09ll"

    aput-object v0, v2, p1

    const-string p1, "{long:%f,lat:%f,addr:\'%s\',type:\'%s\'}"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 100
    iget-object v3, p0, Lio/dcloud/js/map/adapter/DHMapUtil$1;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v4, p0, Lio/dcloud/js/map/adapter/DHMapUtil$1;->val$callBackId:Ljava/lang/String;

    sget v6, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p1, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NETWORK_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v0, v1, :cond_1

    const/4 v0, -0x6

    .line 102
    iget-object p1, p1, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->toString()Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lio/dcloud/feature/amap/R$string;->dcloud_feature_map_baidu_feature_name:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lio/dcloud/js/map/adapter/BaiduErrorLink;->BaiduLink:Ljava/lang/String;

    const-string v3, "network error"

    .line 102
    invoke-static {p1, v1, v3, v2}, Lio/dcloud/common/constant/DOMException;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    iget-object v1, p0, Lio/dcloud/js/map/adapter/DHMapUtil$1;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/js/map/adapter/DHMapUtil$1;->val$callBackId:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_0

    :cond_1
    const/16 v0, -0x64

    .line 107
    iget-object v1, p1, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lio/dcloud/feature/amap/R$string;->dcloud_feature_map_baidu_feature_name:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    .line 109
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lio/dcloud/js/map/adapter/BaiduErrorLink;->BaiduLink:Ljava/lang/String;

    .line 107
    invoke-static {v1, v2, p1, v3}, Lio/dcloud/common/constant/DOMException;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    iget-object v1, p0, Lio/dcloud/js/map/adapter/DHMapUtil$1;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/js/map/adapter/DHMapUtil$1;->val$callBackId:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :goto_0
    return-void
.end method

.method public onGetReverseGeoCodeResult(Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    return-void
.end method
