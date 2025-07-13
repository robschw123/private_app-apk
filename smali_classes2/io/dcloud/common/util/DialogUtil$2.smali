.class Lio/dcloud/common/util/DialogUtil$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/DialogUtil;->showLoadAPPDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$apkPath:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/DialogUtil$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lio/dcloud/common/util/DialogUtil$2;->val$apkPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/dcloud/common/util/DialogUtil$2;->val$context:Landroid/content/Context;

    iget-object p2, p0, Lio/dcloud/common/util/DialogUtil$2;->val$apkPath:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-static {p1, p2}, Lio/dcloud/common/util/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    .line 2
    iget-object p1, p0, Lio/dcloud/common/util/DialogUtil$2;->val$context:Landroid/content/Context;

    iget-object p2, p0, Lio/dcloud/common/util/DialogUtil$2;->val$apkPath:Ljava/lang/String;

    const-string v0, "application/vnd.android.package-archive"

    invoke-static {p1, p2, v0}, Lio/dcloud/common/util/LoadAppUtils;->getDataAndTypeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lio/dcloud/common/util/DialogUtil$2;->val$context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
