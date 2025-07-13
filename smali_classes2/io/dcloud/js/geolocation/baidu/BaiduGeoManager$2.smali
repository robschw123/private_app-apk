.class Lio/dcloud/js/geolocation/baidu/BaiduGeoManager$2;
.super Lcom/baidu/location/BDAbstractLocationListener;
.source "BaiduGeoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->startLocating(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ZIIZLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;

.field final synthetic val$continuous:Z

.field final synthetic val$coordsType:Ljava/lang/String;

.field final synthetic val$isDLGeo:Z

.field final synthetic val$pCallbackId:Ljava/lang/String;

.field final synthetic val$pWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$pWebViewImpl",
            "val$pCallbackId",
            "val$coordsType",
            "val$isDLGeo",
            "val$continuous"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager$2;->this$0:Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;

    iput-object p2, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager$2;->val$pWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p3, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager$2;->val$pCallbackId:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager$2;->val$coordsType:Ljava/lang/String;

    iput-boolean p5, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager$2;->val$isDLGeo:Z

    iput-boolean p6, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager$2;->val$continuous:Z

    invoke-direct {p0}, Lcom/baidu/location/BDAbstractLocationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveLocation(Lcom/baidu/location/BDLocation;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bdLocation"
        }
    .end annotation

    .line 177
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddress()Lcom/baidu/location/Address;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddress()Lcom/baidu/location/Address;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddress()Lcom/baidu/location/Address;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/location/Address;->address:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "record_address"

    invoke-static {v1, v0}, Lio/dcloud/common/DHInterface/FeatureMessageDispatcher;->dispatchMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    :cond_1
    sget-object v0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveLocation bdLocation=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager$2;->this$0:Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;

    iget-object v3, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager$2;->val$pWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v4, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager$2;->val$pCallbackId:Ljava/lang/String;

    iget-object v0, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager$2;->val$coordsType:Ljava/lang/String;

    invoke-static {v2, v0}, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->access$100(Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager$2;->val$isDLGeo:Z

    iget-boolean v8, p0, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager$2;->val$continuous:Z

    move-object v5, p1

    invoke-static/range {v2 .. v8}, Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;->access$200(Lio/dcloud/js/geolocation/baidu/BaiduGeoManager;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lcom/baidu/location/BDLocation;Ljava/lang/String;ZZ)V

    return-void
.end method
