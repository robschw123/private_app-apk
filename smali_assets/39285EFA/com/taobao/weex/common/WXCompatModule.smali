.class public abstract Lcom/taobao/weex/common/WXCompatModule;
.super Lcom/taobao/weex/common/WXModule;
.source "WXCompatModule.java"

# interfaces
.implements Lcom/taobao/weex/common/Destroyable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;
    }
.end annotation


# instance fields
.field private mModuleReceive:Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 38
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    .line 39
    new-instance v0, Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;

    invoke-direct {v0, p0}, Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;-><init>(Lcom/taobao/weex/common/WXCompatModule;)V

    iput-object v0, p0, Lcom/taobao/weex/common/WXCompatModule;->mModuleReceive:Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;

    .line 40
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXCompatModule;->mModuleReceive:Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "actionActivityResult"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 42
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXCompatModule;->mModuleReceive:Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "actionRequestPermissionsResult"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 54
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXCompatModule;->mModuleReceive:Lcom/taobao/weex/common/WXCompatModule$ModuleReceive;

    .line 55
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    return-void
.end method
