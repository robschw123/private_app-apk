.class public Lcom/baidu/platform/core/busline/b;
.super Lcom/baidu/platform/base/e;
.source "BusLineRequest.java"


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/search/busline/BusLineSearchOption;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/baidu/platform/base/e;-><init>()V

    .line 14
    invoke-direct {p0, p1}, Lcom/baidu/platform/core/busline/b;->a(Lcom/baidu/mapapi/search/busline/BusLineSearchOption;)V

    return-void
.end method

.method private a(Lcom/baidu/mapapi/search/busline/BusLineSearchOption;)V
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/baidu/platform/core/busline/b;->a:Lcom/baidu/platform/util/a;

    const-string v1, "qt"

    const-string v2, "bsl"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 19
    iget-object v0, p0, Lcom/baidu/platform/core/busline/b;->a:Lcom/baidu/platform/util/a;

    const-string v1, "rt_info"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 20
    iget-object v0, p0, Lcom/baidu/platform/core/busline/b;->a:Lcom/baidu/platform/util/a;

    const-string v1, "ie"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 21
    iget-object v0, p0, Lcom/baidu/platform/core/busline/b;->a:Lcom/baidu/platform/util/a;

    const-string v1, "oue"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 22
    iget-object v0, p0, Lcom/baidu/platform/core/busline/b;->a:Lcom/baidu/platform/util/a;

    iget-object v1, p1, Lcom/baidu/mapapi/search/busline/BusLineSearchOption;->mCity:Ljava/lang/String;

    const-string v2, "c"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 23
    iget-object v0, p0, Lcom/baidu/platform/core/busline/b;->a:Lcom/baidu/platform/util/a;

    iget-object p1, p1, Lcom/baidu/mapapi/search/busline/BusLineSearchOption;->mUid:Ljava/lang/String;

    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 24
    iget-object p1, p0, Lcom/baidu/platform/core/busline/b;->a:Lcom/baidu/platform/util/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "t"

    invoke-virtual {p1, v1, v0}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/platform/domain/c;)Ljava/lang/String;
    .locals 0

    .line 29
    invoke-interface {p1}, Lcom/baidu/platform/domain/c;->m()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
