.class Lio/dcloud/common/util/ADUtils$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/ADUtils;->checkADDownload(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adid:Ljava/lang/String;

.field final synthetic val$appid:Ljava/lang/String;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$dataType:Ljava/lang/String;

.field final synthetic val$downloadManager:Lcom/dcloud/android/downloader/callback/DCDownloadManager;

.field final synthetic val$expiresTime:J

.field final synthetic val$id:J

.field final synthetic val$info:Lcom/dcloud/android/downloader/domain/DownloadInfo;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$pname:Ljava/lang/String;

.field final synthetic val$tid:Ljava/lang/String;

.field final synthetic val$ua:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dcloud/android/downloader/domain/DownloadInfo;Landroid/app/Activity;JLjava/lang/String;Lcom/dcloud/android/downloader/callback/DCDownloadManager;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/ADUtils$4;->val$info:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    iput-object p2, p0, Lio/dcloud/common/util/ADUtils$4;->val$context:Landroid/app/Activity;

    iput-wide p3, p0, Lio/dcloud/common/util/ADUtils$4;->val$id:J

    iput-object p5, p0, Lio/dcloud/common/util/ADUtils$4;->val$dataType:Ljava/lang/String;

    iput-object p6, p0, Lio/dcloud/common/util/ADUtils$4;->val$downloadManager:Lcom/dcloud/android/downloader/callback/DCDownloadManager;

    iput-wide p7, p0, Lio/dcloud/common/util/ADUtils$4;->val$expiresTime:J

    iput-object p9, p0, Lio/dcloud/common/util/ADUtils$4;->val$appid:Ljava/lang/String;

    iput-object p10, p0, Lio/dcloud/common/util/ADUtils$4;->val$tid:Ljava/lang/String;

    iput-object p11, p0, Lio/dcloud/common/util/ADUtils$4;->val$adid:Ljava/lang/String;

    iput-object p12, p0, Lio/dcloud/common/util/ADUtils$4;->val$url:Ljava/lang/String;

    iput-object p13, p0, Lio/dcloud/common/util/ADUtils$4;->val$name:Ljava/lang/String;

    iput-object p14, p0, Lio/dcloud/common/util/ADUtils$4;->val$pname:Ljava/lang/String;

    iput-object p15, p0, Lio/dcloud/common/util/ADUtils$4;->val$ua:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$info:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getStatus()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-wide/16 v3, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 29
    :pswitch_0
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$info:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    if-eqz v1, :cond_7

    .line 30
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$context:Landroid/app/Activity;

    iget-wide v3, v0, Lio/dcloud/common/util/ADUtils$4;->val$id:J

    invoke-static {v1, v3, v4}, Lio/dcloud/common/util/ADUtils;->removeDownlaodData(Landroid/content/Context;J)Lorg/json/JSONObject;

    .line 31
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$info:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    invoke-virtual {v1}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 32
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$context:Landroid/app/Activity;

    invoke-static {v1, v8}, Lio/dcloud/common/adapter/util/DownloadUtil;->getAPKInstallIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 33
    iget-object v3, v0, Lio/dcloud/common/util/ADUtils$4;->val$context:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 34
    iget-object v3, v0, Lio/dcloud/common/util/ADUtils$4;->val$context:Landroid/app/Activity;

    iget-object v4, v0, Lio/dcloud/common/util/ADUtils$4;->val$pname:Ljava/lang/String;

    iget-object v5, v0, Lio/dcloud/common/util/ADUtils$4;->val$appid:Ljava/lang/String;

    iget-object v6, v0, Lio/dcloud/common/util/ADUtils$4;->val$tid:Ljava/lang/String;

    iget-object v7, v0, Lio/dcloud/common/util/ADUtils$4;->val$adid:Ljava/lang/String;

    iget-object v9, v0, Lio/dcloud/common/util/ADUtils$4;->val$ua:Ljava/lang/String;

    invoke-static/range {v3 .. v9}, Lio/dcloud/common/util/ADUtils;->saveLoadAppData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$downloadManager:Lcom/dcloud/android/downloader/callback/DCDownloadManager;

    iget-object v3, v0, Lio/dcloud/common/util/ADUtils$4;->val$info:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    invoke-interface {v1, v3}, Lcom/dcloud/android/downloader/callback/DCDownloadManager;->remove(Lcom/dcloud/android/downloader/domain/DownloadInfo;)V

    .line 36
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$context:Landroid/app/Activity;

    sget v3, Lio/dcloud/base/R$string;->dcloud_common_download_tips3:I

    invoke-static {v1, v3, v2}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;II)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dcloud/android/widget/toast/ToastCompat;->show()V

    goto/16 :goto_2

    .line 43
    :pswitch_1
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$info:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    if-eqz v1, :cond_7

    .line 44
    iget-wide v5, v0, Lio/dcloud/common/util/ADUtils$4;->val$expiresTime:J

    cmp-long v1, v5, v3

    if-lez v1, :cond_1

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v5, v3

    if-gez v1, :cond_1

    .line 47
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$context:Landroid/app/Activity;

    iget-wide v2, v0, Lio/dcloud/common/util/ADUtils$4;->val$id:J

    invoke-static {v1, v2, v3}, Lio/dcloud/common/util/ADUtils;->removeDownlaodData(Landroid/content/Context;J)Lorg/json/JSONObject;

    .line 48
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$downloadManager:Lcom/dcloud/android/downloader/callback/DCDownloadManager;

    iget-object v2, v0, Lio/dcloud/common/util/ADUtils$4;->val$info:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    invoke-interface {v1, v2}, Lcom/dcloud/android/downloader/callback/DCDownloadManager;->remove(Lcom/dcloud/android/downloader/domain/DownloadInfo;)V

    goto/16 :goto_2

    .line 52
    :cond_1
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$downloadManager:Lcom/dcloud/android/downloader/callback/DCDownloadManager;

    iget-object v3, v0, Lio/dcloud/common/util/ADUtils$4;->val$info:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    invoke-interface {v1, v3}, Lcom/dcloud/android/downloader/callback/DCDownloadManager;->resume(Lcom/dcloud/android/downloader/domain/DownloadInfo;)V

    .line 53
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$info:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    invoke-static {}, Lio/dcloud/common/util/ADUtils;->access$000()Lcom/dcloud/android/downloader/callback/DownloadListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/dcloud/android/downloader/domain/DownloadInfo;->setDownloadListener(Lcom/dcloud/android/downloader/callback/DownloadListener;)V

    .line 54
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$context:Landroid/app/Activity;

    sget v3, Lio/dcloud/base/R$string;->dcloud_common_download_tips2:I

    invoke-static {v1, v3, v2}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;II)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dcloud/android/widget/toast/ToastCompat;->show()V

    goto :goto_2

    .line 55
    :pswitch_2
    iget-object v5, v0, Lio/dcloud/common/util/ADUtils$4;->val$context:Landroid/app/Activity;

    iget-wide v6, v0, Lio/dcloud/common/util/ADUtils$4;->val$id:J

    invoke-static {v5, v6, v7}, Lio/dcloud/common/util/ADUtils;->removeDownlaodData(Landroid/content/Context;J)Lorg/json/JSONObject;

    .line 56
    iget-object v5, v0, Lio/dcloud/common/util/ADUtils$4;->val$dataType:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v0, Lio/dcloud/common/util/ADUtils$4;->val$dataType:Ljava/lang/String;

    const-string v6, "wanka"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 57
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$info:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    if-eqz v1, :cond_2

    .line 58
    iget-object v2, v0, Lio/dcloud/common/util/ADUtils$4;->val$downloadManager:Lcom/dcloud/android/downloader/callback/DCDownloadManager;

    invoke-interface {v2, v1}, Lcom/dcloud/android/downloader/callback/DCDownloadManager;->remove(Lcom/dcloud/android/downloader/domain/DownloadInfo;)V

    :cond_2
    return-void

    .line 61
    :cond_3
    iget-wide v5, v0, Lio/dcloud/common/util/ADUtils$4;->val$expiresTime:J

    cmp-long v7, v5, v3

    if-lez v7, :cond_4

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v7, v5, v3

    if-gez v7, :cond_4

    .line 64
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$info:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    if-eqz v1, :cond_7

    .line 65
    iget-object v2, v0, Lio/dcloud/common/util/ADUtils$4;->val$downloadManager:Lcom/dcloud/android/downloader/callback/DCDownloadManager;

    invoke-interface {v2, v1}, Lcom/dcloud/android/downloader/callback/DCDownloadManager;->remove(Lcom/dcloud/android/downloader/domain/DownloadInfo;)V

    goto :goto_2

    .line 70
    :cond_4
    iget-object v3, v0, Lio/dcloud/common/util/ADUtils$4;->val$info:Lcom/dcloud/android/downloader/domain/DownloadInfo;

    if-eqz v3, :cond_5

    .line 71
    iget-object v4, v0, Lio/dcloud/common/util/ADUtils$4;->val$downloadManager:Lcom/dcloud/android/downloader/callback/DCDownloadManager;

    invoke-interface {v4, v3}, Lcom/dcloud/android/downloader/callback/DCDownloadManager;->remove(Lcom/dcloud/android/downloader/domain/DownloadInfo;)V

    .line 73
    :cond_5
    iget-object v5, v0, Lio/dcloud/common/util/ADUtils$4;->val$context:Landroid/app/Activity;

    iget-object v6, v0, Lio/dcloud/common/util/ADUtils$4;->val$appid:Ljava/lang/String;

    iget-object v7, v0, Lio/dcloud/common/util/ADUtils$4;->val$tid:Ljava/lang/String;

    iget-object v8, v0, Lio/dcloud/common/util/ADUtils$4;->val$adid:Ljava/lang/String;

    iget-object v9, v0, Lio/dcloud/common/util/ADUtils$4;->val$url:Ljava/lang/String;

    iget-object v10, v0, Lio/dcloud/common/util/ADUtils$4;->val$name:Ljava/lang/String;

    iget-object v11, v0, Lio/dcloud/common/util/ADUtils$4;->val$pname:Ljava/lang/String;

    iget-wide v12, v0, Lio/dcloud/common/util/ADUtils$4;->val$expiresTime:J

    const/4 v14, 0x0

    const/4 v3, 0x6

    if-eq v1, v3, :cond_6

    const/4 v1, 0x1

    const/4 v15, 0x1

    goto :goto_1

    :cond_6
    const/4 v15, 0x0

    :goto_1
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$ua:Ljava/lang/String;

    move-object/from16 v16, v1

    invoke-static/range {v5 .. v16}, Lio/dcloud/common/util/ADUtils;->dwApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;)V

    .line 74
    iget-object v1, v0, Lio/dcloud/common/util/ADUtils$4;->val$context:Landroid/app/Activity;

    sget v3, Lio/dcloud/base/R$string;->dcloud_common_download_tips2:I

    invoke-static {v1, v3, v2}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;II)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dcloud/android/widget/toast/ToastCompat;->show()V

    :cond_7
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
