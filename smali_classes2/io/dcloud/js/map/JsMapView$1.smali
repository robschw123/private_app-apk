.class Lio/dcloud/js/map/JsMapView$1;
.super Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;
.source "JsMapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/map/JsMapView;->updateObject(Ljava/lang/String;Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/js/map/JsMapView;

.field final synthetic val$pJsArgs:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lio/dcloud/js/map/JsMapView;Lio/dcloud/common/DHInterface/IApp;Lorg/json/JSONArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "app",
            "val$pJsArgs"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lio/dcloud/js/map/JsMapView$1;->this$0:Lio/dcloud/js/map/JsMapView;

    iput-object p3, p0, Lio/dcloud/js/map/JsMapView$1;->val$pJsArgs:Lorg/json/JSONArray;

    invoke-direct {p0, p2}, Lio/dcloud/common/adapter/util/PermissionUtil$StreamPermissionRequest;-><init>(Lio/dcloud/common/DHInterface/IApp;)V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamPerName"
        }
    .end annotation

    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamPerName"
        }
    .end annotation

    const-string v0, "LOCATION"

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lio/dcloud/js/map/JsMapView$1;->this$0:Lio/dcloud/js/map/JsMapView;

    invoke-static {p1}, Lio/dcloud/js/map/JsMapView;->access$000(Lio/dcloud/js/map/JsMapView;)Lio/dcloud/js/map/adapter/DHMapFrameItem;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/js/map/JsMapView$1;->val$pJsArgs:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->setShowUserLocation(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
