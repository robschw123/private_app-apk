.class public Lio/dcloud/js/map/adapter/DHMapView;
.super Ljava/lang/Object;
.source "DHMapView.java"

# interfaces
.implements Lio/dcloud/js/map/IFMapDispose;
.implements Lcom/baidu/mapapi/map/BaiduMap$OnMarkerClickListener;
.implements Lcom/baidu/mapapi/map/BaiduMap$OnMapClickListener;
.implements Lcom/baidu/mapapi/map/BaiduMap$OnMapStatusChangeListener;
.implements Lcom/baidu/mapapi/map/BaiduMap$OnMarkerDragListener;
.implements Lcom/baidu/mapapi/map/BaiduMap$OnMapDoubleClickListener;
.implements Lcom/baidu/mapapi/map/BaiduMap$OnMapLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/js/map/adapter/DHMapView$MyLocationListenner;
    }
.end annotation


# static fields
.field static final GET_USER_LOCATION_TEMPLATE:Ljava/lang/String; = "{state:%s,point:%s}"

.field public static final MAPTYPE_NORMAL:I = 0x0

.field public static final MAPTYPE_SATELLITE:I = 0x1

.field public static final MAPTYPE_TRAFFIC:I = 0x3e9

.field public static final MAPTYPE_UNTRAFFIC:I = 0x3ea

.field private static final MAP_STATUS_CHANGE:Ljava/lang/String; = "{ callbackType:\'%s\',center:{long:%f,lat:%f},northease:{long:%f,lat:%f},southwest:{long:%f,lat:%f},zoom:%f}"

.field static final PLUS_MAPS_POINT_TEMPLATE:Ljava/lang/String; = "new plus.maps.Point(%s,%s)"

.field private static final POINT_CLICK_TEMPLATE:Ljava/lang/String; = "{callbackType:\'%s\',payload:new plus.maps.Point(%f, %f)}"

.field static final SCAN_SPAN_TIME:I = 0x3e8

.field private static final T_GETBOUNDS:Ljava/lang/String; = "{ northease:{longitude:%f,latitude:%f},southwest:{longitude:%f,latitude:%f}}"

.field static aaaaaaaaaaa:I


# instance fields
.field private flag:Ljava/lang/String;

.field private isLoctionReduction:Z

.field public mAutoPopFromStack:Z

.field private mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

.field mCoordType:Ljava/lang/String;

.field mCurrentMarker:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field mLocClient:Lcom/baidu/location/LocationClient;

.field mLocated:Z

.field private mMapCallBackWebUuids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMapCircleProxyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/js/map/adapter/MapCircleProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mMapRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/js/map/adapter/MapRoute;",
            ">;"
        }
    .end annotation
.end field

.field private mMapView:Lcom/baidu/mapapi/map/TextureMapView;

.field private mMarkersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/baidu/mapapi/map/Marker;",
            "Lio/dcloud/js/map/adapter/MapMarker;",
            ">;"
        }
    .end annotation
.end field

.field private mMarkersOverlay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/js/map/adapter/MapMarker;",
            ">;"
        }
    .end annotation
.end field

.field private mPolygonProxiesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/js/map/adapter/MapPolygonProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mPolylineOptionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/js/map/adapter/MapPolylineProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mShowUserLoc:Z

.field mText:Lcom/baidu/mapapi/map/Text;

.field public mUUID:Ljava/lang/String;

.field protected mWebView:Lio/dcloud/common/DHInterface/IWebview;

.field public myListener:Lio/dcloud/js/map/adapter/DHMapView$MyLocationListenner;

.field tGetUserLocCallbackId:Ljava/lang/String;

.field tGetUserLocWebview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Lcom/baidu/mapapi/model/LatLng;IIZZ)V
    .locals 3
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
            "pContext",
            "pWebView",
            "center",
            "zoom",
            "mapType",
            "traffic",
            "zoomControls"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mAutoPopFromStack:Z

    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lio/dcloud/js/map/adapter/DHMapView;->mUUID:Ljava/lang/String;

    const-string v2, ""

    .line 68
    iput-object v2, p0, Lio/dcloud/js/map/adapter/DHMapView;->flag:Ljava/lang/String;

    const-string v2, "bd09ll"

    .line 90
    iput-object v2, p0, Lio/dcloud/js/map/adapter/DHMapView;->mCoordType:Ljava/lang/String;

    .line 371
    iput-boolean v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mShowUserLoc:Z

    .line 421
    iput-object v1, p0, Lio/dcloud/js/map/adapter/DHMapView;->tGetUserLocWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 422
    iput-object v1, p0, Lio/dcloud/js/map/adapter/DHMapView;->tGetUserLocCallbackId:Ljava/lang/String;

    .line 452
    new-instance v1, Lio/dcloud/js/map/adapter/DHMapView$MyLocationListenner;

    invoke-direct {v1, p0}, Lio/dcloud/js/map/adapter/DHMapView$MyLocationListenner;-><init>(Lio/dcloud/js/map/adapter/DHMapView;)V

    iput-object v1, p0, Lio/dcloud/js/map/adapter/DHMapView;->myListener:Lio/dcloud/js/map/adapter/DHMapView$MyLocationListenner;

    .line 454
    iput-boolean v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mLocated:Z

    .line 522
    iput-boolean v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->isLoctionReduction:Z

    .line 94
    iput-object p2, p0, Lio/dcloud/js/map/adapter/DHMapView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mMapCallBackWebUuids:Ljava/util/ArrayList;

    .line 96
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/js/map/adapter/DHMapView;->addMapCallBackWebUuid(Ljava/lang/String;)V

    .line 97
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    const-string v1, "coordType"

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "gcj02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    sget-object v1, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    invoke-static {v1}, Lcom/baidu/mapapi/SDKInitializer;->setCoordType(Lcom/baidu/mapapi/CoordType;)V

    .line 100
    iput-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mCoordType:Ljava/lang/String;

    .line 102
    :cond_0
    new-instance v0, Lcom/baidu/mapapi/map/BaiduMapOptions;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/BaiduMapOptions;-><init>()V

    .line 103
    new-instance v1, Lcom/baidu/mapapi/map/MapStatus$Builder;

    invoke-direct {v1}, Lcom/baidu/mapapi/map/MapStatus$Builder;-><init>()V

    invoke-virtual {v1, p3}, Lcom/baidu/mapapi/map/MapStatus$Builder;->target(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object p3

    int-to-float p4, p4

    invoke-virtual {p3, p4}, Lcom/baidu/mapapi/map/MapStatus$Builder;->zoom(F)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/baidu/mapapi/map/MapStatus$Builder;->build()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object p3

    .line 104
    invoke-virtual {v0, p3}, Lcom/baidu/mapapi/map/BaiduMapOptions;->mapStatus(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/BaiduMapOptions;

    .line 105
    new-instance p3, Lcom/baidu/mapapi/map/TextureMapView;

    invoke-direct {p3, p1, v0}, Lcom/baidu/mapapi/map/TextureMapView;-><init>(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    iput-object p3, p0, Lio/dcloud/js/map/adapter/DHMapView;->mMapView:Lcom/baidu/mapapi/map/TextureMapView;

    .line 106
    invoke-virtual {p3, p7}, Lcom/baidu/mapapi/map/TextureMapView;->showZoomControls(Z)V

    .line 107
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/DHMapView;->initMap()V

    .line 108
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapView;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {p1, p5}, Lcom/baidu/mapapi/map/BaiduMap;->setMapType(I)V

    .line 109
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapView;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {p1, p6}, Lcom/baidu/mapapi/map/BaiduMap;->setTrafficEnabled(Z)V

    .line 110
    sget-boolean p1, Lio/dcloud/js/map/MapInitImpl;->isKeyError:Z

    if-eqz p1, :cond_1

    sget-boolean p1, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    if-eqz p1, :cond_1

    .line 111
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p3, Lio/dcloud/feature/amap/R$string;->dcloud_feature_map_baidu_key_config_error_hint:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object p3

    invoke-virtual {p3}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object p3

    sget p4, Lio/dcloud/feature/amap/R$string;->dcloud_feature_map_baidu_key_config_error_dialog_key:I

    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "https://ask.dcloud.net.cn/article/29"

    invoke-static {p2, p1, p4, p3}, Lio/dcloud/common/util/ErrorDialogUtil;->getLossDialog(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 114
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lio/dcloud/js/map/adapter/DHMapView;)Lcom/baidu/mapapi/map/TextureMapView;
    .locals 0

    .line 53
    iget-object p0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mMapView:Lcom/baidu/mapapi/map/TextureMapView;

    return-object p0
.end method

.method static synthetic access$100(Lio/dcloud/js/map/adapter/DHMapView;)Lcom/baidu/mapapi/map/BaiduMap;
    .locals 0

    .line 53
    iget-object p0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    return-object p0
.end method

.method static synthetic access$200(Lio/dcloud/js/map/adapter/DHMapView;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lcom/baidu/mapapi/map/MyLocationData;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/js/map/adapter/DHMapView;->userLocationCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lcom/baidu/mapapi/map/MyLocationData;)V

    return-void
.end method

.method static synthetic access$300(Lio/dcloud/js/map/adapter/DHMapView;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mShowUserLoc:Z

    return p0
.end method

.method private createLocClient()V
    .locals 2

    .line 414
    :try_start_0
    new-instance v0, Lcom/baidu/location/LocationClient;

    iget-object v1, p0, Lio/dcloud/js/map/adapter/DHMapView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/location/LocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mLocClient:Lcom/baidu/location/LocationClient;

    .line 415
    iget-object v1, p0, Lio/dcloud/js/map/adapter/DHMapView;->myListener:Lio/dcloud/js/map/adapter/DHMapView$MyLocationListenner;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient;->registerLocationListener(Lcom/baidu/location/BDLocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 417
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private execCallBack(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pMessage"
        }
    .end annotation

    .line 677
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mMapCallBackWebUuids:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 678
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 679
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/js/map/adapter/DHMapView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-virtual {v2, v3, v1}, Lio/dcloud/js/map/JsMapManager;->findWebviewByUuid(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 681
    iget-object v2, p0, Lio/dcloud/js/map/adapter/DHMapView;->mUUID:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lio/dcloud/js/map/MapJsUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private userLocationCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lcom/baidu/mapapi/map/MyLocationData;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "webview",
            "callBackId",
            "ld"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 444
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v4, p3, Lcom/baidu/mapapi/map/MyLocationData;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v0, v2

    iget-wide v4, p3, Lcom/baidu/mapapi/map/MyLocationData;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const/4 v2, 0x1

    aput-object p3, v0, v2

    const-string p3, "new plus.maps.Point(%s,%s)"

    invoke-static {v3, p3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, v2

    const-string p3, "{state:%s,point:%s}"

    invoke-static {p3, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 445
    invoke-static {p1, p2, p3}, Lio/dcloud/js/map/MapJsUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addMapCallBackWebUuid(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uuid"
        }
    .end annotation

    .line 666
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mMapCallBackWebUuids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 667
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mMapCallBackWebUuids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addOverlay(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pOverlay"
        }
    .end annotation

    .line 263
    instance-of v0, p1, Lio/dcloud/js/map/adapter/MapMarker;

    if-eqz v0, :cond_0

    .line 264
    check-cast p1, Lio/dcloud/js/map/adapter/MapMarker;

    .line 265
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mMarkersOverlay:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mMarkersMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/MapMarker;->getMarkerOverlay()Lcom/baidu/mapapi/map/Marker;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 267
    :cond_0
    instance-of v0, p1, Lio/dcloud/js/map/adapter/MapPolylineProxy;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mPolylineOptionsList:Ljava/util/ArrayList;

    check-cast p1, Lio/dcloud/js/map/adapter/MapPolylineProxy;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    :cond_1
    instance-of v0, p1, Lio/dcloud/js/map/adapter/MapPolygonProxy;

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mPolygonProxiesList:Ljava/util/ArrayList;

    check-cast p1, Lio/dcloud/js/map/adapter/MapPolygonProxy;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 271
    :cond_2
    instance-of v0, p1, Lio/dcloud/js/map/adapter/MapRoute;

    if-eqz v0, :cond_3

    .line 272
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mMapRoutes:Ljava/util/ArrayList;

    check-cast p1, Lio/dcloud/js/map/adapter/MapRoute;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    :cond_3
    instance-of v0, p1, Lio/dcloud/js/map/adapter/MapCircleProxy;

    if-eqz v0, :cond_4

    .line 274
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mMapCircleProxyList:Ljava/util/ArrayList;

    check-cast p1, Lio/dcloud/js/map/adapter/MapCircleProxy;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public clearMapCallBack()V
    .locals 1

    .line 671
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mMapCallBackWebUuids:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 672
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public clearOverlays()V
    .locals 1

    .line 330
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->clear()V

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 183
    :try_start_0
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mLocClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_0

    .line 184
    iget-object v1, p0, Lio/dcloud/js/map/adapter/DHMapView;->myListener:Lio/dcloud/js/map/adapter/DHMapView$MyLocationListenner;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient;->unRegisterLocationListener(Lcom/baidu/location/BDLocationListener;)V

    .line 187
    :cond_0
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/DHMapView;->clearMapCallBack()V

    .line 188
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mMapView:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mMapView:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/TextureMapView;->onDestroy()V

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mMapView:Lcom/baidu/mapapi/map/TextureMapView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public getBaiduMap()Lcom/baidu/mapapi/map/BaiduMap;
    .locals 1

    .line 136
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    return-object v0
.end method

.method public getBounds()Ljava/lang/String;
    .locals 5

    .line 607
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v0

    .line 608
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/baidu/mapapi/map/MapStatus;->bound:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v3, v3, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v3, v3, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    .line 609
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, v0, Lcom/baidu/mapapi/map/MapStatus;->bound:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v3, v3, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v3, v3, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, v0, Lcom/baidu/mapapi/map/MapStatus;->bound:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v3, v3, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v3, v3, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    .line 610
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapStatus;->bound:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v0, v0, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v3, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const-string v0, "{ northease:{longitude:%f,latitude:%f},southwest:{longitude:%f,latitude:%f}}"

    .line 608
    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMapView()Lcom/baidu/mapapi/map/TextureMapView;
    .locals 1

    .line 132
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mMapView:Lcom/baidu/mapapi/map/TextureMapView;

    return-object v0
.end method

.method public getUserLocation(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "webview",
            "callBackId"
        }
    .end annotation

    .line 427
    iput-object p1, p0, Lio/dcloud/js/map/adapter/DHMapView;->tGetUserLocWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 428
    iput-object p2, p0, Lio/dcloud/js/map/adapter/DHMapView;->tGetUserLocCallbackId:Ljava/lang/String;

    .line 429
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapView;->mLocClient:Lcom/baidu/location/LocationClient;

    if-nez p1, :cond_0

    .line 430
    invoke-direct {p0}, Lio/dcloud/js/map/adapter/DHMapView;->createLocClient()V

    .line 432
    :cond_0
    new-instance p1, Lcom/baidu/location/LocationClientOption;

    invoke-direct {p1}, Lcom/baidu/location/LocationClientOption;-><init>()V

    const/4 p2, 0x1

    .line 433
    invoke-virtual {p1, p2}, Lcom/baidu/location/LocationClientOption;->setOpenGps(Z)V

    .line 434
    iget-object p2, p0, Lio/dcloud/js/map/adapter/DHMapView;->mCoordType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/baidu/location/LocationClientOption;->setCoorType(Ljava/lang/String;)V

    const/16 p2, 0x3e8

    .line 435
    invoke-virtual {p1, p2}, Lcom/baidu/location/LocationClientOption;->setScanSpan(I)V

    .line 436
    iget-object p2, p0, Lio/dcloud/js/map/adapter/DHMapView;->mLocClient:Lcom/baidu/location/LocationClient;

    if-eqz p2, :cond_1

    .line 437
    invoke-virtual {p2, p1}, Lcom/baidu/location/LocationClient;->setLocOption(Lcom/baidu/location/LocationClientOption;)V

    .line 438
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapView;->mLocClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {p1}, Lcom/baidu/location/LocationClient;->isStarted()Z

    move-result p1

    if-nez p1, :cond_1

    .line 439
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapView;->mLocClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {p1}, Lcom/baidu/location/LocationClient;->start()V

    :cond_1
    return-void
.end method

.method public getWebview()Lio/dcloud/common/DHInterface/IWebview;
    .locals 1

    .line 129
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    return-object v0
.end method

.method public initMap()V
    .locals 1

    .line 154
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mMapView:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/TextureMapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    .line 155
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/DHMapView;->initOverlays()V

    .line 156
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/map/BaiduMap;->setOnMarkerClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMarkerClickListener;)V

    .line 157
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/map/BaiduMap;->setOnMapClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMapClickListener;)V

    .line 158
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/map/BaiduMap;->setOnMapStatusChangeListener(Lcom/baidu/mapapi/map/BaiduMap$OnMapStatusChangeListener;)V

    .line 159
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/map/BaiduMap;->setOnMarkerDragListener(Lcom/baidu/mapapi/map/BaiduMap$OnMarkerDragListener;)V

    .line 160
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/map/BaiduMap;->setOnMapDoubleClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMapDoubleClickListener;)V

    .line 161
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/map/BaiduMap;->setOnMapLongClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMapLongClickListener;)V

    return-void
.end method

.method public initOverlays()V
    .locals 1

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mMarkersOverlay:Ljava/util/ArrayList;

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mMarkersMap:Ljava/util/HashMap;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mPolylineOptionsList:Ljava/util/ArrayList;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mPolygonProxiesList:Ljava/util/ArrayList;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mMapCircleProxyList:Ljava/util/ArrayList;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mMapRoutes:Ljava/util/ArrayList;

    return-void
.end method

.method public locationReStart()V
    .locals 1

    .line 541
    iget-boolean v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->isLoctionReduction:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 542
    invoke-virtual {p0, v0}, Lio/dcloud/js/map/adapter/DHMapView;->showUserLocation(Z)V

    const/4 v0, 0x0

    .line 543
    iput-boolean v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->isLoctionReduction:Z

    :cond_0
    return-void
.end method

.method public locationStop()V
    .locals 2

    .line 527
    iget-boolean v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mShowUserLoc:Z

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mLocClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->stop()V

    :cond_0
    const/4 v0, 0x0

    .line 531
    iput-boolean v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mShowUserLoc:Z

    .line 532
    iget-object v1, p0, Lio/dcloud/js/map/adapter/DHMapView;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationEnabled(Z)V

    const/4 v0, 0x1

    .line 533
    iput-boolean v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->isLoctionReduction:Z

    :cond_1
    return-void
.end method

.method public onMapClick(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 562
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "click"

    aput-object v3, v1, v2

    iget-wide v2, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string p1, "{callbackType:\'%s\',payload:new plus.maps.Point(%f, %f)}"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/js/map/adapter/DHMapView;->execCallBack(Ljava/lang/String;)V

    .line 563
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapView;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/BaiduMap;->hideInfoWindow()V

    return-void
.end method

.method public onMapDoubleClick(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 662
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "click"

    aput-object v3, v1, v2

    iget-wide v2, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string p1, "{callbackType:\'%s\',payload:new plus.maps.Point(%f, %f)}"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/js/map/adapter/DHMapView;->execCallBack(Ljava/lang/String;)V

    return-void
.end method

.method public onMapLongClick(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 655
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "click"

    aput-object v3, v1, v2

    iget-wide v2, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string p1, "{callbackType:\'%s\',payload:new plus.maps.Point(%f, %f)}"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/js/map/adapter/DHMapView;->execCallBack(Ljava/lang/String;)V

    return-void
.end method

.method public onMapPoiClick(Lcom/baidu/mapapi/map/MapPoi;)V
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

.method public onMapStatusChange(Lcom/baidu/mapapi/map/MapStatus;)V
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

.method public onMapStatusChangeFinish(Lcom/baidu/mapapi/map/MapStatus;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 591
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "{ callbackType:\'%s\',center:{long:%f,lat:%f},northease:{long:%f,lat:%f},southwest:{long:%f,lat:%f},zoom:%f}"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "change"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/baidu/mapapi/map/MapStatus;->target:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v4, v4, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/baidu/mapapi/map/MapStatus;->target:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v4, v4, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/baidu/mapapi/map/MapStatus;->bound:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v4, v4, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v4, v4, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    .line 592
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/baidu/mapapi/map/MapStatus;->bound:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v4, v4, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v4, v4, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/baidu/mapapi/map/MapStatus;->bound:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v4, v4, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v4, v4, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p1, Lcom/baidu/mapapi/map/MapStatus;->bound:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v4, v4, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v4, v4, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget p1, p1, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v3

    .line 591
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/js/map/adapter/DHMapView;->execCallBack(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 595
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onMapStatusChangeStart(Lcom/baidu/mapapi/map/MapStatus;)V
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

.method public onMapStatusChangeStart(Lcom/baidu/mapapi/map/MapStatus;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mapStatus",
            "i"
        }
    .end annotation

    return-void
.end method

.method public onMarkerClick(Lcom/baidu/mapapi/map/Marker;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "marker"
        }
    .end annotation

    .line 550
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mMarkersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/js/map/adapter/MapMarker;

    if-eqz p1, :cond_0

    .line 552
    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/MapMarker;->getWebview()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/MapMarker;->getUuid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{type:\'markerclick\'}"

    invoke-static {v0, v1, v2}, Lio/dcloud/js/map/MapJsUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    iget-object v1, p0, Lio/dcloud/js/map/adapter/DHMapView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/js/map/adapter/DHMapView;->mWebView:Lio/dcloud/common/DHInterface/IWebview;

    invoke-virtual {p1, v0, v1, v2}, Lio/dcloud/js/map/adapter/MapMarker;->showInfoWindow(Lcom/baidu/mapapi/map/BaiduMap;Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMarkerDrag(Lcom/baidu/mapapi/map/Marker;)V
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

.method public onMarkerDragEnd(Lcom/baidu/mapapi/map/Marker;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "marker"
        }
    .end annotation

    .line 632
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mMarkersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/js/map/adapter/MapMarker;

    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getPosition()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    .line 639
    invoke-virtual {v0}, Lio/dcloud/js/map/adapter/MapMarker;->getWebview()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    invoke-virtual {v0}, Lio/dcloud/js/map/adapter/MapMarker;->getUuid()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-wide v5, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v3, v4

    const-string p1, "{type:\'onDrag\',pt:new plus.maps.Point(%f, %f)}"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lio/dcloud/js/map/MapJsUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onMarkerDragStart(Lcom/baidu/mapapi/map/Marker;)V
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

.method public removeOverlay(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pOverlay"
        }
    .end annotation

    .line 289
    instance-of v0, p1, Lio/dcloud/js/map/adapter/MapMarker;

    if-eqz v0, :cond_0

    .line 290
    check-cast p1, Lio/dcloud/js/map/adapter/MapMarker;

    .line 291
    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/MapMarker;->getMarkerOverlay()Lcom/baidu/mapapi/map/Marker;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 292
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mMarkersMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/MapMarker;->getMarkerOverlay()Lcom/baidu/mapapi/map/Marker;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/MapMarker;->getMarkerOverlay()Lcom/baidu/mapapi/map/Marker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->remove()V

    .line 294
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mMarkersOverlay:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    :cond_0
    instance-of v0, p1, Lio/dcloud/js/map/adapter/MapPolylineProxy;

    if-eqz v0, :cond_1

    .line 297
    check-cast p1, Lio/dcloud/js/map/adapter/MapPolylineProxy;

    .line 298
    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/MapPolylineProxy;->getMapPolyLine()Lcom/baidu/mapapi/map/Polyline;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 299
    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/MapPolylineProxy;->getMapPolyLine()Lcom/baidu/mapapi/map/Polyline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Polyline;->remove()V

    .line 300
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mPolylineOptionsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 302
    :cond_1
    instance-of v0, p1, Lio/dcloud/js/map/adapter/MapPolygonProxy;

    if-eqz v0, :cond_2

    .line 303
    check-cast p1, Lio/dcloud/js/map/adapter/MapPolygonProxy;

    .line 304
    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/MapPolygonProxy;->getPolygon()Lcom/baidu/mapapi/map/Polygon;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 305
    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/MapPolygonProxy;->getPolygon()Lcom/baidu/mapapi/map/Polygon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Polygon;->remove()V

    .line 306
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mPolygonProxiesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 308
    :cond_2
    instance-of v0, p1, Lio/dcloud/js/map/adapter/MapRoute;

    if-eqz v0, :cond_3

    .line 309
    check-cast p1, Lio/dcloud/js/map/adapter/MapRoute;

    .line 310
    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/MapRoute;->removeFromMap()V

    .line 311
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mMapRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 312
    :cond_3
    instance-of v0, p1, Lio/dcloud/js/map/adapter/MapCircleProxy;

    if-eqz v0, :cond_4

    .line 313
    check-cast p1, Lio/dcloud/js/map/adapter/MapCircleProxy;

    .line 314
    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/MapCircleProxy;->getCircle()Lcom/baidu/mapapi/map/Circle;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 315
    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/MapCircleProxy;->getCircle()Lcom/baidu/mapapi/map/Circle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Circle;->remove()V

    .line 316
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mMapCircleProxyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public setCenter(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pCenter"
        }
    .end annotation

    .line 209
    :try_start_0
    new-instance v0, Lcom/baidu/mapapi/map/MapStatus$Builder;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MapStatus$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/MapStatus$Builder;->target(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MapStatus$Builder;->build()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object p1

    .line 210
    invoke-static {p1}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newMapStatus(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object p1

    .line 211
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    .line 214
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapView;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dcloud/js/map/adapter/DHMapView;->onMapStatusChangeFinish(Lcom/baidu/mapapi/map/MapStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 216
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setMapType(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pType"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/16 v1, 0x3e9

    if-eq p1, v1, :cond_1

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 362
    :cond_0
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapView;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setTrafficEnabled(Z)V

    goto :goto_0

    .line 359
    :cond_1
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapView;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setTrafficEnabled(Z)V

    goto :goto_0

    .line 356
    :cond_2
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapView;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setMapType(I)V

    goto :goto_0

    .line 365
    :cond_3
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapView;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setMapType(I)V

    :goto_0
    return-void
.end method

.method protected setVisible(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pIsVisible"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mMapView:Lcom/baidu/mapapi/map/TextureMapView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 246
    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/TextureMapView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 248
    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/TextureMapView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setZoom(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pZoom"
        }
    .end annotation

    .line 230
    new-instance v0, Lcom/baidu/mapapi/map/MapStatus$Builder;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MapStatus$Builder;-><init>()V

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/MapStatus$Builder;->zoom(F)Lcom/baidu/mapapi/map/MapStatus$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/MapStatus$Builder;->build()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object p1

    .line 231
    invoke-static {p1}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newMapStatus(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object p1

    .line 232
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    return-void
.end method

.method public showUserLocation(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pDisplay"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 382
    iget-boolean p1, p0, Lio/dcloud/js/map/adapter/DHMapView;->mShowUserLoc:Z

    if-eqz p1, :cond_0

    return-void

    .line 386
    :cond_0
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapView;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    new-instance v1, Lcom/baidu/mapapi/map/MyLocationConfiguration;

    sget-object v2, Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;->NORMAL:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    iget-object v3, p0, Lio/dcloud/js/map/adapter/DHMapView;->mCurrentMarker:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-direct {v1, v2, v0, v3}, Lcom/baidu/mapapi/map/MyLocationConfiguration;-><init>(Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;ZLcom/baidu/mapapi/map/BitmapDescriptor;)V

    invoke-virtual {p1, v1}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationConfiguration(Lcom/baidu/mapapi/map/MyLocationConfiguration;)V

    .line 388
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapView;->mLocClient:Lcom/baidu/location/LocationClient;

    if-nez p1, :cond_1

    .line 389
    invoke-direct {p0}, Lio/dcloud/js/map/adapter/DHMapView;->createLocClient()V

    .line 391
    :cond_1
    iput-boolean v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mLocated:Z

    .line 393
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapView;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationEnabled(Z)V

    .line 394
    new-instance p1, Lcom/baidu/location/LocationClientOption;

    invoke-direct {p1}, Lcom/baidu/location/LocationClientOption;-><init>()V

    .line 395
    invoke-virtual {p1, v0}, Lcom/baidu/location/LocationClientOption;->setOpenGps(Z)V

    .line 396
    iget-object v1, p0, Lio/dcloud/js/map/adapter/DHMapView;->mCoordType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/baidu/location/LocationClientOption;->setCoorType(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 397
    invoke-virtual {p1, v1}, Lcom/baidu/location/LocationClientOption;->setScanSpan(I)V

    .line 398
    iget-object v1, p0, Lio/dcloud/js/map/adapter/DHMapView;->mLocClient:Lcom/baidu/location/LocationClient;

    if-eqz v1, :cond_2

    .line 399
    invoke-virtual {v1, p1}, Lcom/baidu/location/LocationClient;->setLocOption(Lcom/baidu/location/LocationClientOption;)V

    .line 400
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapView;->mLocClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {p1}, Lcom/baidu/location/LocationClient;->start()V

    .line 402
    :cond_2
    iput-boolean v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mShowUserLoc:Z

    goto :goto_0

    .line 404
    :cond_3
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapView;->mLocClient:Lcom/baidu/location/LocationClient;

    if-eqz p1, :cond_4

    .line 405
    invoke-virtual {p1}, Lcom/baidu/location/LocationClient;->stop()V

    .line 406
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapView;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationEnabled(Z)V

    .line 407
    iput-boolean v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mShowUserLoc:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public showZoomControls(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pDisplay"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView;->mMapView:Lcom/baidu/mapapi/map/TextureMapView;

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/TextureMapView;->showZoomControls(Z)V

    :cond_0
    return-void
.end method
