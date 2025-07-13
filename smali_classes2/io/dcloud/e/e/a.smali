.class public Lio/dcloud/e/e/a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/common/DHInterface/IPdrModule;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CommitModule"

    .line 2
    iput-object v0, p0, Lio/dcloud/e/e/a;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Lio/dcloud/e/e/a$a;

    invoke-direct {v0, p0, p2}, Lio/dcloud/e/e/a$a;-><init>(Lio/dcloud/e/e/a;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, p3, v0}, Lio/dcloud/e/c/h/b;->a(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;ILjava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V

    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;[B)V
    .locals 5

    const-string p2, "urd"

    const-string v0, "did"

    const-string v1, "ret"

    if-eqz p3, :cond_1

    .line 3
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "desc"

    const-string v4, "OK"

    if-nez p3, :cond_0

    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 9
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p3, "pdr"

    invoke-static {p1, p3}, Lio/dcloud/common/adapter/util/SP;->getOrCreateBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p3, "_deviceId"

    .line 10
    :try_start_2
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, v0}, Lio/dcloud/common/adapter/util/SP;->setBundleData(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_0
    sget-boolean p1, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    if-nez p1, :cond_1

    .line 14
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 44
    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 45
    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 47
    invoke-static {p1, p2}, Lio/dcloud/common/util/NetTool;->httpGet(Ljava/lang/String;Z)[B

    move-result-object p1

    .line 48
    sget-object p3, Lio/dcloud/common/util/BaseInfo;->sURDFilePath:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lio/dcloud/common/adapter/io/DHFile;->writeFile([BILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 55
    iget-object p2, p0, Lio/dcloud/e/e/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lio/dcloud/common/adapter/util/Logger;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lio/dcloud/e/e/a;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/e/e/a;->a(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "start_up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    instance-of p1, p2, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 4
    check-cast p2, [Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    aget-object p1, p2, p1

    check-cast p1, Lio/dcloud/common/DHInterface/IApp;

    const/4 v0, 0x1

    .line 6
    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    .line 7
    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/String;

    .line 8
    invoke-direct {p0, p1, v0, p2}, Lio/dcloud/e/e/a;->a(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method
