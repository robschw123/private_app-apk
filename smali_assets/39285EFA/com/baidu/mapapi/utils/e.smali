.class Lcom/baidu/mapapi/utils/e;
.super Lcom/baidu/mapframework/open/aidl/b$a;
.source "MapOpenUtil.java"


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/utils/d;


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/utils/d;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/baidu/mapapi/utils/e;->a:Lcom/baidu/mapapi/utils/d;

    invoke-direct {p0}, Lcom/baidu/mapframework/open/aidl/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    invoke-static {}, Lcom/baidu/mapapi/utils/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClientReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-static {}, Lcom/baidu/mapapi/utils/b;->c()Lcom/baidu/mapframework/open/aidl/IComOpenClient;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 335
    invoke-static {v0}, Lcom/baidu/mapapi/utils/b;->a(Lcom/baidu/mapframework/open/aidl/IComOpenClient;)Lcom/baidu/mapframework/open/aidl/IComOpenClient;

    .line 337
    :cond_0
    invoke-static {p1}, Lcom/baidu/mapframework/open/aidl/IComOpenClient$a;->a(Landroid/os/IBinder;)Lcom/baidu/mapframework/open/aidl/IComOpenClient;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/mapapi/utils/b;->a(Lcom/baidu/mapframework/open/aidl/IComOpenClient;)Lcom/baidu/mapframework/open/aidl/IComOpenClient;

    .line 338
    invoke-static {}, Lcom/baidu/mapapi/utils/b;->f()Z

    move-result p1

    if-nez p1, :cond_1

    .line 339
    sget p1, Lcom/baidu/mapapi/utils/b;->a:I

    invoke-static {p1}, Lcom/baidu/mapapi/utils/b;->a(I)Z

    :cond_1
    const/4 p1, 0x1

    .line 341
    invoke-static {p1}, Lcom/baidu/mapapi/utils/b;->a(Z)Z

    return-void
.end method
