.class public Lio/dcloud/common/ui/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/ui/b$b;
    }
.end annotation


# static fields
.field private static a:Lio/dcloud/common/ui/b;


# instance fields
.field private b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

.field private c:Z

.field public d:Z

.field private e:Lio/dcloud/common/ui/a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    invoke-direct {v0}, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;-><init>()V

    iput-object v0, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lio/dcloud/common/ui/b;->c:Z

    .line 28
    iput-boolean v0, p0, Lio/dcloud/common/ui/b;->d:Z

    return-void
.end method

.method static synthetic a(Lio/dcloud/common/ui/b;)Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    return-object p0
.end method

.method public static a()Lio/dcloud/common/ui/b;
    .locals 1

    .line 2
    sget-object v0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/b;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lio/dcloud/common/ui/b;

    invoke-direct {v0}, Lio/dcloud/common/ui/b;-><init>()V

    sput-object v0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/b;

    .line 5
    :cond_0
    sget-object v0, Lio/dcloud/common/ui/b;->a:Lio/dcloud/common/ui/b;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 352
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 354
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    .line 356
    new-array p1, p1, [B

    .line 358
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    .line 360
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 316
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 320
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 322
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 326
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 334
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object p0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception v0

    .line 335
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    .line 339
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 341
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 345
    :cond_1
    :goto_3
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_4
    if-eqz v1, :cond_2

    .line 346
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 348
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 351
    :cond_2
    :goto_5
    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6
.end method

.method public static c()Z
    .locals 1

    :try_start_0
    const-string v0, "io.dcloud.common.util.net.http.LocalServer2"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private e(Landroid/content/Context;)Z
    .locals 12

    const-string v0, "privacy_config_uni_sp_file"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "privacy_config_version_uni_current_key"

    const-string v3, "emptyPrivacyVersion"

    .line 2
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "privacy_config_choose_disagree_uni_current_key"

    .line 6
    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 8
    iget-object v6, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v6, v6, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->version:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "0"

    const-string v8, "template"

    const/4 v9, 0x1

    const-string v10, "scok"

    const-string v11, "pdr"

    if-nez v6, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, ""

    .line 15
    invoke-static {p1, v11, v10, v0}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->prompt:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-static {p1, v11, v10, v7}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_0
    return v1

    .line 26
    :cond_1
    iget-object v0, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->prompt:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 30
    iget-object v0, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->disagreeMode:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$disagreeModeDTO;

    iget-boolean v2, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$disagreeModeDTO;->support:Z

    if-nez v2, :cond_2

    iget-boolean v2, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$disagreeModeDTO;->visitorEntry:Z

    if-eqz v2, :cond_3

    .line 31
    :cond_2
    iget-boolean v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$disagreeModeDTO;->showAlways:Z

    if-nez v0, :cond_3

    if-ne v5, v9, :cond_3

    return v1

    .line 44
    :cond_3
    invoke-static {p1, v11, v10}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 48
    invoke-static {p1, v11, v10, v7}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_4
    return v1
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 3

    .line 425
    iget-object v0, p0, Lio/dcloud/common/ui/b;->e:Lio/dcloud/common/ui/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/dcloud/common/ui/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lio/dcloud/common/ui/b;->e:Lio/dcloud/common/ui/a;

    invoke-virtual {v0}, Lio/dcloud/common/ui/a;->b()Lio/dcloud/common/ui/b$b;

    move-result-object v0

    .line 427
    iget-object v1, p0, Lio/dcloud/common/ui/b;->e:Lio/dcloud/common/ui/a;

    invoke-virtual {v1}, Lio/dcloud/common/ui/a;->c()Z

    move-result v1

    .line 429
    iget-object v2, p0, Lio/dcloud/common/ui/b;->e:Lio/dcloud/common/ui/a;

    invoke-virtual {v2}, Lio/dcloud/common/ui/a;->a()V

    const/4 v2, 0x0

    .line 430
    iput-object v2, p0, Lio/dcloud/common/ui/b;->e:Lio/dcloud/common/ui/a;

    const/4 v2, 0x1

    .line 433
    invoke-virtual {p0, p1, v0, v1, v2}, Lio/dcloud/common/ui/b;->a(Landroid/app/Activity;Lio/dcloud/common/ui/b$b;ZZ)V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;Lio/dcloud/common/ui/b$b;ZZ)V
    .locals 1

    .line 361
    invoke-direct {p0, p1}, Lio/dcloud/common/ui/b;->e(Landroid/content/Context;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 363
    iget-object p1, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->prompt:Ljava/lang/String;

    invoke-interface {p2, p1}, Lio/dcloud/common/ui/b$b;->a(Ljava/lang/String;)V

    return-void

    .line 370
    :cond_0
    new-instance p4, Lio/dcloud/common/ui/b$a;

    invoke-direct {p4, p0, p1, p2}, Lio/dcloud/common/ui/b$a;-><init>(Lio/dcloud/common/ui/b;Landroid/app/Activity;Lio/dcloud/common/ui/b$b;)V

    .line 400
    iget-object v0, p0, Lio/dcloud/common/ui/b;->e:Lio/dcloud/common/ui/a;

    if-eqz v0, :cond_1

    .line 401
    invoke-virtual {v0}, Lio/dcloud/common/ui/a;->a()V

    const/4 v0, 0x0

    .line 402
    iput-object v0, p0, Lio/dcloud/common/ui/b;->e:Lio/dcloud/common/ui/a;

    :cond_1
    if-eqz p3, :cond_2

    .line 409
    new-instance p3, Lio/dcloud/common/ui/a;

    invoke-direct {p3, p1}, Lio/dcloud/common/ui/a;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lio/dcloud/common/ui/b;->e:Lio/dcloud/common/ui/a;

    .line 410
    invoke-virtual {p3, p2}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/b$b;)V

    .line 411
    iget-object p1, p0, Lio/dcloud/common/ui/b;->e:Lio/dcloud/common/ui/a;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lio/dcloud/common/ui/a;->a(Z)V

    .line 412
    iget-object p1, p0, Lio/dcloud/common/ui/b;->e:Lio/dcloud/common/ui/a;

    iget-object p3, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    invoke-virtual {p1, p3, p2, p4}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;ZLio/dcloud/common/ui/a$d;)V

    .line 413
    iget-object p1, p0, Lio/dcloud/common/ui/b;->e:Lio/dcloud/common/ui/a;

    sget p2, Lio/dcloud/base/R$layout;->dcloud_custom_privacy_second_dialog_layout:I

    invoke-virtual {p1, p2}, Lio/dcloud/common/ui/a;->a(I)V

    .line 414
    iget-object p1, p0, Lio/dcloud/common/ui/b;->e:Lio/dcloud/common/ui/a;

    invoke-virtual {p1}, Lio/dcloud/common/ui/a;->e()V

    goto :goto_0

    .line 418
    :cond_2
    new-instance p3, Lio/dcloud/common/ui/a;

    invoke-direct {p3, p1}, Lio/dcloud/common/ui/a;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lio/dcloud/common/ui/b;->e:Lio/dcloud/common/ui/a;

    .line 419
    invoke-virtual {p3, p2}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/b$b;)V

    .line 420
    iget-object p1, p0, Lio/dcloud/common/ui/b;->e:Lio/dcloud/common/ui/a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lio/dcloud/common/ui/a;->a(Z)V

    .line 422
    iget-object p1, p0, Lio/dcloud/common/ui/b;->e:Lio/dcloud/common/ui/a;

    sget p3, Lio/dcloud/base/R$layout;->dcloud_custom_privacy_dialog_layout:I

    invoke-virtual {p1, p3}, Lio/dcloud/common/ui/a;->a(I)V

    .line 423
    iget-object p1, p0, Lio/dcloud/common/ui/b;->e:Lio/dcloud/common/ui/a;

    iget-object p3, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    invoke-virtual {p1, p3, p2, p4}, Lio/dcloud/common/ui/a;->a(Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;ZLio/dcloud/common/ui/a$d;)V

    .line 424
    iget-object p1, p0, Lio/dcloud/common/ui/b;->e:Lio/dcloud/common/ui/a;

    invoke-virtual {p1}, Lio/dcloud/common/ui/a;->e()V

    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Lio/dcloud/common/ui/b;->a(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 8

    .line 7
    iget-boolean v0, p0, Lio/dcloud/common/ui/b;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, ""

    .line 12
    invoke-static {p1, v0}, Lio/dcloud/common/util/AppRuntime;->isAppResourcesInAssetsPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lio/dcloud/common/ui/b;->d:Z

    .line 14
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/www/androidPrivacy.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez p2, :cond_7

    .line 25
    iget-boolean p2, p0, Lio/dcloud/common/ui/b;->d:Z

    const-string v4, "privacy json format error"

    const-string v5, "uniapp"

    const-string v6, "apps/"

    if-nez p2, :cond_4

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 28
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 32
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/dcloud/common/ui/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 35
    :try_start_0
    const-class v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    invoke-static {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    invoke-static {p2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    goto :goto_0

    .line 38
    :catch_0
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v3

    .line 41
    :goto_0
    instance-of v1, v3, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    if-eqz v1, :cond_1

    .line 42
    check-cast v3, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iput-object v3, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    goto/16 :goto_3

    .line 44
    :cond_1
    new-instance v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    invoke-direct {v1}, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;-><init>()V

    iput-object v1, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    goto/16 :goto_3

    .line 51
    :cond_2
    new-instance p2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_6

    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/dcloud/common/ui/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 57
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 60
    :try_start_1
    const-class v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    invoke-static {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 61
    invoke-static {p2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v1

    goto :goto_1

    :catch_1
    move-object p2, v3

    .line 65
    :goto_1
    instance-of v1, v3, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    if-eqz v1, :cond_3

    .line 66
    check-cast v3, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iput-object v3, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    goto :goto_3

    .line 68
    :cond_3
    new-instance v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    invoke-direct {v1}, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;-><init>()V

    iput-object v1, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    goto :goto_3

    .line 78
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/dcloud/common/ui/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 79
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 82
    :try_start_2
    const-class v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    invoke-static {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 83
    invoke-static {p2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v1

    goto :goto_2

    .line 85
    :catch_2
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v3

    .line 88
    :goto_2
    instance-of v1, v3, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    if-eqz v1, :cond_5

    .line 89
    check-cast v3, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iput-object v3, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    goto :goto_3

    .line 91
    :cond_5
    new-instance v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    invoke-direct {v1}, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;-><init>()V

    iput-object v1, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    goto :goto_3

    :cond_6
    move-object p2, v3

    :cond_7
    :goto_3
    if-nez p2, :cond_8

    .line 104
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 107
    :cond_8
    iget-object v1, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    if-nez v1, :cond_9

    .line 108
    new-instance v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    invoke-direct {v1}, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;-><init>()V

    iput-object v1, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    .line 110
    :cond_9
    iget-object v1, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v2, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    if-nez v2, :cond_a

    .line 111
    new-instance v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    invoke-direct {v2}, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;-><init>()V

    iput-object v2, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    .line 113
    :cond_a
    iget-object v1, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v2, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    if-nez v2, :cond_b

    .line 114
    new-instance v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    invoke-direct {v2}, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;-><init>()V

    iput-object v2, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    .line 116
    :cond_b
    iget-object v1, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v2, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->title:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$TitleDTO;

    if-nez v2, :cond_c

    .line 117
    new-instance v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$TitleDTO;

    invoke-direct {v2}, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$TitleDTO;-><init>()V

    iput-object v2, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->title:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$TitleDTO;

    .line 119
    :cond_c
    iget-object v1, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v2, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonRefuse:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;

    if-nez v2, :cond_d

    .line 120
    new-instance v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;

    invoke-direct {v2}, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;-><init>()V

    iput-object v2, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonRefuse:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;

    .line 122
    :cond_d
    iget-object v1, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object v2, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonAccept:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;

    if-nez v2, :cond_e

    .line 123
    new-instance v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;

    invoke-direct {v2}, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;-><init>()V

    iput-object v2, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonAccept:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;

    :cond_e
    const-string v1, "titleLocales"

    .line 128
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 130
    iget-object v3, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v4, v3, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->title:Ljava/lang/String;

    invoke-static {v2, v4}, Lio/dcloud/common/util/language/LanguageUtil;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->title:Ljava/lang/String;

    :cond_f
    const-string v2, "messageLocales"

    .line 133
    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 135
    iget-object v4, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v5, v4, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->message:Ljava/lang/String;

    invoke-static {v3, v5}, Lio/dcloud/common/util/language/LanguageUtil;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->message:Ljava/lang/String;

    :cond_10
    const-string v3, "buttonAcceptLocales"

    .line 138
    invoke-virtual {p2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 140
    iget-object v5, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v6, v5, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->buttonAccept:Ljava/lang/String;

    invoke-static {v4, v6}, Lio/dcloud/common/util/language/LanguageUtil;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->buttonAccept:Ljava/lang/String;

    :cond_11
    const-string v4, "buttonRefuseLocales"

    .line 143
    invoke-virtual {p2, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 145
    iget-object v6, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v7, v6, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->buttonRefuse:Ljava/lang/String;

    invoke-static {v5, v7}, Lio/dcloud/common/util/language/LanguageUtil;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->buttonRefuse:Ljava/lang/String;

    :cond_12
    const-string v5, "second"

    .line 148
    invoke-virtual {p2, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_16

    .line 151
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 153
    iget-object v5, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v5, v5, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object v6, v5, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->title:Ljava/lang/String;

    invoke-static {v1, v6}, Lio/dcloud/common/util/language/LanguageUtil;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->title:Ljava/lang/String;

    .line 156
    :cond_13
    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 158
    iget-object v2, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v2, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object v5, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->message:Ljava/lang/String;

    invoke-static {v1, v5}, Lio/dcloud/common/util/language/LanguageUtil;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->message:Ljava/lang/String;

    .line 161
    :cond_14
    invoke-virtual {p2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 163
    iget-object v2, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v2, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object v3, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->buttonAccept:Ljava/lang/String;

    invoke-static {v1, v3}, Lio/dcloud/common/util/language/LanguageUtil;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->buttonAccept:Ljava/lang/String;

    .line 166
    :cond_15
    invoke-virtual {p2, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_16

    .line 168
    iget-object v1, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object v2, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->buttonRefuse:Ljava/lang/String;

    invoke-static {p2, v2}, Lio/dcloud/common/util/language/LanguageUtil;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->buttonRefuse:Ljava/lang/String;

    .line 175
    :cond_16
    iget-object p2, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p2, p2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->version:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 177
    iget-object p2, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    const-string v1, "emptyPrivacyVersion"

    iput-object v1, p2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->version:Ljava/lang/String;

    .line 180
    :cond_17
    iget-object p2, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p2, p2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->prompt:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_19

    const-string p2, "DCLOUD_PRIVACY_PROMPT"

    .line 181
    invoke-static {p2}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_18

    move-object p2, v0

    .line 187
    :cond_18
    iget-object v1, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iput-object p2, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->prompt:Ljava/lang/String;

    .line 191
    :cond_19
    iget-object p2, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p2, p2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->title:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v1, "string"

    if-eqz p2, :cond_1b

    const-string p2, "dcloud_privacy_prompt_title"

    .line 192
    invoke-static {p1, v1, p2}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_1b

    .line 194
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1a

    move-object p2, v0

    .line 198
    :cond_1a
    iget-object v2, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iput-object p2, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->title:Ljava/lang/String;

    .line 202
    :cond_1b
    iget-object p2, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p2, p2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->message:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1d

    const-string p2, "dcloud_privacy_prompt_message"

    .line 203
    invoke-static {p1, v1, p2}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_1d

    .line 205
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1c

    move-object p2, v0

    .line 209
    :cond_1c
    iget-object v2, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iput-object p2, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->message:Ljava/lang/String;

    .line 214
    :cond_1d
    iget-object p2, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p2, p2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->buttonAccept:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1f

    const-string p2, "dcloud_privacy_prompt_accept_button_text"

    .line 215
    invoke-static {p1, v1, p2}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_1f

    .line 217
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1e

    move-object p2, v0

    .line 221
    :cond_1e
    iget-object v2, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iput-object p2, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->buttonAccept:Ljava/lang/String;

    .line 226
    :cond_1f
    iget-object p2, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p2, p2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->buttonRefuse:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_21

    const-string p2, "dcloud_privacy_prompt_refuse_button_text"

    .line 227
    invoke-static {p1, v1, p2}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_21

    .line 229
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_20

    move-object p2, v0

    .line 233
    :cond_20
    iget-object v2, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iput-object p2, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->buttonRefuse:Ljava/lang/String;

    .line 238
    :cond_21
    iget-object p2, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p2, p2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object p2, p2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->message:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_23

    const-string p2, "dcloud_second_privacy_prompt_message"

    .line 239
    invoke-static {p1, v1, p2}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_23

    .line 241
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_22

    move-object p2, v0

    .line 245
    :cond_22
    iget-object v2, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v2, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iput-object p2, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->message:Ljava/lang/String;

    .line 249
    :cond_23
    iget-object p2, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p2, p2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object p2, p2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->title:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_25

    const-string p2, "dcloud_second_privacy_prompt_title"

    .line 250
    invoke-static {p1, v1, p2}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_25

    .line 252
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_24

    move-object p2, v0

    .line 256
    :cond_24
    iget-object v2, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v2, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iput-object p2, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->title:Ljava/lang/String;

    .line 261
    :cond_25
    iget-object p2, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p2, p2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object p2, p2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->buttonAccept:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_27

    const-string p2, "dcloud_second_privacy_prompt_accept_button_text"

    .line 262
    invoke-static {p1, v1, p2}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_27

    .line 264
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_26

    move-object p2, v0

    .line 268
    :cond_26
    iget-object v2, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v2, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iput-object p2, v2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->buttonAccept:Ljava/lang/String;

    .line 272
    :cond_27
    iget-object p2, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p2, p2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iget-object p2, p2, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->buttonRefuse:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_29

    const-string p2, "dcloud_second_privacy_prompt_refuse_button_text"

    .line 273
    invoke-static {p1, v1, p2}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_29

    .line 275
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_28

    goto :goto_4

    :cond_28
    move-object v0, p1

    .line 279
    :goto_4
    iget-object p1, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->second:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;

    iput-object v0, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$SecondDTO;->buttonRefuse:Ljava/lang/String;

    .line 285
    :cond_29
    iget-object p1, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->backgroundColor:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 286
    iget-object p1, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    const-string p2, "#FFFFFF"

    iput-object p2, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->backgroundColor:Ljava/lang/String;

    .line 289
    :cond_2a
    iget-object p1, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->borderRadius:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 290
    iget-object p1, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    const-string p2, "10px"

    iput-object p2, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->borderRadius:Ljava/lang/String;

    .line 293
    :cond_2b
    iget-object p1, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->title:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$TitleDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$TitleDTO;->color:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p2, "#000000"

    if-eqz p1, :cond_2c

    .line 294
    iget-object p1, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->title:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$TitleDTO;

    iput-object p2, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$TitleDTO;->color:Ljava/lang/String;

    .line 297
    :cond_2c
    iget-object p1, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonAccept:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;->color:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 298
    iget-object p1, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonAccept:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;

    iput-object p2, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;->color:Ljava/lang/String;

    .line 301
    :cond_2d
    iget-object p1, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonRefuse:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;->color:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 302
    iget-object p1, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonRefuse:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;

    iput-object p2, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;->color:Ljava/lang/String;

    .line 307
    :cond_2e
    iget-object p1, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->buttonAccept:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 308
    iget-object p1, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonAccept:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;

    iput-object p2, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonAcceptDTO;->color:Ljava/lang/String;

    .line 310
    :cond_2f
    iget-object p1, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonRefuse:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;->color:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 311
    iget-object p1, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->styles:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;

    iget-object p1, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO;->buttonRefuse:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;

    iput-object p2, p1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse$StylesDTO$ButtonRefuseDTO;->color:Ljava/lang/String;

    :cond_30
    const/4 p1, 0x1

    .line 315
    iput-boolean p1, p0, Lio/dcloud/common/ui/b;->c:Z

    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 2

    if-eqz p2, :cond_0

    const-string p2, "1"

    goto :goto_0

    :cond_0
    const-string p2, "0"

    :goto_0
    const-string v0, "pdr"

    const-string v1, "scok"

    .line 434
    invoke-static {p1, v0, v1, p2}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2
    iput-boolean v0, p0, Lio/dcloud/common/ui/b;->c:Z

    .line 3
    invoke-virtual {p0, p1, p2}, Lio/dcloud/common/ui/b;->a(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0

    .line 5
    :cond_0
    iput-boolean v0, p0, Lio/dcloud/common/ui/b;->c:Z

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p1, p2}, Lio/dcloud/common/ui/b;->a(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;)V

    :goto_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/ui/b;->d:Z

    return v0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 3

    .line 7
    iget-boolean v0, p0, Lio/dcloud/common/ui/b;->c:Z

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Lio/dcloud/common/ui/b;->a(Landroid/content/Context;)V

    .line 11
    :cond_0
    iget-object v0, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v0, v0, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->prompt:Ljava/lang/String;

    const-string v1, "pdr"

    const-string v2, "scok"

    .line 12
    invoke-static {p1, v1, v2}, Lio/dcloud/common/adapter/util/SP;->getBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 15
    :cond_1
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "template"

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lio/dcloud/common/ui/b;->c:Z

    .line 5
    invoke-virtual {p0, p1}, Lio/dcloud/common/ui/b;->a(Landroid/content/Context;)V

    .line 7
    iget-object v1, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->prompt:Ljava/lang/String;

    .line 9
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "template"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "privacy_config_uni_sp_file"

    .line 11
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "privacy_config_version_uni_current_key"

    const-string v2, ""

    .line 12
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    iget-object v1, p0, Lio/dcloud/common/ui/b;->b:Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;

    iget-object v1, v1, Lio/dcloud/common/ui/Info/AndroidPrivacyResponse;->version:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public d(Landroid/content/Context;)V
    .locals 3

    const-string v0, "privacy_config_uni_sp_file"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "privacy_config_version_uni_current_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "pdr"

    const-string v1, "scok"

    const-string v2, "0"

    .line 3
    invoke-static {p1, v0, v1, v2}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
