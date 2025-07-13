.class Lio/dcloud/h/c/b/b/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/h/c/b/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lio/dcloud/h/c/b/b/b$c;

.field final synthetic b:Lio/dcloud/h/c/b/b/b;


# direct methods
.method public constructor <init>(Lio/dcloud/h/c/b/b/b;Lio/dcloud/h/c/b/b/b$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/h/c/b/b/b$a;->b:Lio/dcloud/h/c/b/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/dcloud/h/c/b/b/b$a;->a:Lio/dcloud/h/c/b/b/b$c;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/b/b/b$a;->a:Lio/dcloud/h/c/b/b/b$c;

    invoke-virtual {v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/dcloud/h/c/b/b/b$a;->a:Lio/dcloud/h/c/b/b/b$c;

    invoke-virtual {p1}, Lio/dcloud/h/c/b/b/b$c;->t()V

    .line 3
    iget-object p1, p0, Lio/dcloud/h/c/b/b/b$a;->a:Lio/dcloud/h/c/b/b/b$c;

    invoke-virtual {p1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
