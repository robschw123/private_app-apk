.class public Lcom/baidu/platform/core/b/c;
.super Lcom/baidu/platform/base/e;
.source "DistrictRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/baidu/platform/base/e;-><init>()V

    .line 13
    invoke-direct {p0, p1}, Lcom/baidu/platform/core/b/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/baidu/platform/core/b/c;->a:Lcom/baidu/platform/util/a;

    const-string v1, "qt"

    const-string v2, "ext"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 18
    iget-object v0, p0, Lcom/baidu/platform/core/b/c;->a:Lcom/baidu/platform/util/a;

    const-string v1, "num"

    const-string v2, "1000"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 19
    iget-object v0, p0, Lcom/baidu/platform/core/b/c;->a:Lcom/baidu/platform/util/a;

    const-string v1, "l"

    const-string v2, "10"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 20
    iget-object v0, p0, Lcom/baidu/platform/core/b/c;->a:Lcom/baidu/platform/util/a;

    const-string v1, "ie"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 21
    iget-object v0, p0, Lcom/baidu/platform/core/b/c;->a:Lcom/baidu/platform/util/a;

    const-string v1, "oue"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 22
    iget-object v0, p0, Lcom/baidu/platform/core/b/c;->a:Lcom/baidu/platform/util/a;

    const-string v1, "res"

    const-string v2, "api"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 23
    iget-object v0, p0, Lcom/baidu/platform/core/b/c;->a:Lcom/baidu/platform/util/a;

    const-string v1, "fromproduct"

    const-string v2, "android_map_sdk"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 24
    iget-object v0, p0, Lcom/baidu/platform/core/b/c;->a:Lcom/baidu/platform/util/a;

    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/platform/domain/c;)Ljava/lang/String;
    .locals 0

    .line 29
    invoke-interface {p1}, Lcom/baidu/platform/domain/c;->o()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
