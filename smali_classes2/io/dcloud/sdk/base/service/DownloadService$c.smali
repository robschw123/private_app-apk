.class Lio/dcloud/sdk/base/service/DownloadService$c;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/base/service/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Lio/dcloud/sdk/base/entry/AdData;

.field private b:Landroid/app/Application;

.field private c:J

.field final synthetic d:Lio/dcloud/sdk/base/service/DownloadService;


# direct methods
.method public constructor <init>(Lio/dcloud/sdk/base/service/DownloadService;Lio/dcloud/sdk/base/entry/AdData;Landroid/app/Application;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/service/DownloadService$c;->d:Lio/dcloud/sdk/base/service/DownloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p2, p0, Lio/dcloud/sdk/base/service/DownloadService$c;->a:Lio/dcloud/sdk/base/entry/AdData;

    .line 3
    iput-object p3, p0, Lio/dcloud/sdk/base/service/DownloadService$c;->b:Landroid/app/Application;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lio/dcloud/sdk/base/service/DownloadService$c;->c:J

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.PACKAGE_ADDED"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lio/dcloud/sdk/base/service/DownloadService$c;->c:J

    sub-long/2addr p1, v0

    const-wide/32 v0, 0xea60

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 4
    iget-object p1, p0, Lio/dcloud/sdk/base/service/DownloadService$c;->d:Lio/dcloud/sdk/base/service/DownloadService;

    invoke-virtual {p1}, Landroidx/core/app/JobIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/sdk/base/service/DownloadService$c;->a:Lio/dcloud/sdk/base/entry/AdData;

    const/16 v0, 0x1f

    invoke-static {p1, p2, v0}, Lio/dcloud/sdk/base/service/DownloadService;->a(Landroid/content/Context;Lio/dcloud/sdk/base/entry/AdData;I)V

    .line 6
    :cond_0
    iget-object p1, p0, Lio/dcloud/sdk/base/service/DownloadService$c;->b:Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method
