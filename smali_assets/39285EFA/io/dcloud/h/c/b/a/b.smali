.class public Lio/dcloud/h/c/b/a/b;
.super Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

# interfaces
.implements Lio/dcloud/h/a/c/a$c;


# instance fields
.field private F:Lio/dcloud/h/a/d/a;

.field private G:Lio/dcloud/sdk/poly/api/Platform;

.field private H:Ljava/lang/String;

.field private I:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

.field private J:Landroid/os/Handler;

.field private K:I


# direct methods
.method public constructor <init>(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;-><init>(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Landroid/app/Activity;)V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lio/dcloud/h/c/b/a/b;->H:Ljava/lang/String;

    .line 4
    new-instance p1, Lio/dcloud/h/c/b/a/b$a;

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lio/dcloud/h/c/b/a/b$a;-><init>(Lio/dcloud/h/c/b/a/b;Landroid/os/Looper;)V

    iput-object p1, p0, Lio/dcloud/h/c/b/a/b;->J:Landroid/os/Handler;

    const/16 p1, 0x1388

    .line 12
    iput p1, p0, Lio/dcloud/h/c/b/a/b;->K:I

    return-void
.end method

.method static synthetic a(Lio/dcloud/h/c/b/a/b;)Lio/dcloud/sdk/base/dcloud/ADHandler$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/h/c/b/a/b;->I:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    return-object p0
.end method

.method static synthetic a(Lio/dcloud/h/c/b/a/b;Lio/dcloud/sdk/base/dcloud/ADHandler$g;)Lio/dcloud/sdk/base/dcloud/ADHandler$g;
    .locals 0

    .line 2
    iput-object p1, p0, Lio/dcloud/h/c/b/a/b;->I:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    return-object p1
.end method

.method private synthetic a(Landroid/view/ViewGroup;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lio/dcloud/h/c/b/a/b;->c(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private synthetic b(Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/b/a/b;->F:Lio/dcloud/h/a/d/a;

    invoke-virtual {v0, p1}, Lio/dcloud/h/a/c/a;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private c(Landroid/view/ViewGroup;)V
    .locals 4

    .line 1
    new-instance v0, Lio/dcloud/sdk/base/dcloud/j;

    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/h/c/b/a/b;->I:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    new-instance v3, Lio/dcloud/h/c/b/a/b$b;

    invoke-direct {v3, p0}, Lio/dcloud/h/c/b/a/b$b;-><init>(Lio/dcloud/h/c/b/a/b;)V

    invoke-direct {v0, v1, v2, p1, v3}, Lio/dcloud/sdk/base/dcloud/j;-><init>(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$g;Landroid/view/ViewGroup;Lio/dcloud/sdk/base/dcloud/f;)V

    .line 27
    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/j;->b()V

    return-void
.end method

.method public static synthetic lambda$BiQ110WlVVTpp9mgzAH22_Kax8s(Lio/dcloud/h/c/b/a/b;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/dcloud/h/c/b/a/b;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static synthetic lambda$N37DeYgsjpvfbhzO9bofqGpsiGc(Lio/dcloud/h/c/b/a/b;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/dcloud/h/c/b/a/b;->b(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static synthetic lambda$j8e5QgJxu60jIOLs2I7mgVxWFzI(Lio/dcloud/h/c/b/a/b;)V
    .locals 0

    invoke-direct {p0}, Lio/dcloud/h/c/b/a/b;->p()V

    return-void
.end method

.method private synthetic p()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lio/dcloud/h/c/b/a/b;->G:Lio/dcloud/sdk/poly/api/Platform;

    invoke-virtual {v0}, Lio/dcloud/sdk/poly/api/Platform;->getSplash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getSlotId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lio/dcloud/h/c/b/a/b;->G:Lio/dcloud/sdk/poly/api/Platform;

    invoke-virtual {v0}, Lio/dcloud/sdk/poly/api/Platform;->getEr()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lio/dcloud/h/c/b/a/b;->G:Lio/dcloud/sdk/poly/api/Platform;

    invoke-virtual {v0}, Lio/dcloud/sdk/poly/api/Platform;->getEc()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lio/dcloud/h/a/b;->a(Lio/dcloud/h/a/c/a$c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/h/a/d/a;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/h/c/b/a/b;->F:Lio/dcloud/h/a/d/a;

    .line 2
    invoke-virtual {v0}, Lio/dcloud/h/a/d/a;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onClick()V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    .line 6
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";message:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x13ec

    invoke-interface {v0, p2, p1}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onShowError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONArray;Z)V
    .locals 8

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::::::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uniAd-finish"

    invoke-static {v1, v0}, Lio/dcloud/sdk/poly/base/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lio/dcloud/h/c/b/a/b;->J:Landroid/os/Handler;

    iget v1, p0, Lio/dcloud/h/c/b/a/b;->K:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10
    iget-object v0, p0, Lio/dcloud/h/c/b/a/b;->J:Landroid/os/Handler;

    iget v1, p0, Lio/dcloud/h/c/b/a/b;->K:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, ""

    const/16 v1, -0x270f

    if-eqz p2, :cond_5

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 24
    :cond_0
    new-instance p2, Lio/dcloud/h/c/b/a/b$c;

    invoke-direct {p2, p0}, Lio/dcloud/h/c/b/a/b$c;-><init>(Lio/dcloud/h/c/b/a/b;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 57
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 58
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 60
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v3, v5, v6, v7, p2}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;Lorg/json/JSONObject;JLio/dcloud/sdk/base/dcloud/ADHandler$i;)V

    const/4 v3, 0x0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_6

    .line 66
    invoke-virtual {p0, v1, v0}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->loadFail(ILjava/lang/String;)V

    goto :goto_2

    .line 67
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {}, Lio/dcloud/h/c/a;->d()Lio/dcloud/h/c/a;

    move-result-object p2

    invoke-virtual {p2}, Lio/dcloud/h/c/a;->b()Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;

    move-result-object p2

    invoke-virtual {p2}, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;->getAppId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/dcloud/sdk/base/dcloud/ADHandler;->b(Landroid/content/Context;Ljava/lang/String;)Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->a()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 69
    iput-object p1, p0, Lio/dcloud/h/c/b/a/b;->I:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    .line 70
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getDCloudId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->a(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->loadSuccess()V

    goto :goto_2

    .line 73
    :cond_4
    invoke-virtual {p0, v1, v0}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->loadFail(ILjava/lang/String;)V

    goto :goto_2

    .line 122
    :cond_5
    invoke-virtual {p0, v1, v0}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->loadFail(ILjava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public b()V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onClose()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 28
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onSkip()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onShow()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/b/a/b;->G:Lio/dcloud/sdk/poly/api/Platform;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lio/dcloud/sdk/poly/api/Platform;->getAppid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/b/a/b;->G:Lio/dcloud/sdk/poly/api/Platform;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lio/dcloud/sdk/poly/api/Platform;->getTid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/b/a/b;->G:Lio/dcloud/sdk/poly/api/Platform;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/dcloud/h/c/b/a/b;->H:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lio/dcloud/sdk/poly/api/Platform;->getType()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public load()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/b/a/b;->H:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    const/16 v2, -0x270f

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v2, v1}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->loadFail(ILjava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lio/dcloud/h/c/b/a/b;->H:Ljava/lang/String;

    const-string v3, "dcloud"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "uniAd"

    const-string v1, "load base"

    .line 6
    invoke-static {v0, v1}, Lio/dcloud/sdk/poly/base/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lio/dcloud/h/c/b/a/b;->J:Landroid/os/Handler;

    iget v1, p0, Lio/dcloud/h/c/b/a/b;->K:I

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lio/dcloud/h/c/b/a/b;->G:Lio/dcloud/sdk/poly/api/Platform;

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {p0, v2, v1}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->loadFail(ILjava/lang/String;)V

    return-void

    .line 14
    :cond_2
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/h/c/b/a/-$$Lambda$b$j8e5QgJxu60jIOLs2I7mgVxWFzI;

    invoke-direct {v1, p0}, Lio/dcloud/h/c/b/a/-$$Lambda$b$j8e5QgJxu60jIOLs2I7mgVxWFzI;-><init>(Lio/dcloud/h/c/b/a/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->loadFail(ILjava/lang/String;)V

    return-void
.end method

.method public onSplashAdLoad()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->loadSuccess()V

    return-void
.end method

.method public runOnMain()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setPlatform(Lio/dcloud/sdk/poly/api/Platform;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/h/c/b/a/b;->G:Lio/dcloud/sdk/poly/api/Platform;

    .line 2
    iput-object p2, p0, Lio/dcloud/h/c/b/a/b;->H:Ljava/lang/String;

    return-void
.end method

.method public showIn(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/b/a/b;->F:Lio/dcloud/h/a/d/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/dcloud/h/c/b/a/b;->I:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lio/dcloud/h/c/b/a/b;->H:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    :cond_1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object p1

    const/16 v0, -0x1390

    invoke-static {v0}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onShowError(ILjava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    if-nez p1, :cond_5

    .line 7
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object p1

    const/16 v0, -0x1396

    invoke-static {v0}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onShowError(ILjava/lang/String;)V

    :cond_4
    return-void

    .line 11
    :cond_5
    iget-object v0, p0, Lio/dcloud/h/c/b/a/b;->H:Ljava/lang/String;

    const-string v1, "dcloud"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 12
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 13
    invoke-direct {p0, p1}, Lio/dcloud/h/c/b/a/b;->c(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 15
    :cond_6
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/h/c/b/a/-$$Lambda$b$BiQ110WlVVTpp9mgzAH22_Kax8s;

    invoke-direct {v1, p0, p1}, Lio/dcloud/h/c/b/a/-$$Lambda$b$BiQ110WlVVTpp9mgzAH22_Kax8s;-><init>(Lio/dcloud/h/c/b/a/b;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 19
    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_8

    .line 20
    iget-object v0, p0, Lio/dcloud/h/c/b/a/b;->F:Lio/dcloud/h/a/d/a;

    invoke-virtual {v0, p1}, Lio/dcloud/h/a/c/a;->a(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 22
    :cond_8
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/h/c/b/a/-$$Lambda$b$N37DeYgsjpvfbhzO9bofqGpsiGc;

    invoke-direct {v1, p0, p1}, Lio/dcloud/h/c/b/a/-$$Lambda$b$N37DeYgsjpvfbhzO9bofqGpsiGc;-><init>(Lio/dcloud/h/c/b/a/b;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
