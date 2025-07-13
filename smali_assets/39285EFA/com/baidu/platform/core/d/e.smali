.class public Lcom/baidu/platform/core/d/e;
.super Lcom/baidu/platform/base/e;
.source "PoiDetailSearchRequest.java"


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/baidu/platform/base/e;-><init>()V

    .line 16
    invoke-direct {p0, p1}, Lcom/baidu/platform/core/d/e;->a(Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;)V

    return-void
.end method

.method private a(Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;)V
    .locals 3

    if-nez p1, :cond_0

    .line 21
    const-class p1, Lcom/baidu/platform/core/d/e;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Option is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;->isSearchByUids()Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;->poiUids(Ljava/lang/String;)Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/baidu/platform/core/d/e;->a:Lcom/baidu/platform/util/a;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;->getUids()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uids"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 31
    iget-object v0, p0, Lcom/baidu/platform/core/d/e;->a:Lcom/baidu/platform/util/a;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/poi/PoiDetailSearchOption;->isExtendAdcode()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "true"

    goto :goto_0

    :cond_2
    const-string p1, "false"

    :goto_0
    const-string v1, "extensions_adcode"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 33
    iget-object p1, p0, Lcom/baidu/platform/core/d/e;->a:Lcom/baidu/platform/util/a;

    const-string v0, "output"

    const-string v1, "json"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 34
    iget-object p1, p0, Lcom/baidu/platform/core/d/e;->a:Lcom/baidu/platform/util/a;

    const-string v0, "scope"

    const-string v1, "2"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/platform/domain/c;)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-interface {p1}, Lcom/baidu/platform/domain/c;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
