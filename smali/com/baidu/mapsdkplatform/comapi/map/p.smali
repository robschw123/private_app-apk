.class Lcom/baidu/mapsdkplatform/comapi/map/p;
.super Landroid/os/Handler;
.source "LocalMap.java"


# instance fields
.field final synthetic a:Lcom/baidu/mapsdkplatform/comapi/map/o;


# direct methods
.method constructor <init>(Lcom/baidu/mapsdkplatform/comapi/map/o;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/p;->a:Lcom/baidu/mapsdkplatform/comapi/map/o;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 67
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/map/o;->f()Lcom/baidu/mapsdkplatform/comapi/map/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/p;->a:Lcom/baidu/mapsdkplatform/comapi/map/o;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/map/o;->a(Lcom/baidu/mapsdkplatform/comapi/map/o;)Lcom/baidu/mapsdkplatform/comapi/map/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/t;->a(Landroid/os/Message;)V

    :cond_0
    return-void
.end method
