.class public Lcom/baidu/platform/comapi/b/c;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# static fields
.field public static final a:Lcom/baidu/platform/comapi/b/c;


# instance fields
.field private final b:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/baidu/platform/comapi/b/c;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/b/c;-><init>()V

    sput-object v0, Lcom/baidu/platform/comapi/b/c;->a:Lcom/baidu/platform/comapi/b/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/baidu/platform/comapi/b;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "engine_resource_sp"

    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/platform/comapi/b/c;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .line 91
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getOutputDirPath()Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method private static a(Ljava/io/File;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 215
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 218
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 220
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 221
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/baidu/platform/comapi/b/c;->a(Ljava/io/File;)V

    .line 222
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 226
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 216
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_4
    :goto_2
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/baidu/platform/comapi/b/c;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "shader/"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const-string v1, "fingerprint"

    if-nez p1, :cond_1

    .line 197
    iget-object p1, p0, Lcom/baidu/platform/comapi/b/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    .line 200
    :cond_1
    iget-object p1, p0, Lcom/baidu/platform/comapi/b/c;->b:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 201
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 204
    :cond_2
    invoke-static {v0}, Lcom/baidu/platform/comapi/b/c;->a(Ljava/io/File;)V

    .line 205
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    .line 206
    iget-object p1, p0, Lcom/baidu/platform/comapi/b/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    return-void
.end method

.method private a(Landroid/content/res/AssetManager;[BLjava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const-string v0, "/"

    const-string v1, ".dir"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 127
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 128
    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 129
    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p4, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    .line 130
    invoke-virtual {p1, p3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 131
    array-length v4, v1

    if-lez v4, :cond_5

    .line 132
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 134
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 136
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 137
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, v1, v5

    .line 138
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 139
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, p2, v7, v6}, Lcom/baidu/platform/comapi/b/c;->a(Landroid/content/res/AssetManager;[BLjava/lang/String;Ljava/lang/String;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {p1, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 147
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 149
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result p4

    if-nez p4, :cond_3

    .line 150
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 152
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 153
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 155
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 156
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 157
    invoke-static {v3, p3, p2}, Lcom/baidu/platform/comapi/b/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_5
    invoke-static {v3}, Lcom/baidu/platform/comapi/b/a;->a(Ljava/io/Closeable;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    invoke-static {v3}, Lcom/baidu/platform/comapi/b/a;->a(Ljava/io/Closeable;)V

    throw p1

    :catch_0
    invoke-static {v3}, Lcom/baidu/platform/comapi/b/a;->a(Ljava/io/Closeable;)V

    return v2
.end method

.method private a(Ljava/io/File;[B)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 100
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 105
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 106
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result p1

    new-array p1, p1, [B

    .line 107
    invoke-virtual {v2, p1}, Ljava/io/FileInputStream;->read([B)I

    .line 108
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 114
    invoke-static {v2}, Lcom/baidu/platform/comapi/b/a;->a(Ljava/io/Closeable;)V

    return p1

    :cond_1
    invoke-static {v2}, Lcom/baidu/platform/comapi/b/a;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v1}, Lcom/baidu/platform/comapi/b/a;->a(Ljava/io/Closeable;)V

    throw p1

    :catch_1
    :goto_1
    invoke-static {v1}, Lcom/baidu/platform/comapi/b/a;->a(Ljava/io/Closeable;)V

    :cond_2
    :goto_2
    return v0
.end method

.method private b(Ljava/io/File;[B)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 176
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 179
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 180
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 181
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 186
    invoke-static {v2}, Lcom/baidu/platform/comapi/b/a;->a(Ljava/io/Closeable;)V

    return p1

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v1}, Lcom/baidu/platform/comapi/b/a;->a(Ljava/io/Closeable;)V

    throw p1

    :catch_1
    :goto_1
    invoke-static {v1}, Lcom/baidu/platform/comapi/b/a;->a(Ljava/io/Closeable;)V

    :cond_2
    :goto_2
    return v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/baidu/platform/comapi/b/b;)V
    .locals 12

    monitor-enter p0

    .line 43
    :try_start_0
    invoke-static {}, Lcom/baidu/platform/comapi/b;->d()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 52
    :try_start_1
    invoke-direct {p0}, Lcom/baidu/platform/comapi/b/c;->a()Ljava/lang/String;

    move-result-object v4

    .line 53
    new-instance v5, Ljava/io/File;

    const-string v6, "/ver.dat"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :try_start_2
    invoke-interface {p1}, Lcom/baidu/platform/comapi/b/b;->a()[B

    move-result-object v1

    .line 59
    invoke-direct {p0, v5, v1}, Lcom/baidu/platform/comapi/b/c;->a(Ljava/io/File;[B)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_0

    .line 62
    :try_start_3
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 63
    invoke-interface {p1}, Lcom/baidu/platform/comapi/b/b;->b()[Ljava/lang/String;

    move-result-object p1

    const/high16 v7, 0x10000

    new-array v7, v7, [B

    .line 65
    array-length v8, p1

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_0

    aget-object v3, p1, v9

    .line 66
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v0, v7, v3, v10}, Lcom/baidu/platform/comapi/b/c;->a(Landroid/content/res/AssetManager;[BLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 70
    :cond_0
    invoke-direct {p0, v4}, Lcom/baidu/platform/comapi/b/c;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v3

    goto :goto_2

    :catch_0
    move v3, v6

    goto :goto_1

    :catch_1
    move-object v5, v1

    :catch_2
    :goto_1
    move v6, v3

    :goto_2
    if-eqz v6, :cond_1

    if-eqz v2, :cond_1

    .line 79
    :try_start_4
    invoke-direct {p0, v5, v1}, Lcom/baidu/platform/comapi/b/c;->b(Ljava/io/File;[B)Z

    move-result v2

    .line 81
    :cond_1
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 82
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initEngineRes firstInit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; isInitSucceed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {p1, v0}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 87
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
