.class Lio/dcloud/h/c/b/b/b$c;
.super Lio/dcloud/sdk/core/module/DCBaseAOLLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/h/c/b/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private F:Ljava/lang/Object;

.field private G:Ljava/lang/String;

.field private H:Lio/dcloud/h/c/b/b/a;

.field private I:Lio/dcloud/sdk/poly/api/Platform;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/reflect/Method;

.field private L:Ljava/lang/Object;

.field private M:J

.field final synthetic N:Lio/dcloud/h/c/b/b/b;


# direct methods
.method public constructor <init>(Lio/dcloud/h/c/b/b/b;Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/h/c/b/b/b$c;->N:Lio/dcloud/h/c/b/b/b;

    .line 2
    invoke-direct {p0, p2, p3}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;-><init>(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Landroid/app/Activity;)V

    const-string p1, ""

    .line 3
    iput-object p1, p0, Lio/dcloud/h/c/b/b/b$c;->G:Ljava/lang/String;

    const-wide/16 p1, 0x0

    .line 140
    iput-wide p1, p0, Lio/dcloud/h/c/b/b/b$c;->M:J

    return-void
.end method

.method static synthetic a(Lio/dcloud/h/c/b/b/b$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/h/c/b/b/b$c;->J:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lio/dcloud/h/c/b/b/b$c;->H:Lio/dcloud/h/c/b/b/a;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 3
    invoke-virtual {p0}, Lio/dcloud/h/c/b/b/b$c;->s()V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 20
    iget-object p1, p0, Lio/dcloud/h/c/b/b/b$c;->H:Lio/dcloud/h/c/b/b/a;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 21
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onClose()V

    .line 24
    :cond_0
    invoke-virtual {p0}, Lio/dcloud/h/c/b/b/b$c;->w()V

    return-void
.end method

.method static synthetic b(Lio/dcloud/h/c/b/b/b$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/dcloud/h/c/b/b/b$c;->u()V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "ret"

    .line 2
    new-instance v1, Lio/dcloud/h/c/b/b/b$c$a;

    invoke-direct {v1, p0}, Lio/dcloud/h/c/b/b/b$c$a;-><init>(Lio/dcloud/h/c/b/b/b$c;)V

    invoke-static {p1, p2, v1}, Lio/dcloud/sdk/core/util/RequestUtils;->httpPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)[B

    move-result-object p1

    const p2, -0xc73d

    if-eqz p1, :cond_1

    .line 5
    array-length v1, p1

    if-lez v1, :cond_1

    .line 7
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 9
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->loadSuccess()V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 12
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "msg"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->loadFail(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 16
    :catch_0
    invoke-static {p2}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->loadFail(ILjava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_1
    invoke-static {p2}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->loadFail(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "openlink"

    const-string v1, "ret"

    .line 1
    new-instance v2, Lio/dcloud/h/c/b/b/b$c$b;

    invoke-direct {v2, p0}, Lio/dcloud/h/c/b/b/b$c$b;-><init>(Lio/dcloud/h/c/b/b/b$c;)V

    invoke-static {p1, p2, v2}, Lio/dcloud/sdk/core/util/RequestUtils;->httpPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)[B

    move-result-object p1

    const/16 p2, -0x1395

    if-eqz p1, :cond_3

    .line 4
    array-length v2, p1

    if-lez v2, :cond_3

    .line 6
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "data"

    .line 9
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 13
    :goto_0
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object p1

    invoke-static {p2}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onShowError(ILjava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_1
    iput-object p1, p0, Lio/dcloud/h/c/b/b/b$c;->J:Ljava/lang/String;

    .line 18
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lio/dcloud/h/c/b/b/b$c$c;

    invoke-direct {v0, p0}, Lio/dcloud/h/c/b/b/b$c$c;-><init>(Lio/dcloud/h/c/b/b/b$c;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 39
    :cond_2
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 40
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onShowError(ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 44
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 45
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object p1

    invoke-static {p2}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onShowError(ILjava/lang/String;)V

    goto :goto_1

    .line 49
    :cond_3
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 50
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object p1

    invoke-static {p2}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onShowError(ILjava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/b/b/b$c;->I:Lio/dcloud/sdk/poly/api/Platform;

    invoke-virtual {v0}, Lio/dcloud/sdk/poly/api/Platform;->getEr()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lio/dcloud/h/c/b/b/b$c;->I:Lio/dcloud/sdk/poly/api/Platform;

    invoke-virtual {v1}, Lio/dcloud/sdk/poly/api/Platform;->getEc()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "method"

    .line 4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "key"

    .line 5
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "iv"

    .line 6
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {p1, v1, v0}, Lio/dcloud/sdk/core/util/RequestUtils;->getPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "utf-8"

    .line 9
    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 12
    :catch_0
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "edata="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_0
    return-object p1
.end method

.method public static synthetic lambda$B2-ciPqWDmF8FDdI-uqIR0EgEcY(Lio/dcloud/h/c/b/b/b$c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/dcloud/h/c/b/b/b$c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$FaWli7CGBBPg6MyM93p4u9D2jqQ(Lio/dcloud/h/c/b/b/b$c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/dcloud/h/c/b/b/b$c;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$Gy8bP0VzLOvWRV18QcN1jeqYVi0(Lio/dcloud/h/c/b/b/b$c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/dcloud/h/c/b/b/b$c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$aU7L03Be8JPdAS89jlnIj7EVU_c(Lio/dcloud/h/c/b/b/b$c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/dcloud/h/c/b/b/b$c;->a(Landroid/view/View;)V

    return-void
.end method

.method private q()V
    .locals 5

    const-string v0, "lwmt"

    .line 1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "p"

    const-string v3, "a"

    .line 3
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v2, "did"

    .line 5
    :try_start_1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/sdk/core/util/RequestUtils;->getDid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const-string v2, "oaid"

    .line 9
    :try_start_2
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/sdk/core/util/RequestUtils;->getOid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const-string v2, "adpid"

    .line 12
    :try_start_3
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getDCloudId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    const-string v2, "type"

    .line 13
    :try_start_4
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getMiniRequestType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lio/dcloud/sdk/core/util/RequestUtils;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    const-string v0, "mc"

    .line 15
    :try_start_5
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/sdk/core/util/RequestUtils;->mc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    nop

    .line 18
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/dcloud/h/c/b/b/b$c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lio/dcloud/h/c/b/b/b$c;->I:Lio/dcloud/sdk/poly/api/Platform;

    invoke-virtual {v1}, Lio/dcloud/sdk/poly/api/Platform;->getRewardJson()Lorg/json/JSONObject;

    move-result-object v1

    const v2, -0xc73c

    if-eqz v1, :cond_1

    const-string v3, "loadUrl"

    .line 20
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 21
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    invoke-static {v2}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->loadFail(ILjava/lang/String;)V

    return-void

    .line 27
    :cond_0
    new-instance v2, Lio/dcloud/h/c/b/b/-$$Lambda$b$c$B2-ciPqWDmF8FDdI-uqIR0EgEcY;

    invoke-direct {v2, p0, v1, v0}, Lio/dcloud/h/c/b/b/-$$Lambda$b$c$B2-ciPqWDmF8FDdI-uqIR0EgEcY;-><init>(Lio/dcloud/h/c/b/b/b$c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lio/dcloud/sdk/core/util/RequestUtils;->postMessage(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 49
    :cond_1
    invoke-static {v2}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->loadFail(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method private r()V
    .locals 6

    const-string v0, "UTF-8"

    .line 1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getParams()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    :try_start_0
    const-string v2, "p"

    const-string v3, "a"

    .line 5
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "app"

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const-string v2, "did"

    .line 8
    :try_start_1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/sdk/core/util/RequestUtils;->getDid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 11
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getSlot()Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-nez v2, :cond_1

    const-string v2, "userId"

    .line 13
    :try_start_3
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getSlot()Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    move-result-object v3

    invoke-virtual {v3}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 16
    :catch_1
    :cond_1
    :try_start_4
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getSlot()Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->getExtra()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-nez v2, :cond_2

    const-string v2, "extra"

    .line 18
    :try_start_5
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getSlot()Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    move-result-object v3

    invoke-virtual {v3}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->getExtra()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_2
    const-string v0, "oaid"

    .line 22
    :try_start_6
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/sdk/core/util/RequestUtils;->getOid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    const-string v0, "adpid"

    .line 25
    :try_start_7
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getDCloudId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 29
    :catch_4
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v0, "&"

    .line 35
    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/h/c/b/b/b$c;->G:Ljava/lang/String;

    return-void
.end method

.method private u()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getAcpt()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/h/c/b/b/b$c;->M:J

    .line 3
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lio/dcloud/h/c/b/b/b$a;

    iget-object v2, p0, Lio/dcloud/h/c/b/b/b$c;->N:Lio/dcloud/h/c/b/b/b;

    invoke-direct {v1, v2, p0}, Lio/dcloud/h/c/b/b/b$a;-><init>(Lio/dcloud/h/c/b/b/b;Lio/dcloud/h/c/b/b/b$c;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "wm"

    return-object v0
.end method

.method protected init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    :try_start_0
    const-string p2, "com.tencent.mm.opensdk.openapi.WXAPIFactory"

    .line 3
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "createWXAPI"

    const/4 v1, 0x2

    :try_start_1
    new-array v2, v1, [Ljava/lang/Class;

    .line 4
    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    const/4 v0, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getActivity()Landroid/app/Activity;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    invoke-virtual {p2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/h/c/b/b/b$c;->F:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 7
    :catch_0
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string/jumbo v0, "wm"

    invoke-static {p2, v0, p1}, Lio/dcloud/sdk/core/util/RequestUtils;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public load()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getMiniRequestType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scheme"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const v1, -0xc73a

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lio/dcloud/h/c/b/b/b$c;->I:Lio/dcloud/sdk/poly/api/Platform;

    if-nez v0, :cond_0

    const v0, -0xc73c

    .line 4
    invoke-static {v0}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->loadFail(ILjava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.tencent.mm"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-direct {p0}, Lio/dcloud/h/c/b/b/b$c;->q()V

    goto/16 :goto_0

    .line 10
    :cond_1
    invoke-static {v1}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->loadFail(ILjava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, Lio/dcloud/h/c/b/b/b$c;->F:Ljava/lang/Object;

    const v2, -0xc739

    if-eqz v0, :cond_5

    .line 15
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "isWXAppInstalled"

    const/4 v4, 0x0

    :try_start_1
    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v3, p0, Lio/dcloud/h/c/b/b/b$c;->F:Ljava/lang/Object;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, p0, Lio/dcloud/h/c/b/b/b$c;->F:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "getWXAppSupportAPI"

    :try_start_2
    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/h/c/b/b/b$c;->F:Ljava/lang/Object;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x25010500

    if-lt v0, v1, :cond_3

    .line 17
    invoke-direct {p0}, Lio/dcloud/h/c/b/b/b$c;->q()V

    goto :goto_0

    :cond_3
    const v0, -0xc73b

    .line 19
    invoke-static {v0}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->loadFail(ILjava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_4
    invoke-static {v1}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->loadFail(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 25
    :catch_0
    invoke-static {v2}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->loadFail(ILjava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_5
    invoke-static {v2}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->loadFail(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/b/b/b$c;->H:Lio/dcloud/h/c/b/b/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/dcloud/h/c/b/b/b$c;->H:Lio/dcloud/h/c/b/b/a;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/h/c/b/b/b$c;->H:Lio/dcloud/h/c/b/b/a;

    :cond_0
    return-void
.end method

.method protected s()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->isEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onVideoPlayEnd()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onClose()V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lio/dcloud/h/c/b/b/b$c;->w()V

    return-void
.end method

.method public setPlatform(Lio/dcloud/sdk/poly/api/Platform;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/h/c/b/b/b$c;->I:Lio/dcloud/sdk/poly/api/Platform;

    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lio/dcloud/h/c/b/b/b$c;->r()V

    .line 2
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getMiniRequestType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "scheme"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/16 v0, -0x1395

    if-eqz p1, :cond_4

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\"adpid\":\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getDCloudId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"ext\":\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/h/c/b/b/b$c;->G:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"path\":\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Lio/dcloud/h/c/b/b/b$c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object v1, p0, Lio/dcloud/h/c/b/b/b$c;->I:Lio/dcloud/sdk/poly/api/Platform;

    invoke-virtual {v1}, Lio/dcloud/sdk/poly/api/Platform;->getRewardJson()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "url"

    .line 11
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 15
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object p1

    invoke-static {v0}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onShowError(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 20
    :cond_1
    new-instance v0, Lio/dcloud/h/c/b/b/-$$Lambda$b$c$Gy8bP0VzLOvWRV18QcN1jeqYVi0;

    invoke-direct {v0, p0, v1, p1}, Lio/dcloud/h/c/b/b/-$$Lambda$b$c$Gy8bP0VzLOvWRV18QcN1jeqYVi0;-><init>(Lio/dcloud/h/c/b/b/b$c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lio/dcloud/sdk/core/util/RequestUtils;->postMessage(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 75
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object p1

    invoke-static {v0}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onShowError(ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/4 p1, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram$Req"

    .line 81
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 82
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "userName"

    .line 83
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getSlotId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "path"

    .line 85
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lio/dcloud/h/c/b/b/b$c;->G:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_5

    const-string v6, ""

    goto :goto_1

    :cond_5
    :try_start_1
    iget-object v6, p0, Lio/dcloud/h/c/b/b/b$c;->G:Ljava/lang/String;

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    :cond_6
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getMiniType()I

    move-result v4

    if-ltz v4, :cond_7

    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getMiniType()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_7

    const-string v4, "miniprogramType"

    .line 87
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getMiniType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    :cond_7
    iget-object v2, p0, Lio/dcloud/h/c/b/b/b$c;->F:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "sendReq"

    :try_start_2
    new-array v5, p1, [Ljava/lang/Class;

    const-string v6, "com.tencent.mm.opensdk.modelbase.BaseReq"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v4, p0, Lio/dcloud/h/c/b/b/b$c;->F:Ljava/lang/Object;

    new-array v5, p1, [Ljava/lang/Object;

    aput-object v3, v5, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 90
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_9

    .line 93
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lwmt"

    invoke-static {v0, v3, v2}, Lio/dcloud/sdk/core/util/RequestUtils;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Lio/dcloud/h/c/b/b/b$c;->u()V

    .line 95
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 96
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onShow()V

    .line 97
    :cond_8
    invoke-virtual {p0}, Lio/dcloud/h/c/b/b/b$c;->v()V

    :try_start_3
    const-string v0, "io.dcloud.common.DHInterface.FeatureMessageDispatcher"

    .line 99
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "io.dcloud.common.DHInterface.FeatureMessageDispatcher$MessageListener"

    .line 100
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-array v4, p1, [Ljava/lang/Class;

    aput-object v2, v4, v1

    new-instance v5, Lio/dcloud/h/c/b/b/b$b;

    iget-object v6, p0, Lio/dcloud/h/c/b/b/b$c;->N:Lio/dcloud/h/c/b/b/b;

    invoke-direct {v5, v6, p0}, Lio/dcloud/h/c/b/b/b$b;-><init>(Lio/dcloud/h/c/b/b/b;Lio/dcloud/h/c/b/b/b$c;)V

    invoke-static {v3, v4, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lio/dcloud/h/c/b/b/b$c;->L:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v3, "registerListener"

    :try_start_4
    new-array v4, p1, [Ljava/lang/Class;

    aput-object v2, v4, v1

    .line 102
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const-string v4, "unregisterListener"

    :try_start_5
    new-array v5, p1, [Ljava/lang/Class;

    aput-object v2, v5, v1

    .line 103
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/h/c/b/b/b$c;->K:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    .line 104
    iget-object v2, p0, Lio/dcloud/h/c/b/b/b$c;->L:Ljava/lang/Object;

    aput-object v2, p1, v1

    invoke-virtual {v3, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 108
    :cond_9
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 109
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(2)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onShowError(ILjava/lang/String;)V

    :catch_1
    :cond_a
    :goto_3
    return-void
.end method

.method protected t()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lio/dcloud/h/c/b/b/b$c;->M:J

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getAcpt()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 2
    iget-object v0, p0, Lio/dcloud/h/c/b/b/b$c;->H:Lio/dcloud/h/c/b/b/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/dcloud/h/c/b/b/b$c;->s()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lio/dcloud/h/c/b/b/b$c;->p()V

    :cond_1
    return-void
.end method

.method protected v()V
    .locals 3

    .line 1
    new-instance v0, Lio/dcloud/h/c/b/b/a;

    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/dcloud/h/c/b/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/dcloud/h/c/b/b/b$c;->H:Lio/dcloud/h/c/b/b/a;

    .line 2
    new-instance v1, Lio/dcloud/h/c/b/b/-$$Lambda$b$c$aU7L03Be8JPdAS89jlnIj7EVU_c;

    invoke-direct {v1, p0}, Lio/dcloud/h/c/b/b/-$$Lambda$b$c$aU7L03Be8JPdAS89jlnIj7EVU_c;-><init>(Lio/dcloud/h/c/b/b/b$c;)V

    invoke-virtual {v0, v1}, Lio/dcloud/h/c/b/b/a;->b(Landroid/view/View$OnClickListener;)Lio/dcloud/h/c/b/b/a;

    .line 6
    iget-object v0, p0, Lio/dcloud/h/c/b/b/b$c;->H:Lio/dcloud/h/c/b/b/a;

    new-instance v1, Lio/dcloud/h/c/b/b/-$$Lambda$b$c$FaWli7CGBBPg6MyM93p4u9D2jqQ;

    invoke-direct {v1, p0}, Lio/dcloud/h/c/b/b/-$$Lambda$b$c$FaWli7CGBBPg6MyM93p4u9D2jqQ;-><init>(Lio/dcloud/h/c/b/b/b$c;)V

    invoke-virtual {v0, v1}, Lio/dcloud/h/c/b/b/a;->a(Landroid/view/View$OnClickListener;)Lio/dcloud/h/c/b/b/a;

    .line 13
    iget-object v0, p0, Lio/dcloud/h/c/b/b/b$c;->H:Lio/dcloud/h/c/b/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 14
    iget-object v0, p0, Lio/dcloud/h/c/b/b/b$c;->H:Lio/dcloud/h/c/b/b/a;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 15
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/h/c/b/b/b$c;->H:Lio/dcloud/h/c/b/b/a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lio/dcloud/h/c/b/b/-$$Lambda$99eyQ0U4xCt2xtPVWZIkSOuRcQM;

    invoke-direct {v2, v1}, Lio/dcloud/h/c/b/b/-$$Lambda$99eyQ0U4xCt2xtPVWZIkSOuRcQM;-><init>(Lio/dcloud/h/c/b/b/a;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected w()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/h/c/b/b/b$c;->K:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2
    iget-object v4, p0, Lio/dcloud/h/c/b/b/b$c;->L:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
