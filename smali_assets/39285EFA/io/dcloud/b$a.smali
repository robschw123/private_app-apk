.class Lio/dcloud/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/b;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lio/dcloud/b;


# direct methods
.method constructor <init>(Lio/dcloud/b;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/b$a;->b:Lio/dcloud/b;

    iput-object p2, p0, Lio/dcloud/b$a;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/dcloud/b$a;->b:Lio/dcloud/b;

    iget-object v0, v0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-static {v0}, Lio/dcloud/common/adapter/util/DeviceInfo;->initPath(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/b$a;->b:Lio/dcloud/b;

    iget-object v0, v0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-static {v0}, Lio/dcloud/common/util/ImageLoaderUtil;->initImageLoader(Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/b$a;->b:Lio/dcloud/b;

    iget-object v0, v0, Lio/src/dcloud/adapter/DCloudBaseActivity;->that:Landroid/app/Activity;

    invoke-static {v0}, Lio/dcloud/common/util/ImageLoaderUtil;->initImageLoaderL(Landroid/content/Context;)V

    .line 5
    iget-object v0, p0, Lio/dcloud/b$a;->b:Lio/dcloud/b;

    const/4 v1, 0x0

    const-string v2, "ba_pull"

    invoke-static {v0, v1, v2, v1}, Lio/dcloud/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lio/dcloud/b$a;->b:Lio/dcloud/b;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/b;->a(Lio/dcloud/b;Landroid/content/Intent;)V

    .line 7
    iget-object v0, p0, Lio/dcloud/b$a;->b:Lio/dcloud/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Main_Path_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/b$a;->b:Lio/dcloud/b;

    iget-object v2, v2, Lio/dcloud/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/dcloud/b;->d:Ljava/lang/String;

    const-string v0, "Main_App"

    .line 8
    invoke-static {v0}, Lio/dcloud/feature/internal/splash/a;->a(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lio/dcloud/b$a;->b:Lio/dcloud/b;

    iget-object v0, v0, Lio/dcloud/b;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate appid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/b$a;->b:Lio/dcloud/b;

    iget-object v2, v2, Lio/dcloud/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lio/dcloud/b$a;->b:Lio/dcloud/b;

    new-instance v1, Lio/dcloud/b$a$a;

    invoke-direct {v1, p0}, Lio/dcloud/b$a$a;-><init>(Lio/dcloud/b$a;)V

    invoke-static {v0, v1}, Lio/dcloud/b;->a(Lio/dcloud/b;Ljava/lang/Runnable;)V

    return-void
.end method
