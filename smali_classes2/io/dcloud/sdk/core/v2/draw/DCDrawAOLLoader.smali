.class public Lio/dcloud/sdk/core/v2/draw/DCDrawAOLLoader;
.super Lio/dcloud/sdk/core/v2/base/DCBaseAOL;


# instance fields
.field protected b:Lio/dcloud/h/c/c/f/c/b/b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/sdk/core/v2/base/DCBaseAOL;-><init>(Landroid/app/Activity;)V

    .line 2
    new-instance v0, Lio/dcloud/h/c/c/f/c/b/b;

    invoke-direct {v0, p1}, Lio/dcloud/h/c/c/f/c/b/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lio/dcloud/sdk/core/v2/draw/DCDrawAOLLoader;->b:Lio/dcloud/h/c/c/f/c/b/b;

    return-void
.end method


# virtual methods
.method public load(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Lio/dcloud/sdk/core/v2/draw/DCDrawAOLLoadListener;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/v2/base/DCBaseAOL;->getContext()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lio/dcloud/sdk/core/v2/draw/DCDrawAOLLoader;->b:Lio/dcloud/h/c/c/f/c/b/b;

    new-instance v1, Lio/dcloud/sdk/core/v2/draw/DCDrawAOLLoader$1;

    invoke-direct {v1, p0, p2}, Lio/dcloud/sdk/core/v2/draw/DCDrawAOLLoader$1;-><init>(Lio/dcloud/sdk/core/v2/draw/DCDrawAOLLoader;Lio/dcloud/sdk/core/v2/draw/DCDrawAOLLoadListener;)V

    invoke-virtual {v0, p1, v1}, Lio/dcloud/h/c/c/f/c/c/b;->a(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Lio/dcloud/h/c/c/f/a/b;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    const/16 p1, -0x1396

    .line 8
    invoke-static {p1}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Lio/dcloud/sdk/core/v2/base/DCBaseAOLLoadListener;->onError(ILjava/lang/String;Lorg/json/JSONArray;)V

    :cond_2
    return-void
.end method
