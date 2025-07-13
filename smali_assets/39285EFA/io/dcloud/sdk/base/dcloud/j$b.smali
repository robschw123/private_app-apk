.class Lio/dcloud/sdk/base/dcloud/j$b;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/base/dcloud/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/base/dcloud/j;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/base/dcloud/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/j$b;->a:Lio/dcloud/sdk/base/dcloud/j;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "shutao"

    const-string v1, "imageDownloadReceiver----shou"

    .line 1
    invoke-static {v0, v1}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/j$b;->a:Lio/dcloud/sdk/base/dcloud/j;

    iget-boolean v1, v1, Lio/dcloud/sdk/base/dcloud/j;->f:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "src"

    .line 5
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imageDownloadReceiver--src="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lio/dcloud/sdk/base/dcloud/j$b;->a:Lio/dcloud/sdk/base/dcloud/j;

    iget-object v3, v3, Lio/dcloud/sdk/base/dcloud/j;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    invoke-virtual {v3}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->c()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lio/dcloud/sdk/base/dcloud/j$b;->a:Lio/dcloud/sdk/base/dcloud/j;

    iget-object v3, v3, Lio/dcloud/sdk/base/dcloud/j;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    invoke-virtual {v3}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->b()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    const-string v2, "downloadImage"

    .line 8
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "imageDownloadReceiver--\u4e0b\u8f7d\u6210\u529f="

    .line 10
    invoke-static {v0, p2}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lio/dcloud/sdk/base/dcloud/j$b;->a:Lio/dcloud/sdk/base/dcloud/j;

    iget-object p2, p2, Lio/dcloud/sdk/base/dcloud/j;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    iget-object v0, p2, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->h:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$g;)Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    .line 12
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/j$b;->a:Lio/dcloud/sdk/base/dcloud/j;

    iget-object p1, p1, Lio/dcloud/sdk/base/dcloud/j;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/j$b;->a:Lio/dcloud/sdk/base/dcloud/j;

    invoke-static {p1}, Lio/dcloud/sdk/base/dcloud/j;->a(Lio/dcloud/sdk/base/dcloud/j;)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/j$b;->a:Lio/dcloud/sdk/base/dcloud/j;

    invoke-static {p1}, Lio/dcloud/sdk/base/dcloud/j;->b(Lio/dcloud/sdk/base/dcloud/j;)V

    goto :goto_0

    .line 18
    :cond_2
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/j$b;->a:Lio/dcloud/sdk/base/dcloud/j;

    invoke-static {p1}, Lio/dcloud/sdk/base/dcloud/j;->b(Lio/dcloud/sdk/base/dcloud/j;)V

    :cond_3
    :goto_0
    return-void
.end method
