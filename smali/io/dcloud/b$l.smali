.class Lio/dcloud/b$l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/b;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/dcloud/b;


# direct methods
.method constructor <init>(Lio/dcloud/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/b$l;->b:Lio/dcloud/b;

    iput-object p2, p0, Lio/dcloud/b$l;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lio/dcloud/b$l;->b:Lio/dcloud/b;

    iget-object p2, p0, Lio/dcloud/b$l;->a:Ljava/lang/String;

    invoke-static {p2}, Lio/dcloud/common/adapter/util/PermissionUtil;->convert2SystemPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "package"

    .line 4
    :try_start_1
    iget-object v0, p0, Lio/dcloud/b$l;->b:Lio/dcloud/b;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6
    iget-object p2, p0, Lio/dcloud/b$l;->b:Lio/dcloud/b;

    invoke-static {p2}, Lio/dcloud/b;->d(Lio/dcloud/b;)I

    move-result p2

    .line 7
    iget-object v0, p0, Lio/dcloud/b$l;->a:Ljava/lang/String;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object p2, p0, Lio/dcloud/b$l;->b:Lio/dcloud/b;

    invoke-static {p2}, Lio/dcloud/b;->e(Lio/dcloud/b;)I

    move-result p2

    .line 10
    :cond_0
    iget-object v0, p0, Lio/dcloud/b$l;->b:Lio/dcloud/b;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 12
    :catch_0
    iget-object p1, p0, Lio/dcloud/b$l;->b:Lio/dcloud/b;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 13
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 16
    :cond_1
    iget-object p1, p0, Lio/dcloud/b$l;->b:Lio/dcloud/b;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    iget-object v0, p0, Lio/dcloud/b$l;->a:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lio/dcloud/b;->a(Lio/dcloud/b;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method
