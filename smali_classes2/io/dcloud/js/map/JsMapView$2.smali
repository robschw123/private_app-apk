.class Lio/dcloud/js/map/JsMapView$2;
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

    .line 148
    iput-object p1, p0, Lio/dcloud/js/map/JsMapView$2;->this$0:Lio/dcloud/js/map/JsMapView;

    iput-object p3, p0, Lio/dcloud/js/map/JsMapView$2;->val$pJsArgs:Lorg/json/JSONArray;

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
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamPerName"
        }
    .end annotation

    const-string v0, "LOCATION"

    .line 151
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 152
    iget-object p1, p0, Lio/dcloud/js/map/JsMapView$2;->val$pJsArgs:Lorg/json/JSONArray;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p1

    .line 153
    iget-object v0, p0, Lio/dcloud/js/map/JsMapView$2;->val$pJsArgs:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lio/dcloud/js/map/JsMapView$2;->val$pJsArgs:Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {}, Lio/dcloud/js/map/JsMapManager;->getJsMapManager()Lio/dcloud/js/map/JsMapManager;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/js/map/JsMapView$2;->this$0:Lio/dcloud/js/map/JsMapView;

    iget-object v2, v2, Lio/dcloud/js/map/JsMapView;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-virtual {v1, v2, v0}, Lio/dcloud/js/map/JsMapManager;->findWebviewByUuid(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v1, p0, Lio/dcloud/js/map/JsMapView$2;->this$0:Lio/dcloud/js/map/JsMapView;

    invoke-static {v1}, Lio/dcloud/js/map/JsMapView;->access$000(Lio/dcloud/js/map/JsMapView;)Lio/dcloud/js/map/adapter/DHMapFrameItem;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->getUserLocation(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lio/dcloud/js/map/JsMapView$2;->this$0:Lio/dcloud/js/map/JsMapView;

    invoke-static {v0}, Lio/dcloud/js/map/JsMapView;->access$000(Lio/dcloud/js/map/JsMapView;)Lio/dcloud/js/map/adapter/DHMapFrameItem;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/js/map/JsMapView$2;->this$0:Lio/dcloud/js/map/JsMapView;

    iget-object v1, v1, Lio/dcloud/js/map/JsMapView;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-virtual {v0, v1, p1}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->getUserLocation(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
