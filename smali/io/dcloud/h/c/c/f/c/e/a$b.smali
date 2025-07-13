.class public Lio/dcloud/h/c/c/f/c/e/a$b;
.super Lio/dcloud/h/c/c/b/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/h/c/c/f/c/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "b"
.end annotation


# instance fields
.field final synthetic c:Lio/dcloud/h/c/c/f/c/e/a;


# direct methods
.method public constructor <init>(Lio/dcloud/h/c/c/f/c/e/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/h/c/c/f/c/e/a$b;->c:Lio/dcloud/h/c/c/f/c/e/a;

    const-string p1, ""

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/h/c/c/b/a$b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 41
    invoke-super {p0, p1, p2}, Lio/dcloud/h/c/c/b/a$b;->a(ILjava/lang/String;)V

    .line 42
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/e/a$b;->c:Lio/dcloud/h/c/c/f/c/e/a;

    invoke-static {v0, p1, p2}, Lio/dcloud/h/c/c/f/c/e/a;->a(Lio/dcloud/h/c/c/f/c/e/a;ILjava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .locals 0

    return-void
.end method

.method public a(Lorg/json/JSONArray;Z)V
    .locals 6

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 6
    :cond_0
    iget-object v1, p0, Lio/dcloud/h/c/c/f/c/e/a$b;->c:Lio/dcloud/h/c/c/f/c/e/a;

    invoke-static {v1}, Lio/dcloud/h/c/c/f/c/e/a;->f(Lio/dcloud/h/c/c/f/c/e/a;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_4

    .line 8
    iget-object v1, p0, Lio/dcloud/h/c/c/f/c/e/a$b;->c:Lio/dcloud/h/c/c/f/c/e/a;

    invoke-static {v1}, Lio/dcloud/h/c/c/f/c/e/a;->f(Lio/dcloud/h/c/c/f/c/e/a;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 9
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 10
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 11
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 12
    check-cast v3, Lio/dcloud/h/c/b/a/b;

    invoke-virtual {v3, v4, v0}, Lio/dcloud/h/c/b/a/b;->a(Lorg/json/JSONArray;Z)V

    goto :goto_0

    .line 14
    :cond_1
    check-cast v3, Lio/dcloud/h/c/b/a/b;

    invoke-virtual {v3, p2, v0}, Lio/dcloud/h/c/b/a/b;->a(Lorg/json/JSONArray;Z)V

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_7

    const/4 p2, 0x0

    .line 19
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_7

    .line 20
    iget-object v1, p0, Lio/dcloud/h/c/c/f/c/e/a$b;->c:Lio/dcloud/h/c/c/f/c/e/a;

    invoke-static {v1}, Lio/dcloud/h/c/c/f/c/e/a;->g(Lio/dcloud/h/c/c/f/c/e/a;)Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    move-result-object v1

    check-cast v1, Lio/dcloud/h/c/b/a/b;

    if-eqz v1, :cond_3

    .line 22
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 23
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 24
    invoke-virtual {v1, v3, v0}, Lio/dcloud/h/c/b/a/b;->a(Lorg/json/JSONArray;Z)V

    .line 25
    iget-object v3, p0, Lio/dcloud/h/c/c/f/c/e/a$b;->c:Lio/dcloud/h/c/c/f/c/e/a;

    invoke-static {v3}, Lio/dcloud/h/c/c/f/c/e/a;->f(Lio/dcloud/h/c/c/f/c/e/a;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 30
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge v2, p2, :cond_7

    .line 31
    iget-object p2, p0, Lio/dcloud/h/c/c/f/c/e/a$b;->c:Lio/dcloud/h/c/c/f/c/e/a;

    invoke-static {p2}, Lio/dcloud/h/c/c/f/c/e/a;->g(Lio/dcloud/h/c/c/f/c/e/a;)Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    move-result-object p2

    check-cast p2, Lio/dcloud/h/c/b/a/b;

    if-eqz p2, :cond_5

    .line 33
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 34
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 35
    invoke-virtual {p2, v1, v0}, Lio/dcloud/h/c/b/a/b;->a(Lorg/json/JSONArray;Z)V

    .line 36
    iget-object v1, p0, Lio/dcloud/h/c/c/f/c/e/a$b;->c:Lio/dcloud/h/c/c/f/c/e/a;

    invoke-static {v1}, Lio/dcloud/h/c/c/f/c/e/a;->f(Lio/dcloud/h/c/c/f/c/e/a;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 37
    :cond_6
    :goto_3
    iget-object p1, p0, Lio/dcloud/h/c/c/f/c/e/a$b;->c:Lio/dcloud/h/c/c/f/c/e/a;

    invoke-static {p1}, Lio/dcloud/h/c/c/f/c/e/a;->f(Lio/dcloud/h/c/c/f/c/e/a;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/sdk/core/module/DCBaseAOL;

    .line 38
    check-cast v1, Lio/dcloud/h/c/b/a/b;

    invoke-virtual {v1, p2, v0}, Lio/dcloud/h/c/b/a/b;->a(Lorg/json/JSONArray;Z)V

    goto :goto_4

    :cond_7
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Lio/dcloud/h/c/c/b/a$b;->a(Lorg/json/JSONObject;)V

    .line 40
    iget-object v0, p0, Lio/dcloud/h/c/c/f/c/e/a$b;->c:Lio/dcloud/h/c/c/f/c/e/a;

    invoke-static {v0, p1}, Lio/dcloud/h/c/c/f/c/e/a;->a(Lio/dcloud/h/c/c/f/c/e/a;Lorg/json/JSONObject;)V

    return-void
.end method
