.class public Lcom/taobao/weex/WXSDKEngine;
.super Lio/dcloud/feature/uniapp/AbsSDKEngine;
.source "WXSDKEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/WXSDKEngine$DestroyableModuleFactory;,
        Lcom/taobao/weex/WXSDKEngine$DestroyableModule;
    }
.end annotation


# static fields
.field public static final JS_FRAMEWORK_RELOAD:Ljava/lang/String; = "js_framework_reload"

.field private static final TAG:Ljava/lang/String; = "WXSDKEngine"

.field private static final V8_SO_NAME:Ljava/lang/String; = "weexcore"

.field private static volatile mIsInit:Z = false

.field private static volatile mIsSoInit:Z = false

.field private static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/taobao/weex/WXSDKEngine;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Lio/dcloud/feature/uniapp/AbsSDKEngine;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 111
    sget-boolean v0, Lcom/taobao/weex/WXSDKEngine;->mIsSoInit:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 111
    sput-boolean p0, Lcom/taobao/weex/WXSDKEngine;->mIsSoInit:Z

    return p0
.end method

.method public static addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 539
    invoke-static {p0, p1}, Lcom/taobao/weex/WXEnvironment;->addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "funcId",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 511
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/taobao/weex/WXSDKManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static doInitInternal(Landroid/app/Application;Lcom/taobao/weex/InitConfig;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "application",
            "config"
        }
    .end annotation

    .line 209
    sput-object p0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v1, "WXSDKEngine"

    const-string v2, " doInitInternal application is null"

    .line 211
    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_SDK_INIT:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_SDK_INIT:Lcom/taobao/weex/common/WXErrorCode;

    .line 215
    invoke-virtual {v3}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "WXEnvironment sApplication is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "doInitInternal"

    .line 212
    invoke-static {v0, v1, v3, v2, v0}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    const/4 v1, 0x0

    .line 218
    sput-boolean v1, Lcom/taobao/weex/WXEnvironment;->JsFrameworkInit:Z

    .line 220
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    new-instance v2, Lcom/taobao/weex/WXSDKEngine$1;

    invoke-direct {v2, p1, p0}, Lcom/taobao/weex/WXSDKEngine$1;-><init>(Lcom/taobao/weex/InitConfig;Landroid/app/Application;)V

    const-string p0, "doInitWeexSdkInternal"

    invoke-virtual {v1, v2, v0, p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->postWithName(Ljava/lang/Runnable;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->register()V

    return-void
.end method

.method public static getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;
    .locals 1

    .line 568
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getActivityNavBarSetter()Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawableLoader()Lcom/taobao/weex/adapter/IDrawableLoader;
    .locals 1

    .line 551
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getDrawableLoader()Lcom/taobao/weex/adapter/IDrawableLoader;

    move-result-object v0

    return-object v0
.end method

.method public static getIWXHttpAdapter()Lcom/taobao/weex/adapter/IWXHttpAdapter;
    .locals 1

    .line 555
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXHttpAdapter()Lcom/taobao/weex/adapter/IWXHttpAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getIWXImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;
    .locals 1

    .line 547
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getIWXJsFileLoaderAdapter()Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;
    .locals 1

    .line 564
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXJsFileLoaderAdapter()Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getIWXStorageAdapter()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;
    .locals 1

    .line 559
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXStorageAdapter()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getIWXUserTrackAdapter()Lcom/taobao/weex/adapter/IWXUserTrackAdapter;
    .locals 1

    .line 543
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXUserTrackAdapter()Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static getNavigator()Lcom/taobao/weex/appfram/navigator/INavigator;
    .locals 1

    .line 572
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getNavigator()Lcom/taobao/weex/appfram/navigator/INavigator;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 125
    invoke-static {p0, v0}, Lcom/taobao/weex/WXSDKEngine;->init(Landroid/app/Application;Lcom/taobao/weex/adapter/IWXUserTrackAdapter;)V

    return-void
.end method

.method public static init(Landroid/app/Application;Lcom/taobao/weex/adapter/IWXUserTrackAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "application",
            "utAdapter"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 133
    invoke-static {p0, p1, v0}, Lcom/taobao/weex/WXSDKEngine;->init(Landroid/app/Application;Lcom/taobao/weex/adapter/IWXUserTrackAdapter;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/app/Application;Lcom/taobao/weex/adapter/IWXUserTrackAdapter;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "application",
            "utAdapter",
            "framework"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 141
    new-instance p2, Lcom/taobao/weex/InitConfig$Builder;

    invoke-direct {p2}, Lcom/taobao/weex/InitConfig$Builder;-><init>()V

    .line 143
    invoke-virtual {p2, p1}, Lcom/taobao/weex/InitConfig$Builder;->setUtAdapter(Lcom/taobao/weex/adapter/IWXUserTrackAdapter;)Lcom/taobao/weex/InitConfig$Builder;

    move-result-object p1

    .line 144
    invoke-virtual {p1}, Lcom/taobao/weex/InitConfig$Builder;->build()Lcom/taobao/weex/InitConfig;

    move-result-object p1

    .line 141
    invoke-static {p0, p1}, Lcom/taobao/weex/WXSDKEngine;->initialize(Landroid/app/Application;Lcom/taobao/weex/InitConfig;)V

    return-void
.end method

.method public static init(Landroid/app/Application;Ljava/lang/String;Lcom/taobao/weex/adapter/IWXUserTrackAdapter;Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;Lcom/taobao/weex/adapter/IWXHttpAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "application",
            "framework",
            "utAdapter",
            "imgLoaderAdapter",
            "httpAdapter"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    new-instance p1, Lcom/taobao/weex/InitConfig$Builder;

    invoke-direct {p1}, Lcom/taobao/weex/InitConfig$Builder;-><init>()V

    .line 262
    invoke-virtual {p1, p2}, Lcom/taobao/weex/InitConfig$Builder;->setUtAdapter(Lcom/taobao/weex/adapter/IWXUserTrackAdapter;)Lcom/taobao/weex/InitConfig$Builder;

    move-result-object p1

    .line 263
    invoke-virtual {p1, p4}, Lcom/taobao/weex/InitConfig$Builder;->setHttpAdapter(Lcom/taobao/weex/adapter/IWXHttpAdapter;)Lcom/taobao/weex/InitConfig$Builder;

    move-result-object p1

    .line 264
    invoke-virtual {p1, p3}, Lcom/taobao/weex/InitConfig$Builder;->setImgAdapter(Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;)Lcom/taobao/weex/InitConfig$Builder;

    move-result-object p1

    .line 265
    invoke-virtual {p1}, Lcom/taobao/weex/InitConfig$Builder;->build()Lcom/taobao/weex/InitConfig;

    move-result-object p1

    .line 260
    invoke-static {p0, p1}, Lcom/taobao/weex/WXSDKEngine;->initialize(Landroid/app/Application;Lcom/taobao/weex/InitConfig;)V

    return-void
.end method

.method public static initialize(Landroid/app/Application;Lcom/taobao/weex/InitConfig;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "application",
            "config"
        }
    .end annotation

    .line 168
    sget-object v0, Lcom/taobao/weex/WXSDKEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_0
    sget-boolean v1, Lcom/taobao/weex/WXSDKEngine;->mIsInit:Z

    if-eqz v1, :cond_0

    .line 170
    monitor-exit v0

    return-void

    .line 172
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 173
    sput-wide v1, Lcom/taobao/weex/WXEnvironment;->sSDKInitStart:J

    .line 174
    invoke-static {p0}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable(Landroid/app/Application;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    sget-object v3, Lcom/taobao/weex/utils/LogLevel;->INFO:Lcom/taobao/weex/utils/LogLevel;

    sput-object v3, Lcom/taobao/weex/WXEnvironment;->sLogLevel:Lio/dcloud/feature/uniapp/utils/AbsLogLevel;

    goto :goto_0

    .line 177
    :cond_1
    sget-object v3, Lcom/taobao/weex/utils/LogLevel;->WARN:Lcom/taobao/weex/utils/LogLevel;

    sput-object v3, Lcom/taobao/weex/WXEnvironment;->sLogLevel:Lio/dcloud/feature/uniapp/utils/AbsLogLevel;

    .line 179
    :goto_0
    invoke-static {p0, p1}, Lcom/taobao/weex/WXSDKEngine;->doInitInternal(Landroid/app/Application;Lcom/taobao/weex/InitConfig;)V

    .line 180
    invoke-static {p0}, Lcom/taobao/weex/WXSDKEngine;->registerApplicationOptions(Landroid/app/Application;)V

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    sput-wide v3, Lcom/taobao/weex/WXEnvironment;->sSDKInitInvokeTime:J

    const-string p1, "SDKInitInvokeTime"

    .line 182
    sget-wide v1, Lcom/taobao/weex/WXEnvironment;->sSDKInitInvokeTime:J

    invoke-static {p1, v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->renderPerformanceLog(Ljava/lang/String;J)V

    const/4 p1, 0x1

    .line 183
    sput-boolean p1, Lcom/taobao/weex/WXSDKEngine;->mIsInit:Z

    .line 184
    invoke-static {p0}, Lio/dcloud/common/util/AppRuntime;->hasPrivacyForNotShown(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 185
    invoke-static {}, Lio/dcloud/feature/uniapp/UniMoudlesLoader;->getInstance()Lio/dcloud/weex/MoudlesLoader;

    move-result-object p1

    invoke-virtual {p1, p0}, Lio/dcloud/weex/MoudlesLoader;->onCreate(Landroid/app/Application;)V

    .line 187
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static isInitialized()Z
    .locals 2

    .line 150
    sget-object v0, Lcom/taobao/weex/WXSDKEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_0
    sget-boolean v1, Lcom/taobao/weex/WXSDKEngine;->mIsInit:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/taobao/weex/WXEnvironment;->JsFrameworkInit:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 153
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isSoInitialized()Z
    .locals 2

    .line 157
    sget-object v0, Lcom/taobao/weex/WXSDKEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_0
    sget-boolean v1, Lcom/taobao/weex/WXSDKEngine;->mIsSoInit:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 159
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static register()V
    .locals 9

    const-string v0, "header"

    .line 274
    new-instance v1, Lcom/taobao/weex/utils/batch/BatchOperationHelper;

    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/taobao/weex/utils/batch/BatchOperationHelper;-><init>(Lcom/taobao/weex/utils/batch/BactchExecutor;)V

    .line 276
    :try_start_0
    new-instance v2, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v3, Lcom/taobao/weex/ui/component/WXText;

    new-instance v4, Lcom/taobao/weex/ui/component/WXText$Creator;

    invoke-direct {v4}, Lcom/taobao/weex/ui/component/WXText$Creator;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const-string v3, "text"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    .line 284
    new-instance v2, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v3, Lcom/taobao/weex/ui/component/WXDiv;

    new-instance v5, Lcom/taobao/weex/ui/component/WXDiv$Ceator;

    invoke-direct {v5}, Lcom/taobao/weex/ui/component/WXDiv$Ceator;-><init>()V

    invoke-direct {v2, v3, v5}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const-string v3, "container"

    const-string v5, "div"

    const-string v6, "footer"

    filled-new-array {v3, v5, v0, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    .line 295
    new-instance v2, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v3, Lcom/taobao/weex/ui/component/WXImage;

    new-instance v5, Lcom/taobao/weex/ui/component/WXImage$Creator;

    invoke-direct {v5}, Lcom/taobao/weex/ui/component/WXImage$Creator;-><init>()V

    invoke-direct {v2, v3, v5}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const-string v3, "image"

    const-string v5, "img"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    .line 304
    new-instance v2, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v3, Lcom/taobao/weex/ui/component/WXScroller;

    new-instance v5, Lcom/taobao/weex/ui/component/WXScroller$Creator;

    invoke-direct {v5}, Lcom/taobao/weex/ui/component/WXScroller$Creator;-><init>()V

    invoke-direct {v2, v3, v5}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const-string v3, "scroller"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    .line 312
    new-instance v2, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v3, Lcom/taobao/weex/ui/component/WXSlider;

    new-instance v5, Lcom/taobao/weex/ui/component/WXSlider$Creator;

    invoke-direct {v5}, Lcom/taobao/weex/ui/component/WXSlider$Creator;-><init>()V

    invoke-direct {v2, v3, v5}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const-string v3, "cycleslider"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v2, v5, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    .line 320
    new-instance v2, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v3, Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    new-instance v6, Lcom/taobao/weex/ui/component/WXSliderNeighbor$Creator;

    invoke-direct {v6}, Lcom/taobao/weex/ui/component/WXSliderNeighbor$Creator;-><init>()V

    invoke-direct {v2, v3, v6}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const-string v3, "slider-neighbor"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v5, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    .line 328
    new-instance v2, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v3, Lcom/taobao/weex/ui/component/list/WXCell;

    new-instance v6, Lcom/taobao/weex/ui/component/list/WXCell$Creator;

    invoke-direct {v6}, Lcom/taobao/weex/ui/component/list/WXCell$Creator;-><init>()V

    invoke-direct {v2, v3, v6}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const-string v3, "cell"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v5, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    .line 335
    new-instance v2, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v3, Lcom/taobao/weex/ui/component/list/WXListComponent;

    new-instance v6, Lcom/taobao/weex/ui/component/list/WXListComponent$Creator;

    invoke-direct {v6}, Lcom/taobao/weex/ui/component/list/WXListComponent$Creator;-><init>()V

    invoke-direct {v2, v3, v6}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const-string v3, "list"

    const-string/jumbo v6, "vlist"

    const-string v7, "recycler"

    const-string/jumbo v8, "waterfall"

    filled-new-array {v3, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v5, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    .line 346
    new-instance v2, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v3, Lcom/taobao/weex/ui/component/richtext/WXRichText;

    new-instance v6, Lcom/taobao/weex/ui/component/richtext/WXRichText$Creator;

    invoke-direct {v6}, Lcom/taobao/weex/ui/component/richtext/WXRichText$Creator;-><init>()V

    invoke-direct {v2, v3, v6}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const-string v3, "richtext"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    const-string v2, "simplelist"

    .line 356
    const-class v3, Lcom/taobao/weex/ui/component/list/SimpleListComponent;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/Class;Z[Ljava/lang/String;)Z

    .line 357
    const-class v2, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    const-string v3, "recycle-list"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/Class;Z[Ljava/lang/String;)Z

    .line 358
    const-class v2, Lcom/taobao/weex/ui/component/list/HorizontalListComponent;

    const-string v3, "hlist"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/Class;Z[Ljava/lang/String;)Z

    const-string v2, "cell-slot"

    .line 359
    const-class v3, Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-static {v2, v3, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    const-string v2, "indicator"

    .line 360
    const-class v3, Lcom/taobao/weex/ui/component/WXIndicator;

    invoke-static {v2, v3, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    const-string/jumbo v2, "video"

    .line 361
    const-class v3, Lcom/taobao/weex/ui/component/WXVideo;

    invoke-static {v2, v3, v4}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    const-string v2, "input"

    .line 362
    const-class v3, Lcom/taobao/weex/ui/component/WXInput;

    invoke-static {v2, v3, v4}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    const-string v2, "textarea"

    .line 363
    const-class v3, Lcom/taobao/weex/ui/component/Textarea;

    invoke-static {v2, v3, v4}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    const-string v2, "a"

    .line 365
    const-class v3, Lcom/taobao/weex/ui/component/WXA;

    invoke-static {v2, v3, v4}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    const-string v2, "embed"

    .line 366
    const-class v3, Lcom/taobao/weex/ui/component/WXEmbed;

    invoke-static {v2, v3, v5}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z

    const-string/jumbo v2, "web"

    .line 367
    const-class v3, Lcom/taobao/weex/ui/component/WXWeb;

    invoke-static {v2, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v2, "refresh"

    .line 368
    const-class v3, Lcom/taobao/weex/ui/component/WXRefresh;

    invoke-static {v2, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v2, "loading"

    .line 369
    const-class v3, Lcom/taobao/weex/ui/component/WXLoading;

    invoke-static {v2, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v2, "loading-indicator"

    .line 370
    const-class v3, Lcom/taobao/weex/ui/component/WXLoadingIndicator;

    invoke-static {v2, v3}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 371
    const-class v2, Lcom/taobao/weex/ui/component/WXHeader;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v0, "modal"

    .line 373
    const-class v2, Lcom/taobao/weex/ui/module/WXModalUIModule;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v0, "instanceWrap"

    .line 374
    const-class v2, Lcom/taobao/weex/common/WXInstanceWrap;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v0, "animation"

    .line 375
    const-class v2, Lcom/taobao/weex/ui/animation/WXAnimationModule;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string/jumbo v0, "webview"

    .line 376
    const-class v2, Lcom/taobao/weex/ui/module/WXWebViewModule;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v0, "navigator"

    .line 377
    const-class v2, Lcom/taobao/weex/appfram/navigator/WXNavigatorModule;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v0, "stream"

    .line 378
    const-class v2, Lcom/taobao/weex/http/WXStreamModule;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v0, "timer"

    .line 379
    const-class v2, Lcom/taobao/weex/ui/module/WXTimerModule;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v0, "storage"

    .line 380
    const-class v2, Lcom/taobao/weex/appfram/storage/WXStorageModule;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v0, "clipboard"

    .line 381
    const-class v2, Lcom/taobao/weex/appfram/clipboard/WXClipboardModule;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v0, "globalEvent"

    .line 382
    const-class v2, Lcom/taobao/weex/WXGlobalEventModule;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v0, "picker"

    .line 383
    const-class v2, Lcom/taobao/weex/appfram/pickers/WXPickersModule;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v0, "meta"

    .line 384
    const-class v2, Lcom/taobao/weex/ui/module/WXMetaModule;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string/jumbo v0, "webSocket"

    .line 385
    const-class v2, Lcom/taobao/weex/appfram/websocket/WebSocketModule;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v0, "locale"

    .line 386
    const-class v2, Lcom/taobao/weex/ui/module/WXLocaleModule;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v0, "deviceInfo"

    .line 387
    const-class v2, Lcom/taobao/weex/ui/module/WXDeviceInfoModule;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v0, "sdk-console-log"

    .line 388
    const-class v2, Lcom/taobao/weex/ui/module/ConsoleLogModule;

    invoke-static {v0, v2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z
    :try_end_0
    .catch Lcom/taobao/weex/common/WXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "[WXSDKEngine] register:"

    .line 390
    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 393
    :goto_0
    invoke-static {}, Lcom/taobao/weex/utils/cache/RegisterCache;->getInstance()Lcom/taobao/weex/utils/cache/RegisterCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/utils/cache/RegisterCache;->enableAutoScan()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-static {}, Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->doScanConfig()V

    .line 397
    :cond_0
    invoke-virtual {v1}, Lcom/taobao/weex/utils/batch/BatchOperationHelper;->flush()V

    return-void
.end method

.method private static registerApplicationOptions(Landroid/app/Application;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "application"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "WXSDKEngine"

    const-string v0, "RegisterApplicationOptions application is null"

    .line 193
    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 198
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_width_pixels"

    invoke-static {v1, v0}, Lcom/taobao/weex/WXSDKEngine;->registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_height_pixels"

    invoke-static {v1, v0}, Lcom/taobao/weex/WXSDKEngine;->registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 201
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 203
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 204
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/taobao/weex/WXSDKEngine;->registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static varargs registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "appendTree",
            "names"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 438
    :try_start_0
    array-length v1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v3, v1, :cond_2

    :try_start_1
    aget-object v5, p2, v3

    .line 439
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string v7, "append"

    const-string v8, "tree"

    .line 441
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v4, :cond_1

    .line 443
    invoke-static {v5, p0, v6}, Lcom/taobao/weex/ui/WXComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;Ljava/util/Map;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    move v0, v4

    goto :goto_2

    :cond_2
    return v4

    :catchall_1
    move-exception p0

    .line 447
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static varargs registerComponent(Ljava/lang/Class;Z[Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "appendTree",
            "names"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;Z[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 430
    :cond_0
    new-instance v0, Lcom/taobao/weex/ui/SimpleComponentHolder;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;)V

    .line 431
    invoke-static {v0, p1, p2}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static registerComponent(Ljava/lang/String;Lcom/taobao/weex/ui/IExternalComponentGetter;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "componentGetter",
            "appendTree"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .line 414
    new-instance v0, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/ui/ExternalLoaderComponentHolder;-><init>(Ljava/lang/String;Lcom/taobao/weex/ui/IExternalComponentGetter;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    invoke-static {v0, p2, p1}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .line 524
    new-instance v0, Lcom/taobao/weex/ui/SimpleComponentHolder;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/taobao/weex/ui/WXComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static registerComponent(Ljava/lang/String;Ljava/lang/Class;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "clazz",
            "appendTree"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 410
    invoke-static {p1, p2, v0}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/Class;Z[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static registerComponent(Ljava/util/Map;Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "componentInfo",
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "type"

    .line 531
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 532
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    .line 535
    :cond_1
    new-instance v0, Lcom/taobao/weex/ui/SimpleComponentHolder;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;)V

    invoke-static {v1, v0, p0}, Lcom/taobao/weex/ui/WXComponentRegistry;->registerComponent(Ljava/lang/String;Lcom/taobao/weex/ui/IFComponentHolder;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 617
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static registerModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "moduleName",
            "factory",
            "global"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/taobao/weex/common/WXModule;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/bridge/ModuleFactory;",
            "Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .line 484
    invoke-static {p0, p1, p2}, Lcom/taobao/weex/bridge/WXModuleManager;->registerModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;Z)Z

    move-result p0

    return p0
.end method

.method public static registerModule(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "moduleName",
            "moduleClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taobao/weex/common/WXModule;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 488
    invoke-static {p0, p1, v0}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z

    move-result p0

    return p0
.end method

.method public static registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "moduleName",
            "moduleClass",
            "global"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/taobao/weex/common/WXModule;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 462
    new-instance v0, Lcom/taobao/weex/common/TypeModuleFactory;

    invoke-direct {v0, p1}, Lcom/taobao/weex/common/TypeModuleFactory;-><init>(Ljava/lang/Class;)V

    invoke-static {p0, v0, p2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static registerModuleWithFactory(Ljava/lang/String;Lcom/taobao/weex/WXSDKEngine$DestroyableModuleFactory;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "moduleName",
            "factory",
            "global"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/taobao/weex/common/WXModule;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/WXSDKEngine$DestroyableModuleFactory;",
            "Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .line 475
    invoke-static {p0, p1, p2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;Z)Z

    move-result p0

    return p0
.end method

.method public static registerModuleWithFactory(Ljava/lang/String;Lcom/taobao/weex/ui/IExternalModuleGetter;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "moduleName",
            "factory",
            "global"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/taobao/weex/common/WXModule;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/IExternalModuleGetter;",
            "Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .line 480
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/taobao/weex/ui/IExternalModuleGetter;->getExternalModuleClass(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;Z)Z

    move-result p0

    return p0
.end method

.method public static registerService(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "serviceScript",
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 492
    invoke-static {p0, p1, p2}, Lcom/taobao/weex/bridge/WXServiceManager;->registerService(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static reload()V
    .locals 2

    .line 603
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    sget-boolean v1, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->reload(Landroid/content/Context;Z)V

    return-void
.end method

.method public static reload(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "context",
            "framework",
            "remoteDebug"
        }
    .end annotation

    .line 584
    sput-boolean p2, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    .line 585
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->restart()V

    .line 586
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->initScriptsFramework(Ljava/lang/String;)V

    .line 588
    invoke-static {}, Lcom/taobao/weex/bridge/WXServiceManager;->reload()V

    .line 589
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->reload()V

    .line 590
    invoke-static {}, Lcom/taobao/weex/ui/WXComponentRegistry;->reload()V

    .line 591
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    new-instance p2, Lcom/taobao/weex/WXSDKEngine$2;

    invoke-direct {p2, p0}, Lcom/taobao/weex/WXSDKEngine$2;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/taobao/weex/WXSDKManager;->postOnUiThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static reload(Landroid/content/Context;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "context",
            "remoteDebug"
        }
    .end annotation

    const/4 v0, 0x0

    .line 599
    invoke-static {p0, v0, p1}, Lcom/taobao/weex/WXSDKEngine;->reload(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static restartBridge(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "debug"
        }
    .end annotation

    .line 519
    sput-boolean p0, Lcom/taobao/weex/WXEnvironment;->sDebugMode:Z

    .line 520
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKManager;->restartBridge()V

    return-void
.end method

.method public static restartWeex()V
    .locals 2

    .line 607
    sget-boolean v0, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    .line 608
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->restart()V

    .line 609
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->initScriptsFramework(Ljava/lang/String;)V

    .line 611
    invoke-static {}, Lcom/taobao/weex/bridge/WXServiceManager;->reload()V

    .line 612
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->reload()V

    .line 613
    invoke-static {}, Lcom/taobao/weex/ui/WXComponentRegistry;->reload()V

    return-void
.end method

.method public static setActivityNavBarSetter(Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityNavBarSetter"
        }
    .end annotation

    .line 580
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/WXSDKManager;->setActivityNavBarSetter(Lcom/taobao/weex/appfram/navigator/IActivityNavBarSetter;)V

    return-void
.end method

.method public static setJSExcetptionAdapter(Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "excetptionAdapter"
        }
    .end annotation

    .line 270
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/WXSDKManager;->setIWXJSExceptionAdapter(Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;)V

    return-void
.end method

.method public static setNavigator(Lcom/taobao/weex/appfram/navigator/INavigator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "navigator"
        }
    .end annotation

    .line 576
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/WXSDKManager;->setNavigator(Lcom/taobao/weex/appfram/navigator/INavigator;)V

    return-void
.end method

.method public static unRegisterService(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 496
    invoke-static {p0}, Lcom/taobao/weex/bridge/WXServiceManager;->unRegisterService(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
