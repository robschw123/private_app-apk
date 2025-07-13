.class public Lio/dcloud/h/c/c/f/c/b/a;
.super Lio/dcloud/h/c/c/f/c/c/a;

# interfaces
.implements Lio/dcloud/sdk/core/api/AOLLoader$DrawAdInteractionListener;


# direct methods
.method public constructor <init>(Lio/dcloud/sdk/core/module/DCBaseAOL;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/h/c/c/f/c/c/a;-><init>(Lio/dcloud/sdk/core/module/DCBaseAOL;Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/c/a;->d:Lio/dcloud/sdk/core/api/AOLLoader$FeedAdInteractionListener;

    instance-of v1, v0, Lio/dcloud/sdk/core/api/AOLLoader$DrawAdInteractionListener;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lio/dcloud/sdk/core/api/AOLLoader$DrawAdInteractionListener;

    invoke-interface {v0}, Lio/dcloud/sdk/core/api/AOLLoader$DrawAdInteractionListener;->onEnd()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$WUiSN6BGp7aUFvpapLb90NlKvHc(Lio/dcloud/h/c/c/f/c/b/a;)V
    .locals 0

    invoke-direct {p0}, Lio/dcloud/h/c/c/f/c/b/a;->n()V

    return-void
.end method

.method public static synthetic lambda$YDDRc_roxCvtZYVTgy_xcR8KTP4(Lio/dcloud/h/c/c/f/c/b/a;)V
    .locals 0

    invoke-direct {p0}, Lio/dcloud/h/c/c/f/c/b/a;->l()V

    return-void
.end method

.method public static synthetic lambda$haND96ZxxRksp2D8hl8Sv-oUxmM(Lio/dcloud/h/c/c/f/c/b/a;)V
    .locals 0

    invoke-direct {p0}, Lio/dcloud/h/c/c/f/c/b/a;->o()V

    return-void
.end method

.method public static synthetic lambda$uV5ZqlTShPGvynXfk0Tei0uQsvk(Lio/dcloud/h/c/c/f/c/b/a;)V
    .locals 0

    invoke-direct {p0}, Lio/dcloud/h/c/c/f/c/b/a;->m()V

    return-void
.end method

.method private synthetic m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/c/a;->d:Lio/dcloud/sdk/core/api/AOLLoader$FeedAdInteractionListener;

    instance-of v1, v0, Lio/dcloud/sdk/core/api/AOLLoader$DrawAdInteractionListener;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lio/dcloud/sdk/core/api/AOLLoader$DrawAdInteractionListener;

    invoke-interface {v0}, Lio/dcloud/sdk/core/api/AOLLoader$DrawAdInteractionListener;->onPause()V

    :cond_0
    return-void
.end method

.method private synthetic n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/c/a;->d:Lio/dcloud/sdk/core/api/AOLLoader$FeedAdInteractionListener;

    instance-of v1, v0, Lio/dcloud/sdk/core/api/AOLLoader$DrawAdInteractionListener;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lio/dcloud/sdk/core/api/AOLLoader$DrawAdInteractionListener;

    invoke-interface {v0}, Lio/dcloud/sdk/core/api/AOLLoader$DrawAdInteractionListener;->onResume()V

    :cond_0
    return-void
.end method

.method private synthetic o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/c/a;->d:Lio/dcloud/sdk/core/api/AOLLoader$FeedAdInteractionListener;

    instance-of v1, v0, Lio/dcloud/sdk/core/api/AOLLoader$DrawAdInteractionListener;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lio/dcloud/sdk/core/api/AOLLoader$DrawAdInteractionListener;

    invoke-interface {v0}, Lio/dcloud/sdk/core/api/AOLLoader$DrawAdInteractionListener;->onStart()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 2

    .line 1
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/h/c/c/f/c/b/-$$Lambda$a$YDDRc_roxCvtZYVTgy_xcR8KTP4;

    invoke-direct {v1, p0}, Lio/dcloud/h/c/c/f/c/b/-$$Lambda$a$YDDRc_roxCvtZYVTgy_xcR8KTP4;-><init>(Lio/dcloud/h/c/c/f/c/b/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/h/c/c/f/c/b/-$$Lambda$a$uV5ZqlTShPGvynXfk0Tei0uQsvk;

    invoke-direct {v1, p0}, Lio/dcloud/h/c/c/f/c/b/-$$Lambda$a$uV5ZqlTShPGvynXfk0Tei0uQsvk;-><init>(Lio/dcloud/h/c/c/f/c/b/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/h/c/c/f/c/b/-$$Lambda$a$WUiSN6BGp7aUFvpapLb90NlKvHc;

    invoke-direct {v1, p0}, Lio/dcloud/h/c/c/f/c/b/-$$Lambda$a$WUiSN6BGp7aUFvpapLb90NlKvHc;-><init>(Lio/dcloud/h/c/c/f/c/b/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/h/c/c/f/c/b/-$$Lambda$a$haND96ZxxRksp2D8hl8Sv-oUxmM;

    invoke-direct {v1, p0}, Lio/dcloud/h/c/c/f/c/b/-$$Lambda$a$haND96ZxxRksp2D8hl8Sv-oUxmM;-><init>(Lio/dcloud/h/c/c/f/c/b/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
