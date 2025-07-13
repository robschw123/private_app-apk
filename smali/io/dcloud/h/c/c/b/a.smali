.class public Lio/dcloud/h/c/c/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/h/c/c/c/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/h/c/c/b/a$b;,
        Lio/dcloud/h/c/c/b/a$a;
    }
.end annotation


# static fields
.field private static volatile a:Lio/dcloud/h/c/c/b/a;


# instance fields
.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/dcloud/h/c/c/b/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/dcloud/sdk/poly/api/Platform;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lorg/json/JSONObject;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/dcloud/h/c/c/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Landroid/content/Context;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/dcloud/h/c/c/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lio/dcloud/h/c/c/b/a;->c:Ljava/util/Queue;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/h/c/c/b/a;->d:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/h/c/c/b/a;->f:Ljava/util/Map;

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lio/dcloud/h/c/c/b/a;->g:Ljava/lang/String;

    const-string v0, "uniad_config"

    .line 10
    iput-object v0, p0, Lio/dcloud/h/c/c/b/a;->i:Ljava/lang/String;

    const-string v0, "S_C"

    .line 11
    iput-object v0, p0, Lio/dcloud/h/c/c/b/a;->j:Ljava/lang/String;

    const-string v0, "pap"

    .line 12
    iput-object v0, p0, Lio/dcloud/h/c/c/b/a;->k:Ljava/lang/String;

    const-string v0, "dpap"

    .line 13
    iput-object v0, p0, Lio/dcloud/h/c/c/b/a;->l:Ljava/lang/String;

    return-void
.end method

.method public static a()Lio/dcloud/h/c/c/b/a;
    .locals 2

    .line 1
    sget-object v0, Lio/dcloud/h/c/c/b/a;->a:Lio/dcloud/h/c/c/b/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lio/dcloud/h/c/c/b/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lio/dcloud/h/c/c/b/a;->a:Lio/dcloud/h/c/c/b/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lio/dcloud/h/c/c/b/a;

    invoke-direct {v1}, Lio/dcloud/h/c/c/b/a;-><init>()V

    sput-object v1, Lio/dcloud/h/c/c/b/a;->a:Lio/dcloud/h/c/c/b/a;

    .line 5
    sget-object v1, Lio/dcloud/h/c/c/b/a;->a:Lio/dcloud/h/c/c/b/a;

    monitor-exit v0

    return-object v1

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
    sget-object v0, Lio/dcloud/h/c/c/b/a;->a:Lio/dcloud/h/c/c/b/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;I)V
    .locals 3

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/h/c/c/b/a;->h:Landroid/content/Context;

    .line 132
    iget-object v0, p0, Lio/dcloud/h/c/c/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 133
    invoke-static {}, Lio/dcloud/h/c/a;->d()Lio/dcloud/h/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/h/c/a;->a()Lio/dcloud/h/c/c/c/c;

    move-result-object v0

    new-array v1, v1, [Lio/dcloud/h/c/c/c/c$a;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-interface {v0, p1, p2, v1}, Lio/dcloud/h/c/c/c/c;->a(Landroid/content/Context;I[Lio/dcloud/h/c/c/c/c$a;)V

    return-void
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 277
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 278
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "_"

    .line 279
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 280
    array-length p2, p1

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    const/4 p2, 0x0

    aget-object v1, p1, p2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, p1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    :try_start_0
    aget-object p2, p1, p2

    aget-object p1, p1, v0

    invoke-virtual {p3, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 276
    invoke-static {p1}, Lio/dcloud/h/c/c/b/d/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "uniad_config"

    const-string v1, "S_C"

    invoke-static {p2, v0, v1, p1}, Lio/dcloud/h/a/e/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 248
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 249
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 250
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 251
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 252
    new-instance v3, Lio/dcloud/h/c/c/a/a;

    invoke-direct {v3}, Lio/dcloud/h/c/c/a/a;-><init>()V

    .line 253
    invoke-virtual {v3, v1}, Lio/dcloud/h/c/c/a/a;->c(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v3, v2}, Lio/dcloud/h/c/c/a/a;->a(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    iget-object v2, p0, Lio/dcloud/h/c/c/b/a;->f:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 257
    :cond_1
    iget-object v2, p0, Lio/dcloud/h/c/c/b/a;->f:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 7

    const-string v0, "com.google.android.gms.ads.APPLICATION_ID"

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 2
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 5
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "UNIAD"

    .line 7
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "APPID"

    .line 8
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 9
    invoke-direct {p0, p1, v5, v2}, Lio/dcloud/h/c/c/b/a;->a(Landroid/os/Bundle;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    const-string v6, "SPLASH"

    .line 10
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 11
    invoke-direct {p0, p1, v5, v4}, Lio/dcloud/h/c/c/b/a;->a(Landroid/os/Bundle;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    const-string v6, "APPKEY"

    .line 12
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 13
    invoke-direct {p0, p1, v5, v3}, Lio/dcloud/h/c/c/b/a;->a(Landroid/os/Bundle;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const-string v6, "ADPID"

    .line 14
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 15
    invoke-direct {p0, p1, v5, v4}, Lio/dcloud/h/c/c/b/a;->a(Landroid/os/Bundle;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 19
    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_5

    const-string v1, "gg"

    .line 20
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    :cond_5
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 24
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, ","

    .line 28
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_6
    const-string v0, "_psp_"

    .line 31
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v0, "_adpid_"

    :try_start_3
    const-string v1, "adpid"

    .line 32
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v0, "_fs_"

    :try_start_4
    const-string v1, "UNIAD_FULL_SPLASH"

    const-string v5, "0"

    .line 33
    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    :cond_7
    new-instance p1, Lio/dcloud/h/c/c/b/c/a;

    invoke-direct {p1}, Lio/dcloud/h/c/c/b/c/a;-><init>()V

    const-string v0, "697878616C"

    .line 36
    invoke-virtual {p1, v0, v2}, Lio/dcloud/h/c/c/b/c/a;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "697878436D71"

    .line 37
    invoke-virtual {p1, v0, v3}, Lio/dcloud/h/c/c/b/c/a;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "7B7864697B60"

    .line 38
    invoke-virtual {p1, v0, v4}, Lio/dcloud/h/c/c/b/c/a;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    invoke-direct {p0, p1}, Lio/dcloud/h/c/c/b/a;->b(Lio/dcloud/h/c/c/b/c/a;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Lio/dcloud/h/c/c/b/c/a;)Lorg/json/JSONObject;
    .locals 11

    const-string v0, "appid"

    .line 40
    invoke-virtual {p1, v0}, Lio/dcloud/h/c/c/b/c/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "appKey"

    .line 41
    invoke-virtual {p1, v1}, Lio/dcloud/h/c/c/b/c/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "splash"

    .line 42
    invoke-virtual {p1, v2}, Lio/dcloud/h/c/c/b/c/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "sp"

    .line 43
    invoke-virtual {p1, v3}, Lio/dcloud/h/c/c/b/c/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 44
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 47
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 48
    new-instance v6, Lio/dcloud/h/c/c/a/a;

    invoke-direct {v6}, Lio/dcloud/h/c/c/a/a;-><init>()V

    .line 49
    invoke-virtual {v6, v5}, Lio/dcloud/h/c/c/a/a;->c(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/dcloud/h/c/c/a/a;->a(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 52
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/dcloud/h/c/c/a/a;->b(Ljava/lang/String;)V

    .line 54
    :cond_0
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    .line 57
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 63
    :cond_2
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 64
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/h/c/c/a/a;

    goto :goto_2

    .line 66
    :cond_3
    new-instance v5, Lio/dcloud/h/c/c/a/a;

    invoke-direct {v5}, Lio/dcloud/h/c/c/a/a;-><init>()V

    .line 67
    invoke-virtual {v5, v1}, Lio/dcloud/h/c/c/a/a;->c(Ljava/lang/String;)V

    .line 69
    :goto_2
    new-instance v6, Lio/dcloud/sdk/poly/api/Platform;

    invoke-direct {v6}, Lio/dcloud/sdk/poly/api/Platform;-><init>()V

    .line 70
    invoke-virtual {v6, v1}, Lio/dcloud/sdk/poly/api/Platform;->setType(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v6, v4}, Lio/dcloud/sdk/poly/api/Platform;->setPlatJson(Lorg/json/JSONObject;)V

    .line 72
    invoke-virtual {v5, v6}, Lio/dcloud/h/c/c/a/a;->a(Lio/dcloud/sdk/poly/api/Platform;)V

    .line 73
    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 76
    :cond_4
    iget-object p1, p0, Lio/dcloud/h/c/c/b/a;->f:Ljava/util/Map;

    invoke-interface {p1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 p1, 0x0

    if-eqz v2, :cond_b

    const-string v0, "_psp_"

    .line 78
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object p1

    .line 81
    :cond_5
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "adpid"

    :try_start_0
    const-string v3, "_adpid_"

    .line 83
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    const/4 v3, 0x1

    .line 84
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "cpadpid"

    :try_start_1
    const-string v3, "cp_adp_id"

    .line 85
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "fs"

    :try_start_2
    const-string v3, "_fs_"

    .line 86
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "fwt"

    :try_start_3
    const-string v3, "_fwt_"

    .line 87
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v1, "ord"

    :try_start_4
    const-string v3, "_ord_"

    .line 88
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v1, "sr"

    :try_start_5
    const-string v3, "_sr_"

    .line 89
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "_w_"

    .line 90
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_6

    .line 92
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :cond_6
    const-string v3, "_m_"

    .line 93
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_7

    .line 95
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :cond_7
    const-string v4, ","

    .line 96
    invoke-static {v0, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 98
    array-length v5, v0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_a

    aget-object v7, v0, v6

    .line 99
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "p"

    .line 100
    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    const-string v9, "sid"

    .line 101
    :try_start_6
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v9, :cond_8

    const-string/jumbo v9, "w"

    .line 103
    :try_start_7
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    :cond_8
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    if-eqz v9, :cond_9

    const-string v9, "m"

    .line 105
    :try_start_8
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    :cond_9
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_a
    const-string v0, "cfgs"

    .line 108
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 110
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_b
    :goto_4
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/dcloud/h/c/c/a/a;
    .locals 1

    .line 283
    iget-object v0, p0, Lio/dcloud/h/c/c/b/a;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/dcloud/h/c/c/b/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    iget-object v0, p0, Lio/dcloud/h/c/c/b/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/h/c/c/a/a;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(ILjava/lang/String;)V
    .locals 8

    .line 258
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lio/dcloud/h/c/c/b/a;->e:Lorg/json/JSONObject;

    .line 259
    iget-object p1, p0, Lio/dcloud/h/c/c/b/a;->h:Landroid/content/Context;

    const-string v0, "uniad_config"

    const-string v1, "S_C"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lio/dcloud/h/a/e/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object p1, p0, Lio/dcloud/h/c/c/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, -0x1

    .line 263
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, -0x1

    .line 266
    :goto_0
    iget-object v2, p0, Lio/dcloud/h/c/c/b/a;->c:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 267
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 268
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/h/c/c/b/a$a;

    .line 269
    instance-of v4, v3, Lio/dcloud/h/c/c/b/a$b;

    const-string v5, "http:"

    const/16 v6, -0x138f

    if-eqz v4, :cond_2

    .line 270
    move-object v4, v3

    check-cast v4, Lio/dcloud/h/c/c/b/a$b;

    invoke-virtual {v4}, Lio/dcloud/h/c/c/b/a$b;->a()Z

    move-result v7

    if-nez v7, :cond_1

    if-eq v1, p1, :cond_0

    .line 271
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_0
    move-object v5, p2

    :goto_2
    invoke-virtual {v3, v6, v5}, Lio/dcloud/h/c/c/b/a$a;->a(ILjava/lang/String;)V

    :cond_1
    const/4 v3, 0x0

    .line 272
    invoke-virtual {v4, v3, v0}, Lio/dcloud/h/c/c/b/a$b;->a(Lorg/json/JSONArray;Z)V

    goto :goto_4

    :cond_2
    if-eq v1, p1, :cond_3

    .line 274
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, p2

    :goto_3
    invoke-virtual {v3, v6, v4}, Lio/dcloud/h/c/c/b/a$a;->a(ILjava/lang/String;)V

    .line 275
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public a(Landroid/content/Context;ILio/dcloud/h/c/c/b/a$a;)V
    .locals 4

    .line 10
    iget-object v0, p3, Lio/dcloud/h/c/c/b/a$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x3

    const/16 v2, -0x1389

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    if-eq p2, v3, :cond_0

    if-eq p2, v1, :cond_0

    .line 11
    invoke-static {v2}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v2, p1}, Lio/dcloud/h/c/c/b/a$a;->a(ILjava/lang/String;)V

    return-void

    :cond_0
    if-ne p2, v1, :cond_2

    .line 15
    iget-object p1, p0, Lio/dcloud/h/c/c/b/a;->e:Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    const-string p2, "frsplash"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    iget-object p1, p0, Lio/dcloud/h/c/c/b/a;->e:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/dcloud/h/c/c/b/a$a;->a(Lorg/json/JSONObject;)V

    return-void

    :cond_1
    const/16 p1, -0x1397

    .line 19
    invoke-static {p1}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lio/dcloud/h/c/c/b/a$a;->a(ILjava/lang/String;)V

    return-void

    :cond_2
    if-ne p2, v3, :cond_c

    .line 25
    iget-object v0, p0, Lio/dcloud/h/c/c/b/a;->e:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const-string p2, "splash"

    .line 26
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 p1, -0x139b

    .line 27
    invoke-static {p1}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lio/dcloud/h/c/c/b/a$a;->a(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 29
    :cond_3
    invoke-static {p1}, Lio/dcloud/sdk/poly/base/utils/a;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 30
    iget-object p1, p0, Lio/dcloud/h/c/c/b/a;->e:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/dcloud/h/c/c/b/a$a;->a(Lorg/json/JSONObject;)V

    .line 32
    instance-of p1, p3, Lio/dcloud/h/c/c/b/a$b;

    if-eqz p1, :cond_10

    .line 33
    check-cast p3, Lio/dcloud/h/c/c/b/a$b;

    invoke-virtual {p3, v1, v3}, Lio/dcloud/h/c/c/b/a$b;->a(Lorg/json/JSONArray;Z)V

    goto/16 :goto_3

    .line 37
    :cond_4
    iget-object p1, p0, Lio/dcloud/h/c/c/b/a;->e:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/dcloud/h/c/c/b/a$a;->a(Lorg/json/JSONObject;)V

    .line 39
    instance-of p1, p3, Lio/dcloud/h/c/c/b/a$b;

    if-eqz p1, :cond_10

    .line 40
    check-cast p3, Lio/dcloud/h/c/c/b/a$b;

    invoke-virtual {p3, v1, v3}, Lio/dcloud/h/c/c/b/a$b;->a(Lorg/json/JSONArray;Z)V

    goto/16 :goto_3

    :cond_5
    const-string v0, "uniad_config"

    const-string v2, "S_C"

    .line 49
    invoke-static {p1, v0, v2}, Lio/dcloud/h/a/e/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 55
    invoke-direct {p0, p1}, Lio/dcloud/h/c/c/b/a;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_6

    const/16 v0, -0x1388

    const-string v1, ""

    .line 57
    invoke-virtual {p3, v0, v1}, Lio/dcloud/h/c/c/b/a$a;->a(ILjava/lang/String;)V

    goto :goto_2

    .line 59
    :cond_6
    invoke-virtual {p3, v0}, Lio/dcloud/h/c/c/b/a$a;->a(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 66
    :cond_7
    :try_start_0
    new-instance v2, Lio/dcloud/h/c/c/b/c/a;

    invoke-static {v0}, Lio/dcloud/h/c/c/b/d/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lio/dcloud/h/c/c/b/c/a;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v1, :cond_b

    .line 69
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_b

    const-string v0, "7B78"

    .line 70
    invoke-virtual {v1, v0}, Lio/dcloud/h/c/c/b/c/a;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "697878436D71"

    invoke-virtual {v1, v0}, Lio/dcloud/h/c/c/b/c/a;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    const-string v0, "697878616C"

    .line 77
    invoke-virtual {v1, v0}, Lio/dcloud/h/c/c/b/c/a;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 78
    invoke-direct {p0, v0}, Lio/dcloud/h/c/c/b/a;->a(Lorg/json/JSONObject;)V

    .line 79
    invoke-static {p1}, Lio/dcloud/sdk/poly/base/utils/a;->d(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "7B7864697B60"

    if-eqz v0, :cond_9

    .line 80
    invoke-virtual {v1, v2}, Lio/dcloud/h/c/c/b/c/a;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 82
    invoke-virtual {p3, v0}, Lio/dcloud/h/c/c/b/a$a;->a(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 85
    :cond_9
    invoke-virtual {v1, v2}, Lio/dcloud/h/c/c/b/c/a;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 87
    invoke-virtual {p3, v0}, Lio/dcloud/h/c/c/b/a$a;->a(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 88
    :cond_a
    :goto_1
    invoke-direct {p0, v1}, Lio/dcloud/h/c/c/b/a;->b(Lio/dcloud/h/c/c/b/c/a;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 90
    invoke-virtual {p3, v0}, Lio/dcloud/h/c/c/b/a$a;->a(Lorg/json/JSONObject;)V

    .line 111
    :cond_b
    :goto_2
    iget-object v0, p0, Lio/dcloud/h/c/c/b/a;->c:Ljava/util/Queue;

    invoke-interface {v0, p3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object p3, p0, Lio/dcloud/h/c/c/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-nez p3, :cond_10

    .line 113
    invoke-direct {p0, p1, p2}, Lio/dcloud/h/c/c/b/a;->a(Landroid/content/Context;I)V

    goto :goto_3

    .line 117
    :cond_c
    iget-object v0, p0, Lio/dcloud/h/c/c/b/a;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_f

    iget-object v0, p0, Lio/dcloud/h/c/c/b/a;->e:Lorg/json/JSONObject;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 118
    iget-object p1, p3, Lio/dcloud/h/c/c/b/a$a;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 119
    iget-object p1, p0, Lio/dcloud/h/c/c/b/a;->e:Lorg/json/JSONObject;

    iget-object p2, p3, Lio/dcloud/h/c/c/b/a$a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 120
    iget-object p1, p0, Lio/dcloud/h/c/c/b/a;->e:Lorg/json/JSONObject;

    iget-object p2, p3, Lio/dcloud/h/c/c/b/a$a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/dcloud/h/c/c/b/a$a;->a(Lorg/json/JSONObject;)V

    goto :goto_3

    .line 122
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p2, -0x138a

    invoke-static {p2}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p3, Lio/dcloud/h/c/c/b/a$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lio/dcloud/h/c/c/b/a$a;->a(ILjava/lang/String;)V

    goto :goto_3

    .line 125
    :cond_e
    invoke-static {v2}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v2, p1}, Lio/dcloud/h/c/c/b/a$a;->a(ILjava/lang/String;)V

    goto :goto_3

    .line 128
    :cond_f
    iget-object v0, p0, Lio/dcloud/h/c/c/b/a;->c:Ljava/util/Queue;

    invoke-interface {v0, p3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object p3, p0, Lio/dcloud/h/c/c/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-nez p3, :cond_10

    .line 130
    invoke-direct {p0, p1, p2}, Lio/dcloud/h/c/c/b/a;->a(Landroid/content/Context;I)V

    :cond_10
    :goto_3
    return-void
.end method

.method public a(Lio/dcloud/h/c/c/b/c/a;)V
    .locals 9

    .line 134
    iget-object v0, p0, Lio/dcloud/h/c/c/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 147
    iget-object v0, p0, Lio/dcloud/h/c/c/b/a;->h:Landroid/content/Context;

    const-string v2, "786978"

    const-string v3, "0"

    invoke-virtual {p1, v2, v3}, Lio/dcloud/h/c/c/b/c/a;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/dcloud/sdk/poly/base/utils/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "6C786978"

    .line 148
    invoke-virtual {p1, v0, v3}, Lio/dcloud/h/c/c/b/c/a;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/h/c/c/b/a;->g:Ljava/lang/String;

    .line 149
    iget-object v2, p0, Lio/dcloud/h/c/c/b/a;->h:Landroid/content/Context;

    const-string v3, "uniad_config"

    const-string v4, "dpap"

    invoke-static {v2, v3, v4, v0}, Lio/dcloud/h/a/e/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "6C697C69"

    .line 151
    invoke-virtual {p1, v0}, Lio/dcloud/h/c/c/b/c/a;->a(Ljava/lang/String;)Lio/dcloud/h/c/c/b/c/a;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, -0x138f

    if-eqz v0, :cond_e

    const-string v4, "7D6661696C"

    .line 152
    invoke-virtual {v0, v4}, Lio/dcloud/h/c/c/b/c/a;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 153
    invoke-virtual {v0, v4}, Lio/dcloud/h/c/c/b/c/a;->a(Ljava/lang/String;)Lio/dcloud/h/c/c/b/c/a;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 154
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_b

    const-string v1, "6B606966666D64"

    .line 155
    invoke-virtual {v0, v1}, Lio/dcloud/h/c/c/b/c/a;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v1}, Lio/dcloud/h/c/c/b/c/a;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 156
    :goto_0
    iget-object v4, p0, Lio/dcloud/h/c/c/b/a;->f:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 157
    invoke-direct {p0, v1}, Lio/dcloud/h/c/c/b/a;->a(Lorg/json/JSONObject;)V

    const-string v4, "787A"

    .line 159
    invoke-virtual {v0, v4}, Lio/dcloud/h/c/c/b/c/a;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 160
    invoke-virtual {v0, v4}, Lio/dcloud/h/c/c/b/c/a;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    const-string v5, "696C78616C7B"

    .line 164
    invoke-virtual {v0, v5}, Lio/dcloud/h/c/c/b/c/a;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/h/c/c/b/a;->e:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    const-string v2, "splash"

    .line 165
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 167
    :cond_2
    new-instance v0, Lio/dcloud/h/c/c/b/c/a;

    invoke-direct {v0}, Lio/dcloud/h/c/c/b/c/a;-><init>()V

    :try_start_0
    const-string v5, "697878616C"

    .line 169
    invoke-virtual {v0, v5, v1}, Lio/dcloud/h/c/c/b/c/a;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "7B7864697B60"

    .line 170
    invoke-virtual {v0, v1, v2}, Lio/dcloud/h/c/c/b/c/a;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 173
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/h/c/c/b/a;->h:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lio/dcloud/h/c/c/b/a;->a(Ljava/lang/String;Landroid/content/Context;)V

    const-string v0, "787B697B"

    .line 175
    invoke-virtual {p1, v0}, Lio/dcloud/h/c/c/b/c/a;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    iget-object v1, p0, Lio/dcloud/h/c/c/b/a;->e:Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 178
    iget-object v1, p0, Lio/dcloud/h/c/c/b/a;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 179
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 180
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/h/c/c/b/a$a;

    .line 181
    instance-of v6, v5, Lio/dcloud/h/c/c/b/a$b;

    if-eqz v6, :cond_3

    .line 182
    check-cast v5, Lio/dcloud/h/c/c/b/a$b;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 184
    :cond_3
    iget-object v6, p0, Lio/dcloud/h/c/c/b/a;->e:Lorg/json/JSONObject;

    iget-object v7, v5, Lio/dcloud/h/c/c/b/a$a;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 185
    iget-object v6, p0, Lio/dcloud/h/c/c/b/a;->e:Lorg/json/JSONObject;

    iget-object v7, v5, Lio/dcloud/h/c/c/b/a$a;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/dcloud/h/c/c/b/a$a;->a(Lorg/json/JSONObject;)V

    goto :goto_4

    .line 187
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, -0x138a

    invoke-static {v7}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lio/dcloud/h/c/c/b/a$a;->a:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lio/dcloud/h/c/c/b/a$a;->a(ILjava/lang/String;)V

    .line 190
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 193
    :cond_5
    iget-object v1, p0, Lio/dcloud/h/c/c/b/a;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 194
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 195
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/h/c/c/b/a$a;

    .line 196
    instance-of v6, v5, Lio/dcloud/h/c/c/b/a$b;

    if-eqz v6, :cond_6

    .line 197
    check-cast v5, Lio/dcloud/h/c/c/b/a$b;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 199
    :cond_6
    invoke-static {v3}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lio/dcloud/h/c/c/b/a$a;->a(ILjava/lang/String;)V

    .line 200
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 205
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/h/c/c/b/a$b;

    .line 206
    invoke-static {v1}, Lio/dcloud/h/c/c/b/a$b;->a(Lio/dcloud/h/c/c/b/a$b;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 207
    iget-object v5, p0, Lio/dcloud/h/c/c/b/a;->h:Landroid/content/Context;

    invoke-static {v5}, Lio/dcloud/sdk/poly/base/utils/a;->d(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9

    if-eqz v2, :cond_8

    .line 208
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_8

    .line 209
    invoke-virtual {v1, v2}, Lio/dcloud/h/c/c/b/a$b;->a(Lorg/json/JSONObject;)V

    goto :goto_8

    .line 211
    :cond_8
    invoke-static {v3}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lio/dcloud/h/c/c/b/a$b;->a(ILjava/lang/String;)V

    goto :goto_8

    .line 215
    :cond_9
    invoke-virtual {v1, v2}, Lio/dcloud/h/c/c/b/a$b;->a(Lorg/json/JSONObject;)V

    :cond_a
    :goto_8
    const/4 v5, 0x1

    .line 221
    invoke-virtual {v1, p1, v5}, Lio/dcloud/h/c/c/b/a$b;->a(Lorg/json/JSONArray;Z)V

    .line 222
    invoke-virtual {v1, v4}, Lio/dcloud/h/c/c/b/a$b;->a(Lorg/json/JSONArray;)V

    goto :goto_7

    .line 225
    :cond_b
    iget-object p1, p0, Lio/dcloud/h/c/c/b/a;->c:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 226
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 227
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/h/c/c/b/a$a;

    .line 228
    instance-of v4, v0, Lio/dcloud/h/c/c/b/a$b;

    if-eqz v4, :cond_d

    .line 229
    move-object v4, v0

    check-cast v4, Lio/dcloud/h/c/c/b/a$b;

    invoke-virtual {v4}, Lio/dcloud/h/c/c/b/a$b;->a()Z

    move-result v5

    if-nez v5, :cond_c

    .line 230
    invoke-static {v3}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lio/dcloud/h/c/c/b/a$a;->a(ILjava/lang/String;)V

    .line 231
    :cond_c
    invoke-virtual {v4, v2, v1}, Lio/dcloud/h/c/c/b/a$b;->a(Lorg/json/JSONArray;Z)V

    goto :goto_a

    .line 233
    :cond_d
    invoke-static {v3}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lio/dcloud/h/c/c/b/a$a;->a(ILjava/lang/String;)V

    .line 234
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 238
    :cond_e
    iget-object p1, p0, Lio/dcloud/h/c/c/b/a;->c:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 239
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 240
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/h/c/c/b/a$a;

    .line 241
    instance-of v4, v0, Lio/dcloud/h/c/c/b/a$b;

    if-eqz v4, :cond_10

    .line 242
    move-object v4, v0

    check-cast v4, Lio/dcloud/h/c/c/b/a$b;

    invoke-virtual {v4}, Lio/dcloud/h/c/c/b/a$b;->a()Z

    move-result v5

    if-nez v5, :cond_f

    .line 243
    invoke-static {v3}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lio/dcloud/h/c/c/b/a$a;->a(ILjava/lang/String;)V

    .line 244
    :cond_f
    invoke-virtual {v4, v2, v1}, Lio/dcloud/h/c/c/b/a$b;->a(Lorg/json/JSONArray;Z)V

    goto :goto_c

    .line 246
    :cond_10
    invoke-static {v3}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lio/dcloud/h/c/c/b/a$a;->a(ILjava/lang/String;)V

    .line 247
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    :cond_11
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 2

    .line 287
    iget-object v0, p0, Lio/dcloud/h/c/c/b/a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "uniad_config"

    const-string v1, "dpap"

    .line 288
    invoke-static {p1, v0, v1}, Lio/dcloud/h/a/e/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/h/c/c/b/a;->g:Ljava/lang/String;

    .line 290
    :cond_0
    iget-object p1, p0, Lio/dcloud/h/c/c/b/a;->g:Ljava/lang/String;

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
