.class public Lio/dcloud/h/c/c/a/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/h/c/c/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Z

.field private h:Z

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lio/dcloud/h/c/c/a/b;->f:I

    .line 30
    iput-boolean v0, p0, Lio/dcloud/h/c/c/a/b;->g:Z

    .line 34
    iput-boolean v0, p0, Lio/dcloud/h/c/c/a/b;->h:Z

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/h/c/c/a/b;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lio/dcloud/h/c/c/a/b;
    .locals 11

    const-string v0, "adpid"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/h/c/c/a/b;->a:Ljava/lang/String;

    const-string v0, "type"

    const/4 v1, -0x1

    .line 2
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lio/dcloud/h/c/c/a/b;->b:I

    const-string v0, "tto"

    const/16 v2, 0x4650

    .line 3
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lio/dcloud/h/c/c/a/b;->c:I

    const/16 v3, 0x3e8

    if-ge v0, v3, :cond_0

    .line 5
    iput v2, p0, Lio/dcloud/h/c/c/a/b;->c:I

    :cond_0
    const-string v0, "dsto"

    const/16 v2, 0x1388

    .line 6
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lio/dcloud/h/c/c/a/b;->d:I

    if-ge v0, v3, :cond_1

    .line 8
    iput v2, p0, Lio/dcloud/h/c/c/a/b;->d:I

    :cond_1
    const-string v0, "sr"

    const/4 v4, 0x0

    .line 9
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lio/dcloud/h/c/c/a/b;->f:I

    const-string v0, "ord"

    .line 10
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lio/dcloud/h/c/c/a/b;->g:Z

    const-string v0, "ft"

    .line 11
    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v6, "cfgs"

    .line 12
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 13
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_a

    .line 14
    iget-object v6, p0, Lio/dcloud/h/c/c/a/b;->e:Ljava/util/List;

    if-nez v6, :cond_3

    .line 15
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lio/dcloud/h/c/c/a/b;->e:Ljava/util/List;

    :cond_3
    const/4 v6, 0x0

    .line 16
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_a

    .line 17
    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_9

    const-string v8, "sto"

    .line 19
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v7, v8, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    goto :goto_2

    :cond_4
    iget v8, p0, Lio/dcloud/h/c/c/a/b;->d:I

    :goto_2
    if-ge v8, v3, :cond_5

    const/16 v8, 0x1388

    .line 22
    :cond_5
    new-instance v9, Lio/dcloud/h/c/c/a/d$b;

    invoke-direct {v9}, Lio/dcloud/h/c/c/a/d$b;-><init>()V

    const-string v10, "sid"

    .line 23
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/dcloud/h/c/c/a/d$b;->d(Ljava/lang/String;)Lio/dcloud/h/c/c/a/d$b;

    move-result-object v9

    const-string v10, "cpm"

    .line 24
    invoke-virtual {v7, v10, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Lio/dcloud/h/c/c/a/d$b;->c(I)Lio/dcloud/h/c/c/a/d$b;

    move-result-object v9

    const-string v10, "bdt"

    .line 25
    invoke-virtual {v7, v10, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v5, :cond_6

    const/4 v10, 0x1

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    :goto_3
    invoke-virtual {v9, v10}, Lio/dcloud/h/c/c/a/d$b;->b(Z)Lio/dcloud/h/c/c/a/d$b;

    move-result-object v9

    const-string v10, "level"

    .line 26
    invoke-virtual {v7, v10, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Lio/dcloud/h/c/c/a/d$b;->e(I)Lio/dcloud/h/c/c/a/d$b;

    move-result-object v9

    const-string v10, "m"

    .line 27
    invoke-virtual {v7, v10, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Lio/dcloud/h/c/c/a/d$b;->f(I)Lio/dcloud/h/c/c/a/d$b;

    move-result-object v9

    const-string v10, "p"

    .line 28
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/dcloud/h/c/c/a/d$b;->c(Ljava/lang/String;)Lio/dcloud/h/c/c/a/d$b;

    move-result-object v9

    const-string v10, "ss"

    .line 29
    invoke-virtual {v7, v10, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Lio/dcloud/h/c/c/a/d$b;->h(I)Lio/dcloud/h/c/c/a/d$b;

    move-result-object v9

    .line 30
    invoke-virtual {v9, v8}, Lio/dcloud/h/c/c/a/d$b;->i(I)Lio/dcloud/h/c/c/a/d$b;

    move-result-object v8

    const-string/jumbo v9, "w"

    .line 31
    invoke-virtual {v7, v9, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Lio/dcloud/h/c/c/a/d$b;->j(I)Lio/dcloud/h/c/c/a/d$b;

    move-result-object v8

    .line 32
    invoke-virtual {v8, v0}, Lio/dcloud/h/c/c/a/d$b;->d(I)Lio/dcloud/h/c/c/a/d$b;

    move-result-object v8

    iget v9, p0, Lio/dcloud/h/c/c/a/b;->b:I

    .line 33
    invoke-virtual {v8, v9}, Lio/dcloud/h/c/c/a/d$b;->b(I)Lio/dcloud/h/c/c/a/d$b;

    move-result-object v8

    const-string v9, "mrt"

    .line 34
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lio/dcloud/h/c/c/a/d$b;->a(Ljava/lang/String;)Lio/dcloud/h/c/c/a/d$b;

    move-result-object v8

    const-string v9, "path"

    .line 35
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lio/dcloud/h/c/c/a/d$b;->b(Ljava/lang/String;)Lio/dcloud/h/c/c/a/d$b;

    move-result-object v8

    const-string v9, "mt"

    .line 36
    invoke-virtual {v7, v9, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Lio/dcloud/h/c/c/a/d$b;->g(I)Lio/dcloud/h/c/c/a/d$b;

    move-result-object v8

    const-string v9, "end"

    .line 37
    invoke-virtual {v7, v9, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v5, :cond_7

    const/4 v9, 0x1

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    :goto_4
    invoke-virtual {v8, v9}, Lio/dcloud/h/c/c/a/d$b;->a(Z)Lio/dcloud/h/c/c/a/d$b;

    move-result-object v8

    const-string v9, "params"

    .line 38
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v8, v9}, Lio/dcloud/h/c/c/a/d$b;->a(Lorg/json/JSONObject;)Lio/dcloud/h/c/c/a/d$b;

    move-result-object v8

    const-string v9, "acpt"

    .line 39
    invoke-virtual {v7, v9, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v8, v7}, Lio/dcloud/h/c/c/a/d$b;->a(I)Lio/dcloud/h/c/c/a/d$b;

    move-result-object v7

    .line 40
    invoke-virtual {v7}, Lio/dcloud/h/c/c/a/d$b;->a()Lio/dcloud/h/c/c/a/d;

    move-result-object v7

    .line 41
    iget-boolean v8, p0, Lio/dcloud/h/c/c/a/b;->h:Z

    if-nez v8, :cond_8

    .line 42
    invoke-virtual {v7}, Lio/dcloud/h/c/c/a/d;->q()Z

    move-result v8

    iput-boolean v8, p0, Lio/dcloud/h/c/c/a/b;->h:Z

    .line 43
    :cond_8
    iget-object v8, p0, Lio/dcloud/h/c/c/a/b;->i:Ljava/util/List;

    invoke-virtual {v7}, Lio/dcloud/h/c/c/a/d;->k()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v8, p0, Lio/dcloud/h/c/c/a/b;->e:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_a
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lio/dcloud/h/c/c/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/a/b;->i:Ljava/util/List;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lio/dcloud/h/c/c/a/b;->f:I

    return v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/dcloud/h/c/c/a/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/a/b;->e:Ljava/util/List;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lio/dcloud/h/c/c/a/b;->c:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lio/dcloud/h/c/c/a/b;->b:I

    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/dcloud/h/c/c/a/b;->g:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/dcloud/h/c/c/a/b;->h:Z

    return v0
.end method
