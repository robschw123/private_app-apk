.class public abstract Lio/dcloud/sdk/core/module/DCBaseAOLLoader;
.super Lio/dcloud/sdk/core/module/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;,
        Lio/dcloud/sdk/core/module/DCBaseAOLLoader$b;
    }
.end annotation


# instance fields
.field private A:Z

.field private final B:Landroid/os/Handler;

.field private final C:I

.field private D:I

.field private E:Lio/dcloud/h/c/c/e/a$a;


# direct methods
.method public constructor <init>(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/sdk/core/module/a;-><init>(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->A:Z

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->C:I

    const/16 p1, 0x1388

    .line 5
    iput p1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->D:I

    const/4 p1, -0x1

    .line 11
    invoke-virtual {p0, p1}, Lio/dcloud/sdk/core/module/a;->c(I)V

    .line 12
    new-instance p1, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$b;

    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/d;->a()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$b;-><init>(Lio/dcloud/sdk/core/module/DCBaseAOLLoader;Landroid/os/Looper;)V

    iput-object p1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->B:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lio/dcloud/sdk/core/module/DCBaseAOLLoader;)Lio/dcloud/h/c/c/e/a$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->E:Lio/dcloud/h/c/c/e/a$a;

    return-object p0
.end method

.method private n()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lio/dcloud/sdk/core/b/a;->b()Lio/dcloud/sdk/core/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/dcloud/sdk/core/b/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "dcloud"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "wm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0

    .line 10
    :cond_3
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "sgm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_4
    return v1
.end method


# virtual methods
.method public a(Lio/dcloud/h/c/c/a/d;)V
    .locals 2

    .line 19
    invoke-virtual {p1}, Lio/dcloud/h/c/c/a/d;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->f(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lio/dcloud/h/c/c/a/d;->r()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->b(Z)V

    .line 21
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->isSlotSupportBidding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p1}, Lio/dcloud/h/c/c/a/d;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->setBiddingECPM(I)V

    .line 23
    :cond_0
    invoke-virtual {p1}, Lio/dcloud/h/c/c/a/d;->l()I

    move-result v0

    iput v0, p0, Lio/dcloud/sdk/core/module/DCBaseAOL;->d:I

    .line 24
    invoke-virtual {p1}, Lio/dcloud/h/c/c/a/d;->n()I

    move-result v0

    iput v0, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->D:I

    .line 25
    invoke-virtual {p1}, Lio/dcloud/h/c/c/a/d;->e()I

    move-result v0

    iput v0, p0, Lio/dcloud/sdk/core/module/DCBaseAOL;->e:I

    .line 26
    invoke-virtual {p1}, Lio/dcloud/h/c/c/a/d;->b()I

    move-result v0

    iput v0, p0, Lio/dcloud/sdk/core/module/DCBaseAOL;->g:I

    .line 27
    invoke-virtual {p1}, Lio/dcloud/h/c/c/a/d;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->setFeedType(I)V

    .line 28
    invoke-virtual {p1}, Lio/dcloud/h/c/c/a/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->d(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lio/dcloud/h/c/c/a/d;->p()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->a(Z)V

    .line 30
    invoke-virtual {p1}, Lio/dcloud/h/c/c/a/d;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->e(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lio/dcloud/h/c/c/a/d;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->b(I)V

    .line 32
    invoke-virtual {p1}, Lio/dcloud/h/c/c/a/d;->i()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->a(Lorg/json/JSONObject;)V

    .line 33
    invoke-virtual {p1}, Lio/dcloud/h/c/c/a/d;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->a(I)V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load sub slot cfg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/dcloud/h/c/c/a/d;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/sdk/poly/base/utils/e;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lio/dcloud/h/c/c/e/a$a;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->E:Lio/dcloud/h/c/c/e/a$a;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->a(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p2}, Lio/dcloud/sdk/core/module/DCBaseAOL;->b(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, p1, p2}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->init(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 p1, -0x1

    .line 2
    invoke-virtual {p0, p1}, Lio/dcloud/sdk/core/module/a;->c(I)V

    .line 3
    invoke-direct {p0}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->n()Z

    move-result p1

    const-string v0, ""

    const/16 v1, -0x270f

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0, v1, v0}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->loadFail(ILjava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getSlotId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p0, v1, v0}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->loadFail(ILjava/lang/String;)V

    return-void

    .line 11
    :cond_1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/a;->startLoadTime()V

    .line 12
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->runOnMain()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lio/dcloud/sdk/core/module/-$$Lambda$PT_GqjCCNDRVN0mugzlvgA4MYC8;

    invoke-direct {v0, p0}, Lio/dcloud/sdk/core/module/-$$Lambda$PT_GqjCCNDRVN0mugzlvgA4MYC8;-><init>(Lio/dcloud/sdk/core/module/DCBaseAOLLoader;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->load()V

    .line 18
    :goto_0
    iget-object p1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->B:Landroid/os/Handler;

    iget v0, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->D:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected abstract init(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract load()V
.end method

.method public final loadFail(ILjava/lang/String;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->A:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/dcloud/sdk/core/module/a;->b(ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->A:Z

    .line 5
    iget-object v1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->B:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/d;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;-><init>(Lio/dcloud/sdk/core/module/DCBaseAOLLoader;Ljava/util/List;IILjava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final loadSuccess()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->loadSuccess(Ljava/util/List;)V

    return-void
.end method

.method public final loadSuccess(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/dcloud/sdk/core/module/DCBaseAOL;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->A:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 6
    iget v2, p0, Lio/dcloud/sdk/core/module/DCBaseAOL;->e:I

    iput v2, v1, Lio/dcloud/sdk/core/module/DCBaseAOL;->e:I

    .line 7
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->isSlotSupportBidding()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/dcloud/sdk/core/module/DCBaseAOL;->b(Z)V

    .line 8
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Lio/dcloud/sdk/core/module/DCBaseAOL;->setBiddingECPM(I)V

    .line 9
    iget v2, p0, Lio/dcloud/sdk/core/module/DCBaseAOL;->d:I

    iput v2, v1, Lio/dcloud/sdk/core/module/DCBaseAOL;->d:I

    .line 10
    iget v2, p0, Lio/dcloud/sdk/core/module/DCBaseAOL;->g:I

    iput v2, v1, Lio/dcloud/sdk/core/module/DCBaseAOL;->g:I

    .line 11
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/dcloud/sdk/core/module/DCBaseAOL;->f(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/dcloud/sdk/core/module/DCBaseAOL;->a(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getFeedType()I

    move-result v2

    invoke-virtual {v1, v2}, Lio/dcloud/sdk/core/module/DCBaseAOL;->setFeedType(I)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/a;->m()V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->A:Z

    .line 18
    iget-object v1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->B:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/d;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;-><init>(Lio/dcloud/sdk/core/module/DCBaseAOLLoader;Ljava/util/List;IILjava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public o()Lio/dcloud/h/c/c/a/c;
    .locals 4

    .line 1
    new-instance v0, Lio/dcloud/h/c/c/a/c;

    invoke-direct {v0}, Lio/dcloud/h/c/c/a/c;-><init>()V

    .line 2
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/a;->l()V

    .line 3
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/h/c/c/a/c;->a(Ljava/lang/String;)Lio/dcloud/h/c/c/a/c;

    move-result-object v1

    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/dcloud/h/c/c/a/c;->c(Ljava/lang/String;)Lio/dcloud/h/c/c/a/c;

    move-result-object v1

    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/dcloud/h/c/c/a/c;->b(Ljava/lang/String;)Lio/dcloud/h/c/c/a/c;

    move-result-object v1

    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/dcloud/h/c/c/a/c;->d(Ljava/lang/String;)Lio/dcloud/h/c/c/a/c;

    move-result-object v1

    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/a;->k()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/dcloud/h/c/c/a/c;->a(J)Lio/dcloud/h/c/c/a/c;

    .line 4
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/a;->getAdStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/dcloud/h/c/c/a/c;->a(I)Lio/dcloud/h/c/c/a/c;

    return-object v0
.end method

.method protected runOnMain()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setPlatform(Lio/dcloud/sdk/poly/api/Platform;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public showIn(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method
