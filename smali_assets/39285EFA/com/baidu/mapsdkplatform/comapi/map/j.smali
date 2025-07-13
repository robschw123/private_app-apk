.class public Lcom/baidu/mapsdkplatform/comapi/map/j;
.super Ljava/lang/Object;
.source "EngineManager.java"


# static fields
.field private static a:I

.field private static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/map/j;->b:Landroid/content/Context;

    .line 246
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->getInstance()Lcom/baidu/mapsdkplatform/comapi/NativeLoader;

    move-result-object v0

    invoke-static {}, Lcom/baidu/mapapi/VersionInfo;->getKitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 252
    :cond_0
    invoke-static {}, Lcom/baidu/mapapi/VersionInfo;->getApiVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/map/VersionInfo;->getApiVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->getInstance()Lcom/baidu/mapsdkplatform/comapi/NativeLoader;

    move-result-object v0

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/map/VersionInfo;->getKitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/NativeLoader;->loadLibrary(Ljava/lang/String;)Z

    return-void

    .line 253
    :cond_1
    new-instance v0, Lcom/baidu/mapapi/common/BaiduMapSDKException;

    const-string v1, "the version of map is not match with base"

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/common/BaiduMapSDKException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()V
    .locals 3

    .line 57
    sget v0, Lcom/baidu/mapsdkplatform/comapi/map/j;->a:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 58
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/j;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "BDMapSDK"

    const-string/jumbo v1, "you have not supplyed the global app context info from SDKInitializer.initialize(Context) function."

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 65
    :cond_0
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->b()V

    .line 67
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/j;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2, v1}, Lcom/baidu/platform/comapi/b;->a(Landroid/app/Application;ZZZZ)V

    .line 68
    invoke-static {}, Lcom/baidu/platform/comapi/b;->b()V

    .line 69
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/a;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/a;-><init>()V

    invoke-static {v0}, Lcom/baidu/platform/comapi/b;->a(Lcom/baidu/platform/comapi/b/b;)V

    .line 71
    invoke-static {}, Lcom/baidu/platform/comapi/util/f;->a()V

    .line 74
    invoke-static {}, Lcom/baidu/platform/comapi/longlink/BNLongLink;->initLongLink()V

    .line 76
    invoke-static {}, Lcom/baidu/platform/comjni/engine/NAEngine;->c()Z

    .line 78
    invoke-static {}, Lcom/baidu/platform/comjni/engine/NAEngine;->startRunningRequest()V

    .line 80
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->getInstance()Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;

    move-result-object v0

    new-instance v2, Lcom/baidu/mapsdkplatform/comapi/commonutils/SysUpdateUtil;

    invoke-direct {v2}, Lcom/baidu/mapsdkplatform/comapi/commonutils/SysUpdateUtil;-><init>()V

    invoke-virtual {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->addObserver(Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObserver;)V

    .line 81
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->getInstance()Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->init(Ljava/lang/String;)V

    .line 83
    :cond_1
    sget v0, Lcom/baidu/mapsdkplatform/comapi/map/j;->a:I

    add-int/2addr v0, v1

    sput v0, Lcom/baidu/mapsdkplatform/comapi/map/j;->a:I

    .line 84
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BasicMap init mRef = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/baidu/mapsdkplatform/comapi/map/j;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static b()V
    .locals 3

    .line 232
    sget v0, Lcom/baidu/mapsdkplatform/comapi/map/j;->a:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/baidu/mapsdkplatform/comapi/map/j;->a:I

    .line 233
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BasicMap destroy mRef = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/baidu/mapsdkplatform/comapi/map/j;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Ljava/lang/String;)V

    .line 237
    :cond_0
    sget v0, Lcom/baidu/mapsdkplatform/comapi/map/j;->a:I

    if-nez v0, :cond_1

    .line 238
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->c()V

    .line 239
    invoke-static {}, Lcom/baidu/platform/comapi/b;->c()V

    :cond_1
    return-void
.end method
