.class Lio/dcloud/b$j;
.super Lio/dcloud/common/adapter/util/PermissionUtil$Request;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/b;->a([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/b;


# direct methods
.method constructor <init>(Lio/dcloud/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/b$j;->a:Lio/dcloud/b;

    invoke-direct {p0}, Lio/dcloud/common/adapter/util/PermissionUtil$Request;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .locals 4

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "string"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/dcloud/b$j;->a:Lio/dcloud/b;

    invoke-static {v0}, Lio/dcloud/b;->b(Lio/dcloud/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/dcloud/b$j;->a:Lio/dcloud/b;

    invoke-static {v0}, Lio/dcloud/b;->b(Lio/dcloud/b;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ALWAYS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/dcloud/b$j;->a:Lio/dcloud/b;

    const-string v2, "dcloud_permission_read_phone_state_message"

    invoke-static {v0, v1, v2}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lio/dcloud/b$j;->a:Lio/dcloud/b;

    iget-object v1, v1, Lio/dcloud/b;->i:Landroidx/appcompat/app/AlertDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lio/dcloud/b$j;->a:Lio/dcloud/b;

    invoke-static {v1, p1, v0}, Lio/dcloud/b;->a(Lio/dcloud/b;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string v0, "STORAGE"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lio/dcloud/b$j;->a:Lio/dcloud/b;

    invoke-static {v0}, Lio/dcloud/b;->c(Lio/dcloud/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/dcloud/b$j;->a:Lio/dcloud/b;

    invoke-static {v0}, Lio/dcloud/b;->c(Lio/dcloud/b;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "once"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object p1, p0, Lio/dcloud/b$j;->a:Lio/dcloud/b;

    invoke-virtual {p1}, Lio/dcloud/b;->checkAndRequestPhoneState()V

    .line 10
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lio/dcloud/b$j;->a:Lio/dcloud/b;

    iget-object v1, v0, Lio/dcloud/b;->m:Ljava/lang/Runnable;

    iget v0, v0, Lio/dcloud/b;->j:I

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 13
    :cond_2
    iget-object v0, p0, Lio/dcloud/b$j;->a:Lio/dcloud/b;

    const-string v2, "dcloud_permission_write_external_storage_message"

    invoke-static {v0, v1, v2}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 14
    iget-object v1, p0, Lio/dcloud/b$j;->a:Lio/dcloud/b;

    iget-object v1, v1, Lio/dcloud/b;->i:Landroidx/appcompat/app/AlertDialog;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 15
    :cond_3
    invoke-static {p1}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2SystemPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    iget-object v1, p0, Lio/dcloud/b$j;->a:Lio/dcloud/b;

    invoke-static {v1, p1, v0}, Lio/dcloud/b;->a(Lio/dcloud/b;Ljava/lang/String;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onGranted(Ljava/lang/String;)V
    .locals 4

    const-string v0, "STORAGE"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/dcloud/b$j;->a:Lio/dcloud/b;

    iget-object p1, p1, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-static {p1}, Lio/dcloud/common/adapter/util/DeviceInfo;->initPath(Landroid/content/Context;)V

    .line 3
    iget-object p1, p0, Lio/dcloud/b$j;->a:Lio/dcloud/b;

    invoke-virtual {p1}, Lio/dcloud/b;->checkAndRequestPhoneState()V

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lio/dcloud/b$j;->a:Lio/dcloud/b;

    iget-object v1, v0, Lio/dcloud/b;->m:Ljava/lang/Runnable;

    iget v0, v0, Lio/dcloud/b;->j:I

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
