.class Lio/dcloud/h/a/d/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/h/a/d/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/dcloud/h/a/d/a;


# direct methods
.method constructor <init>(Lio/dcloud/h/a/d/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/h/a/d/a$a;->b:Lio/dcloud/h/a/d/a;

    iput-object p2, p0, Lio/dcloud/h/a/d/a$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 2
    iget-object v2, p0, Lio/dcloud/h/a/d/a$a;->b:Lio/dcloud/h/a/d/a;

    invoke-static {v2}, Lio/dcloud/h/a/d/a;->a(Lio/dcloud/h/a/d/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/h/a/d/a$a;->a:Ljava/lang/String;

    iget-object v4, p0, Lio/dcloud/h/a/d/a$a;->b:Lio/dcloud/h/a/d/a;

    invoke-static {v4}, Lio/dcloud/h/a/d/a;->b(Lio/dcloud/h/a/d/a;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lio/dcloud/h/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 6
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance v1, Lio/dcloud/sdk/base/entry/AdData;

    invoke-direct {v1}, Lio/dcloud/sdk/base/entry/AdData;-><init>()V

    .line 10
    iget-object v3, p0, Lio/dcloud/h/a/d/a$a;->b:Lio/dcloud/h/a/d/a;

    invoke-virtual {v3}, Lio/dcloud/h/a/c/a;->b()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/dcloud/sdk/base/entry/AdData;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "appid"

    .line 11
    :try_start_1
    iget-object v4, p0, Lio/dcloud/h/a/d/a$a;->b:Lio/dcloud/h/a/d/a;

    invoke-static {v4}, Lio/dcloud/h/a/d/a;->d(Lio/dcloud/h/a/d/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "adpid"

    .line 12
    :try_start_2
    iget-object v4, p0, Lio/dcloud/h/a/d/a$a;->b:Lio/dcloud/h/a/d/a;

    invoke-static {v4}, Lio/dcloud/h/a/d/a;->e(Lio/dcloud/h/a/d/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v3, "tid"

    .line 13
    :try_start_3
    iget-object v4, p0, Lio/dcloud/h/a/d/a$a;->b:Lio/dcloud/h/a/d/a;

    invoke-static {v4}, Lio/dcloud/h/a/d/a;->f(Lio/dcloud/h/a/d/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v3, "did"

    .line 14
    :try_start_4
    iget-object v4, p0, Lio/dcloud/h/a/d/a$a;->b:Lio/dcloud/h/a/d/a;

    invoke-static {v4}, Lio/dcloud/h/a/d/a;->g(Lio/dcloud/h/a/d/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v3, "adid"

    .line 15
    :try_start_5
    iget-object v4, p0, Lio/dcloud/h/a/d/a$a;->b:Lio/dcloud/h/a/d/a;

    invoke-static {v4}, Lio/dcloud/h/a/d/a;->h(Lio/dcloud/h/a/d/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    new-instance v3, Lio/dcloud/h/a/d/a$a$a;

    invoke-direct {v3, p0, v1}, Lio/dcloud/h/a/d/a$a$a;-><init>(Lio/dcloud/h/a/d/a$a;Lio/dcloud/sdk/base/entry/AdData;)V

    invoke-virtual {v1, v2, v3, v0}, Lio/dcloud/sdk/base/entry/AdData;->a(Lorg/json/JSONObject;Lio/dcloud/sdk/base/entry/AdData$e;Z)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 50
    iget-object v1, p0, Lio/dcloud/h/a/d/a$a;->b:Lio/dcloud/h/a/d/a;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const v2, 0xea66

    invoke-static {v1, v2, v0}, Lio/dcloud/h/a/d/a;->b(Lio/dcloud/h/a/d/a;ILjava/lang/String;)V

    goto :goto_1

    .line 54
    :cond_0
    iget-object v0, p0, Lio/dcloud/h/a/d/a$a;->b:Lio/dcloud/h/a/d/a;

    const v2, 0xea63

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u7f51\u7edc\u8bf7\u6c42\u5931\u8d25\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v5, v1, v4

    if-nez v5, :cond_1

    const-string v1, "data null"

    goto :goto_0

    :cond_1
    aget-object v1, v1, v4

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lio/dcloud/h/a/d/a;->c(Lio/dcloud/h/a/d/a;ILjava/lang/String;)V

    :goto_1
    return-void
.end method
