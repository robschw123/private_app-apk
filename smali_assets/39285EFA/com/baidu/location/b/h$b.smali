.class Lcom/baidu/location/b/h$b;
.super Lcom/baidu/location/e/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/location/b/h;


# direct methods
.method public constructor <init>(Lcom/baidu/location/b/h;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/b/h$b;->b:Lcom/baidu/location/b/h;

    invoke-direct {p0}, Lcom/baidu/location/e/f;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/location/b/h$b;->a:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/baidu/location/b/h$b;->j:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "https://loc.map.baidu.com/cc.php"

    iput-object v0, p0, Lcom/baidu/location/b/h$b;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/b/h$b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/location/Jni;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/b/h$b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/b/h$b;->j:Ljava/util/Map;

    const-string v2, "q"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/b/h$b;->a:Ljava/lang/String;

    const-string p1, "https://loc.map.baidu.com/cc.php"

    invoke-virtual {p0, p1}, Lcom/baidu/location/b/h$b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/baidu/location/b/h$b;->i:Ljava/lang/String;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/baidu/location/b/h$b;->i:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "prod"

    sget-object v1, Lcom/baidu/location/e/b;->e:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "uptime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/baidu/location/b/h$b;->b:Lcom/baidu/location/b/h;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/location/b/h;->a(Lcom/baidu/location/b/h;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/baidu/location/b/h$b;->j:Ljava/util/Map;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/location/b/h$b;->j:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method
