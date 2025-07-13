.class public Lcom/baidu/platform/core/c/c;
.super Lcom/baidu/platform/base/e;
.source "GeoCoderRequest.java"


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/search/geocode/GeoCodeOption;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/baidu/platform/base/e;-><init>()V

    .line 14
    invoke-direct {p0, p1}, Lcom/baidu/platform/core/c/c;->a(Lcom/baidu/mapapi/search/geocode/GeoCodeOption;)V

    return-void
.end method

.method private a(Lcom/baidu/mapapi/search/geocode/GeoCodeOption;)V
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/baidu/platform/core/c/c;->a:Lcom/baidu/platform/util/a;

    iget-object v1, p1, Lcom/baidu/mapapi/search/geocode/GeoCodeOption;->mCity:Ljava/lang/String;

    const-string v2, "city"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 20
    iget-object v0, p0, Lcom/baidu/platform/core/c/c;->a:Lcom/baidu/platform/util/a;

    iget-object p1, p1, Lcom/baidu/mapapi/search/geocode/GeoCodeOption;->mAddress:Ljava/lang/String;

    const-string v1, "address"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 21
    iget-object p1, p0, Lcom/baidu/platform/core/c/c;->a:Lcom/baidu/platform/util/a;

    const-string v0, "output"

    const-string v1, "json"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 22
    iget-object p1, p0, Lcom/baidu/platform/core/c/c;->a:Lcom/baidu/platform/util/a;

    const-string v0, "ret_coordtype"

    const-string v1, "bd09ll"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 23
    iget-object p1, p0, Lcom/baidu/platform/core/c/c;->a:Lcom/baidu/platform/util/a;

    const-string v0, "from"

    const-string v1, "android_map_sdk"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/platform/domain/c;)Ljava/lang/String;
    .locals 0

    .line 28
    invoke-interface {p1}, Lcom/baidu/platform/domain/c;->f()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
