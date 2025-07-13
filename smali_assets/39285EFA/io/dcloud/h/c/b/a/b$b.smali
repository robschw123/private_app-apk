.class Lio/dcloud/h/c/b/a/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/sdk/base/dcloud/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/h/c/b/a/b;->c(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/h/c/b/a/b;


# direct methods
.method constructor <init>(Lio/dcloud/h/c/b/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/h/c/b/a/b$b;->a:Lio/dcloud/h/c/b/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/b/a/b$b;->a:Lio/dcloud/h/c/b/a/b;

    invoke-virtual {v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/dcloud/h/c/b/a/b$b;->a:Lio/dcloud/h/c/b/a/b;

    invoke-virtual {v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onClick()V

    :cond_0
    return-void
.end method

.method public onFinishShow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/b/a/b$b;->a:Lio/dcloud/h/c/b/a/b;

    invoke-virtual {v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/dcloud/h/c/b/a/b$b;->a:Lio/dcloud/h/c/b/a/b;

    invoke-virtual {v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onClose()V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/b/a/b$b;->a:Lio/dcloud/h/c/b/a/b;

    invoke-virtual {v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/dcloud/h/c/b/a/b$b;->a:Lio/dcloud/h/c/b/a/b;

    invoke-virtual {v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getVideoAdCallback()Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/sdk/core/api/AOLLoader$VideoAdInteractionListener;->onShow()V

    :cond_0
    return-void
.end method
