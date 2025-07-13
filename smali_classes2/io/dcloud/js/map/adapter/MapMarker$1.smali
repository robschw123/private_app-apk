.class Lio/dcloud/js/map/adapter/MapMarker$1;
.super Ljava/lang/Object;
.source "MapMarker.java"

# interfaces
.implements Lcom/baidu/mapapi/map/InfoWindow$OnInfoWindowClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/map/adapter/MapMarker;->showInfoWindow(Lcom/baidu/mapapi/map/BaiduMap;Landroid/content/Context;Lio/dcloud/common/DHInterface/IWebview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/js/map/adapter/MapMarker;

.field final synthetic val$mapView:Lcom/baidu/mapapi/map/BaiduMap;

.field final synthetic val$webview:Lio/dcloud/common/DHInterface/IWebview;


# direct methods
.method constructor <init>(Lio/dcloud/js/map/adapter/MapMarker;Lcom/baidu/mapapi/map/BaiduMap;Lio/dcloud/common/DHInterface/IWebview;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$mapView",
            "val$webview"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lio/dcloud/js/map/adapter/MapMarker$1;->this$0:Lio/dcloud/js/map/adapter/MapMarker;

    iput-object p2, p0, Lio/dcloud/js/map/adapter/MapMarker$1;->val$mapView:Lcom/baidu/mapapi/map/BaiduMap;

    iput-object p3, p0, Lio/dcloud/js/map/adapter/MapMarker$1;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfoWindowClick()V
    .locals 3

    .line 138
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker$1;->val$mapView:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->hideInfoWindow()V

    .line 139
    iget-object v0, p0, Lio/dcloud/js/map/adapter/MapMarker$1;->val$webview:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/js/map/adapter/MapMarker$1;->this$0:Lio/dcloud/js/map/adapter/MapMarker;

    invoke-static {v1}, Lio/dcloud/js/map/adapter/MapMarker;->access$000(Lio/dcloud/js/map/adapter/MapMarker;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{type:\'bubbleclick\'}"

    invoke-static {v0, v1, v2}, Lio/dcloud/js/map/MapJsUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
