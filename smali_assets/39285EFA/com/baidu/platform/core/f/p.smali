.class public Lcom/baidu/platform/core/f/p;
.super Lcom/baidu/platform/base/e;
.source "WalkRouteRequest.java"


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/baidu/platform/base/e;-><init>()V

    .line 15
    invoke-direct {p0, p1}, Lcom/baidu/platform/core/f/p;->a(Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;)V

    return-void
.end method

.method private a(Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;)V
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/baidu/platform/core/f/p;->a:Lcom/baidu/platform/util/a;

    const-string v1, "qt"

    const-string/jumbo v2, "walk2"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 20
    iget-object v0, p0, Lcom/baidu/platform/core/f/p;->a:Lcom/baidu/platform/util/a;

    iget-object v1, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->mFrom:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {p0, v1}, Lcom/baidu/platform/core/f/p;->a(Lcom/baidu/mapapi/search/route/PlanNode;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sn"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 21
    iget-object v0, p0, Lcom/baidu/platform/core/f/p;->a:Lcom/baidu/platform/util/a;

    iget-object v1, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->mTo:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {p0, v1}, Lcom/baidu/platform/core/f/p;->a(Lcom/baidu/mapapi/search/route/PlanNode;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 22
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->mFrom:Lcom/baidu/mapapi/search/route/PlanNode;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/baidu/platform/core/f/p;->a:Lcom/baidu/platform/util/a;

    iget-object v1, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->mFrom:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/PlanNode;->getCity()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sc"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 25
    :cond_0
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->mTo:Lcom/baidu/mapapi/search/route/PlanNode;

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/baidu/platform/core/f/p;->a:Lcom/baidu/platform/util/a;

    iget-object p1, p1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->mTo:Lcom/baidu/mapapi/search/route/PlanNode;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/PlanNode;->getCity()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ec"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/baidu/platform/core/f/p;->a:Lcom/baidu/platform/util/a;

    const-string v0, "ie"

    const-string v1, "utf-8"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 29
    iget-object p1, p0, Lcom/baidu/platform/core/f/p;->a:Lcom/baidu/platform/util/a;

    const-string v0, "lrn"

    const-string v1, "20"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 30
    iget-object p1, p0, Lcom/baidu/platform/core/f/p;->a:Lcom/baidu/platform/util/a;

    const-string/jumbo v0, "version"

    const-string v1, "3"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 31
    iget-object p1, p0, Lcom/baidu/platform/core/f/p;->a:Lcom/baidu/platform/util/a;

    const-string v0, "rp_format"

    const-string v1, "json"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    .line 32
    iget-object p1, p0, Lcom/baidu/platform/core/f/p;->a:Lcom/baidu/platform/util/a;

    const-string v0, "rp_filter"

    const-string v1, "mobile"

    invoke-virtual {p1, v0, v1}, Lcom/baidu/platform/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/util/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/platform/domain/c;)Ljava/lang/String;
    .locals 0

    .line 38
    invoke-interface {p1}, Lcom/baidu/platform/domain/c;->k()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
