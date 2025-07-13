.class public Lio/dcloud/sdk/core/v2/contentPage/DCContentPage;
.super Lio/dcloud/sdk/core/v2/base/DCBaseAOL;

# interfaces
.implements Lio/dcloud/sdk/core/api/AOLLoader$ContentPageVideoListener;


# instance fields
.field private b:Lio/dcloud/h/c/c/f/c/a/a;

.field private c:Lio/dcloud/sdk/core/v2/contentPage/DCContentPageVideoListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/sdk/core/v2/base/DCBaseAOL;-><init>(Landroid/app/Activity;)V

    .line 2
    new-instance v0, Lio/dcloud/h/c/c/f/c/a/a;

    const/16 v1, 0xe

    invoke-direct {v0, p1, v1}, Lio/dcloud/h/c/c/f/c/a/a;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lio/dcloud/sdk/core/v2/contentPage/DCContentPage;->b:Lio/dcloud/h/c/c/f/c/a/a;

    return-void
.end method


# virtual methods
.method public getContentPage()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/contentPage/DCContentPage;->b:Lio/dcloud/h/c/c/f/c/a/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lio/dcloud/h/c/c/f/c/a/a;->s()Landroidx/fragment/app/Fragment;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public load(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Lio/dcloud/sdk/core/v2/contentPage/DCContentPageLoadListener;)V
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
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/contentPage/DCContentPage;->b:Lio/dcloud/h/c/c/f/c/a/a;

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
    new-instance v1, Lio/dcloud/sdk/core/v2/contentPage/DCContentPage$1;

    invoke-direct {v1, p0, p2}, Lio/dcloud/sdk/core/v2/contentPage/DCContentPage$1;-><init>(Lio/dcloud/sdk/core/v2/contentPage/DCContentPage;Lio/dcloud/sdk/core/v2/contentPage/DCContentPageLoadListener;)V

    invoke-virtual {v0, p1, v1}, Lio/dcloud/h/c/c/f/c/a/a;->a(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Lio/dcloud/h/c/c/f/a/c;)V

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
    .locals 0

    return-void
.end method

.method public onClose()V
    .locals 0

    return-void
.end method

.method public onComplete(Lio/dcloud/sdk/core/api/ContentPage$ContentPageItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/contentPage/DCContentPage;->c:Lio/dcloud/sdk/core/v2/contentPage/DCContentPageVideoListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lio/dcloud/sdk/core/v2/contentPage/DCContentPageVideoListener;->onComplete(Lio/dcloud/sdk/core/api/ContentPage$ContentPageItem;)V

    :cond_0
    return-void
.end method

.method public onError(Lio/dcloud/sdk/core/api/ContentPage$ContentPageItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/contentPage/DCContentPage;->c:Lio/dcloud/sdk/core/v2/contentPage/DCContentPageVideoListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lio/dcloud/sdk/core/v2/contentPage/DCContentPageVideoListener;->onError(Lio/dcloud/sdk/core/api/ContentPage$ContentPageItem;)V

    :cond_0
    return-void
.end method

.method public onPause(Lio/dcloud/sdk/core/api/ContentPage$ContentPageItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/contentPage/DCContentPage;->c:Lio/dcloud/sdk/core/v2/contentPage/DCContentPageVideoListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lio/dcloud/sdk/core/v2/contentPage/DCContentPageVideoListener;->onPause(Lio/dcloud/sdk/core/api/ContentPage$ContentPageItem;)V

    :cond_0
    return-void
.end method

.method public onResume(Lio/dcloud/sdk/core/api/ContentPage$ContentPageItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/contentPage/DCContentPage;->c:Lio/dcloud/sdk/core/v2/contentPage/DCContentPageVideoListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lio/dcloud/sdk/core/v2/contentPage/DCContentPageVideoListener;->onResume(Lio/dcloud/sdk/core/api/ContentPage$ContentPageItem;)V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method

.method public onShowError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSkip()V
    .locals 0

    return-void
.end method

.method public onStart(Lio/dcloud/sdk/core/api/ContentPage$ContentPageItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/contentPage/DCContentPage;->c:Lio/dcloud/sdk/core/v2/contentPage/DCContentPageVideoListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lio/dcloud/sdk/core/v2/contentPage/DCContentPageVideoListener;->onStart(Lio/dcloud/sdk/core/api/ContentPage$ContentPageItem;)V

    :cond_0
    return-void
.end method

.method public onVideoPlayEnd()V
    .locals 0

    return-void
.end method

.method public setContentPageVideoListener(Lio/dcloud/sdk/core/v2/contentPage/DCContentPageVideoListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/core/v2/contentPage/DCContentPage;->c:Lio/dcloud/sdk/core/v2/contentPage/DCContentPageVideoListener;

    .line 2
    iget-object p1, p0, Lio/dcloud/sdk/core/v2/contentPage/DCContentPage;->b:Lio/dcloud/h/c/c/f/c/a/a;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Lio/dcloud/h/c/c/f/c/f/a;->a(Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;)V

    :cond_0
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/contentPage/DCContentPage;->b:Lio/dcloud/h/c/c/f/c/a/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lio/dcloud/h/c/c/f/c/f/a;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
