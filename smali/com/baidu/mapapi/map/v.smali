.class Lcom/baidu/mapapi/map/v;
.super Ljava/lang/Object;
.source "PointQuadTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/v$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/baidu/mapapi/map/v$a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/baidu/mapapi/map/m;

.field private final b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/map/v<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(DDDDI)V
    .locals 10

    .line 67
    new-instance v9, Lcom/baidu/mapapi/map/m;

    move-object v0, v9

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/baidu/mapapi/map/m;-><init>(DDDD)V

    move-object v0, p0

    move/from16 v1, p9

    invoke-direct {p0, v9, v1}, Lcom/baidu/mapapi/map/v;-><init>(Lcom/baidu/mapapi/map/m;I)V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/mapapi/map/m;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/baidu/mapapi/map/v;-><init>(Lcom/baidu/mapapi/map/m;I)V

    return-void
.end method

.method private constructor <init>(Lcom/baidu/mapapi/map/m;I)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/baidu/mapapi/map/v;->d:Ljava/util/List;

    .line 71
    iput-object p1, p0, Lcom/baidu/mapapi/map/v;->a:Lcom/baidu/mapapi/map/m;

    .line 72
    iput p2, p0, Lcom/baidu/mapapi/map/v;->b:I

    return-void
.end method

.method private a()V
    .locals 12

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/mapapi/map/v;->d:Ljava/util/List;

    .line 116
    new-instance v1, Lcom/baidu/mapapi/map/v;

    iget-object v2, p0, Lcom/baidu/mapapi/map/v;->a:Lcom/baidu/mapapi/map/m;

    iget-wide v3, v2, Lcom/baidu/mapapi/map/m;->a:D

    iget-object v2, p0, Lcom/baidu/mapapi/map/v;->a:Lcom/baidu/mapapi/map/m;

    iget-wide v5, v2, Lcom/baidu/mapapi/map/m;->e:D

    iget-object v2, p0, Lcom/baidu/mapapi/map/v;->a:Lcom/baidu/mapapi/map/m;

    iget-wide v7, v2, Lcom/baidu/mapapi/map/m;->b:D

    iget-object v2, p0, Lcom/baidu/mapapi/map/v;->a:Lcom/baidu/mapapi/map/m;

    iget-wide v9, v2, Lcom/baidu/mapapi/map/m;->f:D

    iget v2, p0, Lcom/baidu/mapapi/map/v;->b:I

    add-int/lit8 v11, v2, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v11}, Lcom/baidu/mapapi/map/v;-><init>(DDDDI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/baidu/mapapi/map/v;->d:Ljava/util/List;

    new-instance v11, Lcom/baidu/mapapi/map/v;

    iget-object v1, p0, Lcom/baidu/mapapi/map/v;->a:Lcom/baidu/mapapi/map/m;

    iget-wide v2, v1, Lcom/baidu/mapapi/map/m;->e:D

    iget-object v1, p0, Lcom/baidu/mapapi/map/v;->a:Lcom/baidu/mapapi/map/m;

    iget-wide v4, v1, Lcom/baidu/mapapi/map/m;->c:D

    iget-object v1, p0, Lcom/baidu/mapapi/map/v;->a:Lcom/baidu/mapapi/map/m;

    iget-wide v6, v1, Lcom/baidu/mapapi/map/m;->b:D

    iget-object v1, p0, Lcom/baidu/mapapi/map/v;->a:Lcom/baidu/mapapi/map/m;

    iget-wide v8, v1, Lcom/baidu/mapapi/map/m;->f:D

    iget v1, p0, Lcom/baidu/mapapi/map/v;->b:I

    add-int/lit8 v10, v1, 0x1

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/baidu/mapapi/map/v;-><init>(DDDDI)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcom/baidu/mapapi/map/v;->d:Ljava/util/List;

    new-instance v11, Lcom/baidu/mapapi/map/v;

    iget-object v1, p0, Lcom/baidu/mapapi/map/v;->a:Lcom/baidu/mapapi/map/m;

    iget-wide v2, v1, Lcom/baidu/mapapi/map/m;->a:D

    iget-object v1, p0, Lcom/baidu/mapapi/map/v;->a:Lcom/baidu/mapapi/map/m;

    iget-wide v4, v1, Lcom/baidu/mapapi/map/m;->e:D

    iget-object v1, p0, Lcom/baidu/mapapi/map/v;->a:Lcom/baidu/mapapi/map/m;

    iget-wide v6, v1, Lcom/baidu/mapapi/map/m;->f:D

    iget-object v1, p0, Lcom/baidu/mapapi/map/v;->a:Lcom/baidu/mapapi/map/m;

    iget-wide v8, v1, Lcom/baidu/mapapi/map/m;->d:D

    iget v1, p0, Lcom/baidu/mapapi/map/v;->b:I

    add-int/lit8 v10, v1, 0x1

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/baidu/mapapi/map/v;-><init>(DDDDI)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/baidu/mapapi/map/v;->d:Ljava/util/List;

    new-instance v11, Lcom/baidu/mapapi/map/v;

    iget-object v1, p0, Lcom/baidu/mapapi/map/v;->a:Lcom/baidu/mapapi/map/m;

    iget-wide v2, v1, Lcom/baidu/mapapi/map/m;->e:D

    iget-object v1, p0, Lcom/baidu/mapapi/map/v;->a:Lcom/baidu/mapapi/map/m;

    iget-wide v4, v1, Lcom/baidu/mapapi/map/m;->c:D

    iget-object v1, p0, Lcom/baidu/mapapi/map/v;->a:Lcom/baidu/mapapi/map/m;

    iget-wide v6, v1, Lcom/baidu/mapapi/map/m;->f:D

    iget-object v1, p0, Lcom/baidu/mapapi/map/v;->a:Lcom/baidu/mapapi/map/m;

    iget-wide v8, v1, Lcom/baidu/mapapi/map/m;->d:D

    iget v1, p0, Lcom/baidu/mapapi/map/v;->b:I

    add-int/lit8 v10, v1, 0x1

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/baidu/mapapi/map/v;-><init>(DDDDI)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/baidu/mapapi/map/v;->c:Ljava/util/List;

    const/4 v1, 0x0

    .line 126
    iput-object v1, p0, Lcom/baidu/mapapi/map/v;->c:Ljava/util/List;

    .line 128
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/baidu/mapapi/map/v$a;

    .line 130
    invoke-virtual {v7}, Lcom/baidu/mapapi/map/v$a;->getPoint()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-double v3, v1

    invoke-virtual {v7}, Lcom/baidu/mapapi/map/v$a;->getPoint()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-double v5, v1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/baidu/mapapi/map/v;->a(DDLcom/baidu/mapapi/map/v$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(DDLcom/baidu/mapapi/map/v$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDTT;)V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/baidu/mapapi/map/v;->d:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/baidu/mapapi/map/v;->a:Lcom/baidu/mapapi/map/m;

    iget-wide v0, v0, Lcom/baidu/mapapi/map/m;->f:D

    cmpg-double v2, p3, v0

    if-gez v2, :cond_1

    .line 88
    iget-object v0, p0, Lcom/baidu/mapapi/map/v;->a:Lcom/baidu/mapapi/map/m;

    iget-wide v0, v0, Lcom/baidu/mapapi/map/m;->e:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    .line 89
    iget-object v0, p0, Lcom/baidu/mapapi/map/v;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/baidu/mapapi/map/v;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/baidu/mapapi/map/v;->a(DDLcom/baidu/mapapi/map/v$a;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/v;->d:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/baidu/mapapi/map/v;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/baidu/mapapi/map/v;->a(DDLcom/baidu/mapapi/map/v$a;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/v;->a:Lcom/baidu/mapapi/map/m;

    iget-wide v0, v0, Lcom/baidu/mapapi/map/m;->e:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_2

    .line 95
    iget-object v0, p0, Lcom/baidu/mapapi/map/v;->d:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/baidu/mapapi/map/v;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/baidu/mapapi/map/v;->a(DDLcom/baidu/mapapi/map/v$a;)V

    goto :goto_0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/v;->d:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/baidu/mapapi/map/v;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/baidu/mapapi/map/v;->a(DDLcom/baidu/mapapi/map/v$a;)V

    :goto_0
    return-void

    .line 102
    :cond_3
    iget-object p1, p0, Lcom/baidu/mapapi/map/v;->c:Ljava/util/List;

    if-nez p1, :cond_4

    .line 103
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/baidu/mapapi/map/v;->c:Ljava/util/List;

    .line 105
    :cond_4
    iget-object p1, p0, Lcom/baidu/mapapi/map/v;->c:Ljava/util/List;

    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object p1, p0, Lcom/baidu/mapapi/map/v;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x28

    if-le p1, p2, :cond_5

    iget p1, p0, Lcom/baidu/mapapi/map/v;->b:I

    if-ge p1, p2, :cond_5

    .line 107
    invoke-direct {p0}, Lcom/baidu/mapapi/map/v;->a()V

    :cond_5
    return-void
.end method

.method private a(Lcom/baidu/mapapi/map/m;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/mapapi/map/m;",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/baidu/mapapi/map/v;->a:Lcom/baidu/mapapi/map/m;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/m;->a(Lcom/baidu/mapapi/map/m;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/v;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 193
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/v;

    .line 194
    invoke-direct {v1, p1, p2}, Lcom/baidu/mapapi/map/v;->a(Lcom/baidu/mapapi/map/m;Ljava/util/Collection;)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/v;->c:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 197
    iget-object v0, p0, Lcom/baidu/mapapi/map/v;->a:Lcom/baidu/mapapi/map/m;

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/m;->b(Lcom/baidu/mapapi/map/m;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    iget-object p1, p0, Lcom/baidu/mapapi/map/v;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/map/v;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/map/v$a;

    .line 201
    invoke-virtual {v1}, Lcom/baidu/mapapi/map/v$a;->getPoint()Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/baidu/mapapi/map/m;->a(Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 202
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mapapi/map/m;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/mapapi/map/m;",
            ")",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    invoke-direct {p0, p1, v0}, Lcom/baidu/mapapi/map/v;->a(Lcom/baidu/mapapi/map/m;Ljava/util/Collection;)V

    return-object v0
.end method

.method public a(Lcom/baidu/mapapi/map/v$a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 79
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/v$a;->getPoint()Landroid/graphics/Point;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/baidu/mapapi/map/v;->a:Lcom/baidu/mapapi/map/m;

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-double v2, v2

    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-double v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/baidu/mapapi/map/m;->a(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-double v3, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-double v5, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/baidu/mapapi/map/v;->a(DDLcom/baidu/mapapi/map/v$a;)V

    :cond_0
    return-void
.end method
