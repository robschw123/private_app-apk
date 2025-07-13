.class public Lio/dcloud/js/map/adapter/DHMapFrameItem;
.super Lio/dcloud/common/adapter/ui/AdaFrameItem;
.source "DHMapFrameItem.java"

# interfaces
.implements Lio/dcloud/js/map/IFMapDispose;
.implements Lio/dcloud/common/DHInterface/ISysEventListener;
.implements Lio/dcloud/common/DHInterface/ITypeofAble;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;
    }
.end annotation


# static fields
.field static final GET_USER_LOCATION_TEMPLATE:Ljava/lang/String; = "{state:%s,point:%s}"

.field public static final MSG_ADD_OVERLAY:I = 0x3

.field public static final MSG_APPEND:I = 0xc

.field public static final MSG_CLEAR_OVERLAY:I = 0x5

.field public static final MSG_CREATE:I = 0x0

.field public static final MSG_REMOVE_OVERLAY:I = 0x4

.field public static final MSG_RESET:I = 0x6

.field public static final MSG_SCALE:I = 0x1

.field public static final MSG_SET_MAPTYPE:I = 0x8

.field public static final MSG_SHOWLOCATION:I = 0x7

.field public static final MSG_SHOWZOOMCONTROLS:I = 0xa

.field public static final MSG_UPDATE_CENTER:I = 0x2

.field public static final MSG_UPDATE_CENTER_AND_ZOOM:I = 0xb

.field public static final MSG_VISIBLE:I = 0x9

.field static final PLUS_MAPS_POINT_TEMPLATE:Ljava/lang/String; = "new plus.maps.Point(%s,%s)"


# instance fields
.field private PERCENTAGE:Ljava/lang/String;

.field private mCenterLatLng:Lcom/baidu/mapapi/model/LatLng;

.field private mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

.field mJsMapView:Lio/dcloud/js/map/JsMapObject;

.field private mMapHandler:Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;

.field private mMapView:Lio/dcloud/js/map/adapter/DHMapView;

.field private mOptions:Lorg/json/JSONArray;

.field private mOverlaysId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:Ljava/lang/String;

.field private mShowUserLocation:Z

.field private mShowZoomControls:Z

.field private mTraffic:Z

.field public mUUID:Ljava/lang/String;

.field private mWebview:Lio/dcloud/common/DHInterface/IWebview;

.field private mZoom:I

.field private mapType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/js/map/JsMapObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pContext",
            "pWebview",
            "jsMapObject"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xc

    .line 59
    iput p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mZoom:I

    const-string p1, "static"

    .line 95
    iput-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mPosition:Ljava/lang/String;

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mJsMapView:Lio/dcloud/js/map/JsMapObject;

    const-string p1, "%"

    .line 741
    iput-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->PERCENTAGE:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 129
    iput-object p2, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 130
    iput-object p3, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mJsMapView:Lio/dcloud/js/map/JsMapObject;

    .line 131
    new-instance p1, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;-><init>(Lio/dcloud/js/map/adapter/DHMapFrameItem;Landroid/os/Looper;)V

    iput-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapHandler:Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;

    .line 132
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mOverlaysId:Ljava/util/ArrayList;

    .line 133
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    .line 134
    sget-object p2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onPause:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p1, p0, p2}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 135
    sget-object p2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onResume:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p1, p0, p2}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    .line 136
    sget-object p2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onStop:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-interface {p1, p0, p2}, Lio/dcloud/common/DHInterface/IApp;->registerSysEventListener(Lio/dcloud/common/DHInterface/ISysEventListener;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;)V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/js/map/adapter/DHMapFrameItem;Lorg/json/JSONArray;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->createMapFrameItem(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$100(Lio/dcloud/js/map/adapter/DHMapFrameItem;Ljava/lang/Object;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->addToFrameItem(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lio/dcloud/js/map/adapter/DHMapFrameItem;)Lio/dcloud/js/map/adapter/DHMapView;
    .locals 0

    .line 50
    iget-object p0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    return-object p0
.end method

.method private addToFrameItem(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 625
    check-cast p1, Lorg/json/JSONArray;

    .line 626
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->getMapView()Lio/dcloud/js/map/adapter/DHMapView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 627
    invoke-direct {p0, p1}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->createMapFrameItem(Lorg/json/JSONArray;)V

    :cond_0
    const/4 v0, 0x0

    .line 629
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 630
    iget-object v2, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    .line 631
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v3

    .line 632
    invoke-direct {p0, v3, v1, p1}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->getMapLayoutParams(Lio/dcloud/common/adapter/util/ViewRect;Lorg/json/JSONObject;Lorg/json/JSONArray;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 633
    iget-object v1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mPosition:Ljava/lang/String;

    const-string v3, "absolute"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 634
    instance-of v0, v2, Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    .line 636
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 639
    :cond_1
    check-cast v2, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v2, p0, v0, p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 641
    :cond_2
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/dcloud/common/DHInterface/IFrameView;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 644
    :cond_3
    sget v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_4

    .line 645
    iget-object v1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 647
    :cond_4
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0, p0, p1}, Lio/dcloud/common/DHInterface/IWebview;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private createMapFrameItem(Lorg/json/JSONArray;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonArray"
        }
    .end annotation

    const/4 v0, 0x0

    .line 603
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 604
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mPosition:Ljava/lang/String;

    const-string v1, "position"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mPosition:Ljava/lang/String;

    const-string v0, "center"

    .line 607
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 608
    new-instance v1, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "latitude"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 609
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "longitude"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v5, v1

    const-string v0, "zoom"

    .line 611
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v0, "traffic"

    .line 612
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string v0, "zoomControls"

    .line 613
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    const/4 v0, 0x1

    const-string v1, "type"

    .line 615
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "MAPTYPE_SATELLITE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    const/4 v7, 0x2

    goto :goto_1

    :cond_1
    const/4 v7, 0x1

    .line 618
    :goto_1
    new-instance p1, Lio/dcloud/js/map/adapter/DHMapView;

    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lio/dcloud/js/map/adapter/DHMapView;-><init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;Lcom/baidu/mapapi/model/LatLng;IIZZ)V

    .line 620
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mUUID:Ljava/lang/String;

    iput-object v0, p1, Lio/dcloud/js/map/adapter/DHMapView;->mUUID:Ljava/lang/String;

    .line 621
    invoke-direct {p0, p1}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->setMapView(Lio/dcloud/js/map/adapter/DHMapView;)V

    return-void
.end method

.method private getMapLayoutParams(Lio/dcloud/common/adapter/util/ViewRect;Lorg/json/JSONObject;Lorg/json/JSONArray;)Landroid/view/ViewGroup$LayoutParams;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rect",
            "option",
            "jsonArray"
        }
    .end annotation

    .line 652
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    .line 654
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    .line 655
    invoke-virtual {p3, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, v0

    float-to-int p2, p2

    const/4 v3, 0x2

    .line 656
    invoke-virtual {p3, v3}, Lorg/json/JSONArray;->optInt(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v0

    float-to-int v5, v5

    const/4 v6, 0x3

    .line 657
    invoke-virtual {p3, v6}, Lorg/json/JSONArray;->optInt(I)I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v0

    float-to-int v7, v7

    iget v8, p1, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 658
    invoke-virtual {p3, v4}, Lorg/json/JSONArray;->optInt(I)I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, v0

    float-to-int p3, p3

    iget v0, p1, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 659
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    new-array v4, v4, [I

    aput p2, v4, v1

    aput v5, v4, v2

    aput v7, v4, v3

    aput p3, v4, v6

    new-array v3, v3, [I

    iget v6, p1, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    aput v6, v3, v1

    iget p1, p1, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    aput p1, v3, v2

    invoke-virtual {p0, v0, v4, v3}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->updateViewRect(Lio/dcloud/common/adapter/ui/AdaFrameItem;[I[I)V

    .line 660
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "_l="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";_t="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";_w="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";_h="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mapview"

    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-static {p2, v5, v7, p3}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->createLayoutParams(IIII)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p3, "left"

    .line 663
    invoke-static {p2, p3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget v3, p1, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    invoke-static {p3, v3, v1, v0, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIFZ)I

    move-result p3

    const-string v3, "top"

    .line 664
    invoke-static {p2, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    invoke-static {v3, v4, v1, v0, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIFZ)I

    move-result v1

    const-string v3, "width"

    .line 665
    invoke-static {p2, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    iget v5, p1, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    invoke-static {v3, v4, v5, v0, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIFZ)I

    move-result v3

    const-string v4, "height"

    .line 666
    invoke-static {p2, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget v4, p1, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    iget p1, p1, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    invoke-static {p2, v4, p1, v0, v2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIFZ)I

    move-result p1

    .line 667
    invoke-static {p3, v1, v3, p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->createLayoutParams(IIII)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private setMapView(Lio/dcloud/js/map/adapter/DHMapView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pMapView"
        }
    .end annotation

    .line 168
    iput-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    .line 169
    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/DHMapView;->getMapView()Lcom/baidu/mapapi/map/TextureMapView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->setMainView(Landroid/view/View;)V

    .line 170
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mJsMapView:Lio/dcloud/js/map/JsMapObject;

    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    invoke-virtual {p1, v0}, Lio/dcloud/js/map/JsMapObject;->onAddToMapView(Lio/dcloud/js/map/adapter/DHMapView;)V

    return-void
.end method


# virtual methods
.method public addOverlay(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pMapOverlay"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 311
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mOverlaysId:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 313
    iput v1, v0, Landroid/os/Message;->what:I

    .line 314
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 315
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapHandler:Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;

    invoke-virtual {p1, v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public appendToFrameView(Lio/dcloud/common/adapter/ui/AdaFrameView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameView"
        }
    .end annotation

    .line 425
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->getMapView()Lio/dcloud/js/map/adapter/DHMapView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->getMapView()Lio/dcloud/js/map/adapter/DHMapView;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/js/map/adapter/DHMapView;->getMapView()Lcom/baidu/mapapi/map/TextureMapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/TextureMapView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-virtual {p0, v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->removeMapFrameItem(Lio/dcloud/common/DHInterface/IWebview;)V

    .line 428
    :cond_0
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 430
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0xc

    .line 431
    iput v0, p1, Landroid/os/Message;->what:I

    .line 432
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mOptions:Lorg/json/JSONArray;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 433
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapHandler:Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;

    invoke-virtual {v0, p1}, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public centerAndZoom(Lio/dcloud/js/map/adapter/MapPoint;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pCenter",
            "pZoom"
        }
    .end annotation

    .line 219
    invoke-virtual {p0, p2}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->setZoom(Ljava/lang/String;)V

    const/16 p2, 0x64

    .line 220
    invoke-virtual {p0, p1, p2}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->setCenter(Lio/dcloud/js/map/adapter/MapPoint;I)V

    return-void
.end method

.method public clearOverlays()V
    .locals 2

    .line 346
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    .line 347
    iput v1, v0, Landroid/os/Message;->what:I

    .line 348
    iget-object v1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapHandler:Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;

    invoke-virtual {v1, v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public createMap(Lorg/json/JSONArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 399
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 400
    iput v1, v0, Landroid/os/Message;->what:I

    .line 401
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 402
    iput-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mOptions:Lorg/json/JSONArray;

    .line 403
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapHandler:Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;

    invoke-virtual {p1, v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispose()V
    .locals 4

    .line 690
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 691
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    invoke-virtual {v0}, Lio/dcloud/js/map/adapter/DHMapView;->clearOverlays()V

    .line 692
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/dcloud/js/map/adapter/DHMapView;->setVisible(Z)V

    .line 693
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    invoke-virtual {v0}, Lio/dcloud/js/map/adapter/DHMapView;->dispose()V

    .line 694
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object v0

    iget-object v2, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mUUID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lio/dcloud/js/map/JsMapManager;->removeJsMapView(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mPosition:Ljava/lang/String;

    const-string v2, "static"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0, p0}, Lio/dcloud/common/DHInterface/IWebview;->removeFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    goto :goto_0

    .line 698
    :cond_0
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/dcloud/common/DHInterface/IFrameView;->removeFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    .line 700
    :goto_0
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    iput-boolean v1, v0, Lio/dcloud/js/map/adapter/DHMapView;->mAutoPopFromStack:Z

    const/4 v0, 0x0

    .line 701
    iput-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    :cond_1
    return-void
.end method

.method public getBounds()Ljava/lang/String;
    .locals 1

    .line 719
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    invoke-virtual {v0}, Lio/dcloud/js/map/adapter/DHMapView;->getBounds()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCenter(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .locals 10
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

    .line 709
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    invoke-virtual {v0}, Lio/dcloud/js/map/adapter/DHMapView;->getBaiduMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getMapStatus()Lcom/baidu/mapapi/map/MapStatus;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/mapapi/map/MapStatus;->target:Lcom/baidu/mapapi/model/LatLng;

    const-string v1, "new plus.maps.Point(%s,%s)"

    const-string v2, "{state:%s,point:%s}"

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 714
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v0, :cond_0

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v6, v7, v5

    .line 712
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v8, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v4, v5

    iget-wide v8, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v6, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v3

    invoke-static {v2, v7}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-array v0, v4, [Ljava/lang/Object;

    const/4 v7, -0x1

    .line 714
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v5

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v5

    aput-object v6, v4, v3

    invoke-static {v7, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v2, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 716
    :goto_0
    invoke-static {p1, p2, v0}, Lio/dcloud/js/map/MapJsUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getMapOptions()Lorg/json/JSONObject;
    .locals 6

    .line 723
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mOptions:Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 724
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "zoom"

    .line 726
    iget v2, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mZoom:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 727
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 728
    iget-object v2, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mCenterLatLng:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v2, :cond_0

    const-string v3, "longitude"

    .line 729
    iget-wide v4, v2, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "latitude"

    .line 730
    iget-object v3, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mCenterLatLng:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v3, v3, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "center"

    .line 731
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 734
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMapView()Lio/dcloud/js/map/adapter/DHMapView;
    .locals 1

    .line 173
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    return-object v0
.end method

.method public getUserLocation(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .locals 1
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

    .line 262
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/js/map/adapter/DHMapView;->getUserLocation(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void
.end method

.method public hide()V
    .locals 2

    .line 391
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x9

    .line 392
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    .line 393
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 394
    iget-object v1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapHandler:Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;

    invoke-virtual {v1, v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public isShowUserLocation()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mShowUserLocation:Z

    return v0
.end method

.method public isShowZoomControls()Z
    .locals 1

    .line 268
    iget-boolean v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mShowZoomControls:Z

    return v0
.end method

.method public isTraffic()Z
    .locals 1

    .line 284
    iget-boolean v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mTraffic:Z

    return v0
.end method

.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pEventType",
            "pArgs"
        }
    .end annotation

    .line 141
    iget-object p2, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    invoke-virtual {p2}, Lio/dcloud/js/map/adapter/DHMapView;->getMapView()Lcom/baidu/mapapi/map/TextureMapView;

    move-result-object p2

    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 142
    sget-object p2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onPause:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 143
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/DHMapView;->getMapView()Lcom/baidu/mapapi/map/TextureMapView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/TextureMapView;->onPause()V

    .line 144
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/DHMapView;->locationStop()V

    return v0

    .line 146
    :cond_0
    sget-object p2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onResume:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, p2, :cond_1

    .line 147
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/DHMapView;->getMapView()Lcom/baidu/mapapi/map/TextureMapView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/TextureMapView;->onResume()V

    .line 148
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/DHMapView;->locationReStart()V

    return v0

    .line 150
    :cond_1
    sget-object p2, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onStop:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    if-ne p1, p2, :cond_2

    .line 151
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/DHMapView;->getMapView()Lcom/baidu/mapapi/map/TextureMapView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/TextureMapView;->onDestroy()V

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onPopFromStack(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoPop"
        }
    .end annotation

    .line 674
    invoke-super {p0, p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->onPopFromStack(Z)V

    if-eqz p1, :cond_0

    .line 676
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lio/dcloud/js/map/adapter/DHMapView;->mAutoPopFromStack:Z

    .line 677
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/DHMapView;->getMapView()Lcom/baidu/mapapi/map/TextureMapView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/TextureMapView;->onPause()V

    :cond_0
    return-void
.end method

.method public onPushToStack(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoPush"
        }
    .end annotation

    .line 682
    invoke-super {p0, p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->onPushToStack(Z)V

    if-eqz p1, :cond_0

    .line 684
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lio/dcloud/js/map/adapter/DHMapView;->mAutoPopFromStack:Z

    .line 685
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/DHMapView;->getMapView()Lcom/baidu/mapapi/map/TextureMapView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/mapapi/map/TextureMapView;->onResume()V

    :cond_0
    return-void
.end method

.method protected onResize()V
    .locals 8

    .line 744
    invoke-super {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->onResize()V

    .line 745
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mOptions:Lorg/json/JSONArray;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->getMapView()Lio/dcloud/js/map/adapter/DHMapView;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/js/map/adapter/DHMapView;->getMapView()Lcom/baidu/mapapi/map/TextureMapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/TextureMapView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 746
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mOptions:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "left"

    const-string v3, "top"

    const-string v4, "height"

    const-string v5, "width"

    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    .line 753
    :cond_0
    invoke-static {v0, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 754
    invoke-static {v0, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 755
    invoke-static {v0, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 756
    invoke-static {v0, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 758
    invoke-static {v5}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_1

    iget-object v6, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->PERCENTAGE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    .line 761
    :cond_1
    invoke-static {v4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->PERCENTAGE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    .line 764
    :cond_2
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->PERCENTAGE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .line 767
    :cond_3
    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->PERCENTAGE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    move v7, v1

    :goto_0
    if-nez v7, :cond_5

    return-void

    .line 773
    :cond_5
    iget-object v1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    .line 774
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    .line 775
    iget-object v2, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mOptions:Lorg/json/JSONArray;

    invoke-direct {p0, v1, v0, v2}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->getMapLayoutParams(Lio/dcloud/common/adapter/util/ViewRect;Lorg/json/JSONObject;Lorg/json/JSONArray;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 776
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    return-void
.end method

.method public removeMapFrameItem(Lio/dcloud/common/DHInterface/IWebview;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pFrame"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mPosition:Ljava/lang/String;

    const-string v1, "absolute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/dcloud/common/DHInterface/IFrameView;->removeFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    goto :goto_0

    .line 440
    :cond_0
    invoke-interface {p1, p0}, Lio/dcloud/common/DHInterface/IWebview;->removeFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    :goto_0
    return-void
.end method

.method public removeOverlay(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pMapOverlay"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 329
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mOverlaysId:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 330
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    .line 331
    iput v1, v0, Landroid/os/Message;->what:I

    .line 332
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 333
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapHandler:Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;

    invoke-virtual {p1, v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .line 359
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mCenterLatLng:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_0

    .line 360
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    .line 361
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 362
    iget v3, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mZoom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mCenterLatLng:Lcom/baidu/mapapi/model/LatLng;

    aput-object v3, v1, v2

    .line 363
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 364
    iget-object v1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapHandler:Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;

    invoke-virtual {v1, v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public resize(Lorg/json/JSONArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pJsArgs"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    .line 408
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    .line 409
    iget-object v1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mOptions:Lorg/json/JSONArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 410
    iget-object v3, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mOptions:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    .line 412
    :try_start_0
    iget-object v3, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mOptions:Lorg/json/JSONArray;

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v2

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 413
    iget-object v2, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mOptions:Lorg/json/JSONArray;

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->optInt(I)I

    move-result v3

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 414
    iget-object v2, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mOptions:Lorg/json/JSONArray;

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->optInt(I)I

    move-result v3

    const/4 v5, 0x3

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;

    .line 415
    iget-object v2, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mOptions:Lorg/json/JSONArray;

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->optInt(I)I

    move-result p1

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONArray;->put(II)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 417
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 420
    :cond_0
    :goto_0
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mOptions:Lorg/json/JSONArray;

    invoke-direct {p0, v0, v1, p1}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->getMapLayoutParams(Lio/dcloud/common/adapter/util/ViewRect;Lorg/json/JSONObject;Lorg/json/JSONArray;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 421
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setCenter(Lio/dcloud/js/map/adapter/MapPoint;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pCenter"
        }
    .end annotation

    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0, p1, v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->setCenter(Lio/dcloud/js/map/adapter/MapPoint;I)V

    return-void
.end method

.method public setCenter(Lio/dcloud/js/map/adapter/MapPoint;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pCenter",
            "delayTime"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/MapPoint;->getLatLng()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mCenterLatLng:Lcom/baidu/mapapi/model/LatLng;

    .line 182
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x2

    .line 183
    iput v0, p1, Landroid/os/Message;->what:I

    .line 184
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mCenterLatLng:Lcom/baidu/mapapi/model/LatLng;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapHandler:Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public setMapType(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pMapType"
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mapType:Ljava/lang/String;

    .line 234
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x8

    .line 235
    iput v1, v0, Landroid/os/Message;->what:I

    const-string v1, "MAPTYPE_SATELLITE"

    .line 236
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 237
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 239
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 241
    :goto_0
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapHandler:Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;

    invoke-virtual {p1, v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setShowUserLocation(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pShowUserLocation"
        }
    .end annotation

    .line 254
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mShowUserLocation:Z

    .line 255
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x7

    .line 256
    iput v0, p1, Landroid/os/Message;->what:I

    .line 257
    iget-boolean v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mShowUserLocation:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 258
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapHandler:Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;

    invoke-virtual {v0, p1}, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setShowZoomControls(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pShowZoomControls"
        }
    .end annotation

    .line 274
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mShowZoomControls:Z

    .line 275
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0xa

    .line 276
    iput v0, p1, Landroid/os/Message;->what:I

    .line 277
    iget-boolean v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mShowZoomControls:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 278
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapHandler:Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;

    invoke-virtual {v0, p1}, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setStyles(Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "styles"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mOptions:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 446
    invoke-static {v0, p1}, Lio/dcloud/common/util/JSONUtil;->combinJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 447
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    if-eqz v0, :cond_9

    const-string v0, "center"

    .line 448
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    new-instance v2, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "latitude"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 450
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "longitude"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 451
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    invoke-virtual {v0, v2}, Lio/dcloud/js/map/adapter/DHMapView;->setCenter(Lcom/baidu/mapapi/model/LatLng;)V

    :cond_0
    const-string v0, "zoom"

    .line 454
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 455
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 456
    iget-object v2, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    invoke-virtual {v2, v0}, Lio/dcloud/js/map/adapter/DHMapView;->setZoom(I)V

    :cond_1
    const-string v0, "type"

    .line 459
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 461
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MAPTYPE_SATELLITE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 464
    iget-object v2, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    invoke-virtual {v2, v0}, Lio/dcloud/js/map/adapter/DHMapView;->setMapType(I)V

    :cond_2
    const-string v0, "traffic"

    .line 467
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 468
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 469
    invoke-virtual {p0, v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->setTraffic(Z)V

    :cond_3
    const-string v0, "zoomControls"

    .line 472
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 473
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 474
    iget-object v2, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapView:Lio/dcloud/js/map/adapter/DHMapView;

    invoke-virtual {v2, v0}, Lio/dcloud/js/map/adapter/DHMapView;->showZoomControls(Z)V

    :cond_4
    const-string v0, "top"

    .line 477
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "position"

    if-nez v0, :cond_5

    const-string v0, "left"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 478
    :cond_5
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    .line 479
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    .line 480
    iget-object v3, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mOptions:Lorg/json/JSONArray;

    invoke-static {v3, v1}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v3, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mOptions:Lorg/json/JSONArray;

    invoke-direct {p0, v0, v1, v3}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->getMapLayoutParams(Lio/dcloud/common/adapter/util/ViewRect;Lorg/json/JSONObject;Lorg/json/JSONArray;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 481
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 482
    iget-object v1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mPosition:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 483
    iget-object v1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mPosition:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 484
    iget-object v1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mPosition:Ljava/lang/String;

    const-string v2, "absolute"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 485
    iget-object v1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v1

    invoke-interface {v1, p0}, Lio/dcloud/common/DHInterface/IFrameView;->removeFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    .line 486
    iget-object v1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1, p0, v0}, Lio/dcloud/common/DHInterface/IWebview;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 488
    :cond_6
    iget-object v1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1, p0}, Lio/dcloud/common/DHInterface/IWebview;->removeFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    .line 489
    iget-object v1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mContainerWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lio/dcloud/common/DHInterface/IFrameView;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    :goto_0
    iput-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mPosition:Ljava/lang/String;

    goto :goto_1

    .line 493
    :cond_7
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 496
    :cond_8
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public setTraffic(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "traffic"
        }
    .end annotation

    .line 290
    iput-boolean p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mTraffic:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x3e9

    goto :goto_0

    :cond_0
    const/16 p1, 0x3ea

    .line 295
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x8

    .line 296
    iput v1, v0, Landroid/os/Message;->what:I

    .line 297
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 298
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapHandler:Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;

    invoke-virtual {p1, v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setZoom(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pZoom"
        }
    .end annotation

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "12"

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 194
    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 195
    iput p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mZoom:I

    .line 196
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 197
    iput v1, v0, Landroid/os/Message;->what:I

    .line 198
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 199
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapHandler:Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;

    invoke-virtual {p1, v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 201
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public show()V
    .locals 2

    .line 376
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x9

    .line 377
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    .line 378
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 379
    iget-object v1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem;->mMapHandler:Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;

    invoke-virtual {v1, v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
