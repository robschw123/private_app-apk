.class Lcom/baidu/platform/comapi/map/m;
.super Landroid/os/Handler;
.source "MapController.java"


# instance fields
.field final synthetic a:Lcom/baidu/platform/comapi/map/MapController;


# direct methods
.method constructor <init>(Lcom/baidu/platform/comapi/map/MapController;)V
    .locals 0

    .line 673
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/m;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 676
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 677
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 679
    :cond_0
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/m;->a:Lcom/baidu/platform/comapi/map/MapController;

    invoke-static {p1}, Lcom/baidu/platform/comapi/map/MapController;->a(Lcom/baidu/platform/comapi/map/MapController;)V

    :goto_0
    return-void
.end method
