.class public Lio/dcloud/h/c/c/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Lorg/json/JSONObject;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lio/dcloud/h/c/c/a/c;->a:J

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lio/dcloud/h/c/c/a/c;->j:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 11
    iget v0, p0, Lio/dcloud/h/c/c/a/c;->g:I

    return v0
.end method

.method public a(I)Lio/dcloud/h/c/c/a/c;
    .locals 0

    .line 3
    iput p1, p0, Lio/dcloud/h/c/c/a/c;->f:I

    return-object p0
.end method

.method public a(ILjava/lang/String;)Lio/dcloud/h/c/c/a/c;
    .locals 2

    const/16 v0, -0x270f

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iput-boolean v0, p0, Lio/dcloud/h/c/c/a/c;->j:Z

    .line 5
    iput p1, p0, Lio/dcloud/h/c/c/a/c;->g:I

    .line 6
    iput-object p2, p0, Lio/dcloud/h/c/c/a/c;->h:Ljava/lang/String;

    .line 7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lio/dcloud/h/c/c/a/c;->i:Lorg/json/JSONObject;

    :try_start_0
    const-string v1, "code"

    .line 9
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    iget-object p1, p0, Lio/dcloud/h/c/c/a/c;->i:Lorg/json/JSONObject;

    const-string v0, "msg"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public a(J)Lio/dcloud/h/c/c/a/c;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/dcloud/h/c/c/a/c;->a:J

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lio/dcloud/h/c/c/a/c;
    .locals 0

    .line 2
    iput-object p1, p0, Lio/dcloud/h/c/c/a/c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lio/dcloud/h/c/c/a/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/h/c/c/a/c;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 3

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "p"

    .line 4
    :try_start_0
    iget-object v2, p0, Lio/dcloud/h/c/c/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "id"

    .line 5
    :try_start_1
    iget-object v2, p0, Lio/dcloud/h/c/c/a/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "code"

    .line 6
    :try_start_2
    iget v2, p0, Lio/dcloud/h/c/c/a/c;->g:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "msg"

    .line 7
    :try_start_3
    iget-object v2, p0, Lio/dcloud/h/c/c/a/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    return-object v0
.end method

.method public c()I
    .locals 1

    .line 2
    iget v0, p0, Lio/dcloud/h/c/c/a/c;->f:I

    return v0
.end method

.method public c(Ljava/lang/String;)Lio/dcloud/h/c/c/a/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/h/c/c/a/c;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lio/dcloud/h/c/c/a/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/h/c/c/a/c;->e:Ljava/lang/String;

    return-object p0
.end method

.method public d()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lio/dcloud/h/c/c/a/c;->j:Z

    return v0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "time"

    .line 3
    :try_start_0
    iget-wide v2, p0, Lio/dcloud/h/c/c/a/c;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "ret"

    .line 4
    :try_start_1
    iget v2, p0, Lio/dcloud/h/c/c/a/c;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5
    iget v1, p0, Lio/dcloud/h/c/c/a/c;->f:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v1, :cond_0

    const-string v1, "errMsg"

    .line 6
    :try_start_2
    iget-object v2, p0, Lio/dcloud/h/c/c/a/c;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    const-string v1, "tid"

    .line 8
    :try_start_3
    iget-object v2, p0, Lio/dcloud/h/c/c/a/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v1, "mediaId"

    .line 9
    :try_start_4
    iget-object v2, p0, Lio/dcloud/h/c/c/a/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v1, "slotId"

    .line 10
    :try_start_5
    iget-object v2, p0, Lio/dcloud/h/c/c/a/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    const-string v1, "provider"

    .line 11
    :try_start_6
    iget-object v2, p0, Lio/dcloud/h/c/c/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/h/c/c/a/c;->e()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
