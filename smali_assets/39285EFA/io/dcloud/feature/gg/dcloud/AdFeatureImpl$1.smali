.class Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/sdk/core/v2/splash/DCSplashAOLLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->doForFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onSplashAdLoad$0(Landroid/content/Context;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lio/dcloud/WebAppActivity;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Lio/dcloud/WebAppActivity;

    invoke-virtual {v0, p0}, Lio/dcloud/WebAppActivity;->onCreateAdSplash(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0}, Lio/dcloud/WebAppActivity;->initBackToFrontSplashAd()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Lorg/json/JSONArray;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdFeatureImpl load fail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "doForFeature"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x1388

    if-eq p1, v0, :cond_0

    const/16 v0, -0x1389

    if-eq p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$1;->val$context:Landroid/content/Context;

    const-string v0, "-8003"

    invoke-static {p1, v0, p2, p3}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->access$200(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_0
    return-void
.end method

.method public onSplashAdLoad()V
    .locals 3

    const-string v0, "doForFeature"

    const-string v1, "AdFeatureImpl load success"

    .line 1
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$1;->val$context:Landroid/content/Context;

    new-instance v2, Lio/dcloud/feature/gg/dcloud/-$$Lambda$AdFeatureImpl$1$sNg25T9DV9bXfJmPtvhICq_r7Ws;

    invoke-direct {v2, v1}, Lio/dcloud/feature/gg/dcloud/-$$Lambda$AdFeatureImpl$1$sNg25T9DV9bXfJmPtvhICq_r7Ws;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public pushAd(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public redBag(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gg/dcloud/AdFeatureImpl$1;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
