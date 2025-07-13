.class Lio/dcloud/h/c/b/b/b$c$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/h/c/b/b/b$c;->c(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/h/c/b/b/b$c;


# direct methods
.method constructor <init>(Lio/dcloud/h/c/b/b/b$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/h/c/b/b/b$c$c;->a:Lio/dcloud/h/c/b/b/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/dcloud/h/c/b/b/b$c$c;->a:Lio/dcloud/h/c/b/b/b$c;

    invoke-static {v1}, Lio/dcloud/h/c/b/b/b$c;->a(Lio/dcloud/h/c/b/b/b$c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/dcloud/h/c/b/b/b$c$c;->a:Lio/dcloud/h/c/b/b/b$c;

    invoke-virtual {v1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 5
    iget-object v0, p0, Lio/dcloud/h/c/b/b/b$c$c;->a:Lio/dcloud/h/c/b/b/b$c;

    invoke-static {v0}, Lio/dcloud/h/c/b/b/b$c;->b(Lio/dcloud/h/c/b/b/b$c;)V

    .line 6
    iget-object v0, p0, Lio/dcloud/h/c/b/b/b$c$c;->a:Lio/dcloud/h/c/b/b/b$c;

    invoke-virtual {v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getActivity()Landroid/app/Activity;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "lwmt"

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/dcloud/sdk/core/util/RequestUtils;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lio/dcloud/h/c/b/b/b$c$c;->a:Lio/dcloud/h/c/b/b/b$c;

    invoke-virtual {v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lio/dcloud/h/c/b/b/b$c$c;->a:Lio/dcloud/h/c/b/b/b$c;

    invoke-virtual {v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onShow()V

    .line 9
    :cond_0
    iget-object v0, p0, Lio/dcloud/h/c/b/b/b$c$c;->a:Lio/dcloud/h/c/b/b/b$c;

    invoke-virtual {v0}, Lio/dcloud/h/c/b/b/b$c;->v()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 11
    iget-object v0, p0, Lio/dcloud/h/c/b/b/b$c$c;->a:Lio/dcloud/h/c/b/b/b$c;

    invoke-virtual {v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lio/dcloud/h/c/b/b/b$c$c;->a:Lio/dcloud/h/c/b/b/b$c;

    invoke-virtual {v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, -0x1395

    invoke-static {v2}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, -0xc73a

    invoke-static {v3}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onShowError(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
