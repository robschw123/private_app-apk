.class Lcom/baidu/location/b/m$b;
.super Lcom/baidu/location/e/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:J

.field d:J

.field final synthetic e:Lcom/baidu/location/b/m;


# direct methods
.method public constructor <init>(Lcom/baidu/location/b/m;)V
    .locals 2

    iput-object p1, p0, Lcom/baidu/location/b/m$b;->e:Lcom/baidu/location/b/m;

    invoke-direct {p0}, Lcom/baidu/location/e/f;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/location/b/m$b;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/location/b/m$b;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/b/m$b;->c:J

    iput-wide v0, p0, Lcom/baidu/location/b/m$b;->d:J

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/baidu/location/b/m$b;->j:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    sget-boolean v0, Lcom/baidu/location/e/k;->g:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/baidu/location/e/k;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/b/m$b;->e:Lcom/baidu/location/b/m;

    invoke-static {v0}, Lcom/baidu/location/b/m;->a(Lcom/baidu/location/b/m;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/b/m$b;->e:Lcom/baidu/location/b/m;

    invoke-static {v0}, Lcom/baidu/location/b/m;->b(Lcom/baidu/location/b/m;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/baidu/location/b/m$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/baidu/location/b/m$b;->e:Lcom/baidu/location/b/m;

    invoke-static {v5}, Lcom/baidu/location/b/m;->a(Lcom/baidu/location/b/m;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/baidu/location/b/m$b;->e:Lcom/baidu/location/b/m;

    invoke-static {v5}, Lcom/baidu/location/b/m;->b(Lcom/baidu/location/b/m;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "&ki=%s&sn=%s"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/b/m$b;->b:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/baidu/location/b/n;->a()Lcom/baidu/location/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/n;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/baidu/location/b/m$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&enc=2"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/b/m$b;->b:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/b/m$b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/location/Jni;->encodeTp4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/baidu/location/b/m$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/location/b/m$b;->a:Ljava/lang/String;

    if-nez v3, :cond_3

    invoke-static {}, Lcom/baidu/location/b/y;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/location/b/m$b;->a:Ljava/lang/String;

    :cond_3
    iget-object v3, p0, Lcom/baidu/location/b/m$b;->j:Ljava/util/Map;

    const-string v4, "bloc"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/baidu/location/b/m$b;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/b/m$b;->j:Ljava/util/Map;

    iget-object v3, p0, Lcom/baidu/location/b/m$b;->a:Ljava/lang/String;

    const-string v4, "up"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/b/m$b;->j:Ljava/util/Map;

    const-string v2, "trtm"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 2

    iput-object p1, p0, Lcom/baidu/location/b/m$b;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/b/m$b;->d:J

    iput-wide p2, p0, Lcom/baidu/location/b/m$b;->c:J

    invoke-static {}, Lcom/baidu/location/b/w;->a()Lcom/baidu/location/b/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/b/w;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-static {}, Lcom/baidu/location/e/k;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/location/b/m$b;->a(Ljava/util/concurrent/ExecutorService;ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p2, Lcom/baidu/location/e/d;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/location/b/m$b;->a(Ljava/util/concurrent/ExecutorService;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/baidu/location/e/d;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/baidu/location/b/m$b;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 11

    const-string v0, "content"

    const-string v1, "net_loc_save"

    const-string v2, "enc"

    const-string v3, "HttpStatus error"

    const/16 v4, 0x3f

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/baidu/location/b/m$b;->i:Ljava/lang/String;

    if-eqz p1, :cond_8

    :try_start_0
    iget-object p1, p0, Lcom/baidu/location/b/m$b;->i:Ljava/lang/String;

    sput-object p1, Lcom/baidu/location/b/m;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/baidu/location/b/n;->a()Lcom/baidu/location/b/n;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/location/b/n;->b()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v5, :cond_0

    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/baidu/location/b/n;->a()Lcom/baidu/location/b/n;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/baidu/location/b/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v5

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_2
    :try_start_4
    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0, p1}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    const/16 v2, 0xa1

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcom/baidu/location/b/l;->a()Lcom/baidu/location/b/l;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/location/b/l;->a(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/baidu/location/c/b;->a()Lcom/baidu/location/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/c/b;->h()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/baidu/location/BDLocation;->setOperators(I)V

    invoke-static {}, Lcom/baidu/location/b/t;->a()Lcom/baidu/location/b/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/b/t;->d()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/baidu/location/b/t;->a()Lcom/baidu/location/b/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/b/t;->e()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/baidu/location/BDLocation;->setDirection(F)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0}, Lcom/baidu/location/BDLocation;-><init>()V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    :cond_4
    :goto_2
    iput-object v5, p0, Lcom/baidu/location/b/m$b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v1

    const-wide/16 v7, 0x1

    cmpl-double p1, v1, v7

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v1

    cmpl-double p1, v1, v7

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/baidu/location/b/m$b;->e:Lcom/baidu/location/b/m;

    iget-object p1, p1, Lcom/baidu/location/b/m;->d:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iput-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_3
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v7, p0, Lcom/baidu/location/b/m$b;->d:J

    sub-long/2addr v1, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v1, v7

    const-wide/16 v7, 0x0

    cmp-long p1, v1, v7

    if-gez p1, :cond_6

    move-wide v1, v7

    :cond_6
    iget-wide v9, p0, Lcom/baidu/location/b/m$b;->c:J

    cmp-long p1, v9, v7

    if-gez p1, :cond_7

    iput-wide v7, p0, Lcom/baidu/location/b/m$b;->c:J

    :cond_7
    iget-wide v7, p0, Lcom/baidu/location/b/m$b;->c:J

    add-long/2addr v7, v1

    invoke-virtual {v0, v7, v8}, Lcom/baidu/location/BDLocation;->setDelayTime(J)V

    iget-object p1, p0, Lcom/baidu/location/b/m$b;->e:Lcom/baidu/location/b/m;

    iget-object p1, p1, Lcom/baidu/location/b/m;->d:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v6, p1, Landroid/os/Message;->arg1:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    :cond_8
    iget-object p1, p0, Lcom/baidu/location/b/m$b;->e:Lcom/baidu/location/b/m;

    iget-object p1, p1, Lcom/baidu/location/b/m;->d:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iput-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_4
    iget-object p1, p0, Lcom/baidu/location/b/m$b;->j:Ljava/util/Map;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/baidu/location/b/m$b;->j:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_9
    return-void
.end method
