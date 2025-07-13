.class Lio/dcloud/js/map/JsMapPluginImpl$1;
.super Ljava/lang/Object;
.source "JsMapPluginImpl.java"

# interfaces
.implements Lio/dcloud/common/adapter/util/MessageHandler$IMessages;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/map/JsMapPluginImpl;->execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/js/map/JsMapPluginImpl;

.field final synthetic val$_arr:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lio/dcloud/js/map/JsMapPluginImpl;Lorg/json/JSONArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$_arr"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lio/dcloud/js/map/JsMapPluginImpl$1;->this$0:Lio/dcloud/js/map/JsMapPluginImpl;

    iput-object p2, p0, Lio/dcloud/js/map/JsMapPluginImpl$1;->val$_arr:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pArgs"
        }
    .end annotation

    .line 71
    iget-object p1, p0, Lio/dcloud/js/map/JsMapPluginImpl$1;->this$0:Lio/dcloud/js/map/JsMapPluginImpl;

    iget-object p1, p1, Lio/dcloud/js/map/JsMapPluginImpl;->mMapManager:Lio/dcloud/js/map/JsMapManager;

    iget-object v0, p0, Lio/dcloud/js/map/JsMapPluginImpl$1;->val$_arr:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/dcloud/js/map/JsMapManager;->getJsObject(Ljava/lang/String;)Lio/dcloud/js/map/JsMapObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 73
    iget-object v0, p0, Lio/dcloud/js/map/JsMapPluginImpl$1;->val$_arr:Lorg/json/JSONArray;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lio/dcloud/common/util/JSONUtil;->getJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v0

    .line 74
    invoke-static {v0, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2}, Lio/dcloud/common/util/JSONUtil;->getJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lio/dcloud/js/map/JsMapObject;->updateObject(Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_0
    return-void
.end method
