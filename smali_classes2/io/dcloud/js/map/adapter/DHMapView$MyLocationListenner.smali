.class Lio/dcloud/js/map/adapter/DHMapView$MyLocationListenner;
.super Ljava/lang/Object;
.source "DHMapView.java"

# interfaces
.implements Lcom/baidu/location/BDLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/js/map/adapter/DHMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyLocationListenner"
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/js/map/adapter/DHMapView;


# direct methods
.method constructor <init>(Lio/dcloud/js/map/adapter/DHMapView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 466
    iput-object p1, p0, Lio/dcloud/js/map/adapter/DHMapView$MyLocationListenner;->this$0:Lio/dcloud/js/map/adapter/DHMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveLocation(Lcom/baidu/location/BDLocation;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "location"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 470
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapView$MyLocationListenner;->this$0:Lio/dcloud/js/map/adapter/DHMapView;

    invoke-static {v0}, Lio/dcloud/js/map/adapter/DHMapView;->access$000(Lio/dcloud/js/map/adapter/DHMapView;)Lcom/baidu/mapapi/map/TextureMapView;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 473
    :cond_0
    :try_start_0
    new-instance v0, Lcom/baidu/mapapi/map/MyLocationData$Builder;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MyLocationData$Builder;-><init>()V

    .line 474
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->accuracy(F)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    .line 476
    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->direction(F)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->latitude(D)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v0

    .line 477
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->longitude(D)Lcom/baidu/mapapi/map/MyLocationData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MyLocationData$Builder;->build()Lcom/baidu/mapapi/map/MyLocationData;

    move-result-object v0

    .line 478
    iget-object v1, p0, Lio/dcloud/js/map/adapter/DHMapView$MyLocationListenner;->this$0:Lio/dcloud/js/map/adapter/DHMapView;

    invoke-static {v1}, Lio/dcloud/js/map/adapter/DHMapView;->access$100(Lio/dcloud/js/map/adapter/DHMapView;)Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationData(Lcom/baidu/mapapi/map/MyLocationData;)V

    .line 479
    iget-object v1, p0, Lio/dcloud/js/map/adapter/DHMapView$MyLocationListenner;->this$0:Lio/dcloud/js/map/adapter/DHMapView;

    iget-boolean v1, v1, Lio/dcloud/js/map/adapter/DHMapView;->mLocated:Z

    if-nez v1, :cond_1

    .line 480
    iget-object v1, p0, Lio/dcloud/js/map/adapter/DHMapView$MyLocationListenner;->this$0:Lio/dcloud/js/map/adapter/DHMapView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lio/dcloud/js/map/adapter/DHMapView;->mLocated:Z

    .line 481
    new-instance v1, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    .line 482
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 483
    invoke-static {v1}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newLatLng(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object p1

    .line 484
    iget-object v1, p0, Lio/dcloud/js/map/adapter/DHMapView$MyLocationListenner;->this$0:Lio/dcloud/js/map/adapter/DHMapView;

    invoke-static {v1}, Lio/dcloud/js/map/adapter/DHMapView;->access$100(Lio/dcloud/js/map/adapter/DHMapView;)Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mapapi/map/BaiduMap;->animateMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    .line 486
    :cond_1
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapView$MyLocationListenner;->this$0:Lio/dcloud/js/map/adapter/DHMapView;

    iget-object p1, p1, Lio/dcloud/js/map/adapter/DHMapView;->tGetUserLocWebview:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p1, :cond_3

    .line 487
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapView$MyLocationListenner;->this$0:Lio/dcloud/js/map/adapter/DHMapView;

    iget-object v1, p1, Lio/dcloud/js/map/adapter/DHMapView;->tGetUserLocWebview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/js/map/adapter/DHMapView$MyLocationListenner;->this$0:Lio/dcloud/js/map/adapter/DHMapView;

    iget-object v2, v2, Lio/dcloud/js/map/adapter/DHMapView;->tGetUserLocCallbackId:Ljava/lang/String;

    invoke-static {p1, v1, v2, v0}, Lio/dcloud/js/map/adapter/DHMapView;->access$200(Lio/dcloud/js/map/adapter/DHMapView;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lcom/baidu/mapapi/map/MyLocationData;)V

    .line 488
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapView$MyLocationListenner;->this$0:Lio/dcloud/js/map/adapter/DHMapView;

    const/4 v0, 0x0

    iput-object v0, p1, Lio/dcloud/js/map/adapter/DHMapView;->tGetUserLocWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 489
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapView$MyLocationListenner;->this$0:Lio/dcloud/js/map/adapter/DHMapView;

    invoke-static {p1}, Lio/dcloud/js/map/adapter/DHMapView;->access$300(Lio/dcloud/js/map/adapter/DHMapView;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 490
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapView$MyLocationListenner;->this$0:Lio/dcloud/js/map/adapter/DHMapView;

    iget-object p1, p1, Lio/dcloud/js/map/adapter/DHMapView;->mLocClient:Lcom/baidu/location/LocationClient;

    if-eqz p1, :cond_2

    .line 491
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapView$MyLocationListenner;->this$0:Lio/dcloud/js/map/adapter/DHMapView;

    iget-object p1, p1, Lio/dcloud/js/map/adapter/DHMapView;->mLocClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {p1}, Lcom/baidu/location/LocationClient;->stop()V

    .line 493
    :cond_2
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapView$MyLocationListenner;->this$0:Lio/dcloud/js/map/adapter/DHMapView;

    invoke-static {p1}, Lio/dcloud/js/map/adapter/DHMapView;->access$100(Lio/dcloud/js/map/adapter/DHMapView;)Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setMyLocationEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 497
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
