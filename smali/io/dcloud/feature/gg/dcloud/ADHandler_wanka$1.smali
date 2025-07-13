.class Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->checkRunLoad(Landroid/content/Context;Lorg/json/JSONObject;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$_sec:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$srcJson:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;->val$srcJson:Lorg/json/JSONObject;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;->val$_sec:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;->val$srcJson:Lorg/json/JSONObject;

    const-string v1, "bundle"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->access$000(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;->val$srcJson:Lorg/json/JSONObject;

    const-string v1, "report"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "actvtrackers"

    .line 4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;->val$srcJson:Lorg/json/JSONObject;

    invoke-static {v0, v2, v1}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->access$100(Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "no actvtrackers"

    .line 8
    invoke-static {v0}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    iget v0, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;->val$_sec:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_2

    .line 11
    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka$1;->val$srcJson:Lorg/json/JSONObject;

    invoke-static {v1, v2, v0}, Lio/dcloud/feature/gg/dcloud/ADHandler_wanka;->access$200(Landroid/content/Context;Lorg/json/JSONObject;I)V

    :cond_2
    :goto_0
    return-void
.end method
