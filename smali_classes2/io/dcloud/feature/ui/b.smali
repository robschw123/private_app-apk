.class public abstract Lio/dcloud/feature/ui/b;
.super Ljava/lang/Object;


# static fields
.field public static a:B

.field public static b:B

.field public static c:B

.field public static d:B

.field public static e:B

.field public static f:B

.field public static g:B


# instance fields
.field protected h:Lio/dcloud/feature/ui/c;

.field protected i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Lio/dcloud/feature/ui/a;

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:Lorg/json/JSONObject;

.field protected p:Lio/dcloud/common/DHInterface/IWebview;

.field private q:B

.field private r:B

.field private s:Landroid/content/Context;

.field protected t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-byte v0, Lio/dcloud/common/adapter/util/ViewRect;->POSITION_STATIC:B

    sput-byte v0, Lio/dcloud/feature/ui/b;->a:B

    .line 2
    sget-byte v0, Lio/dcloud/common/adapter/util/ViewRect;->POSITION_ABSOLUTE:B

    sput-byte v0, Lio/dcloud/feature/ui/b;->b:B

    .line 3
    sget-byte v0, Lio/dcloud/common/adapter/util/ViewRect;->POSITION_DOCK:B

    sput-byte v0, Lio/dcloud/feature/ui/b;->c:B

    .line 4
    sget-byte v0, Lio/dcloud/common/adapter/util/ViewRect;->DOCK_LEFT:B

    sput-byte v0, Lio/dcloud/feature/ui/b;->d:B

    .line 5
    sget-byte v0, Lio/dcloud/common/adapter/util/ViewRect;->DOCK_RIGHT:B

    sput-byte v0, Lio/dcloud/feature/ui/b;->e:B

    .line 6
    sget-byte v0, Lio/dcloud/common/adapter/util/ViewRect;->DOCK_TOP:B

    sput-byte v0, Lio/dcloud/feature/ui/b;->f:B

    .line 7
    sget-byte v0, Lio/dcloud/common/adapter/util/ViewRect;->DOCK_BOTTOM:B

    sput-byte v0, Lio/dcloud/feature/ui/b;->g:B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/feature/ui/b;->h:Lio/dcloud/feature/ui/c;

    .line 3
    iput-object v0, p0, Lio/dcloud/feature/ui/b;->i:Ljava/util/HashMap;

    .line 4
    iput-object v0, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    .line 6
    iput-object v0, p0, Lio/dcloud/feature/ui/b;->l:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lio/dcloud/feature/ui/b;->m:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lio/dcloud/feature/ui/b;->n:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lio/dcloud/feature/ui/b;->o:Lorg/json/JSONObject;

    .line 11
    iput-object v0, p0, Lio/dcloud/feature/ui/b;->p:Lio/dcloud/common/DHInterface/IWebview;

    .line 12
    sget-byte v1, Lio/dcloud/feature/ui/b;->b:B

    iput-byte v1, p0, Lio/dcloud/feature/ui/b;->q:B

    .line 13
    sget-byte v1, Lio/dcloud/feature/ui/b;->f:B

    iput-byte v1, p0, Lio/dcloud/feature/ui/b;->r:B

    .line 121
    iput-object v0, p0, Lio/dcloud/feature/ui/b;->t:Ljava/util/HashMap;

    .line 122
    iput-object p1, p0, Lio/dcloud/feature/ui/b;->k:Ljava/lang/String;

    .line 123
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/ui/b;->i:Ljava/util/HashMap;

    return-void
.end method

.method private static a(Lio/dcloud/feature/ui/b;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/feature/ui/b;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 17
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 22
    aget-object v2, v2, v3

    .line 23
    iget-object v3, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v2, v4}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v2

    if-ne v2, p0, :cond_1

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    .line 7
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->s:Landroid/content/Context;

    return-object v0
.end method

.method public abstract a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;
.end method

.method public abstract a(IIIIII)V
.end method

.method protected a(Landroid/content/Context;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    .line 2
    iput-object p1, p0, Lio/dcloud/feature/ui/b;->s:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lio/dcloud/feature/ui/b;->p:Lio/dcloud/common/DHInterface/IWebview;

    .line 4
    iput-object p4, p0, Lio/dcloud/feature/ui/b;->l:Ljava/lang/String;

    if-nez p5, :cond_0

    const-string p1, "{}"

    .line 5
    invoke-static {p1}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p5

    :cond_0
    iput-object p5, p0, Lio/dcloud/feature/ui/b;->o:Lorg/json/JSONObject;

    .line 6
    invoke-virtual {p0}, Lio/dcloud/feature/ui/b;->f()V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->t:Ljava/util/HashMap;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lio/dcloud/feature/ui/b;->t:Ljava/util/HashMap;

    .line 11
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->t:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    iget-object v2, p0, Lio/dcloud/feature/ui/b;->t:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-array p2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    const/4 p1, 0x1

    aput-object p3, p2, p1

    .line 16
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 1

    .line 26
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->t:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0, p1, p2, v0}, Lio/dcloud/feature/ui/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 9

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execCallback pEventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->t:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 34
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 37
    invoke-static {p1, p2, p3}, Lio/dcloud/common/util/JsEventUtil;->eventListener_format(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    sub-int/2addr v2, p2

    const/4 p3, 0x0

    :goto_0
    if-ltz v2, :cond_1

    .line 39
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 40
    aget-object v4, v3, v1

    .line 41
    aget-object v5, v3, p2

    .line 42
    iget-object v3, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v4, v6}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 43
    iget-boolean v4, v3, Lio/dcloud/feature/ui/c;->K:Z

    if-nez v4, :cond_0

    .line 44
    iget-object v3, v3, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 46
    sget v6, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v4, v5

    move-object v5, p1

    invoke-static/range {v3 .. v8}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    const/4 p3, 0x1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    move v1, p3

    :cond_2
    return v1
.end method

.method public final b()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lio/dcloud/feature/ui/b;->r:B

    return v0
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->t:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 6
    aget-object v3, v2, v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 11
    iget-object p1, p0, Lio/dcloud/feature/ui/b;->t:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final c()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lio/dcloud/feature/ui/b;->q:B

    return v0
.end method

.method public abstract d()Lio/dcloud/common/adapter/ui/AdaFrameItem;
.end method

.method protected abstract e()V
.end method

.method protected f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->o:Lorg/json/JSONObject;

    const-string v1, "id"

    .line 2
    invoke-static {v0, v1}, Lio/dcloud/common/util/JSONUtil;->isNull(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lio/dcloud/feature/ui/b;->m:Ljava/lang/String;

    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {v0, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/feature/ui/b;->m:Ljava/lang/String;

    :cond_0
    const-string v1, "tid"

    .line 5
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/feature/ui/b;->n:Ljava/lang/String;

    const-string v1, "position"

    .line 6
    invoke-static {v0, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "dock"

    if-nez v2, :cond_3

    const-string v2, "absolute"

    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    sget-byte v1, Lio/dcloud/feature/ui/b;->b:B

    iput-byte v1, p0, Lio/dcloud/feature/ui/b;->q:B

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    sget-byte v1, Lio/dcloud/feature/ui/b;->c:B

    iput-byte v1, p0, Lio/dcloud/feature/ui/b;->q:B

    goto :goto_0

    :cond_2
    const-string v2, "static"

    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    sget-byte v1, Lio/dcloud/feature/ui/b;->a:B

    iput-byte v1, p0, Lio/dcloud/feature/ui/b;->q:B

    .line 16
    :cond_3
    :goto_0
    invoke-static {v0, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "bottom"

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 19
    sget-byte v0, Lio/dcloud/feature/ui/b;->g:B

    iput-byte v0, p0, Lio/dcloud/feature/ui/b;->r:B

    goto :goto_1

    :cond_4
    const-string v1, "top"

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 21
    sget-byte v0, Lio/dcloud/feature/ui/b;->f:B

    iput-byte v0, p0, Lio/dcloud/feature/ui/b;->r:B

    goto :goto_1

    :cond_5
    const-string v1, "left"

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 23
    sget-byte v0, Lio/dcloud/feature/ui/b;->d:B

    iput-byte v0, p0, Lio/dcloud/feature/ui/b;->r:B

    goto :goto_1

    :cond_6
    const-string v1, "right"

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    sget-byte v0, Lio/dcloud/feature/ui/b;->e:B

    iput-byte v0, p0, Lio/dcloud/feature/ui/b;->r:B

    :cond_7
    :goto_1
    return-void
.end method

.method protected g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/ui/b;->j:Lio/dcloud/feature/ui/a;

    iget-object v0, v0, Lio/dcloud/feature/ui/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/ui/c;

    .line 2
    iget-object v1, v1, Lio/dcloud/feature/ui/b;->t:Ljava/util/HashMap;

    invoke-static {p0, v1}, Lio/dcloud/feature/ui/b;->a(Lio/dcloud/feature/ui/b;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lio/dcloud/feature/ui/b;->l:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/dcloud/feature/ui/b;->k:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/dcloud/feature/ui/b;->o:Lorg/json/JSONObject;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "(function(){return {uuid:\'%s\',identity:\'%s\',option:%s}})()"

    invoke-static {v1, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
