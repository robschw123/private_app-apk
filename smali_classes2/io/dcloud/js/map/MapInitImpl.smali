.class public Lio/dcloud/js/map/MapInitImpl;
.super Lio/dcloud/common/DHInterface/StandardFeature;
.source "MapInitImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/js/map/MapInitImpl$SDKReceiver;
    }
.end annotation


# static fields
.field public static isKeyError:Z = false


# instance fields
.field private context:Landroid/content/Context;

.field private isInit:Z

.field isShowKeyDialog:Z

.field private mReceiver:Lio/dcloud/js/map/MapInitImpl$SDKReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lio/dcloud/common/DHInterface/StandardFeature;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lio/dcloud/js/map/MapInitImpl;->isInit:Z

    .line 80
    iput-boolean v0, p0, Lio/dcloud/js/map/MapInitImpl;->isShowKeyDialog:Z

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 0

    return-void
.end method

.method public onRestart(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 55
    invoke-super {p0, p1}, Lio/dcloud/common/DHInterface/StandardFeature;->onRestart(Landroid/content/Context;)V

    .line 56
    iget-boolean v0, p0, Lio/dcloud/js/map/MapInitImpl;->isInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, p1, v0, v0}, Lio/dcloud/js/map/MapInitImpl;->onStart(Landroid/content/Context;Landroid/os/Bundle;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStart(Landroid/content/Context;Landroid/os/Bundle;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pContext",
            "pSavedInstanceState",
            "pRuntimeArgs"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lio/dcloud/js/map/MapInitImpl;->context:Landroid/content/Context;

    .line 29
    invoke-static {p1}, Lio/dcloud/common/util/AppRuntime;->hasPrivacyForNotShown(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 34
    invoke-virtual {p0}, Lio/dcloud/js/map/MapInitImpl;->getDPluginContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/baidu/mapapi/SDKInitializer;->setAgreePrivacy(Landroid/content/Context;Z)V

    .line 36
    invoke-static {p3}, Lcom/baidu/location/LocationClient;->setAgreePrivacy(Z)V

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lio/dcloud/js/map/MapInitImpl;->getDPluginContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/baidu/mapapi/SDKInitializer;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/baidu/mapapi/common/BaiduMapSDKException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 40
    invoke-virtual {p2}, Lcom/baidu/mapapi/common/BaiduMapSDKException;->printStackTrace()V

    .line 43
    :goto_0
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "permission check error"

    .line 44
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    new-instance v0, Lio/dcloud/js/map/MapInitImpl$SDKReceiver;

    invoke-direct {v0, p0}, Lio/dcloud/js/map/MapInitImpl$SDKReceiver;-><init>(Lio/dcloud/js/map/MapInitImpl;)V

    iput-object v0, p0, Lio/dcloud/js/map/MapInitImpl;->mReceiver:Lio/dcloud/js/map/MapInitImpl$SDKReceiver;

    .line 46
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 47
    iput-boolean p3, p0, Lio/dcloud/js/map/MapInitImpl;->isInit:Z

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lio/dcloud/js/map/MapInitImpl;->isInit:Z

    :goto_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 64
    iget-object v0, p0, Lio/dcloud/js/map/MapInitImpl;->mReceiver:Lio/dcloud/js/map/MapInitImpl$SDKReceiver;

    if-eqz v0, :cond_0

    .line 65
    iget-object v1, p0, Lio/dcloud/js/map/MapInitImpl;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
