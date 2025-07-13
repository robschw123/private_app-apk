.class public Lio/dcloud/h/c/c/b/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/h/c/c/c/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic b(Landroid/content/Context;I[Lio/dcloud/h/c/c/c/c$a;)V
    .locals 9

    .line 1
    new-instance v0, Lio/dcloud/h/c/c/b/c/a;

    invoke-static {p1}, Lio/dcloud/h/c/c/b/b/e;->a(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/dcloud/h/c/c/b/c/a;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lio/dcloud/h/a/d/b/j;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 3
    invoke-static {}, Lio/dcloud/h/c/c/b/d/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lio/dcloud/h/c/c/b/d/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/dcloud/h/a/d/b/a;->b([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uniAd-msg"

    .line 5
    invoke-static {v1, v0}, Lio/dcloud/sdk/poly/base/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "utf-8"

    .line 8
    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "edata="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 12
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded;charset=utf-8"

    .line 13
    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Lio/dcloud/h/c/c/c/a;->a()Lio/dcloud/h/c/c/c/a;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    sget-object v2, Lio/dcloud/h/c/c/c/b;->e:Ljava/util/List;

    goto :goto_1

    :cond_0
    sget-object v2, Lio/dcloud/h/c/c/c/b;->d:Ljava/util/List;

    :goto_1
    if-eq p2, v1, :cond_1

    const-string p2, "ThirdConfig"

    goto :goto_2

    :cond_1
    const-string p2, "Splash"

    :goto_2
    new-instance v1, Lio/dcloud/h/c/c/b/b/c$a;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p3

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lio/dcloud/h/c/c/b/b/c$a;-><init>(Lio/dcloud/h/c/c/b/b/c;[Lio/dcloud/h/c/c/c/c$a;Ljava/lang/String;Ljava/util/HashMap;Landroid/content/Context;)V

    invoke-virtual {v0, p1, v2, p2, v1}, Lio/dcloud/h/c/c/c/a;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lio/dcloud/h/c/c/c/a$b;)V

    return-void
.end method

.method public static synthetic lambda$iqVoPCqeWpKx3iYEBsHhNaSgiSs(Lio/dcloud/h/c/c/b/b/c;Landroid/content/Context;I[Lio/dcloud/h/c/c/c/c$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/h/c/c/b/b/c;->b(Landroid/content/Context;I[Lio/dcloud/h/c/c/c/c$a;)V

    return-void
.end method


# virtual methods
.method public varargs a(Landroid/content/Context;I[Lio/dcloud/h/c/c/c/c$a;)V
    .locals 3

    .line 1
    invoke-static {}, Lio/dcloud/h/c/a;->d()Lio/dcloud/h/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/h/c/a;->b()Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lio/dcloud/h/c/a;->d()Lio/dcloud/h/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/h/c/a;->b()Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;->getAdId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lio/dcloud/h/c/a;->d()Lio/dcloud/h/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/h/c/a;->b()Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lio/dcloud/h/a/e/f;->a()Lio/dcloud/h/a/e/f;

    move-result-object v0

    new-instance v1, Lio/dcloud/h/c/c/b/b/-$$Lambda$c$iqVoPCqeWpKx3iYEBsHhNaSgiSs;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/dcloud/h/c/c/b/b/-$$Lambda$c$iqVoPCqeWpKx3iYEBsHhNaSgiSs;-><init>(Lio/dcloud/h/c/c/b/b/c;Landroid/content/Context;I[Lio/dcloud/h/c/c/c/c$a;)V

    invoke-virtual {v0, v1}, Lio/dcloud/h/a/e/f;->a(Ljava/lang/Runnable;)V

    return-void

    .line 8
    :cond_1
    :goto_0
    array-length p1, p3

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_2

    aget-object v0, p3, p2

    const/16 v1, -0x1398

    .line 9
    invoke-static {v1}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/dcloud/h/c/c/c/c$a;->a(ILjava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected a(Lio/dcloud/h/c/c/b/c/a;Landroid/content/Context;)V
    .locals 7

    .line 10
    invoke-static {p2}, Lio/dcloud/sdk/poly/base/utils/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 13
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-wide v3, v1

    :goto_0
    const-string v0, "7C61656D"

    .line 16
    invoke-virtual {p1, v0}, Lio/dcloud/h/c/c/b/c/a;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long p1, v3, v1

    if-lez p1, :cond_0

    cmp-long p1, v5, v1

    if-lez p1, :cond_0

    const-wide/16 v0, 0x3e8

    mul-long v3, v3, v0

    mul-long v0, v0, v5

    .line 17
    invoke-static {v3, v4, v0, v1}, Lio/dcloud/sdk/poly/base/utils/a;->a(JJ)Z

    move-result p1

    if-nez p1, :cond_0

    .line 18
    invoke-static {p2}, Lio/dcloud/sdk/poly/base/utils/a;->a(Landroid/content/Context;)V

    .line 21
    :cond_0
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lio/dcloud/sdk/poly/base/utils/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
