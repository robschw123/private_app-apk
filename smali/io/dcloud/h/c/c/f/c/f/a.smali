.class public Lio/dcloud/h/c/c/f/c/f/a;
.super Lio/dcloud/h/c/c/e/a;

# interfaces
.implements Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;


# instance fields
.field protected q:Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

.field protected r:Lio/dcloud/h/c/c/f/a/c;

.field protected s:Lio/dcloud/sdk/core/module/DCBaseAOL;

.field private t:Z

.field private u:Z

.field private v:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/h/c/c/e/a;-><init>(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lio/dcloud/h/c/c/f/c/f/a;->t:Z

    .line 3
    iput-boolean p1, p0, Lio/dcloud/h/c/c/f/c/f/a;->u:Z

    .line 4
    iput-boolean p1, p0, Lio/dcloud/h/c/c/f/c/f/a;->v:Z

    .line 8
    iput p2, p0, Lio/dcloud/h/c/c/e/c;->d:I

    return-void
.end method

.method private static synthetic a(Lio/dcloud/h/c/c/f/a/c;)V
    .locals 3

    if-eqz p0, :cond_0

    const/16 v0, -0x1399

    .line 35
    invoke-static {v0}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lio/dcloud/h/c/c/f/a/c;->onError(ILjava/lang/String;Lorg/json/JSONArray;)V

    :cond_0
    return-void
.end method

.method private static synthetic b(Lio/dcloud/h/c/c/f/a/c;)V
    .locals 3

    if-eqz p0, :cond_0

    const/16 v0, -0x139d

    .line 3
    invoke-static {v0}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lio/dcloud/h/c/c/f/a/c;->onError(ILjava/lang/String;Lorg/json/JSONArray;)V

    :cond_0
    return-void
.end method

.method private synthetic c(ILjava/lang/String;Lorg/json/JSONArray;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->r:Lio/dcloud/h/c/c/f/a/c;

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0, p1, p2, p3}, Lio/dcloud/h/c/c/f/a/c;->onError(ILjava/lang/String;Lorg/json/JSONArray;)V

    :cond_0
    return-void
.end method

.method private synthetic c(Ljava/util/List;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/sdk/core/module/DCBaseAOL;

    iput-object p1, p0, Lio/dcloud/h/c/c/f/c/f/a;->s:Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 3
    invoke-virtual {p1, p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->a(Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;)V

    .line 4
    iget-object p1, p0, Lio/dcloud/h/c/c/f/c/f/a;->r:Lio/dcloud/h/c/c/f/a/c;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Lio/dcloud/h/c/c/f/a/c;->onLoaded()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lio/dcloud/h/c/c/f/c/f/a;->r:Lio/dcloud/h/c/c/f/a/c;

    if-eqz p1, :cond_1

    const/16 v0, -0x138d

    .line 8
    invoke-static {v0}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lio/dcloud/h/c/c/f/a/c;->onError(ILjava/lang/String;Lorg/json/JSONArray;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic d(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->q:Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onShowError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$4L8voZw0dYu8QDSEHVl9j4U51kI(Lio/dcloud/h/c/c/f/c/f/a;ILjava/lang/String;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/h/c/c/f/c/f/a;->c(ILjava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method public static synthetic lambda$9NaaWcIIOL0fc9WQqSCAG9L7Pbs(Lio/dcloud/h/c/c/f/c/f/a;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/dcloud/h/c/c/f/c/f/a;->d(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$9sc7NfPMjsq74GBDh3d_XB0ovJQ(Lio/dcloud/h/c/c/f/c/f/a;)V
    .locals 0

    invoke-direct {p0}, Lio/dcloud/h/c/c/f/c/f/a;->n()V

    return-void
.end method

.method public static synthetic lambda$FRyQ0ntIkB6XdHxM_sHFdf-0_3E(Lio/dcloud/h/c/c/f/a/c;)V
    .locals 0

    invoke-static {p0}, Lio/dcloud/h/c/c/f/c/f/a;->a(Lio/dcloud/h/c/c/f/a/c;)V

    return-void
.end method

.method public static synthetic lambda$NNsROJQrLDNfHEca7C5CV19_V_Y(Lio/dcloud/h/c/c/f/c/f/a;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/dcloud/h/c/c/f/c/f/a;->c(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$SrkrH_pBhi-1UAahFUSBwdYHDyE(Lio/dcloud/h/c/c/f/a/c;)V
    .locals 0

    invoke-static {p0}, Lio/dcloud/h/c/c/f/c/f/a;->b(Lio/dcloud/h/c/c/f/a/c;)V

    return-void
.end method

.method public static synthetic lambda$T7NiYfOpRQhODeYAVX0uw0mje2k(Lio/dcloud/h/c/c/f/c/f/a;)V
    .locals 0

    invoke-direct {p0}, Lio/dcloud/h/c/c/f/c/f/a;->p()V

    return-void
.end method

.method public static synthetic lambda$TxZZd2tyx7D1RB_s1nHSgCmsLs0(Lio/dcloud/h/c/c/f/c/f/a;)V
    .locals 0

    invoke-direct {p0}, Lio/dcloud/h/c/c/f/c/f/a;->m()V

    return-void
.end method

.method public static synthetic lambda$fUOsI_VAlTNLnd93IVavAGLoN_w(Lio/dcloud/h/c/c/f/c/f/a;)V
    .locals 0

    invoke-direct {p0}, Lio/dcloud/h/c/c/f/c/f/a;->o()V

    return-void
.end method

.method public static synthetic lambda$iA8DMx0WyECyzYyyi3LY6Dl9yyI(Lio/dcloud/h/c/c/f/c/f/a;)V
    .locals 0

    invoke-direct {p0}, Lio/dcloud/h/c/c/f/c/f/a;->r()V

    return-void
.end method

.method public static synthetic lambda$wd3Z0YWWtAmtn1S-xBwyCt_nO_M(Lio/dcloud/h/c/c/f/c/f/a;)V
    .locals 0

    invoke-direct {p0}, Lio/dcloud/h/c/c/f/c/f/a;->q()V

    return-void
.end method

.method private synthetic m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->q:Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onClick()V

    :cond_0
    return-void
.end method

.method private synthetic n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->q:Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onClose()V

    :cond_0
    return-void
.end method

.method private synthetic o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->q:Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onShow()V

    :cond_0
    return-void
.end method

.method private synthetic p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->q:Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onSkip()V

    :cond_0
    return-void
.end method

.method private synthetic q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->q:Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onVideoPlayEnd()V

    :cond_0
    return-void
.end method

.method private synthetic r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->q:Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    if-eqz v0, :cond_0

    const/16 v1, -0x138e

    .line 2
    invoke-static {v1}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onShowError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/String;Lorg/json/JSONArray;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->v:Z

    .line 2
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

    .line 3
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/h/c/c/f/c/f/-$$Lambda$a$4L8voZw0dYu8QDSEHVl9j4U51kI;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/dcloud/h/c/c/f/c/f/-$$Lambda$a$4L8voZw0dYu8QDSEHVl9j4U51kI;-><init>(Lio/dcloud/h/c/c/f/c/f/a;ILjava/lang/String;Lorg/json/JSONArray;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    .line 4
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->t:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lio/dcloud/h/c/c/f/c/f/-$$Lambda$a$iA8DMx0WyECyzYyyi3LY6Dl9yyI;

    invoke-direct {v0, p0}, Lio/dcloud/h/c/c/f/c/f/-$$Lambda$a$iA8DMx0WyECyzYyyi3LY6Dl9yyI;-><init>(Lio/dcloud/h/c/c/f/c/f/a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->s:Lio/dcloud/sdk/core/module/DCBaseAOL;

    instance-of v1, v0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    if-eqz v1, :cond_1

    .line 12
    check-cast v0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    invoke-virtual {v0, p1}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->show(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public a(Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lio/dcloud/h/c/c/f/c/f/a;->q:Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    return-void
.end method

.method public a(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Lio/dcloud/h/c/c/f/a/c;)V
    .locals 1

    .line 14
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->u:Z

    if-eqz v0, :cond_0

    .line 15
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lio/dcloud/h/c/c/f/c/f/-$$Lambda$a$SrkrH_pBhi-1UAahFUSBwdYHDyE;

    invoke-direct {v0, p2}, Lio/dcloud/h/c/c/f/c/f/-$$Lambda$a$SrkrH_pBhi-1UAahFUSBwdYHDyE;-><init>(Lio/dcloud/h/c/c/f/a/c;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 21
    :cond_0
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->v:Z

    if-eqz v0, :cond_1

    .line 22
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lio/dcloud/h/c/c/f/c/f/-$$Lambda$a$FRyQ0ntIkB6XdHxM_sHFdf-0_3E;

    invoke-direct {v0, p2}, Lio/dcloud/h/c/c/f/c/f/-$$Lambda$a$FRyQ0ntIkB6XdHxM_sHFdf-0_3E;-><init>(Lio/dcloud/h/c/c/f/a/c;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->t:Z

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->s:Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 31
    invoke-virtual {p0, p1}, Lio/dcloud/h/c/c/e/c;->a(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;)V

    .line 32
    iput-object p2, p0, Lio/dcloud/h/c/c/f/c/f/a;->r:Lio/dcloud/h/c/c/f/a/c;

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lio/dcloud/h/c/c/f/c/f/a;->v:Z

    .line 34
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/d;->a()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected a(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lio/dcloud/h/c/c/f/c/f/a;->v:Z

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

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->v:Z

    .line 2
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/h/c/c/f/c/f/-$$Lambda$a$NNsROJQrLDNfHEca7C5CV19_V_Y;

    invoke-direct {v1, p0, p1}, Lio/dcloud/h/c/c/f/c/f/-$$Lambda$a$NNsROJQrLDNfHEca7C5CV19_V_Y;-><init>(Lio/dcloud/h/c/c/f/c/f/a;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->s:Lio/dcloud/sdk/core/module/DCBaseAOL;

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
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->s:Lio/dcloud/sdk/core/module/DCBaseAOL;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->destroy()V

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->s:Lio/dcloud/sdk/core/module/DCBaseAOL;

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

.method public onClick()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/h/c/c/e/a;->a()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/h/c/c/f/c/f/a;->s:Lio/dcloud/sdk/core/module/DCBaseAOL;

    invoke-virtual {p0, v0, v1}, Lio/dcloud/h/c/c/e/b;->a(Landroid/app/Activity;Lio/dcloud/sdk/core/module/DCBaseAOL;)V

    .line 2
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/h/c/c/f/c/f/-$$Lambda$a$TxZZd2tyx7D1RB_s1nHSgCmsLs0;

    invoke-direct {v1, p0}, Lio/dcloud/h/c/c/f/c/f/-$$Lambda$a$TxZZd2tyx7D1RB_s1nHSgCmsLs0;-><init>(Lio/dcloud/h/c/c/f/c/f/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onClose()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->u:Z

    .line 2
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/h/c/c/f/c/f/-$$Lambda$a$9sc7NfPMjsq74GBDh3d_XB0ovJQ;

    invoke-direct {v1, p0}, Lio/dcloud/h/c/c/f/c/f/-$$Lambda$a$9sc7NfPMjsq74GBDh3d_XB0ovJQ;-><init>(Lio/dcloud/h/c/c/f/c/f/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onShow()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->t:Z

    .line 2
    iput-boolean v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->u:Z

    .line 3
    invoke-virtual {p0}, Lio/dcloud/h/c/c/e/a;->a()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/h/c/c/f/c/f/a;->s:Lio/dcloud/sdk/core/module/DCBaseAOL;

    invoke-virtual {p0, v0, v1}, Lio/dcloud/h/c/c/e/b;->b(Landroid/app/Activity;Lio/dcloud/sdk/core/module/DCBaseAOL;)V

    .line 4
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/h/c/c/f/c/f/-$$Lambda$a$fUOsI_VAlTNLnd93IVavAGLoN_w;

    invoke-direct {v1, p0}, Lio/dcloud/h/c/c/f/c/f/-$$Lambda$a$fUOsI_VAlTNLnd93IVavAGLoN_w;-><init>(Lio/dcloud/h/c/c/f/c/f/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onShowError(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->u:Z

    .line 2
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/h/c/c/f/c/f/-$$Lambda$a$9NaaWcIIOL0fc9WQqSCAG9L7Pbs;

    invoke-direct {v1, p0, p1, p2}, Lio/dcloud/h/c/c/f/c/f/-$$Lambda$a$9NaaWcIIOL0fc9WQqSCAG9L7Pbs;-><init>(Lio/dcloud/h/c/c/f/c/f/a;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSkip()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->u:Z

    .line 2
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/h/c/c/f/c/f/-$$Lambda$a$T7NiYfOpRQhODeYAVX0uw0mje2k;

    invoke-direct {v1, p0}, Lio/dcloud/h/c/c/f/c/f/-$$Lambda$a$T7NiYfOpRQhODeYAVX0uw0mje2k;-><init>(Lio/dcloud/h/c/c/f/c/f/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoPlayEnd()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->u:Z

    .line 2
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/h/c/c/f/c/f/-$$Lambda$a$wd3Z0YWWtAmtn1S-xBwyCt_nO_M;

    invoke-direct {v1, p0}, Lio/dcloud/h/c/c/f/c/f/-$$Lambda$a$wd3Z0YWWtAmtn1S-xBwyCt_nO_M;-><init>(Lio/dcloud/h/c/c/f/c/f/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
