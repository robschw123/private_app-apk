.class Lio/dcloud/h/c/d/a$d;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/sdk/core/v2/interstitial/DCInterstitialAOLLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/h/c/d/a;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/h/c/d/a;


# direct methods
.method constructor <init>(Lio/dcloud/h/c/d/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/h/c/d/a$d;->a:Lio/dcloud/h/c/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Lorg/json/JSONArray;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lio/dcloud/h/c/d/a$d;->a:Lio/dcloud/h/c/d/a;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lio/dcloud/h/c/d/a;->f(Lio/dcloud/h/c/d/a;Z)Z

    return-void
.end method

.method public onInterstitialAdLoad()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/d/a$d;->a:Lio/dcloud/h/c/d/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/dcloud/h/c/d/a;->f(Lio/dcloud/h/c/d/a;Z)Z

    .line 2
    iget-object v0, p0, Lio/dcloud/h/c/d/a$d;->a:Lio/dcloud/h/c/d/a;

    invoke-static {v0}, Lio/dcloud/h/c/d/a;->j(Lio/dcloud/h/c/d/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/dcloud/h/c/d/a$d;->a:Lio/dcloud/h/c/d/a;

    invoke-static {v0}, Lio/dcloud/h/c/d/a;->k(Lio/dcloud/h/c/d/a;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lio/dcloud/h/c/d/a$d;->a:Lio/dcloud/h/c/d/a;

    invoke-static {v0}, Lio/dcloud/h/c/d/a;->k(Lio/dcloud/h/c/d/a;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3
    iget-object v0, p0, Lio/dcloud/h/c/d/a$d;->a:Lio/dcloud/h/c/d/a;

    iget-object v1, v0, Lio/dcloud/h/c/d/a;->K:Lio/dcloud/sdk/core/v2/interstitial/DCInterstitialAOL;

    invoke-static {v0}, Lio/dcloud/h/c/d/a;->l(Lio/dcloud/h/c/d/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/dcloud/sdk/core/v2/interstitial/DCInterstitialAOL;->show(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
