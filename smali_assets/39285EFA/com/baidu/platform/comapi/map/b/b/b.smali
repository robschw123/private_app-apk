.class public Lcom/baidu/platform/comapi/map/b/b/b;
.super Ljava/lang/Object;
.source "OptSelector.java"

# interfaces
.implements Lcom/baidu/platform/comapi/map/b/a/b$a;


# instance fields
.field private a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/baidu/platform/comapi/map/b/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/baidu/platform/comapi/map/b/f;

.field private c:Lcom/baidu/platform/comapi/map/MapController;

.field private d:Z

.field private e:Lcom/baidu/platform/comapi/map/b/b/a;

.field private f:I


# direct methods
.method public constructor <init>(Lcom/baidu/platform/comapi/map/MapController;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/b/b/b;->a:Ljava/util/LinkedList;

    .line 32
    new-instance v0, Lcom/baidu/platform/comapi/map/b/f;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/map/b/f;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/b/b/b;->b:Lcom/baidu/platform/comapi/map/b/f;

    const/4 v1, 0x0

    .line 34
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/b/b/b;->d:Z

    .line 40
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/b/b/b;->c:Lcom/baidu/platform/comapi/map/MapController;

    .line 41
    iget p1, v0, Lcom/baidu/platform/comapi/map/b/f;->b:I

    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/baidu/platform/comapi/map/b/b/b;->f:I

    return-void
.end method

.method private a()Z
    .locals 11

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/b/b/b;->d:Z

    .line 95
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/b/b/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/platform/comapi/map/b/a$a;

    .line 96
    sget-object v4, Lcom/baidu/platform/comapi/map/b/a;->a:Lcom/baidu/platform/comapi/map/b/a$a;

    invoke-virtual {v4}, Lcom/baidu/platform/comapi/map/b/a$a;->c()Lcom/baidu/platform/comapi/map/b/a$d;

    move-result-object v4

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/b/a$a;->c()Lcom/baidu/platform/comapi/map/b/a$d;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/baidu/platform/comapi/map/b/a$d;->a(Lcom/baidu/platform/comapi/map/b/a$d;Lcom/baidu/platform/comapi/map/b/a$d;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 97
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x4046800000000000L    # 45.0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x4060e00000000000L    # 135.0

    cmpg-double v2, v4, v6

    if-gez v2, :cond_0

    return v3

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/b/b/b;->b:Lcom/baidu/platform/comapi/map/b/f;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/b/f;->c()Landroid/util/Pair;

    move-result-object v1

    .line 104
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/baidu/platform/comapi/map/b/a$d;

    .line 105
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/baidu/platform/comapi/map/b/a$d;

    .line 107
    iget-wide v4, v2, Lcom/baidu/platform/comapi/map/b/a$d;->b:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget v6, p0, Lcom/baidu/platform/comapi/map/b/b/b;->f:I

    int-to-double v6, v6

    cmpl-double v8, v4, v6

    if-lez v8, :cond_2

    iget-wide v4, v1, Lcom/baidu/platform/comapi/map/b/a$d;->b:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget v6, p0, Lcom/baidu/platform/comapi/map/b/b/b;->f:I

    int-to-double v6, v6

    cmpl-double v8, v4, v6

    if-lez v8, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 110
    :goto_0
    iget-object v5, p0, Lcom/baidu/platform/comapi/map/b/b/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/platform/comapi/map/b/a$a;

    .line 111
    iget-object v6, p0, Lcom/baidu/platform/comapi/map/b/b/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/platform/comapi/map/b/a$a;

    .line 113
    new-instance v7, Lcom/baidu/platform/comapi/map/b/a$a;

    iget-object v8, v6, Lcom/baidu/platform/comapi/map/b/a$a;->a:Lcom/baidu/platform/comapi/map/b/a$b;

    iget-object v9, v5, Lcom/baidu/platform/comapi/map/b/a$a;->a:Lcom/baidu/platform/comapi/map/b/a$b;

    invoke-direct {v7, v8, v9}, Lcom/baidu/platform/comapi/map/b/a$a;-><init>(Lcom/baidu/platform/comapi/map/b/a$b;Lcom/baidu/platform/comapi/map/b/a$b;)V

    .line 114
    new-instance v8, Lcom/baidu/platform/comapi/map/b/a$a;

    iget-object v6, v6, Lcom/baidu/platform/comapi/map/b/a$a;->b:Lcom/baidu/platform/comapi/map/b/a$b;

    iget-object v5, v5, Lcom/baidu/platform/comapi/map/b/a$a;->b:Lcom/baidu/platform/comapi/map/b/a$b;

    invoke-direct {v8, v6, v5}, Lcom/baidu/platform/comapi/map/b/a$a;-><init>(Lcom/baidu/platform/comapi/map/b/a$b;Lcom/baidu/platform/comapi/map/b/a$b;)V

    .line 118
    iget-wide v5, v2, Lcom/baidu/platform/comapi/map/b/a$d;->b:D

    const-wide/16 v9, 0x0

    cmpl-double v2, v5, v9

    if-lez v2, :cond_3

    iget-wide v1, v1, Lcom/baidu/platform/comapi/map/b/a$d;->b:D

    cmpl-double v5, v1, v9

    if-lez v5, :cond_3

    .line 119
    invoke-virtual {v7}, Lcom/baidu/platform/comapi/map/b/a$a;->c()Lcom/baidu/platform/comapi/map/b/a$d;

    move-result-object v1

    sget-object v2, Lcom/baidu/platform/comapi/map/b/a;->c:Lcom/baidu/platform/comapi/map/b/a$a;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/b/a$a;->c()Lcom/baidu/platform/comapi/map/b/a$d;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/platform/comapi/map/b/a$d;->a(Lcom/baidu/platform/comapi/map/b/a$d;Lcom/baidu/platform/comapi/map/b/a$d;)D

    move-result-wide v1

    double-to-int v1, v1

    .line 120
    invoke-virtual {v8}, Lcom/baidu/platform/comapi/map/b/a$a;->c()Lcom/baidu/platform/comapi/map/b/a$d;

    move-result-object v2

    sget-object v5, Lcom/baidu/platform/comapi/map/b/a;->c:Lcom/baidu/platform/comapi/map/b/a$a;

    invoke-virtual {v5}, Lcom/baidu/platform/comapi/map/b/a$a;->c()Lcom/baidu/platform/comapi/map/b/a$d;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/baidu/platform/comapi/map/b/a$d;->a(Lcom/baidu/platform/comapi/map/b/a$d;Lcom/baidu/platform/comapi/map/b/a$d;)D

    move-result-wide v5

    goto :goto_1

    .line 122
    :cond_3
    invoke-virtual {v7}, Lcom/baidu/platform/comapi/map/b/a$a;->c()Lcom/baidu/platform/comapi/map/b/a$d;

    move-result-object v1

    sget-object v2, Lcom/baidu/platform/comapi/map/b/a;->b:Lcom/baidu/platform/comapi/map/b/a$a;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/b/a$a;->c()Lcom/baidu/platform/comapi/map/b/a$d;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/platform/comapi/map/b/a$d;->a(Lcom/baidu/platform/comapi/map/b/a$d;Lcom/baidu/platform/comapi/map/b/a$d;)D

    move-result-wide v1

    double-to-int v1, v1

    .line 123
    invoke-virtual {v8}, Lcom/baidu/platform/comapi/map/b/a$a;->c()Lcom/baidu/platform/comapi/map/b/a$d;

    move-result-object v2

    sget-object v5, Lcom/baidu/platform/comapi/map/b/a;->b:Lcom/baidu/platform/comapi/map/b/a$a;

    invoke-virtual {v5}, Lcom/baidu/platform/comapi/map/b/a$a;->c()Lcom/baidu/platform/comapi/map/b/a$d;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/baidu/platform/comapi/map/b/a$d;->a(Lcom/baidu/platform/comapi/map/b/a$d;Lcom/baidu/platform/comapi/map/b/a$d;)D

    move-result-wide v5

    :goto_1
    double-to-int v2, v5

    .line 125
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v5, 0x28

    if-ge v1, v5, :cond_4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v5, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method private c(Lcom/baidu/platform/comapi/map/b/a/b;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/b/b/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/b/b/b;->a:Ljava/util/LinkedList;

    iget-object v1, p1, Lcom/baidu/platform/comapi/map/b/a/b;->c:Lcom/baidu/platform/comapi/map/b/a$a;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/b/b/b;->b:Lcom/baidu/platform/comapi/map/b/f;

    iget-object p1, p1, Lcom/baidu/platform/comapi/map/b/a/b;->d:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/b/f;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/b/b/b;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/b/b/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/b/b/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/map/b/b/b;->d(Lcom/baidu/platform/comapi/map/b/a/b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private d(Lcom/baidu/platform/comapi/map/b/a/b;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/b/b/b;->c:Lcom/baidu/platform/comapi/map/MapController;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/MapController;->isOverlookGestureEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/b/b/b;->e:Lcom/baidu/platform/comapi/map/b/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/baidu/platform/comapi/map/b/b/a;->a(Lcom/baidu/platform/comapi/map/b/a/b;Landroid/util/Pair;)V

    .line 83
    new-instance v0, Lcom/baidu/platform/comapi/map/b/b/c;

    iget-object v1, p0, Lcom/baidu/platform/comapi/map/b/b/b;->c:Lcom/baidu/platform/comapi/map/MapController;

    invoke-direct {v0, v1}, Lcom/baidu/platform/comapi/map/b/b/c;-><init>(Lcom/baidu/platform/comapi/map/MapController;)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/b/b/b;->e:Lcom/baidu/platform/comapi/map/b/b/a;

    .line 84
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/b/b/a;->a(Lcom/baidu/platform/comapi/map/b/a/b;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/platform/comapi/map/b/a/b;)Z
    .locals 1

    .line 46
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/b/b/b;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 47
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/b/b/b;->b:Lcom/baidu/platform/comapi/map/b/f;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/b/f;->a()V

    .line 48
    new-instance p1, Lcom/baidu/platform/comapi/map/b/b/d;

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/b/b/b;->c:Lcom/baidu/platform/comapi/map/MapController;

    invoke-direct {p1, v0}, Lcom/baidu/platform/comapi/map/b/b/d;-><init>(Lcom/baidu/platform/comapi/map/MapController;)V

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/b/b/b;->e:Lcom/baidu/platform/comapi/map/b/b/a;

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/b/b/b;->d:Z

    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/baidu/platform/comapi/map/b/a/b;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 55
    invoke-direct {p0, p1}, Lcom/baidu/platform/comapi/map/b/b/b;->c(Lcom/baidu/platform/comapi/map/b/a/b;)V

    .line 56
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/b/b/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/b/b/b;->e:Lcom/baidu/platform/comapi/map/b/b/a;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comapi/map/b/b/a;->a(Lcom/baidu/platform/comapi/map/b/a/b;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/b/b/b;->e:Lcom/baidu/platform/comapi/map/b/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comapi/map/b/b/a;->a(Lcom/baidu/platform/comapi/map/b/a/b;Landroid/view/MotionEvent;)V

    return v1
.end method

.method public b(Lcom/baidu/platform/comapi/map/b/a/b;)Z
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/b/b/b;->b:Lcom/baidu/platform/comapi/map/b/f;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/b/f;->c()Landroid/util/Pair;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/b/b/b;->b:Lcom/baidu/platform/comapi/map/b/f;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/map/b/f;->b()V

    .line 67
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/b/b/b;->e:Lcom/baidu/platform/comapi/map/b/b/a;

    invoke-virtual {v1, p1, v0}, Lcom/baidu/platform/comapi/map/b/b/a;->a(Lcom/baidu/platform/comapi/map/b/a/b;Landroid/util/Pair;)V

    const/4 p1, 0x1

    return p1
.end method
