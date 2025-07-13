.class public abstract Lio/dcloud/h/c/c/e/a;
.super Lio/dcloud/h/c/c/e/c;

# interfaces
.implements Lio/dcloud/h/c/c/f/b/d/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/h/c/c/e/a$a;,
        Lio/dcloud/h/c/c/e/a$b;
    }
.end annotation


# instance fields
.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/h/c/c/f/b/d/b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/h/c/c/f/b/d/b;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lio/dcloud/h/c/c/f/b/d/b;

.field private i:Z

.field private final j:Landroid/os/Handler;

.field private final k:I

.field private final l:I

.field private m:J

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Lio/dcloud/h/c/c/a/b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/h/c/c/e/c;-><init>(Landroid/app/Activity;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/dcloud/h/c/c/e/a;->f:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/dcloud/h/c/c/e/a;->g:Ljava/util/List;

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lio/dcloud/h/c/c/e/a;->i:Z

    const/4 v0, 0x3

    .line 14
    iput v0, p0, Lio/dcloud/h/c/c/e/a;->k:I

    const/16 v0, 0x4650

    .line 15
    iput v0, p0, Lio/dcloud/h/c/c/e/a;->l:I

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lio/dcloud/h/c/c/e/a;->m:J

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lio/dcloud/h/c/c/e/a;->n:Ljava/lang/String;

    .line 19
    iput-boolean p1, p0, Lio/dcloud/h/c/c/e/a;->o:Z

    .line 25
    new-instance p1, Lio/dcloud/h/c/c/e/a$b;

    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/d;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lio/dcloud/h/c/c/e/a$b;-><init>(Lio/dcloud/h/c/c/e/a;Landroid/os/Looper;)V

    iput-object p1, p0, Lio/dcloud/h/c/c/e/a;->j:Landroid/os/Handler;

    return-void
.end method

.method private static synthetic a(Lio/dcloud/h/c/c/f/b/d/b;Lio/dcloud/h/c/c/f/b/d/b;)I
    .locals 0

    .line 63
    invoke-interface {p0}, Lio/dcloud/h/c/c/f/b/d/b;->f()I

    move-result p0

    invoke-interface {p1}, Lio/dcloud/h/c/c/f/b/d/b;->f()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lio/dcloud/h/c/c/e/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/dcloud/h/c/c/e/a;->j()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/dcloud/sdk/core/module/DCBaseAOL;",
            ">;)V"
        }
    .end annotation

    .line 70
    iget-boolean v0, p0, Lio/dcloud/h/c/c/e/a;->o:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lio/dcloud/h/c/c/e/a;->o:Z

    const/4 v1, 0x0

    .line 73
    sget-boolean v2, Lio/dcloud/sdk/poly/base/utils/b;->a:Z

    if-eqz v2, :cond_0

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "success!index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ";ad:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/sdk/poly/base/utils/e;->a(Ljava/lang/String;)V

    add-int/2addr v1, v0

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lio/dcloud/h/c/c/e/a;->j:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 79
    invoke-virtual {p0, p1}, Lio/dcloud/h/c/c/e/a;->b(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private a(Lorg/json/JSONArray;)V
    .locals 2

    .line 66
    iget-boolean v0, p0, Lio/dcloud/h/c/c/e/a;->i:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x139a

    .line 67
    invoke-static {v0}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lio/dcloud/h/c/c/e/a;->b(ILjava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_0
    const/16 v0, -0x138d

    .line 69
    invoke-static {v0}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lio/dcloud/h/c/c/e/a;->b(ILjava/lang/String;Lorg/json/JSONArray;)V

    :goto_0
    return-void
.end method

.method private a(Lio/dcloud/h/c/c/a/b;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/h/c/c/a/b;",
            "Ljava/util/List<",
            "Lio/dcloud/h/c/c/a/d;",
            ">;)Z"
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/h/c/c/a/d;

    .line 8
    invoke-virtual {v2}, Lio/dcloud/h/c/c/a/d;->e()I

    move-result v3

    .line 9
    invoke-virtual {v2}, Lio/dcloud/h/c/c/a/d;->r()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_0

    .line 11
    new-instance v1, Lio/dcloud/h/c/c/f/b/a;

    iget-object v4, p0, Lio/dcloud/h/c/c/e/c;->b:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    iget-object v5, p0, Lio/dcloud/h/c/c/e/c;->c:Landroid/app/Activity;

    invoke-direct {v1, v4, v5}, Lio/dcloud/h/c/c/f/b/a;-><init>(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Landroid/app/Activity;)V

    .line 12
    invoke-virtual {p1}, Lio/dcloud/h/c/c/a/b;->f()I

    move-result v4

    invoke-virtual {v1, v4}, Lio/dcloud/h/c/c/f/b/c;->c(I)V

    .line 13
    invoke-virtual {p1}, Lio/dcloud/h/c/c/a/b;->h()Z

    move-result v4

    invoke-virtual {v1, v4}, Lio/dcloud/h/c/c/f/b/c;->a(Z)V

    .line 14
    invoke-virtual {p1}, Lio/dcloud/h/c/c/a/b;->g()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 15
    invoke-virtual {v1}, Lio/dcloud/h/c/c/f/b/c;->e()V

    .line 17
    :cond_0
    invoke-virtual {v1, v3}, Lio/dcloud/h/c/c/f/b/a;->a(I)V

    .line 18
    invoke-virtual {v1, v2}, Lio/dcloud/h/c/c/f/b/c;->a(Lio/dcloud/h/c/c/a/d;)V

    goto :goto_0

    .line 20
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/h/c/c/f/b/d/b;

    if-eqz v3, :cond_2

    .line 22
    invoke-interface {v3, v2}, Lio/dcloud/h/c/c/f/b/d/b;->a(Lio/dcloud/h/c/c/a/d;)V

    goto :goto_0

    .line 24
    :cond_2
    new-instance v3, Lio/dcloud/h/c/c/f/b/c;

    iget-object v4, p0, Lio/dcloud/h/c/c/e/c;->b:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    iget-object v5, p0, Lio/dcloud/h/c/c/e/c;->c:Landroid/app/Activity;

    invoke-direct {v3, v4, v5}, Lio/dcloud/h/c/c/f/b/c;-><init>(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Landroid/app/Activity;)V

    .line 25
    invoke-virtual {p1}, Lio/dcloud/h/c/c/a/b;->g()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 26
    invoke-interface {v3}, Lio/dcloud/h/c/c/f/b/d/b;->e()V

    .line 27
    :cond_3
    invoke-virtual {p1}, Lio/dcloud/h/c/c/a/b;->h()Z

    move-result v4

    invoke-interface {v3, v4}, Lio/dcloud/h/c/c/f/b/d/b;->a(Z)V

    .line 28
    invoke-virtual {p1}, Lio/dcloud/h/c/c/a/b;->f()I

    move-result v4

    invoke-interface {v3, v4}, Lio/dcloud/h/c/c/f/b/d/b;->c(I)V

    .line 29
    invoke-interface {v3, p0}, Lio/dcloud/h/c/c/f/b/d/b;->a(Lio/dcloud/h/c/c/f/b/d/a;)V

    .line 30
    invoke-virtual {v2}, Lio/dcloud/h/c/c/a/d;->e()I

    move-result v4

    invoke-interface {v3, v4}, Lio/dcloud/h/c/c/f/b/d/b;->a(I)V

    .line 31
    invoke-interface {v3, v2}, Lio/dcloud/h/c/c/f/b/d/b;->a(Lio/dcloud/h/c/c/a/d;)V

    .line 32
    invoke-virtual {v2}, Lio/dcloud/h/c/c/a/d;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    if-eqz v1, :cond_7

    .line 38
    invoke-virtual {v1}, Lio/dcloud/h/c/c/f/b/c;->f()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 39
    new-instance p2, Lio/dcloud/h/c/c/f/b/b;

    iget-object v2, p0, Lio/dcloud/h/c/c/e/c;->b:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    iget-object v3, p0, Lio/dcloud/h/c/c/e/c;->c:Landroid/app/Activity;

    invoke-direct {p2, v2, v3}, Lio/dcloud/h/c/c/f/b/b;-><init>(Lio/dcloud/sdk/core/entry/DCloudAOLSlot;Landroid/app/Activity;)V

    .line 40
    invoke-virtual {p2, v1}, Lio/dcloud/h/c/c/f/b/b;->a(Lio/dcloud/h/c/c/f/b/a;)V

    .line 41
    invoke-virtual {v1}, Lio/dcloud/h/c/c/f/b/c;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/h/c/c/f/b/c;

    invoke-virtual {p2, v2}, Lio/dcloud/h/c/c/f/b/b;->a(Lio/dcloud/h/c/c/f/b/c;)V

    .line 42
    invoke-virtual {v1}, Lio/dcloud/h/c/c/f/b/c;->f()I

    move-result v2

    invoke-virtual {p2, v2}, Lio/dcloud/h/c/c/f/b/b;->a(I)V

    .line 43
    invoke-virtual {p2, p0}, Lio/dcloud/h/c/c/f/b/b;->a(Lio/dcloud/h/c/c/f/b/d/a;)V

    .line 44
    invoke-virtual {p1}, Lio/dcloud/h/c/c/a/b;->f()I

    move-result v2

    invoke-virtual {p2, v2}, Lio/dcloud/h/c/c/f/b/b;->c(I)V

    .line 45
    invoke-virtual {p1}, Lio/dcloud/h/c/c/a/b;->h()Z

    move-result v2

    invoke-virtual {p2, v2}, Lio/dcloud/h/c/c/f/b/b;->a(Z)V

    .line 46
    invoke-virtual {p1}, Lio/dcloud/h/c/c/a/b;->g()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 47
    invoke-virtual {p2}, Lio/dcloud/h/c/c/f/b/b;->e()V

    .line 48
    :cond_5
    invoke-virtual {v1}, Lio/dcloud/h/c/c/f/b/c;->f()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 50
    :cond_6
    invoke-virtual {v1, p0}, Lio/dcloud/h/c/c/f/b/c;->a(Lio/dcloud/h/c/c/f/b/d/a;)V

    .line 51
    invoke-virtual {v1}, Lio/dcloud/h/c/c/f/b/c;->f()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_7
    :goto_1
    iget-object p1, p0, Lio/dcloud/h/c/c/e/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
    iget-object p1, p0, Lio/dcloud/h/c/c/e/a;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_8

    .line 58
    iget-object p1, p0, Lio/dcloud/h/c/c/e/a;->f:Ljava/util/List;

    sget-object p2, Lio/dcloud/h/c/c/e/-$$Lambda$a$aRHNxXPsCzwNKNhkR_9Ti7bfuCA;->INSTANCE:Lio/dcloud/h/c/c/e/-$$Lambda$a$aRHNxXPsCzwNKNhkR_9Ti7bfuCA;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 59
    :cond_8
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    if-ne p1, p2, :cond_9

    :goto_2
    const/4 p1, 0x0

    return p1

    :cond_9
    const/16 p1, -0x139c

    .line 62
    invoke-static {p1}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/dcloud/h/c/c/e/a;->c(ILjava/lang/String;)V

    return p2
.end method

.method private b(ILjava/lang/String;Lorg/json/JSONArray;)V
    .locals 2

    .line 37
    iget-boolean v0, p0, Lio/dcloud/h/c/c/e/a;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lio/dcloud/h/c/c/e/a;->o:Z

    const-string v0, "this slot:all fail"

    .line 39
    invoke-static {v0}, Lio/dcloud/sdk/poly/base/utils/e;->b(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lio/dcloud/h/c/c/e/a;->j:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lio/dcloud/h/c/c/e/a;->a(ILjava/lang/String;Lorg/json/JSONArray;)V

    :cond_0
    return-void
.end method

.method private c(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lio/dcloud/h/c/c/e/a;->b(ILjava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method private f()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lio/dcloud/h/c/c/e/a;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/h/c/c/f/b/d/b;

    .line 3
    invoke-interface {v2}, Lio/dcloud/h/c/c/f/b/d/b;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 10
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/h/c/c/a/c;

    .line 12
    invoke-virtual {v2}, Lio/dcloud/h/c/c/a/c;->d()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v2}, Lio/dcloud/h/c/c/a/c;->c()I

    move-result v3

    if-nez v3, :cond_2

    .line 15
    invoke-virtual {v2}, Lio/dcloud/h/c/c/a/c;->b()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 17
    :cond_2
    invoke-virtual {v2}, Lio/dcloud/h/c/c/a/c;->e()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 20
    :cond_3
    iget v4, p0, Lio/dcloud/h/c/c/e/c;->d:I

    iget-object v0, p0, Lio/dcloud/h/c/c/e/c;->b:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    invoke-virtual {v0}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->getAdpid()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lio/dcloud/h/c/c/e/a;->p:Lio/dcloud/h/c/c/a/b;

    invoke-virtual {v0}, Lio/dcloud/h/c/c/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "1"

    goto :goto_2

    :cond_4
    const-string v0, "0"

    :goto_2
    move-object v6, v0

    iget-object v0, p0, Lio/dcloud/h/c/c/e/c;->b:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    invoke-virtual {v0}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->getEI()Ljava/lang/String;

    move-result-object v7

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lio/dcloud/h/c/c/e/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 22
    :cond_5
    invoke-direct {p0, v1}, Lio/dcloud/h/c/c/e/a;->a(Lorg/json/JSONArray;)V

    return-void
.end method

.method private h()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/e/a;->p:Lio/dcloud/h/c/c/a/b;

    invoke-virtual {v0}, Lio/dcloud/h/c/c/a/b;->e()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lio/dcloud/h/c/c/e/a;->m:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/16 v0, -0x139a

    .line 4
    invoke-static {v0}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/dcloud/h/c/c/e/a;->c(ILjava/lang/String;)V

    return-void

    .line 7
    :cond_0
    iget-object v2, p0, Lio/dcloud/h/c/c/e/a;->j:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    iget-object v2, p0, Lio/dcloud/h/c/c/e/a;->j:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 9
    iget v0, p0, Lio/dcloud/h/c/c/e/c;->d:I

    iget-object v1, p0, Lio/dcloud/h/c/c/e/a;->p:Lio/dcloud/h/c/c/a/b;

    invoke-virtual {v1}, Lio/dcloud/h/c/c/a/b;->f()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/16 v0, -0x1393

    .line 10
    invoke-static {v0}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/dcloud/h/c/c/e/a;->c(ILjava/lang/String;)V

    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lio/dcloud/h/c/c/e/a;->p:Lio/dcloud/h/c/c/a/b;

    invoke-virtual {v0}, Lio/dcloud/h/c/c/a/b;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 14
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    iget v1, p0, Lio/dcloud/h/c/c/e/c;->d:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 19
    invoke-static {}, Lio/dcloud/sdk/core/b/a;->b()Lio/dcloud/sdk/core/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/sdk/core/b/a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 20
    iget-object v2, p0, Lio/dcloud/h/c/c/e/a;->p:Lio/dcloud/h/c/c/a/b;

    invoke-virtual {v2}, Lio/dcloud/h/c/c/a/b;->b()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, -0x1394

    .line 21
    invoke-static {v0}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/dcloud/h/c/c/e/a;->c(ILjava/lang/String;)V

    return-void

    .line 25
    :cond_3
    iget-object v1, p0, Lio/dcloud/h/c/c/e/a;->p:Lio/dcloud/h/c/c/a/b;

    invoke-direct {p0, v1, v0}, Lio/dcloud/h/c/c/e/a;->a(Lio/dcloud/h/c/c/a/b;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 26
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "level load finish.total:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/h/c/c/e/a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/sdk/poly/base/utils/e;->a(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lio/dcloud/h/c/c/e/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/h/c/c/f/b/d/b;

    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/sdk/poly/base/utils/e;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_5
    invoke-direct {p0}, Lio/dcloud/h/c/c/e/a;->i()V

    return-void

    :cond_6
    :goto_1
    const/16 v0, -0x139b

    .line 31
    invoke-static {v0}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/dcloud/h/c/c/e/a;->c(ILjava/lang/String;)V

    return-void
.end method

.method private i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/e/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lio/dcloud/h/c/c/e/a;->i:Z

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/dcloud/h/c/c/e/a;->f:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/h/c/c/f/b/d/b;

    .line 4
    iget-object v1, p0, Lio/dcloud/h/c/c/e/a;->h:Lio/dcloud/h/c/c/f/b/d/b;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lio/dcloud/h/c/c/f/b/d/b;->c()I

    move-result v1

    if-lez v1, :cond_1

    .line 6
    iget-object v1, p0, Lio/dcloud/h/c/c/e/a;->h:Lio/dcloud/h/c/c/f/b/d/b;

    invoke-interface {v1}, Lio/dcloud/h/c/c/f/b/d/b;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lio/dcloud/h/c/c/f/b/d/b;->b(I)Z

    move-result v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is necessary to load next:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",next level:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lio/dcloud/h/c/c/f/b/d/b;->f()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/sdk/poly/base/utils/e;->a(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lio/dcloud/h/c/c/e/a;->h:Lio/dcloud/h/c/c/f/b/d/b;

    invoke-interface {v1}, Lio/dcloud/h/c/c/f/b/d/b;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lio/dcloud/h/c/c/f/b/d/b;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    invoke-direct {p0}, Lio/dcloud/h/c/c/e/a;->i()V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lio/dcloud/h/c/c/e/a;->h:Lio/dcloud/h/c/c/f/b/d/b;

    invoke-interface {v1}, Lio/dcloud/h/c/c/f/b/d/b;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lio/dcloud/h/c/c/f/b/d/b;->e(I)V

    .line 12
    iget-object v1, p0, Lio/dcloud/h/c/c/e/a;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v1, p0, Lio/dcloud/h/c/c/e/a;->n:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/dcloud/h/c/c/f/b/d/b;->a(Ljava/lang/String;)V

    .line 14
    invoke-interface {v0}, Lio/dcloud/h/c/c/f/b/d/b;->a()V

    goto :goto_0

    .line 17
    :cond_1
    iget-object v1, p0, Lio/dcloud/h/c/c/e/a;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v1, p0, Lio/dcloud/h/c/c/e/a;->n:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/dcloud/h/c/c/f/b/d/b;->a(Ljava/lang/String;)V

    .line 19
    invoke-interface {v0}, Lio/dcloud/h/c/c/f/b/d/b;->a()V

    goto :goto_0

    .line 23
    :cond_2
    iget-object v0, p0, Lio/dcloud/h/c/c/e/a;->h:Lio/dcloud/h/c/c/f/b/d/b;

    if-eqz v0, :cond_3

    .line 24
    check-cast v0, Lio/dcloud/h/c/c/f/a/a;

    invoke-interface {v0}, Lio/dcloud/h/c/c/f/a/a;->j()V

    .line 25
    iget-object v0, p0, Lio/dcloud/h/c/c/e/a;->h:Lio/dcloud/h/c/c/f/b/d/b;

    invoke-interface {v0}, Lio/dcloud/h/c/c/f/b/d/b;->i()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/dcloud/h/c/c/e/a;->a(Ljava/util/List;)V

    .line 27
    :cond_3
    invoke-direct {p0}, Lio/dcloud/h/c/c/e/a;->f()V

    :goto_0
    return-void
.end method

.method private j()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/dcloud/h/c/c/e/a;->i:Z

    const-string v0, "this slot:time out"

    .line 2
    invoke-static {v0}, Lio/dcloud/sdk/poly/base/utils/e;->b(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/h/c/c/e/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-direct {p0, v0}, Lio/dcloud/h/c/c/e/a;->a(Lorg/json/JSONArray;)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lio/dcloud/h/c/c/e/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/h/c/c/f/b/d/b;

    .line 9
    invoke-interface {v1}, Lio/dcloud/h/c/c/f/b/d/b;->k()Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    invoke-interface {v1}, Lio/dcloud/h/c/c/f/b/d/b;->h()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic lambda$aRHNxXPsCzwNKNhkR_9Ti7bfuCA(Lio/dcloud/h/c/c/f/b/d/b;Lio/dcloud/h/c/c/f/b/d/b;)I
    .locals 0

    invoke-static {p0, p1}, Lio/dcloud/h/c/c/e/a;->a(Lio/dcloud/h/c/c/f/b/d/b;Lio/dcloud/h/c/c/f/b/d/b;)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected a()Landroid/app/Activity;
    .locals 1

    .line 64
    iget-object v0, p0, Lio/dcloud/h/c/c/e/c;->c:Landroid/app/Activity;

    return-object v0
.end method

.method protected a(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lio/dcloud/h/c/c/e/a;->b(ILjava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method protected abstract a(ILjava/lang/String;Lorg/json/JSONArray;)V
.end method

.method protected a(Lio/dcloud/h/c/c/a/b;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lio/dcloud/h/c/c/e/a;->p:Lio/dcloud/h/c/c/a/b;

    .line 3
    iget-object v0, p0, Lio/dcloud/h/c/c/e/c;->b:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    invoke-virtual {p1}, Lio/dcloud/h/c/c/a/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->setAdpid(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lio/dcloud/h/c/c/e/a;->h()V

    return-void
.end method

.method public a(Lio/dcloud/h/c/c/f/b/d/b;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lio/dcloud/h/c/c/e/a;->i()V

    return-void
.end method

.method public b()Lio/dcloud/sdk/core/module/DCBaseAOLLoader;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lio/dcloud/h/c/c/f/b/d/b;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "level load success.current:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/dcloud/h/c/c/f/b/d/b;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",is bid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/dcloud/h/c/c/f/b/d/b;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/sdk/poly/base/utils/e;->a(Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lio/dcloud/h/c/c/f/b/d/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, p0, Lio/dcloud/h/c/c/e/a;->h:Lio/dcloud/h/c/c/f/b/d/b;

    .line 4
    invoke-direct {p0}, Lio/dcloud/h/c/c/e/a;->i()V

    goto/16 :goto_2

    .line 7
    :cond_0
    iget-object v0, p0, Lio/dcloud/h/c/c/e/a;->h:Lio/dcloud/h/c/c/f/b/d/b;

    if-eqz v0, :cond_6

    instance-of v0, v0, Lio/dcloud/h/c/c/f/a/a;

    if-eqz v0, :cond_6

    .line 8
    invoke-virtual {p0}, Lio/dcloud/h/c/c/e/a;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p0, Lio/dcloud/h/c/c/e/c;->b:Lio/dcloud/sdk/core/entry/DCloudAOLSlot;

    invoke-virtual {v0}, Lio/dcloud/sdk/core/entry/DCloudAOLSlot;->getCount()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/util/List;

    iget-object v2, p0, Lio/dcloud/h/c/c/e/a;->h:Lio/dcloud/h/c/c/f/b/d/b;

    invoke-interface {v2}, Lio/dcloud/h/c/c/f/b/d/b;->i()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {p1}, Lio/dcloud/h/c/c/f/b/d/b;->i()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lio/dcloud/sdk/poly/base/utils/a;->a(I[Ljava/util/List;)Lio/dcloud/sdk/poly/base/utils/a$a;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lio/dcloud/h/c/c/e/a;->h:Lio/dcloud/h/c/c/f/b/d/b;

    .line 13
    invoke-direct {p0}, Lio/dcloud/h/c/c/e/a;->i()V

    return-void

    .line 17
    :cond_1
    iget-object v0, p1, Lio/dcloud/sdk/poly/base/utils/a$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 18
    invoke-virtual {v1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->isSlotSupportBidding()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 19
    iget v2, p1, Lio/dcloud/sdk/poly/base/utils/a$a;->b:I

    iget v3, p1, Lio/dcloud/sdk/poly/base/utils/a$a;->c:I

    invoke-virtual {v1, v2, v3}, Lio/dcloud/sdk/core/module/DCBaseAOL;->biddingSuccess(II)V

    goto :goto_0

    .line 22
    :cond_3
    iget-object p1, p1, Lio/dcloud/sdk/poly/base/utils/a$a;->d:Ljava/util/List;

    invoke-direct {p0, p1}, Lio/dcloud/h/c/c/e/a;->a(Ljava/util/List;)V

    goto :goto_1

    .line 25
    :cond_4
    invoke-interface {p1}, Lio/dcloud/h/c/c/f/b/d/b;->c()I

    move-result v0

    iget-object v1, p0, Lio/dcloud/h/c/c/e/a;->h:Lio/dcloud/h/c/c/f/b/d/b;

    invoke-interface {v1}, Lio/dcloud/h/c/c/f/b/d/b;->c()I

    move-result v1

    if-le v0, v1, :cond_5

    .line 26
    iget-object v0, p0, Lio/dcloud/h/c/c/e/a;->h:Lio/dcloud/h/c/c/f/b/d/b;

    check-cast v0, Lio/dcloud/h/c/c/f/a/a;

    invoke-interface {p1}, Lio/dcloud/h/c/c/f/b/d/b;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lio/dcloud/h/c/c/f/a/a;->d(I)V

    .line 27
    invoke-interface {p1}, Lio/dcloud/h/c/c/f/b/d/b;->i()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/h/c/c/e/a;->a(Ljava/util/List;)V

    goto :goto_1

    .line 29
    :cond_5
    iget-object p1, p0, Lio/dcloud/h/c/c/e/a;->h:Lio/dcloud/h/c/c/f/b/d/b;

    check-cast p1, Lio/dcloud/h/c/c/f/a/a;

    invoke-interface {p1}, Lio/dcloud/h/c/c/f/a/a;->j()V

    .line 30
    iget-object p1, p0, Lio/dcloud/h/c/c/e/a;->h:Lio/dcloud/h/c/c/f/b/d/b;

    invoke-interface {p1}, Lio/dcloud/h/c/c/f/b/d/b;->i()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/h/c/c/e/a;->a(Ljava/util/List;)V

    goto :goto_1

    .line 34
    :cond_6
    invoke-interface {p1}, Lio/dcloud/h/c/c/f/b/d/b;->i()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/h/c/c/e/a;->a(Ljava/util/List;)V

    .line 36
    :goto_1
    invoke-direct {p0}, Lio/dcloud/h/c/c/e/a;->f()V

    :goto_2
    return-void
.end method

.method protected abstract b(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/dcloud/sdk/core/module/DCBaseAOL;",
            ">;)V"
        }
    .end annotation
.end method

.method protected c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/e/a;->p:Lio/dcloud/h/c/c/a/b;

    invoke-virtual {v0}, Lio/dcloud/h/c/c/a/b;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method g()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/dcloud/h/c/c/e/c;->d:I

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

.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/h/c/c/e/a;->n:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lio/dcloud/h/c/c/e/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lio/dcloud/h/c/c/e/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/dcloud/h/c/c/e/a;->h:Lio/dcloud/h/c/c/f/b/d/b;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/dcloud/h/c/c/e/a;->i:Z

    .line 6
    iput-boolean v0, p0, Lio/dcloud/h/c/c/e/a;->o:Z

    .line 7
    iget v0, p0, Lio/dcloud/h/c/c/e/c;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 8
    invoke-static {}, Lio/dcloud/sdk/core/b/a;->b()Lio/dcloud/sdk/core/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/core/b/a;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v1, :cond_1

    const-string v1, "dcloud"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, -0x138c

    .line 10
    invoke-static {v0}, Lio/dcloud/sdk/core/util/AdErrorUtil;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/dcloud/h/c/c/e/a;->c(ILjava/lang/String;)V

    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lio/dcloud/h/c/c/e/a;->j:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x4650

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/h/c/c/e/a;->m:J

    .line 17
    invoke-super {p0}, Lio/dcloud/h/c/c/e/c;->run()V

    return-void
.end method
