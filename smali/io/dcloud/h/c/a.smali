.class public Lio/dcloud/h/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/sdk/core/api/AOLLoader;


# static fields
.field private static a:Lio/dcloud/h/c/a;


# instance fields
.field private b:Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;

.field private c:Lio/dcloud/h/c/c/c/c;

.field private d:Landroid/content/Context;

.field private e:Lio/dcloud/h/c/c/d/a;

.field private f:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lio/dcloud/h/c/a;->f:Z

    .line 13
    new-instance v0, Lio/dcloud/h/c/c/d/a;

    invoke-direct {v0}, Lio/dcloud/h/c/c/d/a;-><init>()V

    iput-object v0, p0, Lio/dcloud/h/c/a;->e:Lio/dcloud/h/c/c/d/a;

    return-void
.end method

.method public static d()Lio/dcloud/h/c/a;
    .locals 3

    .line 1
    sget-object v0, Lio/dcloud/h/c/a;->a:Lio/dcloud/h/c/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lio/dcloud/h/c/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lio/dcloud/h/c/a;->a:Lio/dcloud/h/c/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lio/dcloud/h/c/a;

    invoke-direct {v1}, Lio/dcloud/h/c/a;-><init>()V

    sput-object v1, Lio/dcloud/h/c/a;->a:Lio/dcloud/h/c/a;

    .line 5
    new-instance v2, Lio/dcloud/h/c/c/b/b/c;

    invoke-direct {v2}, Lio/dcloud/h/c/c/b/b/c;-><init>()V

    iput-object v2, v1, Lio/dcloud/h/c/a;->c:Lio/dcloud/h/c/c/c/c;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lio/dcloud/h/c/a;->a:Lio/dcloud/h/c/a;

    return-object v0
.end method


# virtual methods
.method public a()Lio/dcloud/h/c/c/c/c;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/dcloud/h/c/a;->c:Lio/dcloud/h/c/c/c/c;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .line 4
    invoke-static {}, Lio/dcloud/h/c/c/b/a;->a()Lio/dcloud/h/c/c/b/a;

    move-result-object v0

    new-instance v1, Lio/dcloud/h/c/a$a;

    const-string v2, ""

    invoke-direct {v1, p0, v2}, Lio/dcloud/h/c/a$a;-><init>(Lio/dcloud/h/c/a;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lio/dcloud/h/c/c/b/a;->a(Landroid/content/Context;ILio/dcloud/h/c/c/b/a$a;)V

    return-void
.end method

.method public a(Lio/dcloud/h/c/c/c/c;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lio/dcloud/h/c/a;->c:Lio/dcloud/h/c/c/c/c;

    return-void
.end method

.method public a(Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/h/c/a;->b:Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;

    return-void
.end method

.method public b()Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/a;->b:Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lio/dcloud/h/c/a;->d:Landroid/content/Context;

    return-void
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/a;->d:Landroid/content/Context;

    return-object v0
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/a;->d:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/h/c/a;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "UNIAD_ENV_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lio/dcloud/h/c/a;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public getPersonalAd(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lio/dcloud/sdk/core/util/AdUtil;->getPersonalAd(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public setPersonalAd(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lio/dcloud/sdk/core/util/AdUtil;->setPersonalAd(Landroid/content/Context;Z)V

    .line 2
    invoke-static {}, Lio/dcloud/sdk/core/b/a;->b()Lio/dcloud/sdk/core/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/sdk/core/b/a;->a()Ljava/util/Map;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/sdk/core/adapter/IAdAdapter;

    invoke-interface {v1, p2}, Lio/dcloud/sdk/core/adapter/IAdAdapter;->setPersonalAd(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPrivacyConfig(Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;)V
    .locals 1

    .line 1
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->updateConfig(Lio/dcloud/sdk/core/DCloudAOLManager$PrivacyConfig;)V

    return-void
.end method
