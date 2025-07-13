.class public Lio/dcloud/h/c/c/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lorg/json/JSONObject;

.field private d:Lorg/json/JSONArray;

.field private e:Lio/dcloud/sdk/poly/api/Platform;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lio/dcloud/h/c/c/a/a;->d:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lio/dcloud/sdk/poly/api/Platform;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lio/dcloud/h/c/c/a/a;->e:Lio/dcloud/sdk/poly/api/Platform;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lio/dcloud/h/c/c/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "appid"

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/h/c/c/a/a;->a:Ljava/lang/String;

    const-string v0, "appidh"

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/h/c/c/a/a;->d:Lorg/json/JSONArray;

    const-string v0, "appkey"

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/h/c/c/a/a;->b:Ljava/lang/String;

    const-string v0, "ext"

    .line 8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/h/c/c/a/a;->c:Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lio/dcloud/h/c/c/a/a;->e:Lio/dcloud/sdk/poly/api/Platform;

    if-nez p1, :cond_0

    .line 11
    new-instance p1, Lio/dcloud/sdk/poly/api/Platform;

    invoke-direct {p1}, Lio/dcloud/sdk/poly/api/Platform;-><init>()V

    iput-object p1, p0, Lio/dcloud/h/c/c/a/a;->e:Lio/dcloud/sdk/poly/api/Platform;

    .line 12
    :cond_0
    iget-object p1, p0, Lio/dcloud/h/c/c/a/a;->e:Lio/dcloud/sdk/poly/api/Platform;

    iget-object v0, p0, Lio/dcloud/h/c/c/a/a;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lio/dcloud/sdk/poly/api/Platform;->setType(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lio/dcloud/h/c/c/a/a;->e:Lio/dcloud/sdk/poly/api/Platform;

    iget-object v0, p0, Lio/dcloud/h/c/c/a/a;->c:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lio/dcloud/sdk/poly/api/Platform;->setPlatJson(Lorg/json/JSONObject;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lio/dcloud/h/c/c/a/a;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/dcloud/h/c/c/a/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/h/c/c/a/a;->f:Ljava/lang/String;

    return-void
.end method

.method public d()Lio/dcloud/sdk/poly/api/Platform;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/a/a;->e:Lio/dcloud/sdk/poly/api/Platform;

    return-object v0
.end method
