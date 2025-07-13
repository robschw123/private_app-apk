.class public Lio/dcloud/h/a/d/a;
.super Lio/dcloud/h/a/c/a;


# instance fields
.field e:Ljava/util/concurrent/ExecutorService;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lorg/json/JSONObject;

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lio/dcloud/h/a/c/a$c;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/h/a/c/a;-><init>(Lio/dcloud/h/a/c/a$c;Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/h/a/d/a;->e:Ljava/util/concurrent/ExecutorService;

    const-string p1, ""

    .line 21
    iput-object p1, p0, Lio/dcloud/h/a/d/a;->f:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lio/dcloud/h/a/d/a;->g:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lio/dcloud/h/a/d/a;->i:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lio/dcloud/h/a/d/a;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/dcloud/h/a/c/a$c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lio/dcloud/h/a/d/a;-><init>(Lio/dcloud/h/a/c/a$c;Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iput-object p5, p0, Lio/dcloud/h/a/d/a;->i:Ljava/lang/String;

    .line 3
    iput-object p6, p0, Lio/dcloud/h/a/d/a;->j:Ljava/lang/String;

    .line 5
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "did"

    .line 6
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/h/a/d/a;->m:Ljava/lang/String;

    const-string p2, "adid"

    .line 7
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/h/a/d/a;->n:Ljava/lang/String;

    const-string p2, "url"

    .line 8
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/h/a/d/a;->g:Ljava/lang/String;

    const-string p2, "app"

    .line 9
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/h/a/d/a;->k:Lorg/json/JSONObject;

    const-string p3, "app_id"

    .line 10
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/h/a/d/a;->f:Ljava/lang/String;

    const-string p2, "tid"

    .line 11
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/h/a/d/a;->h:Ljava/lang/String;

    const-string p2, "header"

    .line 12
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-lez p2, :cond_0

    .line 14
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lio/dcloud/h/a/d/a;->l:Ljava/util/HashMap;

    .line 15
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 16
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 17
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 18
    iget-object p4, p0, Lio/dcloud/h/a/d/a;->l:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p3, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method

.method static synthetic a(Lio/dcloud/h/a/d/a;Lio/dcloud/sdk/base/entry/AdData;)Lio/dcloud/sdk/base/entry/AdData;
    .locals 0

    .line 2
    iput-object p1, p0, Lio/dcloud/h/a/c/a;->d:Lio/dcloud/sdk/base/entry/AdData;

    return-object p1
.end method

.method static synthetic a(Lio/dcloud/h/a/d/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/h/a/d/a;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lio/dcloud/h/a/d/a;ILjava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lio/dcloud/h/a/c/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lio/dcloud/h/a/d/a;Lio/dcloud/sdk/base/entry/AdData;)Lio/dcloud/sdk/base/entry/AdData;
    .locals 0

    .line 3
    iput-object p1, p0, Lio/dcloud/h/a/c/a;->d:Lio/dcloud/sdk/base/entry/AdData;

    return-object p1
.end method

.method static synthetic b(Lio/dcloud/h/a/d/a;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/h/a/d/a;->l:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic b(Lio/dcloud/h/a/d/a;ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/dcloud/h/a/c/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lio/dcloud/h/a/d/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/dcloud/h/a/c/a;->a()V

    return-void
.end method

.method static synthetic c(Lio/dcloud/h/a/d/a;ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/dcloud/h/a/c/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lio/dcloud/h/a/d/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/h/a/d/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lio/dcloud/h/a/d/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/h/a/c/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lio/dcloud/h/a/d/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/h/a/d/a;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lio/dcloud/h/a/d/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/h/a/d/a;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lio/dcloud/h/a/d/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/h/a/d/a;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lio/dcloud/h/a/d/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/dcloud/h/a/c/a;->a()V

    return-void
.end method

.method static synthetic j(Lio/dcloud/h/a/d/a;)Lio/dcloud/sdk/base/entry/AdData;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/h/a/c/a;->d:Lio/dcloud/sdk/base/entry/AdData;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 4

    .line 3
    iget-object v0, p0, Lio/dcloud/h/a/d/a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xea61

    const-string/jumbo v1, "\u5e7f\u544a\u8bf7\u6c42\u5730\u5740\u51fa\u9519"

    .line 4
    invoke-virtual {p0, v0, v1}, Lio/dcloud/h/a/c/a;->a(ILjava/lang/String;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lio/dcloud/h/a/d/a;->k:Lorg/json/JSONObject;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_2

    .line 11
    :cond_1
    iget-object v0, p0, Lio/dcloud/h/a/c/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    :try_start_0
    iget-object v0, p0, Lio/dcloud/h/a/d/a;->k:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "adp_id"

    :try_start_1
    iget-object v2, p0, Lio/dcloud/h/a/c/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    :catch_0
    :cond_2
    invoke-virtual {p0}, Lio/dcloud/h/a/c/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/h/a/d/b/i;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "app"

    .line 19
    :try_start_2
    iget-object v2, p0, Lio/dcloud/h/a/d/a;->k:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    nop

    .line 22
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lio/dcloud/h/a/d/a;->i:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 25
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lio/dcloud/h/a/d/a;->j:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "method"

    .line 26
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "key"

    .line 27
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "iv"

    .line 28
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {v0}, Lio/dcloud/h/a/d/b/j;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 30
    invoke-static {v3, v2, v1}, Lio/dcloud/h/a/d/b/a;->b([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x2

    .line 31
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    const-string v2, "utf-8"

    .line 33
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 36
    :catch_2
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "edata="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 40
    :cond_3
    iget-object v1, p0, Lio/dcloud/h/a/d/a;->l:Ljava/util/HashMap;

    if-nez v1, :cond_4

    .line 41
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lio/dcloud/h/a/d/a;->l:Ljava/util/HashMap;

    .line 43
    :cond_4
    iget-object v1, p0, Lio/dcloud/h/a/d/a;->l:Ljava/util/HashMap;

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 44
    iget-object v1, p0, Lio/dcloud/h/a/d/a;->l:Ljava/util/HashMap;

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :catch_3
    :cond_5
    :goto_1
    iget-object v1, p0, Lio/dcloud/h/a/d/a;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lio/dcloud/h/a/d/a$a;

    invoke-direct {v2, p0, v0}, Lio/dcloud/h/a/d/a$a;-><init>(Lio/dcloud/h/a/d/a;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    :goto_2
    const v0, 0xea62

    const-string/jumbo v1, "\u5e7f\u544a\u914d\u7f6e\u5f02\u5e38"

    .line 49
    invoke-virtual {p0, v0, v1}, Lio/dcloud/h/a/c/a;->a(ILjava/lang/String;)V

    return-void
.end method
