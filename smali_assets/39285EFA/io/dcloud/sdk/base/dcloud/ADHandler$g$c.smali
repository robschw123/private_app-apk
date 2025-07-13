.class Lio/dcloud/sdk/base/dcloud/ADHandler$g$c;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/sdk/base/dcloud/k/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/ADHandler$g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lio/dcloud/sdk/base/dcloud/ADHandler$g;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/base/dcloud/ADHandler$g;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g$c;->e:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    iput-object p2, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g$c;->a:Landroid/content/Context;

    iput-object p3, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g$c;->b:Ljava/lang/String;

    iput-object p4, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g$c;->c:Ljava/lang/String;

    iput-object p5, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g$c;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/dcloud/sdk/base/dcloud/k/a;)V
    .locals 6

    .line 1
    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g$c;->a:Landroid/content/Context;

    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g$c;->b:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g$c;->c:Ljava/lang/String;

    iget-object v4, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g$c;->e:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    iget-object v5, v4, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->h:Ljava/lang/String;

    const/16 v0, 0x20

    invoke-static/range {v0 .. v5}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$g;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lio/dcloud/sdk/base/dcloud/k/a;)V
    .locals 6

    .line 1
    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g$c;->a:Landroid/content/Context;

    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g$c;->b:Ljava/lang/String;

    iget-object v3, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g$c;->c:Ljava/lang/String;

    iget-object v4, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g$c;->e:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    iget-object v5, v4, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->h:Ljava/lang/String;

    const/16 v0, 0x1e

    invoke-static/range {v0 .. v5}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$g;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g$c;->a:Landroid/content/Context;

    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g$c;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/dcloud/h/a/e/b;->f(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g$c;->a:Landroid/content/Context;

    new-instance v2, Lio/dcloud/sdk/base/dcloud/ADHandler$InstallReceiver;

    iget-object v3, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g$c;->e:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v3, p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$InstallReceiver;-><init>(Lio/dcloud/sdk/base/dcloud/ADHandler$g;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 12
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/high16 v0, 0x10000000

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const-string v2, "application/vnd.android.package-archive"

    if-lt v0, v1, :cond_1

    .line 17
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g$c;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g$c;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".dc.fileprovider"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g$c;->d:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    .line 18
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 19
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 21
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g$c;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    :goto_0
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g$c;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
