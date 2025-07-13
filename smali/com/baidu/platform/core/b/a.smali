.class public Lcom/baidu/platform/core/b/a;
.super Lcom/baidu/platform/base/e;
.source "DistrictFromPoiRequest.java"


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/search/district/DistrictSearchOption;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/baidu/platform/base/e;-><init>()V

    .line 14
    invoke-direct {p0, p1}, Lcom/baidu/platform/core/b/a;->a(Lcom/baidu/mapapi/search/district/DistrictSearchOption;)V

    return-void
.end method

.method private a(Lcom/baidu/mapapi/search/district/DistrictSearchOption;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/core/b/a;->a:Lcom/baidu/platform/util/a;

    const-string v1, "qt"

    const-string v2, "con"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 22
    iget-object v0, p0, Lcom/baidu/platform/core/b/a;->a:Lcom/baidu/platform/util/a;

    const-string v1, "rp_format"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 23
    iget-object v0, p0, Lcom/baidu/platform/core/b/a;->a:Lcom/baidu/platform/util/a;

    const-string v1, "rp_filter"

    const-string v2, "mobile"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 24
    iget-object v0, p0, Lcom/baidu/platform/core/b/a;->a:Lcom/baidu/platform/util/a;

    const-string v1, "area_res"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 25
    iget-object v0, p0, Lcom/baidu/platform/core/b/a;->a:Lcom/baidu/platform/util/a;

    const-string v1, "addr_identify"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 26
    iget-object v0, p0, Lcom/baidu/platform/core/b/a;->a:Lcom/baidu/platform/util/a;

    const-string v1, "ie"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 27
    iget-object v0, p0, Lcom/baidu/platform/core/b/a;->a:Lcom/baidu/platform/util/a;

    const-string v1, "pn"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 28
    iget-object v0, p0, Lcom/baidu/platform/core/b/a;->a:Lcom/baidu/platform/util/a;

    const-string v1, "rn"

    const-string v2, "10"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 29
    iget-object v0, p0, Lcom/baidu/platform/core/b/a;->a:Lcom/baidu/platform/util/a;

    iget-object v1, p1, Lcom/baidu/mapapi/search/district/DistrictSearchOption;->mCityName:Ljava/lang/String;

    const-string v2, "c"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 30
    iget-object v0, p1, Lcom/baidu/mapapi/search/district/DistrictSearchOption;->mDistrictName:Ljava/lang/String;

    const-string/jumbo v1, "wd"

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/baidu/mapapi/search/district/DistrictSearchOption;->mDistrictName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/core/b/a;->a:Lcom/baidu/platform/util/a;

    iget-object p1, p1, Lcom/baidu/mapapi/search/district/DistrictSearchOption;->mDistrictName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    goto :goto_1

    .line 31
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/baidu/platform/core/b/a;->a:Lcom/baidu/platform/util/a;

    iget-object p1, p1, Lcom/baidu/mapapi/search/district/DistrictSearchOption;->mCityName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/platform/domain/c;)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-interface {p1}, Lcom/baidu/platform/domain/c;->n()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
