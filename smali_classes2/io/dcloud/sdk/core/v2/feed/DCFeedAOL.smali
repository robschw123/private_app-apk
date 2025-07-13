.class public Lio/dcloud/sdk/core/v2/feed/DCFeedAOL;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/sdk/core/api/AOLLoader$FeedAdInteractionListener;


# instance fields
.field private a:Lio/dcloud/h/c/c/f/c/c/a;

.field protected b:Lio/dcloud/sdk/core/v2/feed/DCFeedAOLListener;


# direct methods
.method public constructor <init>(Lio/dcloud/h/c/c/f/c/c/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/sdk/core/v2/feed/DCFeedAOL;->a:Lio/dcloud/h/c/c/f/c/c/a;

    return-void
.end method

.method private synthetic a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/feed/DCFeedAOL;->a:Lio/dcloud/h/c/c/f/c/c/a;

    invoke-virtual {v0}, Lio/dcloud/h/c/c/f/c/c/a;->k()V

    return-void
.end method

.method public static synthetic lambda$zlF5X-8kR7cG9Dm32QbwFOBmR_U(Lio/dcloud/sdk/core/v2/feed/DCFeedAOL;)V
    .locals 0

    invoke-direct {p0}, Lio/dcloud/sdk/core/v2/feed/DCFeedAOL;->a()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/feed/DCFeedAOL;->a:Lio/dcloud/h/c/c/f/c/c/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/dcloud/h/c/c/f/c/c/a;->d()V

    :cond_0
    return-void
.end method

.method public getFeedAdView(Landroid/app/Activity;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/feed/DCFeedAOL;->a:Lio/dcloud/h/c/c/f/c/c/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lio/dcloud/h/c/c/f/c/c/a;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/feed/DCFeedAOL;->a:Lio/dcloud/h/c/c/f/c/c/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/dcloud/h/c/c/f/c/c/a;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/feed/DCFeedAOL;->a:Lio/dcloud/h/c/c/f/c/c/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/dcloud/h/c/c/f/c/c/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/feed/DCFeedAOL;->b:Lio/dcloud/sdk/core/v2/feed/DCFeedAOLListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/v2/feed/DCFeedAOLListener;->onClick()V

    :cond_0
    return-void
.end method

.method public onClosed(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/feed/DCFeedAOL;->b:Lio/dcloud/sdk/core/v2/feed/DCFeedAOLListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lio/dcloud/sdk/core/v2/feed/DCFeedAOLListener;->onClosed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRenderFail()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/feed/DCFeedAOL;->b:Lio/dcloud/sdk/core/v2/feed/DCFeedAOLListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/v2/feed/DCFeedAOLListener;->onRenderFail()V

    :cond_0
    return-void
.end method

.method public onRenderSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/feed/DCFeedAOL;->b:Lio/dcloud/sdk/core/v2/feed/DCFeedAOLListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/v2/feed/DCFeedAOLListener;->onRenderSuccess()V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/feed/DCFeedAOL;->b:Lio/dcloud/sdk/core/v2/feed/DCFeedAOLListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/v2/feed/DCFeedAOLListener;->onShow()V

    :cond_0
    return-void
.end method

.method public onShowError()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/feed/DCFeedAOL;->b:Lio/dcloud/sdk/core/v2/feed/DCFeedAOLListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/v2/feed/DCFeedAOLListener;->onShowError()V

    :cond_0
    return-void
.end method

.method public render()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/feed/DCFeedAOL;->a:Lio/dcloud/h/c/c/f/c/c/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lio/dcloud/h/c/c/f/c/c/a;->a(Lio/dcloud/sdk/core/api/AOLLoader$FeedAdInteractionListener;)V

    .line 3
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/sdk/core/v2/feed/-$$Lambda$DCFeedAOL$zlF5X-8kR7cG9Dm32QbwFOBmR_U;

    invoke-direct {v1, p0}, Lio/dcloud/sdk/core/v2/feed/-$$Lambda$DCFeedAOL$zlF5X-8kR7cG9Dm32QbwFOBmR_U;-><init>(Lio/dcloud/sdk/core/v2/feed/DCFeedAOL;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setFeedAdListener(Lio/dcloud/sdk/core/v2/feed/DCFeedAOLListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/core/v2/feed/DCFeedAOL;->b:Lio/dcloud/sdk/core/v2/feed/DCFeedAOLListener;

    return-void
.end method
