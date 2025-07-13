.class final Lcom/baidu/vi/e;
.super Landroid/content/BroadcastReceiver;
.source "VDeviceAPI.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 239
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 242
    invoke-static {}, Lcom/baidu/vi/VDeviceAPI;->onNetworkStateChanged()V

    return-void
.end method
