.class Lio/dcloud/feature/gg/dcloud/ADHandler$AdData$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;->listenADReceive(Landroid/content/Context;Lio/dcloud/feature/gg/dcloud/IADReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

.field final synthetic val$listener:Lio/dcloud/feature/gg/dcloud/IADReceiver;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;Lio/dcloud/feature/gg/dcloud/IADReceiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData$1;->this$0:Lio/dcloud/feature/gg/dcloud/ADHandler$AdData;

    iput-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData$1;->val$listener:Lio/dcloud/feature/gg/dcloud/IADReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v0, "ADReceive"

    :try_start_0
    const-string v1, "begin"

    const-wide/16 v2, 0x0

    .line 1
    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v1, "end"

    .line 2
    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    sub-long/2addr v1, v4

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "useTime="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0xbb8

    cmp-long p2, v1, v3

    if-gtz p2, :cond_0

    .line 8
    iget-object p2, p0, Lio/dcloud/feature/gg/dcloud/ADHandler$AdData$1;->val$listener:Lio/dcloud/feature/gg/dcloud/IADReceiver;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lio/dcloud/feature/gg/dcloud/IADReceiver;->onReceiver(Lorg/json/JSONObject;)V

    :cond_0
    const-string p2, "unregisterReceiver"

    .line 10
    invoke-static {v0, p2}, Lio/dcloud/feature/gg/dcloud/ADHandler;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
