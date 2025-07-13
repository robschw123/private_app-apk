.class public Lio/dcloud/h/c/c/f/c/a/a;
.super Lio/dcloud/h/c/c/f/c/f/a;

# interfaces
.implements Lio/dcloud/sdk/core/api/AOLLoader$ContentPageVideoListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/h/c/c/f/c/f/a;-><init>(Landroid/app/Activity;I)V

    return-void
.end method


# virtual methods
.method public a(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Lio/dcloud/h/c/c/f/a/c;)V
    .locals 2

    :try_start_0
    const-string v0, "com.kwad.sdk.api.KsContentPage"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-super {p0, p1, p2}, Lio/dcloud/h/c/c/f/c/f/a;->a(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Lio/dcloud/h/c/c/f/a/c;)V

    return-void

    :catch_0
    nop

    if-eqz p2, :cond_0

    const/16 p1, -0x13ba

    const/4 v0, 0x0

    const-string v1, "\u5f53\u524d\u73af\u5883\u6ca1\u6709\u5feb\u624b\u5185\u5bb9\u8054\u76dfSDK"

    .line 8
    invoke-interface {p2, p1, v1, v0}, Lio/dcloud/h/c/c/f/a/c;->onError(ILjava/lang/String;Lorg/json/JSONArray;)V

    :cond_0
    return-void
.end method

.method public onComplete(Lio/dcloud/sdk/core/api/ContentPage$ContentPageItem;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->q:Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    instance-of v1, v0, Lio/dcloud/sdk/core/api/AOLLoader$ContentPageVideoListener;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lio/dcloud/sdk/core/api/AOLLoader$ContentPageVideoListener;

    invoke-interface {v0, p1}, Lio/dcloud/sdk/core/api/AOLLoader$ContentPageVideoListener;->onComplete(Lio/dcloud/sdk/core/api/ContentPage$ContentPageItem;)V

    :cond_0
    return-void
.end method

.method public onError(Lio/dcloud/sdk/core/api/ContentPage$ContentPageItem;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->q:Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    instance-of v1, v0, Lio/dcloud/sdk/core/api/AOLLoader$ContentPageVideoListener;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lio/dcloud/sdk/core/api/AOLLoader$ContentPageVideoListener;

    invoke-interface {v0, p1}, Lio/dcloud/sdk/core/api/AOLLoader$ContentPageVideoListener;->onError(Lio/dcloud/sdk/core/api/ContentPage$ContentPageItem;)V

    :cond_0
    return-void
.end method

.method public onPause(Lio/dcloud/sdk/core/api/ContentPage$ContentPageItem;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->q:Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    instance-of v1, v0, Lio/dcloud/sdk/core/api/AOLLoader$ContentPageVideoListener;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lio/dcloud/sdk/core/api/AOLLoader$ContentPageVideoListener;

    invoke-interface {v0, p1}, Lio/dcloud/sdk/core/api/AOLLoader$ContentPageVideoListener;->onPause(Lio/dcloud/sdk/core/api/ContentPage$ContentPageItem;)V

    :cond_0
    return-void
.end method

.method public onResume(Lio/dcloud/sdk/core/api/ContentPage$ContentPageItem;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->q:Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    instance-of v1, v0, Lio/dcloud/sdk/core/api/AOLLoader$ContentPageVideoListener;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lio/dcloud/sdk/core/api/AOLLoader$ContentPageVideoListener;

    invoke-interface {v0, p1}, Lio/dcloud/sdk/core/api/AOLLoader$ContentPageVideoListener;->onResume(Lio/dcloud/sdk/core/api/ContentPage$ContentPageItem;)V

    :cond_0
    return-void
.end method

.method public onStart(Lio/dcloud/sdk/core/api/ContentPage$ContentPageItem;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->q:Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    instance-of v1, v0, Lio/dcloud/sdk/core/api/AOLLoader$ContentPageVideoListener;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lio/dcloud/sdk/core/api/AOLLoader$ContentPageVideoListener;

    invoke-interface {v0, p1}, Lio/dcloud/sdk/core/api/AOLLoader$ContentPageVideoListener;->onStart(Lio/dcloud/sdk/core/api/ContentPage$ContentPageItem;)V

    :cond_0
    return-void
.end method

.method public s()Landroidx/fragment/app/Fragment;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->s:Lio/dcloud/sdk/core/module/DCBaseAOL;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "getContentPage"

    const/4 v2, 0x0

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lio/dcloud/h/c/c/f/c/f/a;->s:Lio/dcloud/sdk/core/module/DCBaseAOL;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
