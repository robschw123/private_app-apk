.class public Lio/dcloud/h/c/c/f/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/h/c/c/f/b/d/b;
.implements Lio/dcloud/h/c/c/f/b/d/a;
.implements Lio/dcloud/h/c/c/f/a/a;


# instance fields
.field private a:Lio/dcloud/h/c/c/f/b/c;

.field private b:Z

.field private c:Z

.field private d:Lio/dcloud/h/c/c/f/b/a;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:Lio/dcloud/h/c/c/f/b/d/a;

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field protected final n:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

.field protected final o:Landroid/app/Activity;

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/sdk/core/module/DCBaseAOL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/dcloud/h/c/c/f/b/b;->b:Z

    .line 3
    iput-boolean v0, p0, Lio/dcloud/h/c/c/f/b/b;->c:Z

    .line 5
    iput-boolean v0, p0, Lio/dcloud/h/c/c/f/b/b;->e:Z

    .line 6
    iput-boolean v0, p0, Lio/dcloud/h/c/c/f/b/b;->f:Z

    .line 11
    iput-boolean v0, p0, Lio/dcloud/h/c/c/f/b/b;->j:Z

    .line 12
    iput-boolean v0, p0, Lio/dcloud/h/c/c/f/b/b;->k:Z

    .line 14
    iput-boolean v0, p0, Lio/dcloud/h/c/c/f/b/b;->l:Z

    .line 15
    iput-boolean v0, p0, Lio/dcloud/h/c/c/f/b/b;->m:Z

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->p:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lio/dcloud/h/c/c/f/b/b;->n:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    .line 24
    iput-object p2, p0, Lio/dcloud/h/c/c/f/b/b;->o:Landroid/app/Activity;

    return-void
.end method

.method private m()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/b;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-boolean v2, p0, Lio/dcloud/h/c/c/f/b/b;->b:Z

    if-eqz v2, :cond_5

    .line 2
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/b;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->n:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    invoke-virtual {v0}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->getCount()I

    move-result v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/util/List;

    iget-object v3, p0, Lio/dcloud/h/c/c/f/b/b;->d:Lio/dcloud/h/c/c/f/b/a;

    invoke-virtual {v3}, Lio/dcloud/h/c/c/f/b/c;->i()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lio/dcloud/h/c/c/f/b/b;->a:Lio/dcloud/h/c/c/f/b/c;

    invoke-virtual {v3}, Lio/dcloud/h/c/c/f/b/c;->i()Ljava/util/List;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lio/dcloud/sdk/poly/base/utils/a;->a(I[Ljava/util/List;)Lio/dcloud/sdk/poly/base/utils/a$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/b;->n()V

    return-void

    .line 8
    :cond_0
    iput-boolean v1, p0, Lio/dcloud/h/c/c/f/b/b;->k:Z

    .line 9
    iget-object v1, v0, Lio/dcloud/sdk/poly/base/utils/a$a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 10
    invoke-virtual {v2}, Lio/dcloud/sdk/core/module/DCBaseAOL;->isSlotSupportBidding()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11
    iget v3, v0, Lio/dcloud/sdk/poly/base/utils/a$a;->b:I

    iget v4, v0, Lio/dcloud/sdk/poly/base/utils/a$a;->c:I

    invoke-virtual {v2, v3, v4}, Lio/dcloud/sdk/core/module/DCBaseAOL;->biddingSuccess(II)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v1, p0, Lio/dcloud/h/c/c/f/b/b;->p:Ljava/util/List;

    iget-object v0, v0, Lio/dcloud/sdk/poly/base/utils/a$a;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 17
    :cond_3
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->d:Lio/dcloud/h/c/c/f/b/a;

    invoke-virtual {v0}, Lio/dcloud/h/c/c/f/b/a;->c()I

    move-result v0

    iget-object v2, p0, Lio/dcloud/h/c/c/f/b/b;->a:Lio/dcloud/h/c/c/f/b/c;

    invoke-virtual {v2}, Lio/dcloud/h/c/c/f/b/c;->c()I

    move-result v2

    if-lt v0, v2, :cond_4

    .line 18
    iput-boolean v1, p0, Lio/dcloud/h/c/c/f/b/b;->j:Z

    goto :goto_1

    .line 21
    :cond_4
    iput-boolean v1, p0, Lio/dcloud/h/c/c/f/b/b;->k:Z

    .line 22
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->d:Lio/dcloud/h/c/c/f/b/a;

    iget-object v1, p0, Lio/dcloud/h/c/c/f/b/b;->a:Lio/dcloud/h/c/c/f/b/c;

    invoke-virtual {v1}, Lio/dcloud/h/c/c/f/b/c;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/dcloud/h/c/c/f/b/a;->d(I)V

    .line 25
    :goto_1
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/b;->o()V

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    .line 26
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/b;->c:Z

    if-eqz v0, :cond_6

    .line 27
    iput-boolean v1, p0, Lio/dcloud/h/c/c/f/b/b;->j:Z

    .line 28
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/b;->o()V

    goto :goto_2

    .line 29
    :cond_6
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/b;->f:Z

    if-eqz v0, :cond_7

    iget-boolean v2, p0, Lio/dcloud/h/c/c/f/b/b;->b:Z

    if-eqz v2, :cond_7

    .line 30
    iput-boolean v1, p0, Lio/dcloud/h/c/c/f/b/b;->k:Z

    .line 31
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/b;->o()V

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    .line 32
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/b;->c:Z

    if-eqz v0, :cond_8

    .line 33
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/b;->n()V

    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 4
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/b;->l:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/b;->n()V

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->d:Lio/dcloud/h/c/c/f/b/a;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0, p0}, Lio/dcloud/h/c/c/f/b/c;->a(Lio/dcloud/h/c/c/f/b/d/a;)V

    .line 11
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->d:Lio/dcloud/h/c/c/f/b/a;

    invoke-virtual {v0}, Lio/dcloud/h/c/c/f/b/c;->a()V

    .line 14
    :cond_1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->a:Lio/dcloud/h/c/c/f/b/c;

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {v0, p0}, Lio/dcloud/h/c/c/f/b/c;->a(Lio/dcloud/h/c/c/f/b/d/a;)V

    .line 16
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->a:Lio/dcloud/h/c/c/f/b/c;

    invoke-virtual {v0}, Lio/dcloud/h/c/c/f/b/c;->a()V

    :cond_2
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 17
    iput p1, p0, Lio/dcloud/h/c/c/f/b/b;->g:I

    return-void
.end method

.method public a(Lio/dcloud/h/c/c/a/d;)V
    .locals 0

    return-void
.end method

.method public a(Lio/dcloud/h/c/c/f/b/a;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lio/dcloud/h/c/c/f/b/b;->d:Lio/dcloud/h/c/c/f/b/a;

    return-void
.end method

.method public a(Lio/dcloud/h/c/c/f/b/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/h/c/c/f/b/b;->a:Lio/dcloud/h/c/c/f/b/c;

    return-void
.end method

.method public a(Lio/dcloud/h/c/c/f/b/d/a;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lio/dcloud/h/c/c/f/b/b;->h:Lio/dcloud/h/c/c/f/b/d/a;

    return-void
.end method

.method public a(Lio/dcloud/h/c/c/f/b/d/b;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->a:Lio/dcloud/h/c/c/f/b/c;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 27
    iput-boolean v1, p0, Lio/dcloud/h/c/c/f/b/b;->c:Z

    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->d:Lio/dcloud/h/c/c/f/b/a;

    if-ne p1, v0, :cond_1

    .line 29
    iput-boolean v1, p0, Lio/dcloud/h/c/c/f/b/b;->f:Z

    .line 31
    :cond_1
    :goto_0
    invoke-direct {p0}, Lio/dcloud/h/c/c/f/b/b;->m()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->d:Lio/dcloud/h/c/c/f/b/a;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0, p1}, Lio/dcloud/h/c/c/f/b/c;->a(Ljava/lang/String;)V

    .line 20
    :cond_0
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->a:Lio/dcloud/h/c/c/f/b/c;

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {v0, p1}, Lio/dcloud/h/c/c/f/b/c;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 22
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->d:Lio/dcloud/h/c/c/f/b/a;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0, p1}, Lio/dcloud/h/c/c/f/b/c;->a(Z)V

    .line 24
    :cond_0
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->a:Lio/dcloud/h/c/c/f/b/c;

    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {v0, p1}, Lio/dcloud/h/c/c/f/b/c;->a(Z)V

    :cond_1
    return-void
.end method

.method public b()Lio/dcloud/sdk/core/module/DCBaseAOLLoader;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lio/dcloud/h/c/c/f/b/d/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->a:Lio/dcloud/h/c/c/f/b/c;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lio/dcloud/h/c/c/f/b/b;->b:Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->d:Lio/dcloud/h/c/c/f/b/a;

    if-ne p1, v0, :cond_1

    .line 4
    iput-boolean v1, p0, Lio/dcloud/h/c/c/f/b/b;->e:Z

    .line 6
    :cond_1
    :goto_0
    invoke-direct {p0}, Lio/dcloud/h/c/c/f/b/b;->m()V

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
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/b;->j:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->d:Lio/dcloud/h/c/c/f/b/a;

    invoke-virtual {v0}, Lio/dcloud/h/c/c/f/b/a;->c()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/b;->k:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->a:Lio/dcloud/h/c/c/f/b/c;

    invoke-virtual {v0}, Lio/dcloud/h/c/c/f/b/c;->c()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public c(I)V
    .locals 1

    .line 5
    iput p1, p0, Lio/dcloud/h/c/c/f/b/b;->i:I

    .line 6
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->d:Lio/dcloud/h/c/c/f/b/a;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Lio/dcloud/h/c/c/f/b/c;->c(I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->a:Lio/dcloud/h/c/c/f/b/c;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0, p1}, Lio/dcloud/h/c/c/f/b/c;->c(I)V

    :cond_1
    return-void
.end method

.method public d(I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->d:Lio/dcloud/h/c/c/f/b/a;

    invoke-virtual {v0, p1}, Lio/dcloud/h/c/c/f/b/a;->d(I)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/b;->j:Z

    return v0
.end method

.method public e()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/b;->j:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->d:Lio/dcloud/h/c/c/f/b/a;

    invoke-virtual {v0}, Lio/dcloud/h/c/c/f/b/c;->e()V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/b;->k:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->a:Lio/dcloud/h/c/c/f/b/c;

    invoke-virtual {v0}, Lio/dcloud/h/c/c/f/b/c;->e()V

    :cond_1
    return-void
.end method

.method public e(I)V
    .locals 0

    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lio/dcloud/h/c/c/f/b/b;->g:I

    return v0
.end method

.method public g()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/dcloud/h/c/c/a/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lio/dcloud/h/c/c/f/b/b;->d:Lio/dcloud/h/c/c/f/b/a;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lio/dcloud/h/c/c/f/b/c;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    iget-object v1, p0, Lio/dcloud/h/c/c/f/b/b;->a:Lio/dcloud/h/c/c/f/b/c;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lio/dcloud/h/c/c/f/b/c;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/dcloud/h/c/c/f/b/b;->l:Z

    .line 2
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->d:Lio/dcloud/h/c/c/f/b/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lio/dcloud/h/c/c/f/b/a;->h()V

    .line 4
    :cond_0
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->a:Lio/dcloud/h/c/c/f/b/c;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lio/dcloud/h/c/c/f/b/c;->h()V

    :cond_1
    return-void
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/dcloud/sdk/core/module/DCBaseAOL;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/b;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->p:Ljava/util/List;

    return-object v0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/b;->j:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->d:Lio/dcloud/h/c/c/f/b/a;

    invoke-virtual {v0}, Lio/dcloud/h/c/c/f/b/c;->i()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/b;->k:Z

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->a:Lio/dcloud/h/c/c/f/b/c;

    invoke-virtual {v0}, Lio/dcloud/h/c/c/f/b/c;->i()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public j()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->d:Lio/dcloud/h/c/c/f/b/a;

    invoke-virtual {v0}, Lio/dcloud/h/c/c/f/b/a;->j()V

    :cond_0
    return-void
.end method

.method public k()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->a:Lio/dcloud/h/c/c/f/b/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/dcloud/h/c/c/f/b/b;->d:Lio/dcloud/h/c/c/f/b/a;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lio/dcloud/h/c/c/f/b/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->d:Lio/dcloud/h/c/c/f/b/a;

    invoke-virtual {v0}, Lio/dcloud/h/c/c/f/b/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method l()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/dcloud/h/c/c/f/b/b;->i:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected n()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/b;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/dcloud/h/c/c/f/b/b;->m:Z

    .line 3
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->h:Lio/dcloud/h/c/c/f/b/d/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0}, Lio/dcloud/h/c/c/f/b/d/a;->a(Lio/dcloud/h/c/c/f/b/d/b;)V

    :cond_0
    return-void
.end method

.method protected o()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/b;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/dcloud/h/c/c/f/b/b;->m:Z

    .line 3
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/b;->h:Lio/dcloud/h/c/c/f/b/d/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0}, Lio/dcloud/h/c/c/f/b/d/a;->b(Lio/dcloud/h/c/c/f/b/d/b;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bidding:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/h/c/c/f/b/b;->d:Lio/dcloud/h/c/c/f/b/a;

    invoke-virtual {v1}, Lio/dcloud/h/c/c/f/b/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Usual:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/h/c/c/f/b/b;->a:Lio/dcloud/h/c/c/f/b/c;

    .line 2
    invoke-virtual {v1}, Lio/dcloud/h/c/c/f/b/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
