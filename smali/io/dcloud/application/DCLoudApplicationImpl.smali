.class public Lio/dcloud/application/DCLoudApplicationImpl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;,
        Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;,
        Lio/dcloud/application/DCLoudApplicationImpl$DynamicLanguageReceiver;
    }
.end annotation


# static fields
.field private static mInstance:Lio/dcloud/application/DCLoudApplicationImpl;


# instance fields
.field private Tag:Ljava/lang/String;

.field private activityCallbacks:Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;

.field private isInit:Z

.field isUniMP:Z

.field private mApplication:Landroid/content/Context;

.field private nativeAppInfo:Lio/dcloud/e/b/b;

.field public topActiveMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DCLoudApplicationImpl"

    .line 4
    iput-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->Tag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isUniMP:Z

    .line 174
    iput-boolean v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isInit:Z

    .line 262
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->topActiveMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private initLanguageConfig(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "language_uni_broad_cast_intent"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lio/dcloud/application/DCLoudApplicationImpl$DynamicLanguageReceiver;

    invoke-direct {v1, p0}, Lio/dcloud/application/DCLoudApplicationImpl$DynamicLanguageReceiver;-><init>(Lio/dcloud/application/DCLoudApplicationImpl;)V

    .line 4
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 6
    invoke-static {p1}, Lio/dcloud/common/util/language/LanguageUtil;->initAppLanguageForAppBeforeO(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private initX5(Landroid/app/Application;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    sget-boolean p2, Lio/dcloud/common/util/BaseInfo;->allowDownloadWithoutWiFi:Z

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lio/dcloud/common/util/AppRuntime;->initX5(Landroid/app/Application;ZLio/dcloud/common/DHInterface/ICallBack;)V

    :cond_0
    return-void
.end method

.method public static self()Lio/dcloud/application/DCLoudApplicationImpl;
    .locals 1

    .line 1
    sget-object v0, Lio/dcloud/application/DCLoudApplicationImpl;->mInstance:Lio/dcloud/application/DCLoudApplicationImpl;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/dcloud/application/DCLoudApplicationImpl;

    invoke-direct {v0}, Lio/dcloud/application/DCLoudApplicationImpl;-><init>()V

    sput-object v0, Lio/dcloud/application/DCLoudApplicationImpl;->mInstance:Lio/dcloud/application/DCLoudApplicationImpl;

    .line 4
    :cond_0
    sget-object v0, Lio/dcloud/application/DCLoudApplicationImpl;->mInstance:Lio/dcloud/application/DCLoudApplicationImpl;

    return-object v0
.end method


# virtual methods
.method public addActivityStatusListener(Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->activityCallbacks:Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->addListener(Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;)V

    :cond_0
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, v1, v2}, Lio/dcloud/common/util/language/LanguageUtil;->updateContextLanguageAfterO(Landroid/content/Context;ZZ)Landroid/content/Context;

    move-result-object p1

    :cond_0
    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lio/dcloud/application/DCLoudApplicationImpl;->supportMultiDex(Landroid/content/Context;)V

    .line 7
    :cond_1
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    invoke-static {p1}, Lio/dcloud/a;->a(Landroid/content/Context;)V

    :cond_2
    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->mApplication:Landroid/content/Context;

    return-object v0
.end method

.method public getNativeInfo(Landroid/app/Application;)Lio/dcloud/common/DHInterface/INativeAppInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->nativeAppInfo:Lio/dcloud/e/b/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/dcloud/e/b/b;

    invoke-direct {v0, p1}, Lio/dcloud/e/b/b;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->nativeAppInfo:Lio/dcloud/e/b/b;

    .line 4
    :cond_0
    iget-object p1, p0, Lio/dcloud/application/DCLoudApplicationImpl;->nativeAppInfo:Lio/dcloud/e/b/b;

    return-object p1
.end method

.method public init(Landroid/app/Application;Z)V
    .locals 3

    .line 1
    iput-boolean p2, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isUniMP:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 4
    invoke-static {p1, v0}, Lio/dcloud/common/util/language/LanguageUtil;->updateContextLanguageAfterO(Landroid/content/Context;Z)Landroid/content/Context;

    .line 7
    :cond_0
    iget-boolean v1, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isUniMP:Z

    sput-boolean v1, Lio/dcloud/feature/internal/sdk/SDK;->isUniMP:Z

    .line 8
    invoke-virtual {p0, p1}, Lio/dcloud/application/DCLoudApplicationImpl;->onCreate(Landroid/app/Application;)V

    .line 9
    invoke-static {p1}, Lio/dcloud/common/util/BaseInfo;->isBase(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isInit:Z

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {p0, p1, v0}, Lio/dcloud/application/DCLoudApplicationImpl;->webviewSetPath(Landroid/content/Context;Z)V

    :cond_1
    if-eqz p2, :cond_2

    .line 13
    invoke-static {}, Lio/dcloud/common/adapter/util/DeviceInfo;->initGsmCdmaCell()V

    .line 14
    invoke-static {p1}, Lio/dcloud/common/util/TelephonyUtil;->updateIMEI(Landroid/content/Context;)Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public isInit()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isInit:Z

    return v0
.end method

.method public isMainProcess(Landroid/content/Context;Z)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/RuningAcitvityUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    iget-boolean v1, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isUniMP:Z

    if-nez v1, :cond_0

    .line 5
    invoke-static {p1}, Lio/dcloud/common/util/RuningAcitvityUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":unimp"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iput-boolean v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isUniMP:Z

    .line 7
    sput-boolean v0, Lio/dcloud/feature/internal/sdk/SDK;->isUniMP:Z

    :cond_0
    move v0, p2

    :cond_1
    return v0
.end method

.method public onApp2Back()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->activityCallbacks:Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->onApp2Back()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/app/Application;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isInit:Z

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    :try_start_0
    invoke-static {p1}, Lio/dcloud/common/util/NativeCrashManager;->initNativeCrash(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 12
    :goto_0
    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/AndroidResources;->initAndroidResources(Landroid/content/Context;)V

    .line 13
    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->parseControl()V

    const/4 v0, 0x0

    .line 14
    invoke-static {p1, v0}, Lio/dcloud/common/adapter/util/DeviceInfo;->initPath(Landroid/content/Context;Z)V

    .line 16
    invoke-static {p1}, Lio/dcloud/common/util/AppRuntime;->hasPrivacyForNotShown(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 18
    invoke-static {p1}, Lio/dcloud/common/adapter/util/DeviceInfo;->init(Landroid/content/Context;)V

    .line 20
    invoke-static {p1}, Lio/dcloud/common/adapter/util/DeviceInfo;->initPath(Landroid/content/Context;)V

    .line 22
    :cond_1
    invoke-virtual {p0, p1, v1}, Lio/dcloud/application/DCLoudApplicationImpl;->isMainProcess(Landroid/content/Context;Z)Z

    move-result v3

    .line 23
    invoke-virtual {p0, p1, v1}, Lio/dcloud/application/DCLoudApplicationImpl;->webviewSetPath(Landroid/content/Context;Z)V

    .line 24
    iput-boolean v2, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isInit:Z

    .line 25
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->closeAndroidPDialog()V

    .line 26
    invoke-virtual {p0, p1}, Lio/dcloud/application/DCLoudApplicationImpl;->getNativeInfo(Landroid/app/Application;)Lio/dcloud/common/DHInterface/INativeAppInfo;

    move-result-object v4

    .line 27
    invoke-static {v4}, Lio/dcloud/f/a;->a(Lio/dcloud/common/DHInterface/INativeAppInfo;)V

    .line 28
    sput-boolean v2, Lio/dcloud/common/util/BaseInfo;->isFirstRun:Z

    .line 30
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v5

    if-nez v5, :cond_2

    if-nez v3, :cond_3

    :cond_2
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isUniMP:Z

    if-eqz v5, :cond_6

    .line 33
    :cond_3
    sget-boolean v3, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    if-eqz v3, :cond_4

    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lio/dcloud/application/DCLoudApplicationImpl;->isUniMP:Z

    if-eqz v3, :cond_5

    .line 34
    :cond_4
    invoke-static {v4}, Lio/dcloud/common/util/AppRuntime;->initWeex(Lio/dcloud/common/DHInterface/INativeAppInfo;)V

    .line 36
    :cond_5
    invoke-direct {p0, p1, v1}, Lio/dcloud/application/DCLoudApplicationImpl;->initX5(Landroid/app/Application;Z)V

    goto :goto_1

    :cond_6
    if-nez v3, :cond_7

    .line 38
    invoke-static {p1}, Lio/dcloud/common/util/AppRuntime;->onSubProcess(Landroid/app/Application;)V

    .line 40
    :cond_7
    :goto_1
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v1

    if-nez v1, :cond_8

    .line 41
    invoke-static {p1}, Lio/dcloud/a;->a(Landroid/app/Application;)V

    .line 44
    :cond_8
    iput-object p1, p0, Lio/dcloud/application/DCLoudApplicationImpl;->mApplication:Landroid/content/Context;

    .line 46
    invoke-virtual {p0, p1}, Lio/dcloud/application/DCLoudApplicationImpl;->setContext(Landroid/content/Context;)V

    .line 47
    invoke-static {p1}, Lio/dcloud/common/adapter/util/UEH;->catchUncaughtException(Landroid/content/Context;)V

    .line 48
    invoke-static {p1}, Lio/dcloud/common/adapter/util/UEH;->uploadNativeUncaughtException(Landroid/content/Context;)V

    .line 52
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->isSupportOaid()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    :try_start_1
    const-string v1, "com.bun.miitmdid.core.JLibrary"

    .line 55
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v4, "InitEntry"

    :try_start_2
    new-array v5, v2, [Ljava/lang/Class;

    .line 56
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v0

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    .line 59
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 63
    :catch_1
    :cond_9
    new-instance v0, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;

    invoke-direct {v0, p0, v3}, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;-><init>(Lio/dcloud/application/DCLoudApplicationImpl;Lio/dcloud/application/DCLoudApplicationImpl$1;)V

    iput-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->activityCallbacks:Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;

    .line 64
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 66
    invoke-virtual {p0}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/dcloud/application/DCLoudApplicationImpl;->initLanguageConfig(Landroid/content/Context;)V

    .line 68
    invoke-static {}, Lio/dcloud/common/ui/b;->a()Lio/dcloud/common/ui/b;

    move-result-object p1

    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/dcloud/common/ui/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public removeActivityStatusListener(Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->activityCallbacks:Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->removeListener(Lio/dcloud/application/DCLoudApplicationImpl$ActivityStatusListener;)V

    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->mApplication:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/dcloud/application/DCLoudApplicationImpl;->mApplication:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public stopActivityStatusListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/application/DCLoudApplicationImpl;->activityCallbacks:Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/dcloud/application/DCLoudApplicationImpl$ActivityCallbacks;->stopListener()V

    :cond_0
    return-void
.end method

.method protected supportMultiDex(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    const-string v0, "androidx.multidex.MultiDex"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "install"

    const/4 v2, 0x1

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method public webviewSetPath(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/dcloud/application/DCLoudApplicationImpl;->isMainProcess(Landroid/content/Context;Z)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    invoke-static {p1}, Lio/dcloud/common/util/RuningAcitvityUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
