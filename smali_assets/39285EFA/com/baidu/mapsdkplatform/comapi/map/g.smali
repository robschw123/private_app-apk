.class Lcom/baidu/mapsdkplatform/comapi/map/g;
.super Lcom/baidu/mapapi/http/HttpClient$ProtoResultCallback;
.source "CustomMapStyleLoader.java"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/mapsdkplatform/comapi/map/f$a;

.field final synthetic d:Lcom/baidu/mapsdkplatform/comapi/map/f;


# direct methods
.method constructor <init>(Lcom/baidu/mapsdkplatform/comapi/map/f;Landroid/content/Context;Ljava/lang/String;Lcom/baidu/mapsdkplatform/comapi/map/f$a;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/g;->d:Lcom/baidu/mapsdkplatform/comapi/map/f;

    iput-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/map/g;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mapsdkplatform/comapi/map/g;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/mapsdkplatform/comapi/map/g;->c:Lcom/baidu/mapsdkplatform/comapi/map/f$a;

    invoke-direct {p0}, Lcom/baidu/mapapi/http/HttpClient$ProtoResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/baidu/mapapi/http/HttpClient$HttpStateError;)V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/g;->d:Lcom/baidu/mapsdkplatform/comapi/map/f;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/g;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/g;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/baidu/mapsdkplatform/comapi/map/f;->a(Lcom/baidu/mapsdkplatform/comapi/map/f;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/g;->d:Lcom/baidu/mapsdkplatform/comapi/map/f;

    invoke-static {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/f;->a(Lcom/baidu/mapsdkplatform/comapi/map/f;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 221
    :goto_0
    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/g;->c:Lcom/baidu/mapsdkplatform/comapi/map/f$a;

    if-eqz v1, :cond_1

    .line 222
    invoke-virtual {p1}, Lcom/baidu/mapapi/http/HttpClient$HttpStateError;->ordinal()I

    move-result v2

    .line 223
    invoke-virtual {p1}, Lcom/baidu/mapapi/http/HttpClient$HttpStateError;->name()Ljava/lang/String;

    move-result-object v3

    .line 222
    invoke-interface {v1, v2, v3, v0}, Lcom/baidu/mapsdkplatform/comapi/map/f$a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_1
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CustomMap failed error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {p1}, Lcom/baidu/mapapi/http/HttpClient$HttpStateError;->ordinal()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4

    .line 210
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/g;->d:Lcom/baidu/mapsdkplatform/comapi/map/f;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/g;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/map/g;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/g;->c:Lcom/baidu/mapsdkplatform/comapi/map/f$a;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/baidu/mapsdkplatform/comapi/map/f;->a(Lcom/baidu/mapsdkplatform/comapi/map/f;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/mapsdkplatform/comapi/map/f$a;)V

    .line 211
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CustomMap result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 213
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
