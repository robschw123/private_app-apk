.class public Lio/dcloud/sdk/core/v2/splash/DCSplashAOL;
.super Lio/dcloud/sdk/core/v2/base/DCBaseAOL;

# interfaces
.implements Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;


# instance fields
.field private final b:Lio/dcloud/h/c/c/f/c/e/a;

.field private c:Lio/dcloud/sdk/core/v2/splash/DCSplashAOLListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/sdk/core/v2/base/DCBaseAOL;-><init>(Landroid/app/Activity;)V

    .line 2
    new-instance v0, Lio/dcloud/h/c/c/f/c/e/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lio/dcloud/h/c/c/f/c/e/a;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lio/dcloud/sdk/core/v2/splash/DCSplashAOL;->b:Lio/dcloud/h/c/c/f/c/e/a;

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/splash/DCSplashAOL;->b:Lio/dcloud/h/c/c/f/c/e/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/dcloud/h/c/c/f/c/f/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public load(Lio/dcloud/sdk/core/entry/SplashAOLConfig;Lio/dcloud/sdk/core/v2/splash/DCSplashAOLLoadListener;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/v2/base/DCBaseAOL;->getContext()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/splash/DCSplashAOL;->b:Lio/dcloud/h/c/c/f/c/e/a;

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    const/16 p1, -0x1397

    .line 9
    invoke-static {p1}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0, v1}, Lio/dcloud/sdk/core/v2/base/DCBaseAOLLoadListener;->onError(ILjava/lang/String;Lorg/json/JSONArray;)V

    :cond_1
    return-void

    .line 12
    :cond_2
    new-instance v1, Lio/dcloud/sdk/core/v2/splash/DCSplashAOL$1;

    invoke-direct {v1, p0, p2}, Lio/dcloud/sdk/core/v2/splash/DCSplashAOL$1;-><init>(Lio/dcloud/sdk/core/v2/splash/DCSplashAOL;Lio/dcloud/sdk/core/v2/splash/DCSplashAOLLoadListener;)V

    invoke-virtual {v0, p1, v1}, Lio/dcloud/h/c/c/f/c/e/a;->a(Lio/dcloud/sdk/core/entry/SplashAOLConfig;Lio/dcloud/h/c/c/f/a/c;)V

    return-void

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    const/16 p1, -0x1396

    .line 13
    invoke-static {p1}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0, v1}, Lio/dcloud/sdk/core/v2/base/DCBaseAOLLoadListener;->onError(ILjava/lang/String;Lorg/json/JSONArray;)V

    :cond_4
    return-void
.end method

.method public onClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/splash/DCSplashAOL;->c:Lio/dcloud/sdk/core/v2/splash/DCSplashAOLListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/v2/splash/DCSplashAOLListener;->onClick()V

    :cond_0
    return-void
.end method

.method public onClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/splash/DCSplashAOL;->c:Lio/dcloud/sdk/core/v2/splash/DCSplashAOLListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/v2/splash/DCSplashAOLListener;->onClose()V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/splash/DCSplashAOL;->c:Lio/dcloud/sdk/core/v2/splash/DCSplashAOLListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/v2/splash/DCSplashAOLListener;->onShow()V

    :cond_0
    return-void
.end method

.method public onShowError(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/splash/DCSplashAOL;->c:Lio/dcloud/sdk/core/v2/splash/DCSplashAOLListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lio/dcloud/sdk/core/v2/splash/DCSplashAOLListener;->onShowError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSkip()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/splash/DCSplashAOL;->c:Lio/dcloud/sdk/core/v2/splash/DCSplashAOLListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/v2/splash/DCSplashAOLListener;->onSkip()V

    :cond_0
    return-void
.end method

.method public onVideoPlayEnd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/splash/DCSplashAOL;->c:Lio/dcloud/sdk/core/v2/splash/DCSplashAOLListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/v2/splash/DCSplashAOLListener;->onVideoPlayEnd()V

    :cond_0
    return-void
.end method

.method public setSplashAdListener(Lio/dcloud/sdk/core/v2/splash/DCSplashAOLListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/core/v2/splash/DCSplashAOL;->c:Lio/dcloud/sdk/core/v2/splash/DCSplashAOLListener;

    .line 2
    iget-object p1, p0, Lio/dcloud/sdk/core/v2/splash/DCSplashAOL;->b:Lio/dcloud/h/c/c/f/c/e/a;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Lio/dcloud/h/c/c/f/c/f/a;->a(Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;)V

    :cond_0
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public show(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/sdk/core/v2/splash/DCSplashAOL;->showIn(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public showIn(Landroid/view/ViewGroup;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/splash/DCSplashAOL;->b:Lio/dcloud/h/c/c/f/c/e/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lio/dcloud/h/c/c/f/c/e/a;->a(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method
