.class public abstract Lio/dcloud/h/c/c/e/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/dcloud/h/c/c/e/b;->a:Z

    return-void
.end method

.method private a(Landroid/content/Context;ILio/dcloud/sdk/core/module/DCBaseAOL;)V
    .locals 3

    const/16 v0, 0x28

    if-ne p2, v0, :cond_0

    .line 41
    invoke-virtual {p3}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getDCloudId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/dcloud/sdk/poly/base/utils/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    invoke-virtual {p3}, Lio/dcloud/sdk/core/module/DCBaseAOL;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 45
    invoke-virtual {p3}, Lio/dcloud/sdk/core/module/DCBaseAOL;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ext"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_1
    invoke-static {}, Lio/dcloud/h/a/e/f;->a()Lio/dcloud/h/a/e/f;

    move-result-object v1

    new-instance v2, Lio/dcloud/h/c/c/e/-$$Lambda$b$biNF_SomaDHkwknrSW-Es1UtjNY;

    invoke-direct {v2, p1, p3, p2, v0}, Lio/dcloud/h/c/c/e/-$$Lambda$b$biNF_SomaDHkwknrSW-Es1UtjNY;-><init>(Landroid/content/Context;Lio/dcloud/sdk/core/module/DCBaseAOL;ILjava/util/HashMap;)V

    invoke-virtual {v1, v2}, Lio/dcloud/h/a/e/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic a(Landroid/content/Context;Lio/dcloud/sdk/core/module/DCBaseAOL;ILjava/util/HashMap;)V
    .locals 9

    .line 48
    invoke-virtual {p1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getTid()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lio/dcloud/h/c/a;->d()Lio/dcloud/h/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/h/c/a;->b()Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lio/dcloud/h/c/a;->d()Lio/dcloud/h/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/h/c/a;->b()Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;->getAdId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getDCloudId()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move v6, p2

    move-object v8, p3

    invoke-static/range {v0 .. v8}, Lio/dcloud/h/c/c/b/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6

    .line 40
    invoke-virtual {p0}, Lio/dcloud/h/c/c/e/b;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lio/dcloud/h/c/a;->d()Lio/dcloud/h/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/h/c/a;->b()Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lio/dcloud/h/c/a;->d()Lio/dcloud/h/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/h/c/a;->b()Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;->getAdId()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3c

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lio/dcloud/h/c/c/b/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic lambda$91aSo_aF1LZBoNhzrz-ll7kzl6g(Lio/dcloud/h/c/c/e/b;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/dcloud/h/c/c/e/b;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic lambda$biNF_SomaDHkwknrSW-Es1UtjNY(Landroid/content/Context;Lio/dcloud/sdk/core/module/DCBaseAOL;ILjava/util/HashMap;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/dcloud/h/c/c/e/b;->a(Landroid/content/Context;Lio/dcloud/sdk/core/module/DCBaseAOL;ILjava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method protected abstract a()Landroid/app/Activity;
.end method

.method protected a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 2

    if-eqz p5, :cond_9

    .line 1
    invoke-virtual {p5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v0, 0xe

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lio/dcloud/h/c/c/e/b;->a:Z

    .line 9
    invoke-virtual {p0}, Lio/dcloud/h/c/c/e/b;->c()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eq p1, v0, :cond_7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    const/4 v0, 0x7

    if-eq p1, v0, :cond_5

    const/16 v0, 0xf

    if-eq p1, v0, :cond_4

    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const-string p1, ""

    goto :goto_0

    :cond_2
    const-string p1, "draw_flow"

    goto :goto_0

    :cond_3
    const-string p1, "rewarded"

    goto :goto_0

    :cond_4
    const-string p1, "interstitial"

    goto :goto_0

    :cond_5
    const-string p1, "full_screen_video"

    goto :goto_0

    :cond_6
    const-string p1, "template"

    goto :goto_0

    :cond_7
    const-string p1, "splash"

    :goto_0
    const-string v0, "type"

    .line 32
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "adpid"

    .line 33
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ord"

    .line 34
    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "ext"

    .line 36
    invoke-virtual {v1, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string p1, "rsp"

    .line 37
    invoke-virtual {v1, p1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x3c

    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "tid"

    invoke-virtual {v1, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {}, Lio/dcloud/h/a/e/f;->a()Lio/dcloud/h/a/e/f;

    move-result-object p1

    new-instance p3, Lio/dcloud/h/c/c/e/-$$Lambda$b$91aSo_aF1LZBoNhzrz-ll7kzl6g;

    invoke-direct {p3, p0, p2, v1}, Lio/dcloud/h/c/c/e/-$$Lambda$b$91aSo_aF1LZBoNhzrz-ll7kzl6g;-><init>(Lio/dcloud/h/c/c/e/b;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {p1, p3}, Lio/dcloud/h/a/e/f;->a(Ljava/lang/Runnable;)V

    :cond_9
    :goto_1
    return-void
.end method

.method protected a(Landroid/app/Activity;Lio/dcloud/sdk/core/module/DCBaseAOL;)V
    .locals 1

    const-string v0, "on ad click"

    .line 49
    invoke-static {v0}, Lio/dcloud/sdk/poly/base/utils/e;->a(Ljava/lang/String;)V

    const/16 v0, 0x29

    .line 50
    invoke-direct {p0, p1, v0, p2}, Lio/dcloud/h/c/c/e/b;->a(Landroid/content/Context;ILio/dcloud/sdk/core/module/DCBaseAOL;)V

    return-void
.end method

.method protected b(Landroid/app/Activity;Lio/dcloud/sdk/core/module/DCBaseAOL;)V
    .locals 1

    const-string v0, "on ad show"

    .line 1
    invoke-static {v0}, Lio/dcloud/sdk/poly/base/utils/e;->a(Ljava/lang/String;)V

    const/16 v0, 0x28

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lio/dcloud/h/c/c/e/b;->a(Landroid/content/Context;ILio/dcloud/sdk/core/module/DCBaseAOL;)V

    return-void
.end method

.method protected abstract c()Z
.end method
