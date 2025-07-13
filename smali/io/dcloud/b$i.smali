.class Lio/dcloud/b$i;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/common/ui/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/b;->setSecondPrivacyAlert()V
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
    iput-object p1, p0, Lio/dcloud/b$i;->a:Lio/dcloud/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 4
    iget-object v0, p0, Lio/dcloud/b$i;->a:Lio/dcloud/b;

    invoke-static {v0}, Lio/dcloud/b;->a(Lio/dcloud/b;)V

    .line 5
    iget-object v0, p0, Lio/dcloud/b$i;->a:Lio/dcloud/b;

    invoke-virtual {v0}, Lio/dcloud/b;->checkAndRequestStoragePermission()V

    .line 6
    iget-object v0, p0, Lio/dcloud/b$i;->a:Lio/dcloud/b;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/AppRuntime;->initUniappPlugin(Landroid/app/Application;)V

    .line 7
    invoke-static {}, Lio/dcloud/common/util/AppRuntime;->initUTS()V

    .line 8
    iget-object v0, p0, Lio/dcloud/b$i;->a:Lio/dcloud/b;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/net/http/CookieManager;->initCookieConfig(Landroid/content/Context;)V

    return-void
.end method

.method public a(Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;)V
    .locals 5

    .line 9
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lio/dcloud/b$i;->a:Lio/dcloud/b;

    iget-object v2, v1, Lio/dcloud/b;->m:Ljava/lang/Runnable;

    iget v1, v1, Lio/dcloud/b;->j:I

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->disagreeMode:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$disagreeModeDTO;

    iget-boolean p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$disagreeModeDTO;->loadNativePlugins:Z

    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lio/dcloud/b$i;->a:Lio/dcloud/b;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/AppRuntime;->initUniappPlugin(Landroid/app/Application;)V

    .line 14
    :cond_0
    iget-object p1, p0, Lio/dcloud/b$i;->a:Lio/dcloud/b;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/net/http/CookieManager;->initCookieConfig(Landroid/content/Context;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lio/dcloud/b$i;->a:Lio/dcloud/b;

    invoke-static {p1}, Lio/dcloud/b;->a(Lio/dcloud/b;)V

    .line 2
    invoke-static {}, Lio/dcloud/common/util/AppRuntime;->initUTS()V

    .line 3
    iget-object p1, p0, Lio/dcloud/b$i;->a:Lio/dcloud/b;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/net/http/CookieManager;->initCookieConfig(Landroid/content/Context;)V

    return-void
.end method

.method public b(Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->disagreeMode:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$disagreeModeDTO;

    iget-boolean v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$disagreeModeDTO;->support:Z

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/dcloud/b$i;->a:Lio/dcloud/b;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lio/dcloud/b$i;->a:Lio/dcloud/b;

    iget-object v2, v1, Lio/dcloud/b;->m:Ljava/lang/Runnable;

    iget v1, v1, Lio/dcloud/b;->j:I

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->disagreeMode:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$disagreeModeDTO;

    iget-boolean p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$disagreeModeDTO;->loadNativePlugins:Z

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lio/dcloud/b$i;->a:Lio/dcloud/b;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/AppRuntime;->initUniappPlugin(Landroid/app/Application;)V

    .line 11
    :cond_1
    iget-object p1, p0, Lio/dcloud/b$i;->a:Lio/dcloud/b;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/net/http/CookieManager;->initCookieConfig(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
