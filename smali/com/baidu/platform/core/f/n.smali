.class public Lcom/baidu/platform/core/f/n;
.super Lcom/baidu/platform/base/e;
.source "TransitRouteRequest.java"


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/baidu/platform/base/e;-><init>()V

    .line 14
    invoke-direct {p0, p1}, Lcom/baidu/platform/core/f/n;->a(Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;)V

    return-void
.end method

.method private a(Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;)V
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/baidu/platform/core/f/n;->a:Lcom/baidu/platform/util/a;

    const-string v1, "qt"

    const-string v2, "bus"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 19
    iget-object v0, p0, Lcom/baidu/platform/core/f/n;->a:Lcom/baidu/platform/util/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->mPolicy:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    invoke-virtual {v2}, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;->getInt()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sy"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 20
    iget-object v0, p0, Lcom/baidu/platform/core/f/n;->a:Lcom/baidu/platform/util/a;

    const-string v1, "ie"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 21
    iget-object v0, p0, Lcom/baidu/platform/core/f/n;->a:Lcom/baidu/platform/util/a;

    const-string v1, "lrn"

    const-string v2, "20"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 22
    iget-object v0, p0, Lcom/baidu/platform/core/f/n;->a:Lcom/baidu/platform/util/a;

    const-string/jumbo v1, "version"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 23
    iget-object v0, p0, Lcom/baidu/platform/core/f/n;->a:Lcom/baidu/platform/util/a;

    const-string v1, "rp_format"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 24
    iget-object v0, p0, Lcom/baidu/platform/core/f/n;->a:Lcom/baidu/platform/util/a;

    const-string v1, "rp_filter"

    const-string v2, "mobile"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 25
    iget-object v0, p0, Lcom/baidu/platform/core/f/n;->a:Lcom/baidu/platform/util/a;

    const-string v1, "ic_info"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 26
    iget-object v0, p0, Lcom/baidu/platform/core/f/n;->a:Lcom/baidu/platform/util/a;

    const-string v1, "exptype"

    const-string v2, "depall"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 28
    iget-object v0, p0, Lcom/baidu/platform/core/f/n;->a:Lcom/baidu/platform/util/a;

    iget-object v1, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->mFrom:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {p0, v1}, Lcom/baidu/platform/core/f/n;->a(Lcom/baidu/mapapi/search/route/PlanNode;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sn"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 29
    iget-object v0, p0, Lcom/baidu/platform/core/f/n;->a:Lcom/baidu/platform/util/a;

    iget-object v1, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->mTo:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {p0, v1}, Lcom/baidu/platform/core/f/n;->a(Lcom/baidu/mapapi/search/route/PlanNode;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 31
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->mCityName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/baidu/platform/core/f/n;->a:Lcom/baidu/platform/util/a;

    iget-object v1, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->mCityName:Ljava/lang/String;

    const-string v2, "c"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 36
    :cond_0
    sget-object v0, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;->EBUS_NO_SUBWAY:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    iget-object p1, p1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->mPolicy:Lcom/baidu/mapapi/search/route/TransitRoutePlanOption$TransitPolicy;

    if-ne v0, p1, :cond_1

    .line 37
    iget-object p1, p0, Lcom/baidu/platform/core/f/n;->a:Lcom/baidu/platform/util/a;

    const-string v0, "f"

    const-string v1, "[0,2,4,7,5,8,9,10,11]"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/platform/domain/c;)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-interface {p1}, Lcom/baidu/platform/domain/c;->h()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
