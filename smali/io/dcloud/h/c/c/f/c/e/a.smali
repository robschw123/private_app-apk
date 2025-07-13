.class public Lio/dcloud/h/c/c/f/c/e/a;
.super Lio/dcloud/h/c/c/f/c/f/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/h/c/c/f/c/e/a$b;
    }
.end annotation


# instance fields
.field private w:Lio/dcloud/sdk/core/entry/SplashAOLConfig;

.field private final x:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/dcloud/sdk/core/module/DCBaseAOLLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/h/c/c/f/c/f/a;-><init>(Landroid/app/Activity;I)V

    .line 119
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lio/dcloud/h/c/c/f/c/e/a;->x:Ljava/util/Queue;

    .line 120
    new-instance p1, Lio/dcloud/h/c/c/f/c/e/a$b;

    invoke-direct {p1, p0}, Lio/dcloud/h/c/c/f/c/e/a$b;-><init>(Lio/dcloud/h/c/c/f/c/e/a;)V

    invoke-virtual {p0, p1}, Lio/dcloud/h/c/c/e/c;->a(Lio/dcloud/h/c/c/b/a$a;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/h/c/c/f/c/e/a;)Landroid/app/Activity;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/dcloud/h/c/c/e/a;->a()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lio/dcloud/h/c/c/f/c/e/a;ILjava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lio/dcloud/h/c/c/e/c;->b(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/h/c/c/f/c/e/a;Lorg/json/JSONObject;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/dcloud/h/c/c/e/c;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic b(Lio/dcloud/h/c/c/f/c/e/a;)Landroid/app/Activity;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/dcloud/h/c/c/e/a;->a()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lio/dcloud/h/c/c/f/c/e/a;)Landroid/app/Activity;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/dcloud/h/c/c/e/a;->a()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lio/dcloud/h/c/c/f/c/e/a;)Landroid/app/Activity;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/dcloud/h/c/c/e/a;->a()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method private synthetic d(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->r:Lio/dcloud/h/c/c/f/a/c;

    instance-of v1, v0, Lio/dcloud/sdk/core/api/AOLLoader$SplashAdLoadListener;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lio/dcloud/sdk/core/api/AOLLoader$SplashAdLoadListener;

    invoke-interface {v0, p1}, Lio/dcloud/sdk/core/api/AOLLoader$SplashAdLoadListener;->pushAd(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lio/dcloud/h/c/c/f/c/e/a;)Landroid/app/Activity;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/dcloud/h/c/c/e/a;->a()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lio/dcloud/h/c/c/f/c/e/a;)Ljava/util/Queue;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/h/c/c/f/c/e/a;->x:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic g(Lio/dcloud/h/c/c/f/c/e/a;)Lio/dcloud/sdk/core/module/DCBaseAOLLoader;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/dcloud/h/c/c/f/c/e/a;->s()Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lio/dcloud/h/c/c/f/c/e/a;)Landroid/app/Activity;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/dcloud/h/c/c/e/a;->a()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lio/dcloud/h/c/c/f/c/e/a;)Landroid/app/Activity;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/dcloud/h/c/c/e/a;->a()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lio/dcloud/h/c/c/f/c/e/a;)Landroid/app/Activity;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/dcloud/h/c/c/e/a;->a()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lio/dcloud/h/c/c/f/c/e/a;)Landroid/app/Activity;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/dcloud/h/c/c/e/a;->a()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Lio/dcloud/h/c/c/f/c/e/a;)Landroid/app/Activity;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/dcloud/h/c/c/e/a;->a()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$F1ylM3Bw9EEXwYcbvUPwtjRNkfw(Lio/dcloud/h/c/c/f/c/e/a;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/dcloud/h/c/c/f/c/e/a;->d(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic m(Lio/dcloud/h/c/c/f/c/e/a;)Landroid/app/Activity;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/dcloud/h/c/c/e/a;->a()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n(Lio/dcloud/h/c/c/f/c/e/a;)Lio/dcloud/h/c/c/f/a/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/h/c/c/f/c/f/a;->r:Lio/dcloud/h/c/c/f/a/c;

    return-object p0
.end method

.method static synthetic o(Lio/dcloud/h/c/c/f/c/e/a;)Lio/dcloud/h/c/c/f/a/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/h/c/c/f/c/f/a;->r:Lio/dcloud/h/c/c/f/a/c;

    return-object p0
.end method

.method private s()Lio/dcloud/sdk/core/module/DCBaseAOLLoader;
    .locals 3

    .line 1
    invoke-static {}, Lio/dcloud/sdk/core/b/a;->b()Lio/dcloud/sdk/core/b/a;

    move-result-object v0

    const-string v1, "dcloud"

    invoke-virtual {v0, v1}, Lio/dcloud/sdk/core/b/a;->b(Ljava/lang/String;)Lio/dcloud/sdk/core/adapter/IAdAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/dcloud/h/c/c/e/a;->a()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/h/c/c/e/c;->b:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    invoke-interface {v0, v1, v2}, Lio/dcloud/sdk/core/adapter/IAdAdapter;->getAd(Landroid/app/Activity;Lio/dcloud/sdk/core/entry/DCloudAOLSlot;)Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lio/dcloud/h/c/c/f/c/e/a;->x:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected a(ILjava/lang/String;)V
    .locals 0

    .line 10
    invoke-super {p0, p1, p2}, Lio/dcloud/h/c/c/e/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/f/a;->s:Lio/dcloud/sdk/core/module/DCBaseAOL;

    instance-of v1, v0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    invoke-virtual {v0, p1}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->showIn(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method protected a(Lio/dcloud/h/c/c/a/b;)V
    .locals 0

    .line 9
    invoke-super {p0, p1}, Lio/dcloud/h/c/c/e/a;->a(Lio/dcloud/h/c/c/a/b;)V

    return-void
.end method

.method public a(Lio/dcloud/sdk/core/entry/SplashAOLConfig;Lio/dcloud/h/c/c/f/a/c;)V
    .locals 2

    .line 6
    iput-object p1, p0, Lio/dcloud/h/c/c/f/c/e/a;->w:Lio/dcloud/sdk/core/entry/SplashAOLConfig;

    .line 7
    new-instance v0, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;

    invoke-direct {v0}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;-><init>()V

    invoke-virtual {p1}, Lio/dcloud/sdk/core/entry/SplashAOLConfig;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->height(I)Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lio/dcloud/sdk/core/entry/SplashAOLConfig;->getWidth()I

    move-result p1

    invoke-virtual {v0, p1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->width(I)Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot$Builder;->build()Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    move-result-object p1

    .line 8
    invoke-super {p0, p1, p2}, Lio/dcloud/h/c/c/f/c/f/a;->a(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Lio/dcloud/h/c/c/f/a/c;)V

    return-void
.end method

.method public b()Lio/dcloud/sdk/core/module/DCBaseAOLLoader;
    .locals 1

    .line 3
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/e/a;->x:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lio/dcloud/h/c/c/f/c/e/a;->s()Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/e/a;->x:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    return-object v0
.end method

.method protected b(Lorg/json/JSONObject;)V
    .locals 2

    .line 2
    invoke-static {}, Lio/dcloud/sdk/core/util/MainHandlerUtil;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/h/c/c/f/c/e/-$$Lambda$a$F1ylM3Bw9EEXwYcbvUPwtjRNkfw;

    invoke-direct {v1, p0, p1}, Lio/dcloud/h/c/c/f/c/e/-$$Lambda$a$F1ylM3Bw9EEXwYcbvUPwtjRNkfw;-><init>(Lio/dcloud/h/c/c/f/c/e/a;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected c(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "src"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lio/dcloud/h/c/c/e/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lio/dcloud/h/c/c/f/c/e/a$a;

    invoke-direct {v1, p0, p1}, Lio/dcloud/h/c/c/f/c/e/a$a;-><init>(Lio/dcloud/h/c/c/f/c/e/a;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    :cond_1
    return-void
.end method

.method protected d()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public t()Lio/dcloud/sdk/core/entry/SplashAOLConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/e/a;->w:Lio/dcloud/sdk/core/entry/SplashAOLConfig;

    return-object v0
.end method
