.class public Lio/dcloud/sdk/core/util/RequestUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "dcloud-ads"

    .line 1
    invoke-static {p0, v0, p1}, Lio/dcloud/h/a/e/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0, v0}, Lio/dcloud/h/c/c/b/d/e;->a(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lio/dcloud/h/a/d/b/g;->a()Lio/dcloud/h/a/d/b/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/dcloud/h/a/d/b/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/dcloud/h/a/d/b/j;->a(Ljava/lang/String;)[B

    move-result-object p0

    .line 2
    invoke-static {p0, p1, p2}, Lio/dcloud/h/a/d/b/a;->b([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    const/4 p1, 0x2

    .line 3
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static httpGet(Ljava/lang/String;Ljava/util/HashMap;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lio/dcloud/h/a/e/d;->a(Ljava/lang/String;Ljava/util/HashMap;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static httpPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lio/dcloud/h/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)[B

    move-result-object p0

    return-object p0
.end method

.method public static mc(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/dcloud/h/c/c/b/d/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static postMessage(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/d;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "dcloud-ads"

    .line 1
    invoke-static {p0, v0, p1, p2}, Lio/dcloud/h/a/e/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
