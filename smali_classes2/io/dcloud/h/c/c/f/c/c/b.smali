.class public Lio/dcloud/h/c/c/f/c/c/b;
.super Lio/dcloud/h/c/c/e/a;


# instance fields
.field protected q:Lio/dcloud/h/c/c/f/a/b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/h/c/c/e/a;-><init>(Landroid/app/Activity;)V

    .line 2
    iput p2, p0, Lio/dcloud/h/c/c/e/c;->d:I

    return-void
.end method

.method private synthetic c(ILjava/lang/String;Lorg/json/JSONArray;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/c/b;->q:Lio/dcloud/h/c/c/f/a/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lio/dcloud/h/c/c/f/a/b;->onError(ILjava/lang/String;Lorg/json/JSONArray;)V

    :cond_0
    return-void
.end method

.method private synthetic d(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/c/b;->q:Lio/dcloud/h/c/c/f/a/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lio/dcloud/h/c/c/f/a/b;->onLoaded(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$OLwtf4jXzKzKRLq1-XdHh20yOuY(Lio/dcloud/h/c/c/f/c/c/b;ILjava/lang/String;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/h/c/c/f/c/c/b;->c(ILjava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method public static synthetic lambda$OutjoL6OHGLF3k40gMs7PtdIE-4(Lio/dcloud/h/c/c/f/c/c/b;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/dcloud/h/c/c/f/c/c/b;->d(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/String;Lorg/json/JSONArray;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";detail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uniAd-loadError"

    invoke-static {v1, v0}, Lio/dcloud/sdk/poly/base/utils/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/h/c/c/f/c/c/-$$Lambda$b$OLwtf4jXzKzKRLq1-XdHh20yOuY;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/dcloud/h/c/c/f/c/c/-$$Lambda$b$OLwtf4jXzKzKRLq1-XdHh20yOuY;-><init>(Lio/dcloud/h/c/c/f/c/c/b;ILjava/lang/String;Lorg/json/JSONArray;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Lio/dcloud/h/c/c/f/a/b;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lio/dcloud/h/c/c/e/c;->a(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;)V

    .line 4
    iput-object p2, p0, Lio/dcloud/h/c/c/f/c/c/b;->q:Lio/dcloud/h/c/c/f/a/b;

    .line 5
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/d;->a()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/dcloud/sdk/core/module/DCBaseAOL;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/h/c/c/f/c/c/b;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/h/c/c/f/c/c/-$$Lambda$b$OutjoL6OHGLF3k40gMs7PtdIE-4;

    invoke-direct {v1, p0, p1}, Lio/dcloud/h/c/c/f/c/c/-$$Lambda$b$OutjoL6OHGLF3k40gMs7PtdIE-4;-><init>(Lio/dcloud/h/c/c/f/c/c/b;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected c(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/dcloud/sdk/core/module/DCBaseAOL;",
            ">;)",
            "Ljava/util/List<",
            "Lio/dcloud/h/c/c/f/c/c/a;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 6
    new-instance v2, Lio/dcloud/h/c/c/f/c/c/a;

    invoke-virtual {p0}, Lio/dcloud/h/c/c/e/a;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lio/dcloud/h/c/c/f/c/c/a;-><init>(Lio/dcloud/sdk/core/module/DCBaseAOL;Landroid/app/Activity;)V

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
