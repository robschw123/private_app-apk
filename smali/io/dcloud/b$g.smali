.class Lio/dcloud/b$g;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/common/ui/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/b;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lio/dcloud/b$g;->a:Lio/dcloud/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 9
    iget-object v0, p0, Lio/dcloud/b$g;->a:Lio/dcloud/b;

    invoke-static {v0}, Lio/dcloud/b;->a(Lio/dcloud/b;)V

    .line 10
    iget-object v0, p0, Lio/dcloud/b$g;->a:Lio/dcloud/b;

    invoke-virtual {v0}, Lio/dcloud/b;->checkAndRequestStoragePermission()V

    .line 11
    iget-object v0, p0, Lio/dcloud/b$g;->a:Lio/dcloud/b;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/AppRuntime;->initUniappPlugin(Landroid/app/Application;)V

    .line 12
    invoke-static {}, Lio/dcloud/common/util/AppRuntime;->initUTS()V

    .line 13
    iget-object v0, p0, Lio/dcloud/b$g;->a:Lio/dcloud/b;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/net/http/CookieManager;->initCookieConfig(Landroid/content/Context;)V

    return-void
.end method

.method public a(Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;)V
    .locals 5

    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lio/dcloud/b$g;->a:Lio/dcloud/b;

    iget-object v2, v1, Lio/dcloud/b;->m:Ljava/lang/Runnable;

    iget v1, v1, Lio/dcloud/b;->j:I

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->disagreeMode:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$disagreeModeDTO;

    iget-boolean p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$disagreeModeDTO;->loadNativePlugins:Z

    if-eqz p1, :cond_0

    .line 17
    iget-object p1, p0, Lio/dcloud/b$g;->a:Lio/dcloud/b;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/AppRuntime;->initUniappPlugin(Landroid/app/Application;)V

    .line 19
    :cond_0
    iget-object p1, p0, Lio/dcloud/b$g;->a:Lio/dcloud/b;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/net/http/CookieManager;->initCookieConfig(Landroid/content/Context;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/dcloud/b$g;->a:Lio/dcloud/b;

    invoke-static {v0}, Lio/dcloud/b;->a(Lio/dcloud/b;)V

    const-string v0, "custom"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lio/dcloud/b$g;->a:Lio/dcloud/b;

    iget-object v1, v0, Lio/dcloud/b;->m:Ljava/lang/Runnable;

    iget v0, v0, Lio/dcloud/b;->j:I

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lio/dcloud/b$g;->a:Lio/dcloud/b;

    invoke-virtual {p1}, Lio/dcloud/b;->checkAndRequestStoragePermission()V

    .line 7
    :goto_0
    iget-object p1, p0, Lio/dcloud/b$g;->a:Lio/dcloud/b;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/net/http/CookieManager;->initCookieConfig(Landroid/content/Context;)V

    .line 8
    invoke-static {}, Lio/dcloud/common/util/AppRuntime;->initUTS()V

    return-void
.end method

.method public b(Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->disagreeMode:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$disagreeModeDTO;

    iget-boolean v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$disagreeModeDTO;->support:Z

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lio/dcloud/b$g;->a:Lio/dcloud/b;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lio/dcloud/b$g;->a:Lio/dcloud/b;

    iget-object v2, v1, Lio/dcloud/b;->m:Ljava/lang/Runnable;

    iget v1, v1, Lio/dcloud/b;->j:I

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->disagreeMode:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$disagreeModeDTO;

    iget-boolean p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$disagreeModeDTO;->loadNativePlugins:Z

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lio/dcloud/b$g;->a:Lio/dcloud/b;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/AppRuntime;->initUniappPlugin(Landroid/app/Application;)V

    .line 12
    :cond_1
    iget-object p1, p0, Lio/dcloud/b$g;->a:Lio/dcloud/b;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/net/http/CookieManager;->initCookieConfig(Landroid/content/Context;)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object p1, p0, Lio/dcloud/b$g;->a:Lio/dcloud/b;

    invoke-virtual {p1}, Lio/dcloud/b;->setSecondPrivacyAlert()V

    :goto_0
    return-void
.end method
