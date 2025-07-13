.class public Lio/dcloud/h/c/c/f/c/c/a;
.super Lio/dcloud/h/c/c/e/b;

# interfaces
.implements Lio/dcloud/sdk/core/api/AOLLoader$FeedAdInteractionListener;


# instance fields
.field private final b:Lio/dcloud/sdk/core/module/DCBaseAOL;

.field private final c:Landroid/app/Activity;

.field protected d:Lio/dcloud/sdk/core/api/AOLLoader$FeedAdInteractionListener;


# direct methods
.method public constructor <init>(Lio/dcloud/sdk/core/module/DCBaseAOL;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/dcloud/h/c/c/e/b;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/h/c/c/f/c/c/a;->b:Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 3
    iput-object p2, p0, Lio/dcloud/h/c/c/f/c/c/a;->c:Landroid/app/Activity;

    .line 4
    invoke-virtual {p1, p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->a(Lio/dcloud/sdk/core/api/AOLLoader$FeedAdInteractionListener;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/c/a;->d:Lio/dcloud/sdk/core/api/AOLLoader$FeedAdInteractionListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lio/dcloud/sdk/core/api/AOLLoader$FeedAdInteractionListener;->onClosed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/c/a;->d:Lio/dcloud/sdk/core/api/AOLLoader$FeedAdInteractionListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/api/AOLLoader$FeedAdInteractionListener;->onClicked()V

    :cond_0
    return-void
.end method

.method private synthetic g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/c/a;->d:Lio/dcloud/sdk/core/api/AOLLoader$FeedAdInteractionListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/api/AOLLoader$FeedAdInteractionListener;->onRenderFail()V

    :cond_0
    return-void
.end method

.method private synthetic h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/c/a;->d:Lio/dcloud/sdk/core/api/AOLLoader$FeedAdInteractionListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/api/AOLLoader$FeedAdInteractionListener;->onRenderSuccess()V

    :cond_0
    return-void
.end method

.method private synthetic i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/c/a;->d:Lio/dcloud/sdk/core/api/AOLLoader$FeedAdInteractionListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/api/AOLLoader$FeedAdInteractionListener;->onShow()V

    :cond_0
    return-void
.end method

.method private synthetic j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/c/a;->d:Lio/dcloud/sdk/core/api/AOLLoader$FeedAdInteractionListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/api/AOLLoader$FeedAdInteractionListener;->onShowError()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$17H-JrUi3OuwjlzlpI2tOEjSEN4(Lio/dcloud/h/c/c/f/c/c/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/dcloud/h/c/c/f/c/c/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$8vdOS3NPwTv3Qz8gm9eXeZjln30(Lio/dcloud/h/c/c/f/c/c/a;)V
    .locals 0

    invoke-direct {p0}, Lio/dcloud/h/c/c/f/c/c/a;->j()V

    return-void
.end method

.method public static synthetic lambda$9zDrX-FwcsDJJks9oyosSC6tFzg(Lio/dcloud/h/c/c/f/c/c/a;)V
    .locals 0

    invoke-direct {p0}, Lio/dcloud/h/c/c/f/c/c/a;->g()V

    return-void
.end method

.method public static synthetic lambda$l0vXRcD3sVWzbn2_Ca6s8iv5Od4(Lio/dcloud/h/c/c/f/c/c/a;)V
    .locals 0

    invoke-direct {p0}, Lio/dcloud/h/c/c/f/c/c/a;->i()V

    return-void
.end method

.method public static synthetic lambda$smvrK2vaaNzhsVSHcCNYK_HSu-8(Lio/dcloud/h/c/c/f/c/c/a;)V
    .locals 0

    invoke-direct {p0}, Lio/dcloud/h/c/c/f/c/c/a;->h()V

    return-void
.end method

.method public static synthetic lambda$zR-7vS3CpwzVbR1R-Z_WHENcdRI(Lio/dcloud/h/c/c/f/c/c/a;)V
    .locals 0

    invoke-direct {p0}, Lio/dcloud/h/c/c/f/c/c/a;->f()V

    return-void
.end method


# virtual methods
.method protected a()Landroid/app/Activity;
    .locals 1

    .line 4
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/c/a;->c:Landroid/app/Activity;

    return-object v0
.end method

.method public a(Landroid/app/Activity;)Landroid/view/View;
    .locals 1

    .line 3
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/c/a;->b:Lio/dcloud/sdk/core/module/DCBaseAOL;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getExpressAdView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public a(Lio/dcloud/sdk/core/api/AOLLoader$FeedAdInteractionListener;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lio/dcloud/h/c/c/f/c/c/a;->d:Lio/dcloud/sdk/core/api/AOLLoader$FeedAdInteractionListener;

    return-void
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/c/a;->b:Lio/dcloud/sdk/core/module/DCBaseAOL;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->destroy()V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/c/a;->b:Lio/dcloud/sdk/core/module/DCBaseAOL;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/c/a;->b:Lio/dcloud/sdk/core/module/DCBaseAOL;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/c/a;->b:Lio/dcloud/sdk/core/module/DCBaseAOL;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->render()V

    :cond_0
    return-void
.end method

.method public onClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/c/a;->c:Landroid/app/Activity;

    iget-object v1, p0, Lio/dcloud/h/c/c/f/c/c/a;->b:Lio/dcloud/sdk/core/module/DCBaseAOL;

    invoke-virtual {p0, v0, v1}, Lio/dcloud/h/c/c/e/b;->a(Landroid/app/Activity;Lio/dcloud/sdk/core/module/DCBaseAOL;)V

    .line 2
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/h/c/c/f/c/c/-$$Lambda$a$zR-7vS3CpwzVbR1R-Z_WHENcdRI;

    invoke-direct {v1, p0}, Lio/dcloud/h/c/c/f/c/c/-$$Lambda$a$zR-7vS3CpwzVbR1R-Z_WHENcdRI;-><init>(Lio/dcloud/h/c/c/f/c/c/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onClosed(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/h/c/c/f/c/c/-$$Lambda$a$17H-JrUi3OuwjlzlpI2tOEjSEN4;

    invoke-direct {v1, p0, p1}, Lio/dcloud/h/c/c/f/c/c/-$$Lambda$a$17H-JrUi3OuwjlzlpI2tOEjSEN4;-><init>(Lio/dcloud/h/c/c/f/c/c/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRenderFail()V
    .locals 2

    .line 1
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/h/c/c/f/c/c/-$$Lambda$a$9zDrX-FwcsDJJks9oyosSC6tFzg;

    invoke-direct {v1, p0}, Lio/dcloud/h/c/c/f/c/c/-$$Lambda$a$9zDrX-FwcsDJJks9oyosSC6tFzg;-><init>(Lio/dcloud/h/c/c/f/c/c/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRenderSuccess()V
    .locals 2

    .line 1
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/h/c/c/f/c/c/-$$Lambda$a$smvrK2vaaNzhsVSHcCNYK_HSu-8;

    invoke-direct {v1, p0}, Lio/dcloud/h/c/c/f/c/c/-$$Lambda$a$smvrK2vaaNzhsVSHcCNYK_HSu-8;-><init>(Lio/dcloud/h/c/c/f/c/c/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onShow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/c/a;->c:Landroid/app/Activity;

    iget-object v1, p0, Lio/dcloud/h/c/c/f/c/c/a;->b:Lio/dcloud/sdk/core/module/DCBaseAOL;

    invoke-virtual {p0, v0, v1}, Lio/dcloud/h/c/c/e/b;->b(Landroid/app/Activity;Lio/dcloud/sdk/core/module/DCBaseAOL;)V

    .line 2
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/h/c/c/f/c/c/-$$Lambda$a$l0vXRcD3sVWzbn2_Ca6s8iv5Od4;

    invoke-direct {v1, p0}, Lio/dcloud/h/c/c/f/c/c/-$$Lambda$a$l0vXRcD3sVWzbn2_Ca6s8iv5Od4;-><init>(Lio/dcloud/h/c/c/f/c/c/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onShowError()V
    .locals 2

    .line 1
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/h/c/c/f/c/c/-$$Lambda$a$8vdOS3NPwTv3Qz8gm9eXeZjln30;

    invoke-direct {v1, p0}, Lio/dcloud/h/c/c/f/c/c/-$$Lambda$a$8vdOS3NPwTv3Qz8gm9eXeZjln30;-><init>(Lio/dcloud/h/c/c/f/c/c/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
