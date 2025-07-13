.class Lio/dcloud/sdk/base/dcloud/ADHandler$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/ADHandler;->c(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$g;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/base/dcloud/ADHandler$g;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$b;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    iput-object p2, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$b;->b:Landroid/content/Context;

    iput-object p3, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$b;->c:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$b;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$b;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2d

    const/16 v1, 0x2d

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

    const/16 v1, 0x28

    .line 5
    :goto_0
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$b;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->c()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "ua"

    .line 6
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    :cond_1
    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$b;->b:Landroid/content/Context;

    iget-object v3, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$b;->c:Ljava/lang/String;

    iget-object v4, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$b;->d:Ljava/lang/String;

    iget-object v5, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$b;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    invoke-static {}, Lio/dcloud/h/c/a;->d()Lio/dcloud/h/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/h/c/a;->b()Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$g;Ljava/lang/String;)V

    return-void
.end method
