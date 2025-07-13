.class public Lio/dcloud/sdk/base/dcloud/ADHandler$g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/base/dcloud/ADHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field a:Landroid/view/MotionEvent;

.field b:Landroid/view/MotionEvent;

.field c:Ljava/lang/String;

.field d:Lorg/json/JSONObject;

.field public e:Ljava/lang/Object;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:I

.field j:I

.field k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->i:I

    .line 11
    iput v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->j:I

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/i;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 3
    new-instance v0, Lio/dcloud/sdk/base/dcloud/ADHandler$g$a;

    invoke-direct {v0, p0, p2}, Lio/dcloud/sdk/base/dcloud/ADHandler$g$a;-><init>(Lio/dcloud/sdk/base/dcloud/ADHandler$g;Lio/dcloud/sdk/base/dcloud/i;)V

    .line 25
    :try_start_0
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "ad_receive"

    .line 26
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const-string p1, "ADReceive"

    const-string p2, "registerReceiver"

    .line 28
    invoke-static {p1, p2}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 31
    invoke-static {p1}, Lio/dcloud/h/a/e/b;->a(Landroid/content/Context;)V

    .line 32
    invoke-static {p1}, Lio/dcloud/sdk/base/dcloud/k/b;->a(Landroid/content/Context;)Lio/dcloud/sdk/base/dcloud/k/b;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/k/b;->a()Ljava/util/List;

    move-result-object v1

    .line 34
    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->d:Lorg/json/JSONObject;

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v3, "url"

    .line 37
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "downloadAppName"

    .line 38
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/sdk/base/dcloud/k/a;

    .line 40
    invoke-virtual {v4}, Lio/dcloud/sdk/base/dcloud/k/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 44
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x0

    const-string v5, ".apk"

    if-eqz v1, :cond_3

    move-object v1, v4

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v3, v5, v1}, Lio/dcloud/h/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {p1, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v5, ""

    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Download/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 48
    invoke-static {}, Lio/dcloud/h/a/e/f;->a()Lio/dcloud/h/a/e/f;

    move-result-object v1

    new-instance v2, Lio/dcloud/sdk/base/dcloud/ADHandler$g$b;

    invoke-direct {v2, p0}, Lio/dcloud/sdk/base/dcloud/ADHandler$g$b;-><init>(Lio/dcloud/sdk/base/dcloud/ADHandler$g;)V

    invoke-virtual {v1, v2}, Lio/dcloud/h/a/e/f;->a(Ljava/lang/Runnable;)V

    .line 54
    iget-object v9, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->h:Ljava/lang/String;

    const/16 v4, 0x1d

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p0

    invoke-static/range {v4 .. v9}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$g;Ljava/lang/String;)V

    .line 55
    new-instance v1, Lio/dcloud/sdk/base/dcloud/k/a;

    invoke-direct {v1}, Lio/dcloud/sdk/base/dcloud/k/a;-><init>()V

    .line 56
    invoke-virtual {v1, p1, v3, v10}, Lio/dcloud/sdk/base/dcloud/k/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v2, Lio/dcloud/sdk/base/dcloud/ADHandler$g$c;

    move-object v5, v2

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v5 .. v10}, Lio/dcloud/sdk/base/dcloud/ADHandler$g$c;-><init>(Lio/dcloud/sdk/base/dcloud/ADHandler$g;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/dcloud/sdk/base/dcloud/k/a;->a(Lio/dcloud/sdk/base/dcloud/k/a$a;)V

    .line 92
    invoke-virtual {v0, v1}, Lio/dcloud/sdk/base/dcloud/k/b;->a(Lio/dcloud/sdk/base/dcloud/k/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->k:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method b()Lorg/json/JSONObject;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->d:Lorg/json/JSONObject;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method c()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->d:Lorg/json/JSONObject;

    return-object v0
.end method

.method d()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method e()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method f()Lorg/json/JSONObject;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->d:Lorg/json/JSONObject;

    const-string v1, "report"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
