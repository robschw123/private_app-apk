.class public Lcom/baidu/mapsdkplatform/comapi/map/MessageCenter;
.super Ljava/lang/Object;
.source "MessageCenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registMessage(ILandroid/os/Handler;)V
    .locals 0

    .line 12
    invoke-static {p0, p1}, Lcom/baidu/platform/comjni/engine/MessageProxy;->registerMessageHandler(ILandroid/os/Handler;)V

    return-void
.end method

.method public static unregistMessage(ILandroid/os/Handler;)V
    .locals 0

    .line 16
    invoke-static {p0, p1}, Lcom/baidu/platform/comjni/engine/MessageProxy;->unRegisterMessageHandler(ILandroid/os/Handler;)V

    return-void
.end method
