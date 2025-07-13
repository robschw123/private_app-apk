.class public Lio/dcloud/h/c/c/f/b/a;
.super Lio/dcloud/h/c/c/f/b/c;

# interfaces
.implements Lio/dcloud/h/c/c/f/a/a;


# instance fields
.field private w:I

.field private x:I


# direct methods
.method public constructor <init>(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/h/c/c/f/b/c;-><init>(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lio/dcloud/h/c/c/f/b/a;->w:I

    .line 3
    iput p1, p0, Lio/dcloud/h/c/c/f/b/a;->x:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget v0, p0, Lio/dcloud/h/c/c/f/b/c;->t:I

    if-lt p1, v0, :cond_0

    if-gez v0, :cond_1

    .line 2
    :cond_0
    iput p1, p0, Lio/dcloud/h/c/c/f/b/c;->t:I

    :cond_1
    return-void
.end method

.method public a(Lio/dcloud/sdk/core/module/DCBaseAOLLoader;Lio/dcloud/h/c/c/a/c;)V
    .locals 3

    .line 7
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/c;->p:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/c;->b:Z

    if-eqz v0, :cond_2

    .line 8
    :cond_0
    invoke-virtual {p2}, Lio/dcloud/h/c/c/a/c;->a()I

    move-result v0

    const/16 v1, -0x1388

    if-ne v0, v1, :cond_1

    .line 9
    iget v0, p0, Lio/dcloud/h/c/c/f/b/a;->w:I

    iget v1, p0, Lio/dcloud/h/c/c/f/b/a;->x:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lio/dcloud/sdk/core/module/DCBaseAOL;->biddingFail(III)V

    goto :goto_0

    .line 11
    :cond_1
    iget v0, p0, Lio/dcloud/h/c/c/f/b/a;->w:I

    iget v1, p0, Lio/dcloud/h/c/c/f/b/a;->x:I

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lio/dcloud/sdk/core/module/DCBaseAOL;->biddingFail(III)V

    .line 14
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lio/dcloud/h/c/c/f/b/c;->a(Lio/dcloud/sdk/core/module/DCBaseAOLLoader;Lio/dcloud/h/c/c/a/c;)V

    return-void
.end method

.method public a(Lio/dcloud/sdk/core/module/DCBaseAOLLoader;Ljava/util/List;Lio/dcloud/h/c/c/a/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/sdk/core/module/DCBaseAOLLoader;",
            "Ljava/util/List<",
            "+",
            "Lio/dcloud/sdk/core/module/DCBaseAOL;",
            ">;",
            "Lio/dcloud/h/c/c/a/c;",
            ")V"
        }
    .end annotation

    .line 3
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/c;->p:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/c;->b:Z

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    iget v0, p0, Lio/dcloud/h/c/c/f/b/a;->w:I

    iget v1, p0, Lio/dcloud/h/c/c/f/b/a;->x:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lio/dcloud/sdk/core/module/DCBaseAOL;->biddingFail(III)V

    .line 6
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lio/dcloud/h/c/c/f/b/c;->a(Lio/dcloud/sdk/core/module/DCBaseAOLLoader;Ljava/util/List;Lio/dcloud/h/c/c/a/c;)V

    return-void
.end method

.method public b(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public c()I
    .locals 1

    .line 1
    invoke-super {p0}, Lio/dcloud/h/c/c/f/b/c;->c()I

    move-result v0

    return v0
.end method

.method public d(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->j:Lio/dcloud/sdk/core/module/DCBaseAOL;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lio/dcloud/h/c/c/f/b/a;->w:I

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lio/dcloud/sdk/core/module/DCBaseAOL;->biddingFail(III)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e(I)V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/dcloud/h/c/c/f/b/c;->p:Z

    .line 2
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/c;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->l()V

    .line 6
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->p()V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/a;->r()V

    :goto_0
    return-void
.end method

.method public j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 3
    iget v2, p0, Lio/dcloud/h/c/c/f/b/a;->w:I

    iget v3, p0, Lio/dcloud/h/c/c/f/b/a;->x:I

    invoke-virtual {v1, v2, v3}, Lio/dcloud/sdk/core/module/DCBaseAOL;->biddingSuccess(II)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->j:Lio/dcloud/sdk/core/module/DCBaseAOL;

    if-eqz v0, :cond_1

    .line 7
    iget v1, p0, Lio/dcloud/h/c/c/f/b/a;->w:I

    iget v2, p0, Lio/dcloud/h/c/c/f/b/a;->x:I

    invoke-virtual {v0, v1, v2}, Lio/dcloud/sdk/core/module/DCBaseAOL;->biddingSuccess(II)V

    :cond_1
    return-void
.end method

.method protected r()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/c;->p:Z

    if-eqz v0, :cond_9

    .line 2
    :cond_0
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->m()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 3
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 4
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v3}, Lio/dcloud/sdk/poly/base/utils/a;->a(Ljava/util/List;)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "level load success,total ads:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/sdk/poly/base/utils/e;->a(Ljava/lang/String;)V

    .line 11
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget-object v4, p0, Lio/dcloud/h/c/c/f/b/c;->r:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    invoke-virtual {v4}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->getCount()I

    move-result v4

    if-le v0, v4, :cond_2

    .line 12
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->r:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    invoke-virtual {v0}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->getCount()I

    move-result v0

    invoke-interface {v3, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->k:Ljava/util/List;

    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/sdk/core/module/DCBaseAOL;

    invoke-virtual {v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->g()I

    move-result v0

    iput v0, p0, Lio/dcloud/h/c/c/f/b/a;->w:I

    .line 14
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->r:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    invoke-virtual {v0}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->getCount()I

    move-result v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v0, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 15
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/sdk/core/module/DCBaseAOL;

    invoke-virtual {v2}, Lio/dcloud/sdk/core/module/DCBaseAOL;->g()I

    move-result v2

    iput v2, p0, Lio/dcloud/h/c/c/f/b/a;->x:I

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 17
    iget v3, p0, Lio/dcloud/h/c/c/f/b/a;->w:I

    iget v4, p0, Lio/dcloud/h/c/c/f/b/a;->x:I

    invoke-virtual {v2, v3, v4, v1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->biddingFail(III)V

    goto :goto_1

    .line 22
    :cond_2
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/sdk/core/module/DCBaseAOL;

    invoke-virtual {v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->g()I

    move-result v0

    iput v0, p0, Lio/dcloud/h/c/c/f/b/a;->w:I

    .line 23
    iput-object v3, p0, Lio/dcloud/h/c/c/f/b/c;->k:Ljava/util/List;

    .line 25
    :cond_3
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->q()V

    goto/16 :goto_4

    .line 27
    :cond_4
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->p()V

    goto/16 :goto_4

    .line 30
    :cond_5
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 31
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->f:Ljava/util/List;

    invoke-static {v0}, Lio/dcloud/sdk/poly/base/utils/a;->a(Ljava/util/List;)V

    .line 32
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/sdk/core/module/DCBaseAOL;

    iput-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->j:Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 33
    iget-object v3, p0, Lio/dcloud/h/c/c/f/b/c;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->j:Lio/dcloud/sdk/core/module/DCBaseAOL;

    invoke-virtual {v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->g()I

    move-result v0

    iput v0, p0, Lio/dcloud/h/c/c/f/b/a;->w:I

    .line 35
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-lt v0, v3, :cond_6

    .line 36
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 37
    iget-object v2, p0, Lio/dcloud/h/c/c/f/b/c;->h:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->g()I

    move-result v2

    iput v2, p0, Lio/dcloud/h/c/c/f/b/a;->x:I

    .line 40
    iget v3, p0, Lio/dcloud/h/c/c/f/b/a;->w:I

    invoke-virtual {v0, v3, v2, v1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->biddingFail(III)V

    .line 42
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 43
    iget v3, p0, Lio/dcloud/h/c/c/f/b/a;->w:I

    iget v4, p0, Lio/dcloud/h/c/c/f/b/a;->x:I

    invoke-virtual {v2, v3, v4, v1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->biddingFail(III)V

    goto :goto_2

    .line 48
    :cond_6
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    .line 49
    iget v2, p0, Lio/dcloud/h/c/c/f/b/a;->w:I

    iget v3, p0, Lio/dcloud/h/c/c/f/b/a;->x:I

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Lio/dcloud/sdk/core/module/DCBaseAOL;->biddingFail(III)V

    goto :goto_3

    .line 51
    :cond_7
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->q()V

    goto :goto_4

    .line 54
    :cond_8
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->p()V

    :cond_9
    :goto_4
    return-void
.end method
