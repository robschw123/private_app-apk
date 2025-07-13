.class Lcom/baidu/mapsdkplatform/comapi/map/h;
.super Ljava/lang/Object;
.source "CustomMapStyleLoader.java"

# interfaces
.implements Lcom/baidu/mapsdkplatform/comapi/commonutils/a/c$c;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/mapsdkplatform/comapi/map/f$a;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/baidu/mapsdkplatform/comapi/map/f;


# direct methods
.method constructor <init>(Lcom/baidu/mapsdkplatform/comapi/map/f;Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mapsdkplatform/comapi/map/f$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/h;->f:Lcom/baidu/mapsdkplatform/comapi/map/f;

    iput-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/h;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mapsdkplatform/comapi/map/h;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/h;->c:Lcom/baidu/mapsdkplatform/comapi/map/f$a;

    iput-object p5, p0, Lcom/baidu/mapsdkplatform/comapi/map/h;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/mapsdkplatform/comapi/map/h;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 355
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/h;->c:Lcom/baidu/mapsdkplatform/comapi/map/f$a;

    if-eqz v0, :cond_0

    .line 356
    sget-object v1, Lcom/baidu/mapapi/http/HttpClient$HttpStateError;->INNER_ERROR:Lcom/baidu/mapapi/http/HttpClient$HttpStateError;

    .line 357
    invoke-virtual {v1}, Lcom/baidu/mapapi/http/HttpClient$HttpStateError;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "loadStyleFile onFailed"

    .line 356
    invoke-interface {v0, v1, v3, v2}, Lcom/baidu/mapsdkplatform/comapi/map/f$a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_0
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object v0

    const-string v1, "CustomMap loadStyleFile failed"

    .line 362
    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 4

    .line 331
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/h;->f:Lcom/baidu/mapsdkplatform/comapi/map/f;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/h;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/baidu/mapsdkplatform/comapi/map/f;->a(Lcom/baidu/mapsdkplatform/comapi/map/f;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    .line 332
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CustomMap loadStyleFile success ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 337
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/h;->c:Lcom/baidu/mapsdkplatform/comapi/map/f$a;

    if-eqz p1, :cond_1

    .line 338
    sget-object v1, Lcom/baidu/mapapi/http/HttpClient$HttpStateError;->INNER_ERROR:Lcom/baidu/mapapi/http/HttpClient$HttpStateError;

    .line 339
    invoke-virtual {v1}, Lcom/baidu/mapapi/http/HttpClient$HttpStateError;->ordinal()I

    move-result v1

    const-string v2, "UnZipStyleFile onFailed"

    .line 338
    invoke-interface {p1, v1, v2, v0}, Lcom/baidu/mapsdkplatform/comapi/map/f$a;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 345
    :cond_2
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/h;->f:Lcom/baidu/mapsdkplatform/comapi/map/f;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/h;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/h;->d:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/baidu/mapsdkplatform/comapi/map/f;->a(Lcom/baidu/mapsdkplatform/comapi/map/f;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/h;->c:Lcom/baidu/mapsdkplatform/comapi/map/f$a;

    if-eqz p1, :cond_4

    .line 347
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/h;->f:Lcom/baidu/mapsdkplatform/comapi/map/f;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/h;->e:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/baidu/mapsdkplatform/comapi/map/f;->a(Lcom/baidu/mapsdkplatform/comapi/map/f;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/h;->e:Ljava/lang/String;

    .line 349
    :cond_3
    iget-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/h;->c:Lcom/baidu/mapsdkplatform/comapi/map/f$a;

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/f$a;->a(ZLjava/lang/String;)V

    :cond_4
    return-void
.end method
