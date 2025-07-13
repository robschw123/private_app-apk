.class public Lio/dcloud/h/c/c/f/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/h/c/c/f/b/d/b;
.implements Lio/dcloud/h/c/c/e/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/h/c/c/f/b/c$b;
    }
.end annotation


# instance fields
.field private a:Z

.field protected volatile b:Z

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/h/c/c/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final e:Lio/dcloud/h/c/c/f/b/c$b;

.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/sdk/core/module/DCBaseAOL;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/sdk/core/module/DCBaseAOLLoader;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/sdk/core/module/DCBaseAOLLoader;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/dcloud/sdk/core/module/DCBaseAOL;",
            "Ljava/util/List<",
            "+",
            "Lio/dcloud/sdk/core/module/DCBaseAOL;",
            ">;>;"
        }
    .end annotation
.end field

.field protected j:Lio/dcloud/sdk/core/module/DCBaseAOL;

.field protected k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/sdk/core/module/DCBaseAOL;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/h/c/c/a/c;",
            ">;"
        }
    .end annotation
.end field

.field protected o:I

.field protected p:Z

.field private q:Lio/dcloud/h/c/c/f/b/d/a;

.field protected final r:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

.field protected final s:Landroid/app/Activity;

.field protected t:I

.field private u:Ljava/lang/String;

.field private v:Z


# direct methods
.method public constructor <init>(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/dcloud/h/c/c/f/b/c;->a:Z

    .line 7
    iput-boolean v0, p0, Lio/dcloud/h/c/c/f/b/c;->b:Z

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/dcloud/h/c/c/f/b/c;->c:Ljava/util/List;

    .line 12
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lio/dcloud/h/c/c/f/b/c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    new-instance v1, Lio/dcloud/h/c/c/f/b/c$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/dcloud/h/c/c/f/b/c$b;-><init>(Lio/dcloud/h/c/c/f/b/c$a;)V

    iput-object v1, p0, Lio/dcloud/h/c/c/f/b/c;->e:Lio/dcloud/h/c/c/f/b/c$b;

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/dcloud/h/c/c/f/b/c;->f:Ljava/util/List;

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/dcloud/h/c/c/f/b/c;->g:Ljava/util/List;

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/dcloud/h/c/c/f/b/c;->h:Ljava/util/List;

    .line 19
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lio/dcloud/h/c/c/f/b/c;->i:Ljava/util/Map;

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/dcloud/h/c/c/f/b/c;->k:Ljava/util/List;

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/dcloud/h/c/c/f/b/c;->l:Ljava/util/List;

    .line 30
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lio/dcloud/h/c/c/f/b/c;->m:Ljava/util/Map;

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/dcloud/h/c/c/f/b/c;->n:Ljava/util/List;

    .line 39
    iput-boolean v0, p0, Lio/dcloud/h/c/c/f/b/c;->p:Z

    const/high16 v1, -0x80000000

    .line 45
    iput v1, p0, Lio/dcloud/h/c/c/f/b/c;->t:I

    const-string v1, ""

    .line 47
    iput-object v1, p0, Lio/dcloud/h/c/c/f/b/c;->u:Ljava/lang/String;

    .line 49
    iput-boolean v0, p0, Lio/dcloud/h/c/c/f/b/c;->v:Z

    .line 52
    iput-object p1, p0, Lio/dcloud/h/c/c/f/b/c;->r:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    .line 53
    iput-object p2, p0, Lio/dcloud/h/c/c/f/b/c;->s:Landroid/app/Activity;

    return-void
.end method

.method private static synthetic a(Lio/dcloud/sdk/core/module/DCBaseAOL;Lio/dcloud/sdk/core/module/DCBaseAOL;)I
    .locals 0

    .line 96
    invoke-virtual {p0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->j()I

    move-result p0

    invoke-virtual {p1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->j()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/Integer;)I
    .locals 1

    .line 152
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 156
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    return p1
.end method

.method private b()V
    .locals 1

    const-string v0, "ordered request list"

    .line 1
    invoke-static {v0}, Lio/dcloud/sdk/poly/base/utils/e;->d(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lio/dcloud/h/c/c/f/b/c;->n()V

    .line 4
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->p()V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x46

    if-ge v1, v2, :cond_0

    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/sdk/poly/base/utils/e;->d(Ljava/lang/String;)V

    return-void
.end method

.method private b(Z)V
    .locals 7

    .line 6
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object v2, p0, Lio/dcloud/h/c/c/f/b/c;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/h/c/c/a/d;

    .line 10
    invoke-virtual {p0, v4}, Lio/dcloud/h/c/c/f/b/c;->b(Lio/dcloud/h/c/c/a/d;)Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 12
    iget-object v6, p0, Lio/dcloud/h/c/c/f/b/c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {v4, v3}, Lio/dcloud/h/c/c/a/d;->a(I)V

    add-int/lit8 v3, v3, 0x1

    .line 17
    :cond_0
    invoke-virtual {v5, v4}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->a(Lio/dcloud/h/c/c/a/d;)V

    .line 18
    invoke-virtual {v5, p0}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->a(Lio/dcloud/h/c/c/e/a$a;)V

    .line 19
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v5, p0, Lio/dcloud/h/c/c/f/b/c;->l:Ljava/util/List;

    invoke-virtual {v4}, Lio/dcloud/h/c/c/a/d;->l()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 21
    iget-object v5, p0, Lio/dcloud/h/c/c/f/b/c;->l:Ljava/util/List;

    invoke-virtual {v4}, Lio/dcloud/h/c/c/a/d;->l()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_1
    iget-object v5, p0, Lio/dcloud/h/c/c/f/b/c;->m:Ljava/util/Map;

    invoke-virtual {v4}, Lio/dcloud/h/c/c/a/d;->l()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 25
    iget-object v5, p0, Lio/dcloud/h/c/c/f/b/c;->m:Ljava/util/Map;

    invoke-virtual {v4}, Lio/dcloud/h/c/c/a/d;->l()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/atomic/AtomicInteger;

    goto :goto_1

    .line 27
    :cond_2
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 29
    :goto_1
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 30
    iget-object v6, p0, Lio/dcloud/h/c/c/f/b/c;->m:Ljava/util/Map;

    invoke-virtual {v4}, Lio/dcloud/h/c/c/a/d;->l()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 32
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load sub slot fail cfg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lio/dcloud/h/c/c/a/d;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/sdk/poly/base/utils/e;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 35
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "level start load.current:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dcloud/h/c/c/f/b/c;->t:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",valid ads:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/sdk/poly/base/utils/e;->a(Ljava/lang/String;)V

    .line 36
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 37
    iget-object p1, p0, Lio/dcloud/h/c/c/f/b/c;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_5

    .line 38
    iget-object p1, p0, Lio/dcloud/h/c/c/f/b/c;->l:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 40
    :cond_5
    iget-object p1, p0, Lio/dcloud/h/c/c/f/b/c;->h:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    .line 42
    iget-object v1, p0, Lio/dcloud/h/c/c/f/b/c;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->c(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->a(Ljava/util/Map;)V

    goto :goto_2

    .line 46
    :cond_6
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->p()V

    :cond_7
    return-void
.end method

.method private f(I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->m:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->m:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :goto_0
    return-void
.end method

.method public static synthetic lambda$XeUC8wUwlCClB7m3xjymhmeFzd8(Lio/dcloud/sdk/core/module/DCBaseAOL;Lio/dcloud/sdk/core/module/DCBaseAOL;)I
    .locals 0

    invoke-static {p0, p1}, Lio/dcloud/h/c/c/f/b/c;->a(Lio/dcloud/sdk/core/module/DCBaseAOL;Lio/dcloud/sdk/core/module/DCBaseAOL;)I

    move-result p0

    return p0
.end method

.method private n()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/c;->p:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/c;->b:Z

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 6
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/h/c/c/a/d;

    .line 7
    invoke-virtual {p0, v0}, Lio/dcloud/h/c/c/f/b/c;->b(Lio/dcloud/h/c/c/a/d;)Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    move-result-object v1

    if-nez v1, :cond_2

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load sub slot fail cfg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lio/dcloud/h/c/c/a/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/sdk/poly/base/utils/e;->b(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 11
    invoke-direct {p0}, Lio/dcloud/h/c/c/f/b/c;->n()V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v1, p0}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->a(Lio/dcloud/h/c/c/e/a$a;)V

    .line 14
    iget-object v2, p0, Lio/dcloud/h/c/c/f/b/c;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {v1, v0}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->a(Lio/dcloud/h/c/c/a/d;)V

    .line 16
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->u:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 17
    invoke-virtual {v1, v0}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 21
    :cond_3
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->p()V

    :goto_0
    return-void
.end method

.method private o()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->d()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lio/dcloud/h/c/c/f/b/c;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 4
    iget-object v1, p0, Lio/dcloud/h/c/c/f/b/c;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 5
    iget-object v1, p0, Lio/dcloud/h/c/c/f/b/c;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 6
    iget-object v3, p0, Lio/dcloud/h/c/c/f/b/c;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 7
    invoke-virtual {v4}, Lio/dcloud/sdk/core/module/DCBaseAOL;->j()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 8
    iget-object v5, p0, Lio/dcloud/h/c/c/f/b/c;->i:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_2

    .line 10
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lio/dcloud/h/c/c/f/b/c;->r:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    invoke-virtual {v5}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->getCount()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 17
    :cond_3
    invoke-direct {p0, v2}, Lio/dcloud/h/c/c/f/b/c;->a(Ljava/lang/Integer;)I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    .line 22
    :cond_4
    iget-object v1, p0, Lio/dcloud/h/c/c/f/b/c;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_6

    .line 24
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lio/dcloud/h/c/c/f/b/c;->r:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    invoke-virtual {v3}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_5

    .line 32
    :cond_7
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lio/dcloud/h/c/c/f/b/c;->r:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    invoke-virtual {v2}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_8

    .line 35
    iget-object v1, p0, Lio/dcloud/h/c/c/f/b/c;->k:Ljava/util/List;

    iget-object v2, p0, Lio/dcloud/h/c/c/f/b/c;->r:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    invoke-virtual {v2}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->getCount()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->q()V

    goto :goto_1

    .line 37
    :cond_8
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->k()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 39
    iget-object v1, p0, Lio/dcloud/h/c/c/f/b/c;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->q()V

    .line 44
    :cond_9
    :goto_1
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->r()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 4
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->p()V

    return-void

    .line 8
    :cond_0
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/c;->p:Z

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->p()V

    return-void

    :cond_1
    const-string v0, "+"

    .line 12
    invoke-direct {p0, v0}, Lio/dcloud/h/c/c/f/b/c;->b(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0}, Lio/dcloud/h/c/c/f/b/c;->b(Z)V

    return-void

    .line 18
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 19
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 21
    iget-object v2, p0, Lio/dcloud/h/c/c/f/b/c;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_c

    .line 22
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 23
    iget-object v4, p0, Lio/dcloud/h/c/c/f/b/c;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/h/c/c/a/d;

    .line 24
    iget-object v6, p0, Lio/dcloud/h/c/c/f/b/c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 26
    invoke-virtual {v5}, Lio/dcloud/h/c/c/a/d;->q()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 29
    :try_start_0
    invoke-virtual {v5}, Lio/dcloud/h/c/c/a/d;->o()I

    move-result v6

    if-lez v6, :cond_3

    .line 31
    invoke-virtual {v5}, Lio/dcloud/h/c/c/a/d;->m()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 34
    :cond_3
    invoke-virtual {v5}, Lio/dcloud/h/c/c/a/d;->f()I

    move-result v6

    if-lez v6, :cond_4

    .line 36
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 37
    invoke-virtual {v5}, Lio/dcloud/h/c/c/a/d;->k()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 38
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 39
    invoke-virtual {v5}, Lio/dcloud/h/c/c/a/d;->m()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :catch_0
    :cond_4
    invoke-virtual {v5}, Lio/dcloud/h/c/c/a/d;->m()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 47
    :cond_5
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-gtz v4, :cond_8

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_6

    goto :goto_1

    .line 64
    :cond_6
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/c;->a:Z

    if-eqz v0, :cond_7

    .line 65
    invoke-direct {p0}, Lio/dcloud/h/c/c/f/b/c;->b()V

    goto :goto_3

    .line 68
    :cond_7
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/c;->v:Z

    invoke-direct {p0, v0}, Lio/dcloud/h/c/c/f/b/c;->b(Z)V

    goto :goto_3

    .line 69
    :cond_8
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 70
    iget-object v5, p0, Lio/dcloud/h/c/c/f/b/c;->s:Landroid/app/Activity;

    iget-object v6, p0, Lio/dcloud/h/c/c/f/b/c;->r:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    invoke-virtual {v6}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->getAdpid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6, v0, v1}, Lio/dcloud/sdk/poly/base/utils/a;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lio/dcloud/h/c/c/f/b/c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 72
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/h/c/c/a/d;

    if-eqz v1, :cond_9

    .line 75
    iget-object v4, p0, Lio/dcloud/h/c/c/f/b/c;->c:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 78
    :cond_a
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/c;->a:Z

    if-eqz v0, :cond_b

    .line 79
    invoke-direct {p0}, Lio/dcloud/h/c/c/f/b/c;->b()V

    goto :goto_3

    .line 81
    :cond_b
    invoke-direct {p0, v3}, Lio/dcloud/h/c/c/f/b/c;->b(Z)V

    goto :goto_3

    .line 93
    :cond_c
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 94
    invoke-direct {p0}, Lio/dcloud/h/c/c/f/b/c;->b()V

    :goto_3
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 95
    iput p1, p0, Lio/dcloud/h/c/c/f/b/c;->t:I

    return-void
.end method

.method public a(Lio/dcloud/h/c/c/a/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->e:Lio/dcloud/h/c/c/f/b/c$b;

    invoke-virtual {p1}, Lio/dcloud/h/c/c/a/d;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/h/c/c/f/b/c$b;->c(Ljava/lang/Integer;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lio/dcloud/h/c/c/f/b/d/a;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lio/dcloud/h/c/c/f/b/c;->q:Lio/dcloud/h/c/c/f/b/d/a;

    return-void
.end method

.method public a(Lio/dcloud/sdk/core/module/DCBaseAOLLoader;Lio/dcloud/h/c/c/a/c;)V
    .locals 6

    .line 157
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->u:Ljava/lang/String;

    invoke-virtual {p1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/c;->p:Z

    if-eqz v0, :cond_1

    return-void

    .line 163
    :cond_1
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/c;->b:Z

    if-eqz v0, :cond_2

    return-void

    .line 166
    :cond_2
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 167
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->n:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual {p1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->j()I

    move-result p2

    invoke-direct {p0, p2}, Lio/dcloud/h/c/c/f/b/c;->f(I)V

    .line 170
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "level ad load fail.current sub slot:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getSlotId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";ss:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->j()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";type:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/dcloud/sdk/poly/base/utils/e;->b(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->m()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 173
    invoke-direct {p0}, Lio/dcloud/h/c/c/f/b/c;->o()V

    goto/16 :goto_1

    .line 175
    :cond_3
    iget-object p2, p0, Lio/dcloud/h/c/c/f/b/c;->l:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x1

    if-le p2, v1, :cond_8

    iget-boolean p2, p0, Lio/dcloud/h/c/c/f/b/c;->a:Z

    if-nez p2, :cond_8

    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->d()Z

    move-result p2

    if-nez p2, :cond_8

    .line 176
    iget-object p2, p0, Lio/dcloud/h/c/c/f/b/c;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_8

    .line 177
    iget-object p2, p0, Lio/dcloud/h/c/c/f/b/c;->l:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 179
    invoke-virtual {p1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->j()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v2, v3, :cond_7

    .line 185
    iget-object v2, p0, Lio/dcloud/h/c/c/f/b/c;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 186
    invoke-virtual {v3}, Lio/dcloud/sdk/core/module/DCBaseAOL;->j()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check ss large than this.slot:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getSlotId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lio/dcloud/sdk/core/module/DCBaseAOL;->j()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/sdk/poly/base/utils/e;->b(Ljava/lang/String;)V

    .line 189
    iput-object v3, p0, Lio/dcloud/h/c/c/f/b/c;->j:Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 190
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->q()V

    .line 194
    :cond_6
    invoke-direct {p0, v1}, Lio/dcloud/h/c/c/f/b/c;->a(Ljava/lang/Integer;)I

    move-result v1

    if-lez v1, :cond_4

    goto :goto_0

    .line 197
    :cond_7
    invoke-virtual {p1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->j()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check ss smaller than this.ss:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ";unfinished ss count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lio/dcloud/h/c/c/f/b/c;->a(Ljava/lang/Integer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/sdk/poly/base/utils/e;->b(Ljava/lang/String;)V

    .line 201
    invoke-direct {p0, v1}, Lio/dcloud/h/c/c/f/b/c;->a(Ljava/lang/Integer;)I

    move-result v1

    if-lez v1, :cond_4

    .line 208
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->r()V

    :goto_1
    const-string p1, "-"

    .line 210
    invoke-direct {p0, p1}, Lio/dcloud/h/c/c/f/b/c;->b(Ljava/lang/String;)V

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

    .line 97
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->u:Ljava/lang/String;

    invoke-virtual {p1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/c;->p:Z

    if-eqz v0, :cond_1

    return-void

    .line 103
    :cond_1
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/c;->b:Z

    if-eqz v0, :cond_2

    return-void

    .line 106
    :cond_2
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 107
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->n:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {p1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->j()I

    move-result p3

    invoke-direct {p0, p3}, Lio/dcloud/h/c/c/f/b/c;->f(I)V

    .line 110
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "level ad load success!current sub slot:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getSlotId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";ss;"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->j()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";type;"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lio/dcloud/sdk/poly/base/utils/e;->d(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->m()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 112
    iget-object p3, p0, Lio/dcloud/h/c/c/f/b/c;->i:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_3
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->m()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 115
    iget-boolean p1, p0, Lio/dcloud/h/c/c/f/b/c;->a:Z

    if-eqz p1, :cond_4

    .line 116
    iget-object p1, p0, Lio/dcloud/h/c/c/f/b/c;->k:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->q()V

    .line 118
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->r()V

    goto :goto_1

    .line 120
    :cond_4
    invoke-direct {p0}, Lio/dcloud/h/c/c/f/b/c;->o()V

    goto :goto_1

    .line 124
    :cond_5
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->d()Z

    move-result p2

    if-nez p2, :cond_9

    .line 125
    iget-object p2, p0, Lio/dcloud/h/c/c/f/b/c;->l:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_8

    .line 126
    iget-boolean p2, p0, Lio/dcloud/h/c/c/f/b/c;->a:Z

    if-nez p2, :cond_7

    .line 127
    iget-object p2, p0, Lio/dcloud/h/c/c/f/b/c;->l:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 129
    invoke-virtual {p1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->j()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v1, v2, :cond_6

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check ss smaller than this.ss:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ";unfinished ss count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lio/dcloud/h/c/c/f/b/c;->a(Ljava/lang/Integer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/sdk/poly/base/utils/e;->a(Ljava/lang/String;)V

    .line 132
    invoke-direct {p0, v0}, Lio/dcloud/h/c/c/f/b/c;->a(Ljava/lang/Integer;)I

    move-result v0

    if-lez v0, :cond_6

    const/4 p3, 0x0

    :cond_7
    if-eqz p3, :cond_9

    .line 141
    iput-object p1, p0, Lio/dcloud/h/c/c/f/b/c;->j:Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 142
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->q()V

    goto :goto_0

    .line 145
    :cond_8
    iput-object p1, p0, Lio/dcloud/h/c/c/f/b/c;->j:Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 146
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->q()V

    .line 149
    :cond_9
    :goto_0
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->r()V

    :goto_1
    const-string p1, "-"

    .line 151
    invoke-direct {p0, p1}, Lio/dcloud/h/c/c/f/b/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lio/dcloud/h/c/c/f/b/c;->u:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 212
    iput-boolean p1, p0, Lio/dcloud/h/c/c/f/b/c;->v:Z

    return-void
.end method

.method protected b(Lio/dcloud/h/c/c/a/d;)Lio/dcloud/sdk/core/module/DCBaseAOLLoader;
    .locals 5

    .line 47
    invoke-static {}, Lio/dcloud/sdk/core/b/a;->b()Lio/dcloud/sdk/core/b/a;

    move-result-object v0

    invoke-virtual {p1}, Lio/dcloud/h/c/c/a/d;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/sdk/core/b/a;->b(Ljava/lang/String;)Lio/dcloud/sdk/core/adapter/IAdAdapter;

    move-result-object v0

    .line 49
    invoke-static {}, Lio/dcloud/h/c/c/b/a;->a()Lio/dcloud/h/c/c/b/a;

    move-result-object v1

    invoke-virtual {p1}, Lio/dcloud/h/c/c/a/d;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/dcloud/h/c/c/b/a;->a(Ljava/lang/String;)Lio/dcloud/h/c/c/a/a;

    move-result-object v1

    .line 50
    iget v2, p0, Lio/dcloud/h/c/c/f/b/c;->o:I

    const-string v3, "dcloud"

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    if-nez v0, :cond_0

    .line 51
    invoke-static {}, Lio/dcloud/sdk/core/b/a;->b()Lio/dcloud/sdk/core/b/a;

    move-result-object v2

    invoke-virtual {p1}, Lio/dcloud/h/c/c/a/d;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/dcloud/sdk/core/b/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 53
    invoke-static {}, Lio/dcloud/sdk/core/b/a;->b()Lio/dcloud/sdk/core/b/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lio/dcloud/sdk/core/b/a;->b(Ljava/lang/String;)Lio/dcloud/sdk/core/adapter/IAdAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lio/dcloud/h/c/b/a/a;

    invoke-direct {v0}, Lio/dcloud/h/c/b/a/a;-><init>()V

    .line 56
    invoke-static {}, Lio/dcloud/sdk/core/b/a;->b()Lio/dcloud/sdk/core/b/a;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Lio/dcloud/sdk/core/b/a;->a(Ljava/lang/String;Lio/dcloud/sdk/core/adapter/IAdAdapter;)V

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return-object v2

    .line 64
    :cond_1
    invoke-interface {v0}, Lio/dcloud/sdk/core/adapter/IAdAdapter;->isSupport()Z

    move-result v4

    if-nez v4, :cond_2

    return-object v2

    .line 66
    :cond_2
    invoke-virtual {p1}, Lio/dcloud/h/c/c/a/d;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 68
    iget-object p1, p0, Lio/dcloud/h/c/c/f/b/c;->q:Lio/dcloud/h/c/c/f/b/d/a;

    if-eqz p1, :cond_3

    .line 69
    invoke-interface {p1}, Lio/dcloud/h/c/c/f/b/d/a;->b()Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    move-result-object p1

    return-object p1

    .line 72
    :cond_3
    iget-object p1, p0, Lio/dcloud/h/c/c/f/b/c;->s:Landroid/app/Activity;

    iget-object v3, p0, Lio/dcloud/h/c/c/f/b/c;->r:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    invoke-interface {v0, p1, v3}, Lio/dcloud/sdk/core/adapter/IAdAdapter;->getAd(Landroid/app/Activity;Lio/dcloud/sdk/core/entry/DCloudAOLSlot;)Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    move-result-object p1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    .line 75
    invoke-virtual {v1}, Lio/dcloud/h/c/c/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lio/dcloud/h/c/c/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1}, Lio/dcloud/h/c/c/a/a;->d()Lio/dcloud/sdk/poly/api/Platform;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 79
    invoke-virtual {v1}, Lio/dcloud/h/c/c/a/a;->d()Lio/dcloud/sdk/poly/api/Platform;

    move-result-object v0

    invoke-virtual {v1}, Lio/dcloud/h/c/c/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->setPlatform(Lio/dcloud/sdk/poly/api/Platform;Ljava/lang/String;)V

    :cond_4
    return-object p1

    :cond_5
    return-object v2
.end method

.method public b(I)Z
    .locals 1

    .line 80
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->e:Lio/dcloud/h/c/c/f/b/c$b;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/dcloud/h/c/c/f/b/c$b;->b(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public c()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->m()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/sdk/core/module/DCBaseAOL;

    invoke-virtual {v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->g()I

    move-result v0

    return v0

    :cond_0
    return v1

    .line 8
    :cond_1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->j:Lio/dcloud/sdk/core/module/DCBaseAOL;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/dcloud/sdk/core/module/DCBaseAOL;->g()I

    move-result v1

    :cond_2
    return v1
.end method

.method public c(I)V
    .locals 0

    .line 9
    iput p1, p0, Lio/dcloud/h/c/c/f/b/c;->o:I

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 1

    .line 1
    instance-of v0, p0, Lio/dcloud/h/c/c/f/b/a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/dcloud/h/c/c/f/b/c;->a:Z

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/h/c/c/a/d;

    .line 6
    invoke-virtual {v1}, Lio/dcloud/h/c/c/a/d;->c()I

    move-result v1

    if-gt v1, p1, :cond_0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lio/dcloud/h/c/c/f/b/c;->t:I

    return v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/dcloud/h/c/c/a/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->n:Ljava/util/List;

    return-object v0
.end method

.method public h()V
    .locals 5

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

    .line 7
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->p()V

    goto/16 :goto_1

    .line 10
    :cond_1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->f:Ljava/util/List;

    sget-object v1, Lio/dcloud/h/c/c/f/b/-$$Lambda$c$XeUC8wUwlCClB7m3xjymhmeFzd8;->INSTANCE:Lio/dcloud/h/c/c/f/b/-$$Lambda$c$XeUC8wUwlCClB7m3xjymhmeFzd8;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 12
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->m()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget-object v2, p0, Lio/dcloud/h/c/c/f/b/c;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 15
    iget-object v4, p0, Lio/dcloud/h/c/c/f/b/c;->i:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_3

    .line 17
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lio/dcloud/h/c/c/f/b/c;->r:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    invoke-virtual {v4}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->getCount()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 22
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lio/dcloud/h/c/c/f/b/c;->r:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    invoke-virtual {v3}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->getCount()I

    move-result v3

    if-le v2, v3, :cond_5

    .line 24
    iget-object v2, p0, Lio/dcloud/h/c/c/f/b/c;->k:Ljava/util/List;

    iget-object v3, p0, Lio/dcloud/h/c/c/f/b/c;->r:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    invoke-virtual {v3}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->getCount()I

    move-result v3

    invoke-interface {v0, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 26
    :cond_5
    iget-object v1, p0, Lio/dcloud/h/c/c/f/b/c;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    :goto_0
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->q()V

    goto :goto_1

    .line 30
    :cond_6
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->p()V

    goto :goto_1

    .line 33
    :cond_7
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/sdk/core/module/DCBaseAOL;

    iput-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->j:Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 34
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->q()V

    :goto_1
    return-void
.end method

.method public i()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/dcloud/sdk/core/module/DCBaseAOL;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->k:Ljava/util/List;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lio/dcloud/h/c/c/f/b/c;->j:Lio/dcloud/sdk/core/module/DCBaseAOL;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/c;->p:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_0

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

.method protected l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->h:Ljava/util/List;

    iget-object v1, p0, Lio/dcloud/h/c/c/f/b/c;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 5
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->h:Ljava/util/List;

    iget-object v1, p0, Lio/dcloud/h/c/c/f/b/c;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 6
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    .line 7
    invoke-virtual {v1}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->o()Lio/dcloud/h/c/c/a/c;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lio/dcloud/h/c/c/f/b/c;->n:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method m()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/dcloud/h/c/c/f/b/c;->o:I

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

.method protected p()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/c;->b:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current level load fail.level:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dcloud/h/c/c/f/b/c;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/sdk/poly/base/utils/e;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/dcloud/h/c/c/f/b/c;->b:Z

    .line 4
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->l()V

    .line 5
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->q:Lio/dcloud/h/c/c/f/b/d/a;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p0}, Lio/dcloud/h/c/c/f/b/d/a;->a(Lio/dcloud/h/c/c/f/b/d/b;)V

    :cond_0
    return-void
.end method

.method protected q()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/c;->b:Z

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->m()Z

    move-result v0

    const-string v1, "current level load success.level:"

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dcloud/h/c/c/f/b/c;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/h/c/c/f/b/c;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/sdk/poly/base/utils/e;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dcloud/h/c/c/f/b/c;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";slot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/h/c/c/f/b/c;->j:Lio/dcloud/sdk/core/module/DCBaseAOL;

    invoke-virtual {v1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getSlotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";ss:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/h/c/c/f/b/c;->j:Lio/dcloud/sdk/core/module/DCBaseAOL;

    invoke-virtual {v1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/sdk/poly/base/utils/e;->a(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lio/dcloud/h/c/c/f/b/c;->b:Z

    .line 7
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->l()V

    .line 8
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->q:Lio/dcloud/h/c/c/f/b/d/a;

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0, p0}, Lio/dcloud/h/c/c/f/b/d/a;->b(Lio/dcloud/h/c/c/f/b/d/b;)V

    :cond_1
    return-void
.end method

.method protected r()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/dcloud/h/c/c/f/b/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lio/dcloud/h/c/c/f/b/c;->p()V

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v0, p0, Lio/dcloud/h/c/c/f/b/c;->a:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0}, Lio/dcloud/h/c/c/f/b/c;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "print all slot cfg:"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "level:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dcloud/h/c/c/f/b/c;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lio/dcloud/h/c/c/f/b/c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/h/c/c/a/d;

    .line 5
    invoke-virtual {v2}, Lio/dcloud/h/c/c/a/d;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lio/dcloud/h/c/c/a/d;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":show:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lio/dcloud/h/c/c/a/d;->l()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
