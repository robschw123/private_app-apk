.class public Lcom/taobao/weex/bridge/WXBridgeManager;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/taobao/weex/utils/batch/BactchExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;,
        Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    }
.end annotation


# static fields
.field public static final ARGS:Ljava/lang/String; = "args"

.field private static final BRIDGE_LOG_SWITCH:Z = false

.field private static final BUNDLE_TYPE:Ljava/lang/String; = "bundleType"

.field public static final COMPONENT:Ljava/lang/String; = "component"

.field private static final CRASHREINIT:I = 0x32

.field private static GLOBAL_CONFIG_KEY:Ljava/lang/String; = "global_switch_config"

.field public static final INITLOGFILE:Ljava/lang/String; = "/jsserver_start.log"

.field private static final INIT_FRAMEWORK_OK:I = 0x1

.field public static final KEY_ARGS:Ljava/lang/String; = "args"

.field public static final KEY_METHOD:Ljava/lang/String; = "method"

.field public static final KEY_PARAMS:Ljava/lang/String; = "params"

.field private static LOW_MEM_VALUE:J = 0x78L

.field public static final METHD_COMPONENT_HOOK_SYNC:Ljava/lang/String; = "componentHook"

.field public static final METHD_FIRE_EVENT_SYNC:Ljava/lang/String; = "fireEventSync"

.field public static final METHOD:Ljava/lang/String; = "method"

.field public static final METHOD_CALLBACK:Ljava/lang/String; = "callback"

.field public static final METHOD_CALL_JS:Ljava/lang/String; = "callJS"

.field public static final METHOD_CHECK_APPKEY:Ljava/lang/String; = "dc_checkappkey"

.field public static final METHOD_CREATE_INSTANCE:Ljava/lang/String; = "createInstance"

.field public static final METHOD_CREATE_INSTANCE_CONTEXT:Ljava/lang/String; = "createInstanceContext"

.field public static final METHOD_CREATE_PAGE_WITH_CONTENT:Ljava/lang/String; = "CreatePageWithContent"

.field public static final METHOD_DESTROY_INSTANCE:Ljava/lang/String; = "destroyInstance"

.field public static final METHOD_FIRE_EVENT:Ljava/lang/String; = "fireEvent"

.field public static final METHOD_FIRE_EVENT_ON_DATA_RENDER_NODE:Ljava/lang/String; = "fireEventOnDataRenderNode"

.field private static final METHOD_JSFM_NOT_INIT_IN_EAGLE_MODE:Ljava/lang/String; = "JsfmNotInitInEagleMode"

.field public static final METHOD_NOTIFY_SERIALIZE_CODE_CACHE:Ljava/lang/String; = "notifySerializeCodeCache"

.field public static final METHOD_NOTIFY_TRIM_MEMORY:Ljava/lang/String; = "notifyTrimMemory"

.field private static final METHOD_POST_TASK_TO_MSG_LOOP:Ljava/lang/String; = "PostTaskToMsgLoop"

.field public static final METHOD_REFRESH_INSTANCE:Ljava/lang/String; = "refreshInstance"

.field public static final METHOD_REGISTER_COMPONENTS:Ljava/lang/String; = "registerComponents"

.field public static final METHOD_REGISTER_MODULES:Ljava/lang/String; = "registerModules"

.field public static final METHOD_SET_TIMEOUT:Ljava/lang/String; = "setTimeoutCallback"

.field public static final METHOD_UPDATE_COMPONENT_WITH_DATA:Ljava/lang/String; = "UpdateComponentData"

.field public static final MODULE:Ljava/lang/String; = "module"

.field private static final NON_CALLBACK:Ljava/lang/String; = "-1"

.field public static final OPTIONS:Ljava/lang/String; = "options"

.field public static final REF:Ljava/lang/String; = "ref"

.field private static final RENDER_STRATEGY:Ljava/lang/String; = "renderStrategy"

.field private static final UNDEFINED:Ljava/lang/String; = "undefined"

.field private static clazz_debugProxy:Ljava/lang/Class; = null

.field private static crashUrl:Ljava/lang/String; = null

.field private static globalConfig:Ljava/lang/String; = "none"

.field private static volatile isJsEngineMultiThreadEnable:Z = false

.field private static volatile isSandBoxContext:Z = true

.field private static isUseSingleProcess:Z = false

.field private static lastCrashTime:J = 0x0L

.field static volatile mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager; = null

.field private static volatile mInit:Z = false

.field private static mRaxApi:Ljava/lang/String; = null

.field private static mWeexCoreEnvOptions:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile reInitCount:I = 0x1

.field public static sInitFrameWorkMsg:Ljava/lang/StringBuilder;

.field public static sInitFrameWorkTimeOrigin:J


# instance fields
.field private mDestroyedInstanceId:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitParams:Lcom/taobao/weex/bridge/WXParams;

.field private mInterceptor:Lcom/taobao/weex/utils/batch/Interceptor;

.field mJSHandler:Landroid/os/Handler;

.field private mJSThread:Lcom/taobao/weex/common/WXThread;

.field private mLodBuilder:Ljava/lang/StringBuilder;

.field private mMock:Z

.field private mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/bridge/WXHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/taobao/weex/bridge/WXHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mRegisterComponentFailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRegisterModuleFailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRegisterServiceFailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWXBridge:Lcom/taobao/weex/common/IWXBridge;

.field private mWxDebugProxy:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWeexCoreEnvOptions:Ljava/util/Map;

    .line 2089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->sInitFrameWorkMsg:Ljava/lang/StringBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    new-instance v0, Lcom/taobao/weex/bridge/WXHashMap;

    invoke-direct {v0}, Lcom/taobao/weex/bridge/WXHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    const/4 v0, 0x0

    .line 256
    iput-boolean v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mMock:Z

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterComponentFailList:Ljava/util/List;

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterServiceFailList:Ljava/util/List;

    .line 261
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    .line 267
    sget-boolean v0, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    invoke-direct {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->initWXBridge(Z)V

    .line 268
    new-instance v0, Lcom/taobao/weex/common/WXThread;

    const-string v1, "WeexJSBridgeThread"

    invoke-direct {v0, v1, p0}, Lcom/taobao/weex/common/WXThread;-><init>(Ljava/lang/String;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    .line 269
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/common/IWXBridge;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/weex/bridge/WXBridgeManager;Z)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setJSFrameworkInit(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeDestroyInstance(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/taobao/weex/bridge/WXBridgeManager;)Ljava/util/List;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeRegisterModules(Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/taobao/weex/bridge/WXBridgeManager;)Ljava/util/List;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterComponentFailList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeRegisterComponents(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/taobao/weex/bridge/WXBridgeManager;)Ljava/util/List;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterServiceFailList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJSService(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1700()Ljava/lang/String;
    .locals 1

    .line 159
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->globalConfig:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 159
    sget-boolean v0, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z

    return v0
.end method

.method static synthetic access$300(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->initFramework(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/bridge/WXHashMap;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 159
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJSOnInstance(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Lcom/taobao/weex/bridge/ResultCallback;Z)V
    .locals 0

    .line 159
    invoke-direct/range {p0 .. p6}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJSWithCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Lcom/taobao/weex/bridge/ResultCallback;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeRefreshInstance(Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V

    return-void
.end method

.method static synthetic access$800(Lcom/taobao/weex/bridge/WXBridgeManager;Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeCreateInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->removeTaskByInstance(Ljava/lang/String;)V

    return-void
.end method

.method private varargs addJSEventTask(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "method",
            "instanceId",
            "params",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1214
    new-instance v6, Lcom/taobao/weex/bridge/WXBridgeManager$13;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager$13;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;[Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private varargs addJSTask(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "method",
            "instanceId",
            "args"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1248
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->addJSEventTask(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V

    return-void
.end method

.method public static argsToJSON([Lcom/taobao/weex/bridge/WXJSObject;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "args"
        }
    .end annotation

    .line 2067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 2068
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2069
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 2070
    invoke-static {v3}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->fromObjectToJSONString(Lcom/taobao/weex/bridge/WXJSObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    .line 2071
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "]"

    .line 2073
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2074
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private assembleDefaultOptions()Lcom/taobao/weex/bridge/WXParams;
    .locals 5

    .line 2264
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->checkJsEngineMultiThread()V

    .line 2266
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getConfig()Ljava/util/Map;

    move-result-object v0

    .line 2267
    new-instance v1, Lcom/taobao/weex/bridge/WXParams;

    invoke-direct {v1}, Lcom/taobao/weex/bridge/WXParams;-><init>()V

    const-string v2, "os"

    .line 2268
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setPlatform(Ljava/lang/String;)V

    const-string v2, "cacheDir"

    .line 2269
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setCacheDir(Ljava/lang/String;)V

    const-string v2, "sysVersion"

    .line 2270
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setOsVersion(Ljava/lang/String;)V

    const-string v2, "appVersion"

    .line 2271
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setAppVersion(Ljava/lang/String;)V

    const-string/jumbo v2, "weexVersion"

    .line 2272
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setWeexVersion(Ljava/lang/String;)V

    const-string v2, "sysModel"

    .line 2273
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setDeviceModel(Ljava/lang/String;)V

    const-string v2, "infoCollect"

    .line 2274
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setShouldInfoCollect(Ljava/lang/String;)V

    const-string v2, "logLevel"

    .line 2275
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setLogLevel(Ljava/lang/String;)V

    const-string v2, "layoutDirection"

    .line 2276
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setLayoutDirection(Ljava/lang/String;)V

    .line 2277
    sget-boolean v2, Lcom/taobao/weex/bridge/WXBridgeManager;->isUseSingleProcess:Z

    const-string v3, "true"

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    const-string v2, "false"

    :goto_0
    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setUseSingleProcess(Ljava/lang/String;)V

    .line 2278
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/WXEnvironment;->getCrashFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setCrashFilePath(Ljava/lang/String;)V

    .line 2279
    sget-object v2, Lcom/taobao/weex/WXEnvironment;->CORE_JSB_SO_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setLibJsbPath(Ljava/lang/String;)V

    .line 2280
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getLibJssRealPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setLibJssPath(Ljava/lang/String;)V

    .line 2281
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getLibJssIcuPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setLibIcuPath(Ljava/lang/String;)V

    .line 2282
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getLibLdPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setLibLdPath(Ljava/lang/String;)V

    .line 2283
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getLibJScRealPath()Ljava/lang/String;

    move-result-object v2

    .line 2284
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v2, ""

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setLibJscPath(Ljava/lang/String;)V

    const-string v2, "appName"

    .line 2285
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2286
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2287
    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setAppName(Ljava/lang/String;)V

    :cond_2
    const-string v2, "deviceWidth"

    .line 2289
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v2, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {v2}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXParams;->setDeviceWidth(Ljava/lang/String;)V

    const-string v2, "deviceHeight"

    .line 2290
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v0}, Lcom/taobao/weex/bridge/WXParams;->setDeviceHeight(Ljava/lang/String;)V

    .line 2291
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getCustomOptions()Ljava/util/Map;

    move-result-object v0

    .line 2292
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->jsEngineMultiThreadEnable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "enableBackupThread"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2293
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getWXJscProcessManager()Lcom/taobao/weex/adapter/IWXJscProcessManager;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2295
    invoke-interface {v2}, Lcom/taobao/weex/adapter/IWXJscProcessManager;->enableBackUpThreadCache()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "enableBackupThreadCache"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2298
    :cond_5
    sget-boolean v2, Lcom/taobao/weex/WXEnvironment;->sUseRunTimeApi:Z

    if-nez v2, :cond_6

    const-string v2, "__enable_native_promise__"

    .line 2299
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2303
    :cond_6
    invoke-virtual {v1, v0}, Lcom/taobao/weex/bridge/WXParams;->setOptions(Ljava/util/Map;)V

    .line 2304
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->needInitV8()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/taobao/weex/bridge/WXParams;->setNeedInitV8(Z)V

    .line 2305
    iput-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mInitParams:Lcom/taobao/weex/bridge/WXParams;

    return-object v1
.end method

.method private varargs asyncCallJSEventWithResult(Lcom/taobao/weex/bridge/EventResult;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "eventCallback",
            "method",
            "instanceId",
            "params",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/bridge/EventResult;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1165
    new-instance v7, Lcom/taobao/weex/bridge/WXBridgeManager$12;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/taobao/weex/bridge/WXBridgeManager$12;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;[Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/EventResult;)V

    invoke-virtual {p0, v7}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkMainThread()Z
    .locals 2

    .line 1364
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private doReportJSException(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "function",
            "reportCode",
            "exception"
        }
    .end annotation

    const-string v0, "\n"

    .line 2638
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/WXSDKInstance;

    .line 2639
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getIWXJSExceptionAdapter()Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2643
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "instanceIdisNull"

    :cond_0
    const/4 v2, 0x0

    if-nez v1, :cond_4

    const-string v1, "initFramework"

    .line 2648
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2651
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/jsserver_start.log"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 2654
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2655
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2656
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    .line 2657
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2659
    :try_start_2
    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2660
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2662
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2663
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2665
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2666
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v4

    move-object v8, v4

    move-object v4, v1

    move-object v1, v8

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v4, v2

    .line 2668
    :goto_1
    :try_start_4
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v4

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_2
    move-object v1, v2

    .line 2671
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v3

    move-object v4, v1

    move-object v1, v3

    goto :goto_3

    :cond_3
    move-object v1, v2

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v4, v2

    .line 2674
    :goto_3
    :try_start_6
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v1

    goto :goto_4

    :catchall_4
    move-exception v1

    move-object v4, v2

    .line 2678
    :goto_4
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :goto_5
    move-object v1, v4

    .line 2680
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 2681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportJSException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 2687
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2689
    invoke-virtual {p3}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 2687
    invoke-static {p1, p3, p2, p4, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    return-void
.end method

.method private execJSOnInstance(Lcom/taobao/weex/bridge/EventResult;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "eventCallback",
            "instanceId",
            "js",
            "type"
        }
    .end annotation

    .line 2029
    new-instance v6, Lcom/taobao/weex/bridge/WXBridgeManager$21;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager$21;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;ILcom/taobao/weex/bridge/EventResult;)V

    invoke-virtual {p0, v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private execRegisterFailTask()V
    .locals 4

    .line 2315
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2317
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 2318
    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-direct {p0, v3, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeRegisterModules(Ljava/util/Map;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2320
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2321
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2322
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2326
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterComponentFailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2328
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterComponentFailList:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeRegisterComponents(Ljava/util/List;Ljava/util/List;)V

    .line 2329
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterComponentFailList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2330
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2331
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterComponentFailList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2335
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterServiceFailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 2336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2337
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterServiceFailList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2338
    invoke-direct {p0, v2, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJSService(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 2340
    :cond_3
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterServiceFailList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2341
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 2342
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterServiceFailList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-void
.end method

.method private extractCallbackArgs(Ljava/lang/String;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1983
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 1984
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v2, "args"

    .line 1985
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 1986
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    return-object v0

    :cond_0
    const-string v3, "method"

    .line 1989
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "callback"

    .line 1990
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    .line 1994
    :cond_1
    new-instance p1, Landroid/util/Pair;

    new-instance v3, Landroid/util/Pair;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->getBooleanValue(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method private fireEventOnDataRenderNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "instanceId",
            "ref",
            "type",
            "data",
            "domChanges"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1336
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    new-instance v8, Lcom/taobao/weex/bridge/WXBridgeManager$14;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/bridge/WXBridgeManager$14;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v8}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 p2, 0x0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;
    .locals 2

    .line 273
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    if-nez v0, :cond_1

    .line 274
    const-class v0, Lcom/taobao/weex/bridge/WXBridgeManager;

    monitor-enter v0

    .line 275
    :try_start_0
    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    if-nez v1, :cond_0

    .line 276
    new-instance v1, Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-direct {v1}, Lcom/taobao/weex/bridge/WXBridgeManager;-><init>()V

    sput-object v1, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    .line 278
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 280
    :cond_1
    :goto_0
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    return-object v0
.end method

.method private getNextTick(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "instanceId"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "{}"

    aput-object v2, v0, v1

    const-string v1, "callback"

    .line 1063
    invoke-direct {p0, v1, p1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->addJSTask(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x6

    .line 1064
    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->sendMessage(Ljava/lang/String;I)V

    return-void
.end method

.method private getNextTick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "instanceId",
            "callback"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    const-string/jumbo v1, "{}"

    aput-object v1, v0, p2

    const-string p2, "callback"

    .line 1058
    invoke-direct {p0, p2, p1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->addJSTask(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x6

    .line 1059
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->sendMessage(Ljava/lang/String;I)V

    return-void
.end method

.method private initFramework(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "framework"
        }
    .end annotation

    .line 2092
    new-instance v0, Lcom/taobao/weex/utils/tools/LogDetail;

    invoke-direct {v0}, Lcom/taobao/weex/utils/tools/LogDetail;-><init>()V

    const-string v1, "initFramework"

    .line 2093
    invoke-virtual {v0, v1}, Lcom/taobao/weex/utils/tools/LogDetail;->name(Ljava/lang/String;)V

    .line 2094
    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/LogDetail;->taskStart()V

    .line 2095
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->isSoInitialized()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v2

    if-nez v2, :cond_c

    .line 2096
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/taobao/weex/bridge/WXBridgeManager;->sInitFrameWorkTimeOrigin:J

    .line 2097
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "weex JS framework from assets"

    .line 2099
    invoke-static {v2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 2101
    new-instance v2, Lcom/taobao/weex/utils/tools/LogDetail;

    invoke-direct {v2}, Lcom/taobao/weex/utils/tools/LogDetail;-><init>()V

    const-string v3, "loadJSFramework"

    .line 2102
    invoke-virtual {v2, v3}, Lcom/taobao/weex/utils/tools/LogDetail;->name(Ljava/lang/String;)V

    .line 2103
    invoke-virtual {v2}, Lcom/taobao/weex/utils/tools/LogDetail;->taskStart()V

    .line 2105
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getIWXJsFileLoaderAdapter()Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;

    move-result-object v3

    .line 2107
    sget-boolean v4, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z

    if-nez v4, :cond_1

    if-eqz v3, :cond_0

    .line 2109
    invoke-interface {v3}, Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;->loadJsFramework()Ljava/lang/String;

    move-result-object p1

    .line 2112
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2113
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string v3, "main.js"

    invoke-static {v3, p1}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 2117
    invoke-interface {v3}, Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;->loadJsFrameworkForSandBox()Ljava/lang/String;

    move-result-object p1

    .line 2120
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2121
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string/jumbo v3, "weex-main-jsfm.js"

    invoke-static {v3, p1}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 2124
    :cond_3
    :goto_0
    sget-object v3, Lcom/taobao/weex/bridge/WXBridgeManager;->sInitFrameWorkMsg:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "| weex JS framework from assets, isSandBoxContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2125
    invoke-virtual {v2}, Lcom/taobao/weex/utils/tools/LogDetail;->taskEnd()V

    .line 2126
    iget-object v3, v2, Lcom/taobao/weex/utils/tools/LogDetail;->info:Lcom/taobao/weex/utils/tools/Info;

    iget-object v3, v3, Lcom/taobao/weex/utils/tools/Info;->taskName:Ljava/lang/String;

    iget-object v2, v2, Lcom/taobao/weex/utils/tools/LogDetail;->time:Lcom/taobao/weex/utils/tools/Time;

    iget-wide v4, v2, Lcom/taobao/weex/utils/tools/Time;->execTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v3, v2}, Lio/dcloud/weex/WXDotDataUtil;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    const-string v2, "jsEngine"

    const-string v3, "v8"

    .line 2128
    invoke-static {v2, v3}, Lio/dcloud/weex/WXDotDataUtil;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 2130
    invoke-direct {p0, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setJSFrameworkInit(Z)V

    .line 2131
    sget-object p1, Lcom/taobao/weex/bridge/WXBridgeManager;->sInitFrameWorkMsg:Ljava/lang/StringBuilder;

    const-string/jumbo v0, "| framework isEmpty "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2132
    sget-object p1, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JS_FRAMEWORK:Lcom/taobao/weex/common/WXErrorCode;

    const/4 v0, 0x0

    const-string v2, "framework is empty!! "

    invoke-static {v0, p1, v1, v2, v0}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_5
    const/4 v1, 0x1

    .line 2137
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2139
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/taobao/weex/IWXStatisticsListener;->onJsFrameworkStart()V

    .line 2140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    sput-wide v6, Lcom/taobao/weex/WXEnvironment;->sJSFMStartListenerTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2142
    :try_start_1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getIWXUserTrackAdapter()Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 2144
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "time"

    .line 2145
    sget-wide v5, Lcom/taobao/weex/WXEnvironment;->sJSFMStartListenerTime:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2146
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v5

    const-string v6, "sJSFMStartListener"

    const-string v7, "counter"

    const/4 v8, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/taobao/weex/adapter/IWXUserTrackAdapter;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXPerformance;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 2149
    :try_start_2
    invoke-static {v2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 2153
    :cond_6
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v2, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2156
    :try_start_3
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v6

    .line 2158
    :try_start_4
    invoke-static {v6}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2162
    :goto_2
    :try_start_5
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v7, 0x10

    if-ge v6, v7, :cond_7

    goto :goto_3

    :catch_2
    move-exception v3

    .line 2166
    :try_start_6
    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_7
    const/4 v3, 0x1

    .line 2168
    :goto_3
    sget-object v6, Lcom/taobao/weex/bridge/WXBridgeManager;->sInitFrameWorkMsg:Ljava/lang/StringBuilder;

    const-string v7, " | pieSupport:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2169
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[WXBridgeManager] initFrameworkEnv crashFile:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " pieSupport:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 2171
    new-instance v6, Lcom/taobao/weex/utils/tools/LogDetail;

    invoke-direct {v6}, Lcom/taobao/weex/utils/tools/LogDetail;-><init>()V

    const-string v7, "native initFrameworkEnv"

    .line 2172
    invoke-virtual {v6, v7}, Lcom/taobao/weex/utils/tools/LogDetail;->name(Ljava/lang/String;)V

    .line 2173
    invoke-virtual {v6}, Lcom/taobao/weex/utils/tools/LogDetail;->taskStart()V

    .line 2174
    iget-object v7, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->assembleDefaultOptions()Lcom/taobao/weex/bridge/WXParams;

    move-result-object v8

    invoke-interface {v7, p1, v8, v2, v3}, Lcom/taobao/weex/common/IWXBridge;->initFrameworkEnv(Ljava/lang/String;Lcom/taobao/weex/bridge/WXParams;Ljava/lang/String;Z)I

    move-result p1

    if-ne p1, v1, :cond_9

    .line 2175
    invoke-virtual {v6}, Lcom/taobao/weex/utils/tools/LogDetail;->taskEnd()V

    .line 2176
    iget-object p1, v6, Lcom/taobao/weex/utils/tools/LogDetail;->info:Lcom/taobao/weex/utils/tools/Info;

    iget-object p1, p1, Lcom/taobao/weex/utils/tools/Info;->taskName:Ljava/lang/String;

    iget-object v2, v6, Lcom/taobao/weex/utils/tools/LogDetail;->time:Lcom/taobao/weex/utils/tools/Time;

    iget-wide v2, v2, Lcom/taobao/weex/utils/tools/Time;->execTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, v2}, Lio/dcloud/weex/WXDotDataUtil;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/taobao/weex/WXEnvironment;->sJSLibInitTime:J

    .line 2178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/taobao/weex/WXEnvironment;->sSDKInitStart:J

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/taobao/weex/WXEnvironment;->sSDKInitTime:J

    .line 2179
    invoke-direct {p0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setJSFrameworkInit(Z)V

    .line 2180
    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/LogDetail;->taskEnd()V

    .line 2181
    iget-object p1, v0, Lcom/taobao/weex/utils/tools/LogDetail;->info:Lcom/taobao/weex/utils/tools/Info;

    iget-object p1, p1, Lcom/taobao/weex/utils/tools/Info;->taskName:Ljava/lang/String;

    iget-object v0, v0, Lcom/taobao/weex/utils/tools/LogDetail;->time:Lcom/taobao/weex/utils/tools/Time;

    iget-wide v2, v0, Lcom/taobao/weex/utils/tools/Time;->execTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lio/dcloud/weex/WXDotDataUtil;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2182
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 2183
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/taobao/weex/IWXStatisticsListener;->onJsFrameworkReady()V

    .line 2186
    :cond_8
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->execRegisterFailTask()V

    .line 2187
    sput-boolean v1, Lcom/taobao/weex/WXEnvironment;->JsFrameworkInit:Z

    .line 2188
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->registerDomModule()V

    .line 2189
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->trackComponentAndModulesTime()V

    goto :goto_4

    .line 2191
    :cond_9
    sget-object p1, Lcom/taobao/weex/bridge/WXBridgeManager;->sInitFrameWorkMsg:Ljava/lang/StringBuilder;

    const-string v0, " | ExecuteJavaScript fail, reInitCount"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2192
    sget p1, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    if-le p1, v1, :cond_a

    const-string p1, "[WXBridgeManager] invokeReInitFramework  ExecuteJavaScript fail"

    .line 2193
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    const-string p1, "[WXBridgeManager] invokeInitFramework  ExecuteJavaScript fail"

    .line 2195
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 2199
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->sInitFrameWorkMsg:Ljava/lang/StringBuilder;

    const-string v2, " | invokeInitFramework exception "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2200
    sget v0, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    const-string v2, "[WXBridgeManager] invokeInitFramework "

    if-le v0, v1, :cond_b

    .line 2201
    invoke-static {v2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 2203
    :cond_b
    invoke-static {v2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    :goto_4
    return-void
.end method

.method private initWXBridge(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remoteDebug"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 398
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    sput-boolean v0, Lcom/taobao/weex/WXEnvironment;->sDebugServerConnectable:Z

    .line 402
    :cond_0
    sget-boolean v1, Lcom/taobao/weex/WXEnvironment;->sDebugServerConnectable:Z

    const-string v2, "com.taobao.weex.devtools.debug.DebugServerProxy"

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 403
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 405
    :try_start_0
    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    if-nez v1, :cond_1

    .line 406
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    .line 408
    :cond_1
    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    if-eqz v1, :cond_4

    .line 410
    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Ljava/lang/Object;

    if-eqz v4, :cond_3

    const-string v4, "isActive"

    new-array v5, v3, [Ljava/lang/Class;

    .line 412
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 414
    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Ljava/lang/Object;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    .line 421
    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v3

    const-class v6, Lcom/taobao/weex/common/IWXDebugConfig;

    aput-object v6, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    if-eqz v1, :cond_4

    new-array v4, v4, [Ljava/lang/Object;

    .line 423
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v5

    aput-object v5, v4, v3

    new-instance v5, Lcom/taobao/weex/bridge/WXBridgeManager$4;

    invoke-direct {v5, p0}, Lcom/taobao/weex/bridge/WXBridgeManager$4;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V

    aput-object v5, v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 436
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    const-string v1, "start"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 438
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Ljava/lang/Object;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    :catchall_0
    :cond_4
    invoke-static {}, Lcom/taobao/weex/bridge/WXServiceManager;->execAllCacheJsService()V

    goto :goto_2

    :cond_5
    const-string v0, "WXBridgeManager"

    const-string v1, "WXEnvironment.sApplication is null, skip init Inspector"

    .line 449
    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    if-eqz p1, :cond_8

    .line 452
    iget-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Ljava/lang/Object;

    if-eqz p1, :cond_8

    .line 454
    :try_start_1
    sget-object p1, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    if-nez p1, :cond_7

    .line 455
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sput-object p1, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    .line 457
    :cond_7
    sget-object p1, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    if-eqz p1, :cond_9

    const-string v0, "getWXBridge"

    new-array v1, v3, [Ljava/lang/Class;

    .line 458
    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 460
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Ljava/lang/Object;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/common/IWXBridge;

    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 467
    :cond_8
    new-instance p1, Lcom/taobao/weex/bridge/WXBridge;

    invoke-direct {p1}, Lcom/taobao/weex/bridge/WXBridge;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    :catchall_1
    :cond_9
    :goto_3
    return-void
.end method

.method private invokeCallJSBatch(Landroid/os/Message;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 2221
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 2229
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2232
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    invoke-virtual {v1}, Lcom/taobao/weex/bridge/WXHashMap;->getInstanceStack()Ljava/util/Stack;

    move-result-object v1

    .line 2233
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move-object v4, v0

    :goto_0
    if-ltz v2, :cond_2

    .line 2235
    invoke-virtual {v1, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 2236
    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    invoke-virtual {v4, p1}, Lcom/taobao/weex/bridge/WXHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2237
    move-object v5, v4

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 2242
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    new-array v4, v2, [Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v5, 0x0

    .line 2244
    new-instance v6, Lcom/taobao/weex/bridge/WXJSObject;

    invoke-direct {v6, v2, p1}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    aput-object v6, v4, v5

    .line 2246
    invoke-static {v1}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->toWsonOrJsonWXJSObject(Ljava/lang/Object;)Lcom/taobao/weex/bridge/WXJSObject;

    move-result-object v1

    aput-object v1, v4, v3

    .line 2248
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "callJS"

    invoke-direct {p0, p1, v0, v1, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    const-string v1, "WXBridgeManager"

    .line 2251
    invoke-static {v1, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeCallJSBatch#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2253
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JS_FRAMEWORK:Lcom/taobao/weex/common/WXErrorCode;

    const-string v2, "invokeCallJSBatch"

    invoke-static {v0, v1, v2, p1, v0}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2258
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    invoke-virtual {p1}, Lcom/taobao/weex/bridge/WXHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 2259
    iget-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    return-void

    .line 2222
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WXBridgeManager] invokeCallJSBatch: framework.js uninitialized!!  message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private invokeCreateInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "template",
            "options",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/WXSDKInstance;",
            "Lcom/taobao/weex/Script;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p1

    const-string v1, "env"

    const-string/jumbo v9, "wxEndLoadBundle"

    const-string v2, "extraOption"

    const-string v3, "bundleType"

    .line 1598
    invoke-direct/range {p0 .. p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Lcom/taobao/weex/WXSDKInstance;)Z

    move-result v0

    const-string v4, ""

    if-nez v0, :cond_0

    .line 1599
    invoke-direct {p0, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->initFramework(Ljava/lang/String;)V

    .line 1602
    :cond_0
    iget-boolean v0, v7, Lcom/taobao/weex/bridge/WXBridgeManager;->mMock:Z

    if-eqz v0, :cond_1

    .line 1603
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->mock(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1605
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Lcom/taobao/weex/WXSDKInstance;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1607
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1608
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1609
    invoke-virtual {v1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    .line 1607
    invoke-virtual {v8, v0, v1}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[WXBridgeManager] invokeCreateInstance: framework.js uninitialized."

    .line 1611
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 1615
    :cond_2
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->registerWhenCreateInstance()V

    .line 1618
    :try_start_0
    sget-object v5, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Others:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1620
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1621
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/taobao/weex/Script;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->getBundleType(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    move-result-object v5

    .line 1623
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1624
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "end getBundleType type:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " time:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v12, v10

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1628
    :try_start_2
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_3
    :goto_0
    if-nez p3, :cond_4

    .line 1633
    :try_start_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v6, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v6, p3

    goto :goto_3

    :cond_4
    move-object/from16 v6, p3

    .line 1636
    :goto_1
    :try_start_4
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1638
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Vue:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string v10, "Others"

    if-ne v5, v0, :cond_5

    :try_start_5
    const-string v0, "Vue"

    .line 1639
    invoke-interface {v6, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1640
    :cond_5
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Rax:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    if-ne v5, v0, :cond_6

    const-string v0, "Rax"

    .line 1641
    invoke-interface {v6, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1643
    :cond_6
    invoke-interface {v6, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1645
    :goto_2
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1646
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_7

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v0, "other"

    :cond_7
    if-eqz v0, :cond_8

    .line 1651
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v3

    const-string/jumbo v10, "wxBundleType"

    invoke-virtual {v3, v10, v0}, Lcom/taobao/weex/performance/WXInstanceApm;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1654
    :cond_8
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1655
    iget-object v0, v7, Lcom/taobao/weex/bridge/WXBridgeManager;->mInitParams:Lcom/taobao/weex/bridge/WXParams;

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXParams;->toMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    .line 1658
    :goto_3
    :try_start_6
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 1660
    :cond_9
    :goto_4
    iput-object v5, v8, Lcom/taobao/weex/WXSDKInstance;->bundleType:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    .line 1661
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 1667
    new-instance v0, Lcom/taobao/weex/bridge/WXJSObject;

    .line 1668
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 1669
    new-instance v1, Lcom/taobao/weex/bridge/WXJSObject;

    .line 1670
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/weex/Script;->getContent()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v3, v10}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    const/4 v10, 0x0

    if-eqz v6, :cond_a

    .line 1673
    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1674
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 1675
    invoke-interface {v6, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_a
    move-object v11, v10

    .line 1678
    :goto_5
    new-instance v2, Lcom/taobao/weex/bridge/WXJSObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const-string/jumbo v12, "{}"

    if-nez v11, :cond_b

    move-object v11, v12

    goto :goto_6

    .line 1680
    :cond_b
    :try_start_7
    invoke-static {v11}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :goto_6
    const/4 v13, 0x3

    invoke-direct {v2, v13, v11}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 1683
    new-instance v11, Lcom/taobao/weex/bridge/WXJSObject;

    if-nez v6, :cond_c

    move-object v6, v12

    goto :goto_7

    .line 1685
    :cond_c
    invoke-static {v6}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_7
    invoke-direct {v11, v13, v6}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 1686
    sget-boolean v6, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z

    invoke-virtual {p0, v6, v5, v11}, Lcom/taobao/weex/bridge/WXBridgeManager;->optionObjConvert(ZLcom/taobao/weex/bridge/WXBridgeManager$BundType;Lcom/taobao/weex/bridge/WXJSObject;)Lcom/taobao/weex/bridge/WXJSObject;

    move-result-object v6

    .line 1687
    new-instance v11, Lcom/taobao/weex/bridge/WXJSObject;

    if-nez p4, :cond_d

    goto :goto_8

    :cond_d
    move-object/from16 v12, p4

    .line 1688
    :goto_8
    invoke-direct {v11, v13, v12}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 1691
    sget-object v12, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Rax:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    if-eq v5, v12, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v12

    sget-object v14, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER:Lcom/taobao/weex/common/WXRenderStrategy;

    if-ne v12, v14, :cond_e

    goto :goto_9

    .line 1705
    :cond_e
    new-instance v12, Lcom/taobao/weex/bridge/WXJSObject;

    invoke-direct {v12, v3, v4}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    goto :goto_a

    .line 1692
    :cond_f
    :goto_9
    sget-object v4, Lcom/taobao/weex/bridge/WXBridgeManager;->mRaxApi:Ljava/lang/String;

    if-nez v4, :cond_11

    .line 1693
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getIWXJsFileLoaderAdapter()Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 1695
    invoke-interface {v4}, Lcom/taobao/weex/adapter/IWXJsFileLoaderAdapter;->loadRaxApi()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/taobao/weex/bridge/WXBridgeManager;->mRaxApi:Ljava/lang/String;

    .line 1698
    :cond_10
    sget-object v4, Lcom/taobao/weex/bridge/WXBridgeManager;->mRaxApi:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string/jumbo v4, "weex-rax-api.js"

    .line 1699
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v12

    invoke-static {v4, v12}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/taobao/weex/bridge/WXBridgeManager;->mRaxApi:Ljava/lang/String;

    .line 1702
    :cond_11
    new-instance v12, Lcom/taobao/weex/bridge/WXJSObject;

    sget-object v4, Lcom/taobao/weex/bridge/WXBridgeManager;->mRaxApi:Ljava/lang/String;

    invoke-direct {v12, v3, v4}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 1711
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v4

    sget-object v14, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER:Lcom/taobao/weex/common/WXRenderStrategy;

    if-ne v4, v14, :cond_12

    .line 1712
    new-instance v10, Lcom/taobao/weex/bridge/WXJSObject;

    sget-object v4, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER:Lcom/taobao/weex/common/WXRenderStrategy;

    invoke-virtual {v4}, Lcom/taobao/weex/common/WXRenderStrategy;->getFlag()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v3, v4}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    goto :goto_b

    .line 1713
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v4

    sget-object v14, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER_BINARY:Lcom/taobao/weex/common/WXRenderStrategy;

    if-ne v4, v14, :cond_13

    .line 1714
    new-instance v10, Lcom/taobao/weex/bridge/WXJSObject;

    sget-object v4, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER_BINARY:Lcom/taobao/weex/common/WXRenderStrategy;

    invoke-virtual {v4}, Lcom/taobao/weex/common/WXRenderStrategy;->getFlag()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v3, v4}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 1716
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/weex/Script;->getBinary()[B

    move-result-object v4

    iput-object v4, v1, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    goto :goto_b

    .line 1717
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v4

    sget-object v14, Lcom/taobao/weex/common/WXRenderStrategy;->JSON_RENDER:Lcom/taobao/weex/common/WXRenderStrategy;

    if-ne v4, v14, :cond_14

    .line 1718
    new-instance v10, Lcom/taobao/weex/bridge/WXJSObject;

    sget-object v4, Lcom/taobao/weex/common/WXRenderStrategy;->JSON_RENDER:Lcom/taobao/weex/common/WXRenderStrategy;

    invoke-virtual {v4}, Lcom/taobao/weex/common/WXRenderStrategy;->getFlag()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v3, v4}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    :cond_14
    :goto_b
    const/4 v4, 0x7

    new-array v14, v4, [Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v4, 0x0

    aput-object v0, v14, v4

    const/4 v0, 0x1

    aput-object v1, v14, v0

    aput-object v6, v14, v3

    aput-object v11, v14, v13

    const/4 v0, 0x4

    aput-object v12, v14, v0

    const/4 v0, 0x5

    aput-object v10, v14, v0

    const/4 v0, 0x6

    aput-object v2, v14, v0

    .line 1724
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/weex/Script;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/taobao/weex/WXSDKInstance;->setTemplate(Ljava/lang/String;)V

    .line 1726
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    .line 1730
    sget-boolean v0, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const-string v10, "Instance "

    if-nez v0, :cond_15

    .line 1731
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v0

    const-string v1, "!isSandBoxContext,and excute"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    .line 1732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Did Not Render in SandBox Mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 1733
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "createInstance"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, v14

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V

    return-void

    .line 1736
    :cond_15
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Vue:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    if-eq v5, v0, :cond_17

    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Rax:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    if-eq v5, v0, :cond_17

    .line 1737
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER:Lcom/taobao/weex/common/WXRenderStrategy;

    if-eq v0, v1, :cond_17

    .line 1738
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER_BINARY:Lcom/taobao/weex/common/WXRenderStrategy;

    if-eq v0, v1, :cond_17

    .line 1739
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/common/WXRenderStrategy;->JSON_RENDER:Lcom/taobao/weex/common/WXRenderStrategy;

    if-ne v0, v1, :cond_16

    goto :goto_c

    .line 1760
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "createInstance"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, v14

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V

    .line 1761
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    return-void

    .line 1740
    :cond_17
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getUniPagePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "createInstanceContext"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, v14

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeCreateInstanceContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)I

    move-result v0

    .line 1741
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    if-nez v0, :cond_18

    .line 1743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WXBridgeManager] invokeCreateInstance : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getTemplateInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1744
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Render error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 1745
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1746
    invoke-virtual {v1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1747
    invoke-virtual {v3}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1745
    invoke-virtual {v8, v1, v0}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_18
    return-void

    :catchall_3
    move-exception v0

    .line 1765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WXBridgeManager] invokeCreateInstance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1766
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/WXSDKInstance;->getTemplateInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1768
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1769
    invoke-virtual {v1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1770
    invoke-virtual {v3}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1768
    invoke-virtual {v8, v1, v2}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :goto_d
    return-void
.end method

.method private invokeDestroyInstance(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instanceId"
        }
    .end annotation

    .line 1883
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 1886
    new-instance v0, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    const/4 v1, 0x1

    new-array v6, v1, [Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v1, 0x0

    aput-object v0, v6, v1

    .line 1889
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v4, 0x0

    const-string v5, "destroyInstance"

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    .line 1890
    invoke-virtual/range {v2 .. v7}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeDestoryInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1894
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WXBridgeManager] invokeDestroyInstance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1895
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    const/4 v2, 0x0

    const-string v3, "invokeDestroyInstance"

    invoke-static {p1, v1, v3, v0, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1897
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "namespace",
            "function",
            "args"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1937
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V

    return-void
.end method

.method private invokeExecJSOnInstance(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "js",
            "type"
        }
    .end annotation

    .line 2040
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string v1, "execJSOnInstance >>>> instanceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2041
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 2042
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2044
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 2045
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/IWXBridge;->execJSOnInstance(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private invokeExecJSService(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "service",
            "receiver"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2402
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[WXBridgeManager] invoke execJSService: framework.js uninitialized."

    .line 2403
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 2404
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 2407
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->execJSService(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "[WXBridgeManager] invokeRegisterService:"

    .line 2409
    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2411
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "||"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "inputParams"

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2414
    sget-object p1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_JSSERVICE_EXECUTE:Lcom/taobao/weex/common/WXErrorCode;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_JSSERVICE_EXECUTE:Lcom/taobao/weex/common/WXErrorCode;

    .line 2417
    invoke-virtual {v3}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2419
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "invokeExecJSService"

    .line 2414
    invoke-static {v0, p1, v0, p2, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method private invokeExecJSWithCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Lcom/taobao/weex/bridge/ResultCallback;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "namespace",
            "function",
            "args",
            "callback",
            "logTaskDetail"
        }
    .end annotation

    .line 2052
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    .line 2061
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result p6

    if-nez p6, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result p6

    if-eqz p6, :cond_1

    .line 2062
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/taobao/weex/common/IWXBridge;->execJSWithCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Lcom/taobao/weex/bridge/ResultCallback;)V

    :cond_1
    return-void
.end method

.method private invokeInitFramework(Landroid/os/Message;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 2079
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2080
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 2083
    :goto_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->getAvailMemory(Landroid/content/Context;)J

    move-result-wide v0

    sget-wide v2, Lcom/taobao/weex/bridge/WXBridgeManager;->LOW_MEM_VALUE:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 2084
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->initFramework(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private invokeRefreshInstance(Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "refreshData"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1468
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    .line 1469
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    .line 1471
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1472
    invoke-virtual {p2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1473
    invoke-virtual {v3}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "invokeRefreshInstance FAILED for JSFrameworkInit FAILED, intance will invoke instance.onRenderError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1471
    invoke-virtual {v1, p2, v2}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p2, "[WXBridgeManager] invokeRefreshInstance: framework.js uninitialized."

    .line 1478
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 1481
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1482
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshInstance >>>> instanceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/taobao/weex/common/WXRefreshData;->data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isDirty:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p2, Lcom/taobao/weex/common/WXRefreshData;->isDirty:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 1487
    :cond_2
    iget-boolean v1, p2, Lcom/taobao/weex/common/WXRefreshData;->isDirty:Z

    if-eqz v1, :cond_3

    return-void

    .line 1490
    :cond_3
    new-instance v1, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    .line 1492
    new-instance v3, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v4, 0x3

    .line 1493
    iget-object v5, p2, Lcom/taobao/weex/common/WXRefreshData;->data:Ljava/lang/String;

    if-nez v5, :cond_4

    const-string/jumbo p2, "{}"

    goto :goto_0

    :cond_4
    iget-object p2, p2, Lcom/taobao/weex/common/WXRefreshData;->data:Ljava/lang/String;

    :goto_0
    invoke-direct {v3, v4, p2}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    new-array p2, v2, [Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v2, 0x0

    aput-object v1, p2, v2

    const/4 v1, 0x1

    aput-object v3, p2, v1

    .line 1495
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    const-string v2, "refreshInstance"

    invoke-interface {v1, p1, v0, v2, p2}, Lcom/taobao/weex/common/IWXBridge;->refreshInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 1497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WXBridgeManager] invokeRefreshInstance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1498
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    const-string v2, "invokeRefreshInstance"

    invoke-static {p1, v1, v2, p2, v0}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1501
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private invokeRegisterComponents(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "components",
            "failReceiver"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "registerComponents"

    if-eq p1, p2, :cond_6

    .line 2481
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2484
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2485
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 2495
    :cond_2
    :try_start_0
    iget-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    instance-of v1, p2, Lcom/taobao/weex/bridge/WXBridge;

    if-eqz v1, :cond_3

    .line 2496
    check-cast p2, Lcom/taobao/weex/bridge/WXBridge;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/taobao/weex/bridge/WXBridge;->registerComponentOnDataRenderNode(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    const-string v1, "Weex [data_render register err]"

    .line 2499
    invoke-static {v1, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    const/4 p2, 0x1

    new-array p2, p2, [Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v1, 0x0

    .line 2502
    invoke-static {p1}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->toWsonOrJsonWXJSObject(Ljava/lang/Object;)Lcom/taobao/weex/bridge/WXJSObject;

    move-result-object p1

    aput-object p1, p2, v1

    const/4 p1, 0x0

    .line 2505
    :try_start_1
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    const-string v2, ""

    invoke-interface {v1, v2, p1, v0, p2}, Lcom/taobao/weex/common/IWXBridge;->execJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I

    move-result v1

    if-nez v1, :cond_4

    const-string p2, "execJS error"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :cond_4
    move-object p2, p1

    goto :goto_2

    :catchall_1
    move-exception v1

    .line 2509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_REGISTER_COMPONENT:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2510
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2511
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2514
    :goto_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "[WXBridgeManager] invokeRegisterComponents "

    .line 2515
    invoke-static {v1, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2516
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_REGISTER_COMPONENT:Lcom/taobao/weex/common/WXErrorCode;

    invoke-static {p1, v1, v0, p2, p1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    return-void

    .line 2479
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Fail receiver should not use source."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private invokeRegisterModules(Ljava/util/Map;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "modules",
            "failReceiver"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 2429
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 p2, 0x1

    new-array v0, p2, [Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v1, 0x0

    .line 2437
    invoke-static {p1}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->toWsonOrJsonWXJSObject(Ljava/lang/Object;)Lcom/taobao/weex/bridge/WXJSObject;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2441
    :try_start_0
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    instance-of v2, v1, Lcom/taobao/weex/bridge/WXBridge;

    if-eqz v2, :cond_1

    .line 2442
    check-cast v1, Lcom/taobao/weex/bridge/WXBridge;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXBridge;->registerModuleOnDataRenderNode(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "Weex [data_render register err]"

    .line 2445
    invoke-static {v2, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 2448
    :try_start_1
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    const-string v3, ""

    const-string v4, "registerModules"

    invoke-interface {v2, v3, v1, v4, v0}, Lcom/taobao/weex/common/IWXBridge;->execJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "execJS error"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 2452
    :goto_1
    :try_start_2
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2453
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2454
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 2456
    invoke-static {v3, p2}, Lcom/taobao/weex/bridge/WXModuleManager;->resetModuleState(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    :try_start_3
    const-string v2, "Weex [invokeRegisterModules]"

    .line 2461
    invoke-static {v2, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p2

    .line 2464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_REGISTER_MODULES:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \n "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2465
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2468
    :cond_4
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "[WXBridgeManager] invokeRegisterModules:"

    .line 2469
    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2470
    sget-object p1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_REGISTER_MODULES:Lcom/taobao/weex/common/WXErrorCode;

    const-string p2, "invokeRegisterModules"

    invoke-static {v1, p1, p2, v0, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    return-void

    .line 2430
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "[WXinvokeRegisterModulesBridgeManager] invokeRegisterModules: framework.js uninitialized."

    .line 2431
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 2433
    :cond_7
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isSkipFrameworkInit(Lcom/taobao/weex/WXSDKInstance;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1538
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->skipFrameworkInit()Z

    move-result p1

    return p1
.end method

.method private isSkipFrameworkInit(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instanceId"
        }
    .end annotation

    .line 1530
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    .line 1531
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Lcom/taobao/weex/WXSDKInstance;)Z

    move-result p1

    return p1
.end method

.method private mock(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instanceId"
        }
    .end annotation

    return-void
.end method

.method private onJsFrameWorkInitSuccees()V
    .locals 4

    .line 3742
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWeexCoreEnvOptions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3743
    iget-object v2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/taobao/weex/common/IWXBridge;->registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3745
    :cond_0
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWeexCoreEnvOptions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private registerDomModule()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/weex/common/WXException;
        }
    .end annotation

    .line 2697
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2698
    sget-object v1, Lcom/taobao/weex/ui/module/WXDomModule;->METHODS:[Ljava/lang/String;

    const-string v2, "dom"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2699
    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->registerModules(Ljava/util/Map;)V

    return-void
.end method

.method private removeTaskByInstance(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instanceId"
        }
    .end annotation

    .line 1878
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mNextTickTasks:Lcom/taobao/weex/bridge/WXHashMap;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/bridge/WXHashMap;->removeFromMapAndStack(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private sendMessage(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "what"
        }
    .end annotation

    .line 1252
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1253
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1254
    iput p2, v0, Landroid/os/Message;->what:I

    .line 1255
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private setExceedGPULimitComponentsInfo(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/ui/action/GraphicSize;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "ref",
            "layoutSize"
        }
    .end annotation

    .line 3129
    invoke-static {}, Lcom/taobao/weex/ui/WXRenderManager;->getOpenGLRenderLimitValue()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_8

    .line 3130
    invoke-virtual {p3}, Lcom/taobao/weex/ui/action/GraphicSize;->getHeight()F

    move-result v1

    cmpl-float v1, v1, v0

    if-gtz v1, :cond_0

    invoke-virtual {p3}, Lcom/taobao/weex/ui/action/GraphicSize;->getWidth()F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_8

    .line 3131
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 3132
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p2

    .line 3133
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v2, "GPU limit"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3134
    invoke-virtual {p3}, Lcom/taobao/weex/ui/action/GraphicSize;->getWidth()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v2, "component.width"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3135
    invoke-virtual {p3}, Lcom/taobao/weex/ui/action/GraphicSize;->getHeight()F

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p3

    const-string v0, "component.height"

    invoke-virtual {v1, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3136
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 3137
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object p3

    const-string v0, "component.type"

    invoke-virtual {v1, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3139
    :cond_1
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/dom/WXStyle;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    .line 3140
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/dom/WXStyle;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "component.style"

    invoke-virtual {v1, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3142
    :cond_2
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/dom/WXAttr;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    .line 3143
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/dom/WXAttr;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "component.attr"

    invoke-virtual {v1, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3145
    :cond_3
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/dom/WXEvent;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    .line 3146
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/dom/WXEvent;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "component.event"

    invoke-virtual {v1, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3148
    :cond_4
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 3149
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/dom/CSSShorthand;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "component.margin"

    invoke-virtual {v1, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3151
    :cond_5
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 3152
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/dom/CSSShorthand;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "component.padding"

    invoke-virtual {v1, v0, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3154
    :cond_6
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 3155
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/dom/CSSShorthand;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "component.border"

    invoke-virtual {v1, p3, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3157
    :cond_7
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/taobao/weex/WXSDKInstance;->setComponentsInfoExceedGPULimit(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_8
    return-void
.end method

.method private setJSFrameworkInit(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "init"
        }
    .end annotation

    .line 391
    sput-boolean p1, Lcom/taobao/weex/bridge/WXBridgeManager;->mInit:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 393
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->onJsFrameWorkInitSuccees()V

    :cond_0
    return-void
.end method

.method private trackComponentAndModulesTime()V
    .locals 1

    .line 2211
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$22;

    invoke-direct {v0, p0}, Lcom/taobao/weex/bridge/WXBridgeManager$22;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static updateGlobalConfig(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 2713
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "none"

    .line 2716
    :cond_0
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->globalConfig:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2717
    sput-object p0, Lcom/taobao/weex/bridge/WXBridgeManager;->globalConfig:Ljava/lang/String;

    .line 2718
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->GLOBAL_CONFIG_KEY:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/taobao/weex/WXEnvironment;->addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 2719
    new-instance p0, Lcom/taobao/weex/bridge/WXBridgeManager$26;

    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager$26;-><init>()V

    .line 2737
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2738
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-virtual {v0, p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2740
    :cond_1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public varargs asyncCallJSEventVoidResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "method",
            "instanceId",
            "params",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1126
    new-instance v6, Lcom/taobao/weex/bridge/WXBridgeManager$11;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager$11;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;[Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bindMeasurementToRenderObject(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ptr"
        }
    .end annotation

    .line 3547
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3548
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/common/IWXBridge;->bindMeasurementToRenderObject(J)V

    :cond_0
    return-void
.end method

.method public callAddChildToRichtext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)I
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "nodeType",
            "ref",
            "parentRef",
            "richTextRef",
            "styles",
            "attrs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    move-object v1, p1

    .line 3163
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "callAddChildToRichtext"

    if-nez v0, :cond_3

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3174
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-object v4, p0

    .line 3183
    iget-object v0, v4, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    return v0

    .line 3187
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 3189
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicActionAddChildToRichtext;

    move-object v5, v0

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-direct/range {v5 .. v12}, Lcom/taobao/weex/ui/action/GraphicActionAddChildToRichtext;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 3191
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v5

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3194
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "[WXBridgeManager] callAddChildToRichtext exception: "

    invoke-static {v6, v5}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3195
    sget-object v5, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 3197
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 3195
    invoke-static {p1, v5, v3, v0, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_1
    move-object v4, p0

    .line 3164
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "[WXBridgeManager] call callAddChildToRichtext arguments is null"

    .line 3165
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 3168
    :cond_4
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v5, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, v0, v3, v5, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x0

    return v0
.end method

.method public callAddElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;[F[F[FZ)I
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pageId",
            "componentType",
            "ref",
            "index",
            "parentRef",
            "styles",
            "attributes",
            "events",
            "margins",
            "paddings",
            "borders",
            "willLayout"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;[F[F[FZ)I"
        }
    .end annotation

    move-object/from16 v1, p1

    .line 2828
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "callAddElement"

    if-nez v0, :cond_4

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2838
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-object/from16 v4, p0

    .line 2849
    iget-object v0, v4, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    return v0

    .line 2854
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2856
    new-instance v15, Lcom/taobao/weex/ui/action/GraphicActionAddElement;

    move-object v5, v15

    move-object v6, v0

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    move/from16 v10, p4

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object v2, v15

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    invoke-direct/range {v5 .. v16}, Lcom/taobao/weex/ui/action/GraphicActionAddElement;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;Ljava/util/Set;[F[F[F)V

    if-eqz p12, :cond_2

    move-object/from16 v5, p3

    .line 2859
    invoke-virtual {v0, v5, v2}, Lcom/taobao/weex/WXSDKInstance;->addInActiveAddElementAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/GraphicActionAddElement;)V

    goto :goto_0

    .line 2861
    :cond_2
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "[WXBridgeManager] callAddElement exception: "

    .line 2865
    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2866
    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 2868
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    .line 2866
    invoke-static {v1, v2, v3, v0, v5}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_1
    move-object/from16 v4, p0

    .line 2829
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "[WXBridgeManager] call callAddElement arguments is null"

    .line 2830
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 2832
    :cond_5
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v2, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    const/4 v5, 0x0

    invoke-static {v1, v0, v3, v2, v5}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x0

    return v0
.end method

.method public callAddEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "ref",
            "event"
        }
    .end annotation

    .line 2962
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callAddEvent"

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2972
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 2980
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 2985
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2987
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionAddEvent;

    invoke-direct {v3, v0, p2, p3}, Lcom/taobao/weex/ui/action/GraphicActionAddEvent;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/taobao/weex/ui/action/GraphicActionAddEvent;->executeActionOnRender()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "[WXBridgeManager] callAddEvent exception: "

    .line 2990
    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2991
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 2993
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 2991
    invoke-static {p1, p3, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2997
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->getNextTick(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 2963
    :cond_3
    :goto_1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "[WXBridgeManager] call callAddEvent arguments is null"

    .line 2964
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 2966
    :cond_4
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, p3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callAppendTreeCreateFinish(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "ref"
        }
    .end annotation

    .line 3430
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callAppendTreeCreateFinish"

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3438
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 3445
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 3450
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    .line 3451
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionAppendTreeCreateFinish;

    invoke-direct {v3, v0, p2}, Lcom/taobao/weex/ui/action/GraphicActionAppendTreeCreateFinish;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    .line 3452
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p2

    invoke-virtual {p2, p1, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "[WXBridgeManager] callAppendTreeCreateFinish exception: "

    .line 3454
    invoke-static {v0, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3455
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 3457
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 3455
    invoke-static {p1, v0, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const-string p2, "[WXBridgeManager] call callAppendTreeCreateFinish arguments is null"

    .line 3431
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 3432
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v0, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, v0, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callBacthEnd(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instanceId"
        }
    .end annotation

    .line 3267
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callRemoveChildFromRichtext"

    if-eqz v0, :cond_1

    .line 3268
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[WXBridgeManager] call callRemoveChildFromRichtext arguments is null"

    .line 3269
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 3272
    :cond_0
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, v0, v2, v3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 3278
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3280
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionBatchEnd;

    const-string v4, ""

    invoke-direct {v3, v0, v4}, Lcom/taobao/weex/ui/action/GraphicActionBatchEnd;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    .line 3281
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {v3}, Lcom/taobao/weex/ui/action/GraphicActionBatchEnd;->getPageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "[WXBridgeManager] callRemoveChildFromRichtext exception: "

    .line 3284
    invoke-static {v3, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3285
    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 3287
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 3285
    invoke-static {p1, v3, v2, v0, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public callBacthStart(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instanceId"
        }
    .end annotation

    .line 3242
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callRemoveChildFromRichtext"

    if-eqz v0, :cond_1

    .line 3243
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[WXBridgeManager] call callRemoveChildFromRichtext arguments is null"

    .line 3244
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 3247
    :cond_0
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, v0, v2, v3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 3253
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3255
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionBatchBegin;

    const-string v4, ""

    invoke-direct {v3, v0, v4}, Lcom/taobao/weex/ui/action/GraphicActionBatchBegin;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    .line 3256
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {v3}, Lcom/taobao/weex/ui/action/GraphicActionBatchBegin;->getPageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "[WXBridgeManager] callRemoveChildFromRichtext exception: "

    .line 3259
    invoke-static {v3, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3260
    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 3262
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 3260
    invoke-static {p1, v3, v2, v0, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public callCreateBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;[F[F[F)I
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pageId",
            "componentType",
            "ref",
            "styles",
            "attributes",
            "events",
            "margins",
            "paddings",
            "borders"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;[F[F[F)I"
        }
    .end annotation

    move-object/from16 v1, p1

    .line 2786
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "callCreateBody"

    if-nez v0, :cond_3

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2794
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-object v4, p0

    .line 2804
    iget-object v0, v4, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    return v0

    .line 2809
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 2811
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;

    move-object v5, v0

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-direct/range {v5 .. v14}, Lcom/taobao/weex/ui/action/GraphicActionCreateBody;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;[F[F[F)V

    .line 2813
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v5

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "[WXBridgeManager] callCreateBody exception: "

    .line 2816
    invoke-static {v5, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2817
    sget-object v5, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 2819
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 2817
    invoke-static {v1, v5, v3, v0, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_1
    move-object v4, p0

    const-string v0, "[WXBridgeManager] call callCreateBody arguments is null"

    .line 2787
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 2788
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v5, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {v1, v0, v3, v5, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x0

    return v0
.end method

.method public callCreateFinish(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instanceId"
        }
    .end annotation

    .line 3465
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callCreateFinish"

    if-eqz v0, :cond_0

    const-string v0, "[WXBridgeManager] call callCreateFinish arguments is null"

    .line 3466
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 3467
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, v0, v2, v3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1

    .line 3473
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 3479
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 3484
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3485
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3487
    invoke-virtual {v0, v3, v4}, Lcom/taobao/weex/WXSDKInstance;->firstScreenCreateInstanceTime(J)V

    .line 3488
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionCreateFinish;

    invoke-direct {v3, v0}, Lcom/taobao/weex/ui/action/GraphicActionCreateFinish;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    .line 3489
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "[WXBridgeManager] callCreateFinish exception: "

    .line 3492
    invoke-static {v3, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3493
    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 3495
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 3493
    invoke-static {p1, v3, v2, v0, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public callHasTransitionPros(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "ref",
            "styles"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 3721
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3722
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getTransition()Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getTransition()Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/dom/transition/WXTransition;->getProperties()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 3726
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getTransition()Lcom/taobao/weex/dom/transition/WXTransition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/dom/transition/WXTransition;->getProperties()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 3727
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public callLayout(Ljava/lang/String;Ljava/lang/String;IIIIIIZI)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pageId",
            "ref",
            "top",
            "bottom",
            "left",
            "right",
            "height",
            "width",
            "isRTL",
            "index"
        }
    .end annotation

    .line 3370
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callLayout"

    if-nez v0, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 3381
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 3392
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 3397
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3399
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicSize;

    int-to-float p8, p8

    int-to-float p7, p7

    invoke-direct {v3, p8, p7}, Lcom/taobao/weex/ui/action/GraphicSize;-><init>(FF)V

    .line 3400
    new-instance p7, Lcom/taobao/weex/ui/action/GraphicPosition;

    int-to-float p5, p5

    int-to-float p3, p3

    int-to-float p6, p6

    int-to-float p4, p4

    invoke-direct {p7, p5, p3, p6, p4}, Lcom/taobao/weex/ui/action/GraphicPosition;-><init>(FFFF)V

    .line 3401
    invoke-direct {p0, p1, p2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setExceedGPULimitComponentsInfo(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/ui/action/GraphicSize;)V

    .line 3402
    invoke-virtual {v0, p2}, Lcom/taobao/weex/WXSDKInstance;->getInActiveAddElementAction(Ljava/lang/String;)Lcom/taobao/weex/ui/action/GraphicActionAddElement;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 3404
    invoke-virtual {p3, p9}, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->setRTL(Z)V

    .line 3405
    invoke-virtual {p3, v3}, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->setSize(Lcom/taobao/weex/ui/action/GraphicSize;)V

    .line 3406
    invoke-virtual {p3, p7}, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->setPosition(Lcom/taobao/weex/ui/action/GraphicPosition;)V

    const-string p4, "_root"

    .line 3407
    invoke-static {p2, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 3408
    invoke-virtual {p3, p10}, Lcom/taobao/weex/ui/action/GraphicActionAddElement;->setIndex(I)V

    .line 3410
    :cond_2
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p4

    invoke-virtual {p4, p1, p3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V

    .line 3411
    invoke-virtual {v0, p2}, Lcom/taobao/weex/WXSDKInstance;->removeInActiveAddElmentAction(Ljava/lang/String;)V

    goto :goto_0

    .line 3414
    :cond_3
    new-instance p10, Lcom/taobao/weex/ui/action/GraphicActionLayout;

    move-object p3, p10

    move-object p4, v0

    move-object p5, p2

    move-object p6, p7

    move-object p7, v3

    move p8, p9

    invoke-direct/range {p3 .. p8}, Lcom/taobao/weex/ui/action/GraphicActionLayout;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Lcom/taobao/weex/ui/action/GraphicPosition;Lcom/taobao/weex/ui/action/GraphicSize;Z)V

    .line 3415
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p2

    invoke-virtual {p10}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p10}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "[WXBridgeManager] callLayout exception: "

    .line 3419
    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3420
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 3422
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 3420
    invoke-static {p1, p3, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 3371
    :cond_5
    :goto_1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "[WXBridgeManager] call callLayout arguments is null"

    .line 3372
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 3375
    :cond_6
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, p3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "moduleStr",
            "methodStr",
            "args"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 498
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "moduleStr",
            "methodStr",
            "args",
            "options"
        }
    .end annotation

    .line 502
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    .line 503
    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    const/4 v0, 0x0

    if-nez v2, :cond_0

    return-object v0

    .line 507
    :cond_0
    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->isNeedValidate()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 508
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getValidateProcessor()Lcom/taobao/weex/bridge/WXValidateProcessor;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 510
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getValidateProcessor()Lcom/taobao/weex/bridge/WXValidateProcessor;

    move-result-object v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 511
    invoke-interface/range {v1 .. v6}, Lcom/taobao/weex/bridge/WXValidateProcessor;->onModuleValidate(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/weex/bridge/WXValidateProcessor$WXModuleValidateResult;

    move-result-object p5

    if-nez p5, :cond_1

    return-object v0

    .line 515
    :cond_1
    iget-boolean v0, p5, Lcom/taobao/weex/bridge/WXValidateProcessor$WXModuleValidateResult;->isSuccess:Z

    if-eqz v0, :cond_2

    .line 516
    invoke-static {p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXModuleManager;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 519
    :cond_2
    iget-object p1, p5, Lcom/taobao/weex/bridge/WXValidateProcessor$WXModuleValidateResult;->validateInfo:Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_3

    .line 521
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[WXBridgeManager] module validate fail. >>> "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_3
    return-object p1

    .line 527
    :cond_4
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXModuleManager;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 529
    :catch_0
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string p5, "moduleName"

    .line 530
    invoke-virtual {p1, p5, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "methodName"

    .line 531
    invoke-virtual {p1, p2, p3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    invoke-virtual {p4}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "args"

    invoke-virtual {p1, p3, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[WXBridgeManager] callNative : numberFormatException when parsing string to numbers in args"

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public callMoveElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "ref",
            "parentref",
            "index"
        }
    .end annotation

    .line 2921
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callMoveElement"

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2931
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 2940
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 2945
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2947
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionMoveElement;

    invoke-direct {v3, v0, p2, p3, p4}, Lcom/taobao/weex/ui/action/GraphicActionMoveElement;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2948
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p2

    invoke-virtual {v3}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "[WXBridgeManager] callMoveElement exception: "

    .line 2951
    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2952
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 2954
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 2952
    invoke-static {p1, p3, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 2922
    :cond_3
    :goto_1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "[WXBridgeManager] call callMoveElement arguments is null"

    .line 2923
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 2925
    :cond_4
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, p3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callNative(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;)I
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "tasks",
            "callback"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    move-object/from16 v9, p3

    .line 766
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v11, "callNative"

    const/4 v12, 0x0

    if-nez v1, :cond_9

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 774
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 781
    iget-object v1, v7, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, -0x1

    return v0

    .line 786
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 788
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v13, v3, v1

    const/4 v15, 0x1

    if-eqz v0, :cond_6

    .line 790
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 791
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_6

    .line 795
    :try_start_0
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_5

    .line 796
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "module"

    .line 797
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "args"

    const-string v4, "method"

    if-eqz v2, :cond_3

    :try_start_1
    const-string v10, "dom"

    .line 799
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 800
    invoke-static/range {p1 .. p1}, Lcom/taobao/weex/bridge/WXModuleManager;->getDomModule(Ljava/lang/String;)Lcom/taobao/weex/ui/module/WXDomModule;

    move-result-object v2

    new-array v3, v15, [J

    aput-wide v13, v3, v12

    .line 801
    invoke-virtual {v2, v1, v3}, Lcom/taobao/weex/ui/module/WXDomModule;->callDomMethod(Lcom/alibaba/fastjson/JSONObject;[J)V

    goto :goto_1

    :cond_2
    const-string v10, "options"

    .line 803
    invoke-virtual {v1, v10}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    .line 804
    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/String;

    .line 805
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/alibaba/fastjson/JSONArray;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move/from16 v16, v5

    move-object/from16 v5, v17

    move/from16 v17, v6

    move-object v6, v10

    .line 804
    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    move/from16 v16, v5

    move/from16 v17, v6

    const-string v2, "component"

    .line 807
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 808
    invoke-static/range {p1 .. p1}, Lcom/taobao/weex/bridge/WXModuleManager;->getDomModule(Ljava/lang/String;)Lcom/taobao/weex/ui/module/WXDomModule;

    move-result-object v2

    const-string v5, "ref"

    .line 809
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2, v5, v4, v1}, Lcom/taobao/weex/ui/module/WXDomModule;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V

    goto :goto_2

    .line 811
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown callNative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_1
    move/from16 v16, v5

    move/from16 v17, v6

    :goto_2
    add-int/lit8 v5, v16, 0x1

    move/from16 v6, v17

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[WXBridgeManager] callNative exception: "

    .line 816
    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 817
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 819
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 817
    invoke-static {v8, v1, v11, v0, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_6
    const-string v0, "undefined"

    .line 823
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "-1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    .line 827
    :cond_7
    invoke-direct {v7, v8, v9}, Lcom/taobao/weex/bridge/WXBridgeManager;->getNextTick(Ljava/lang/String;Ljava/lang/String;)V

    return v15

    :cond_8
    :goto_3
    return v12

    :cond_9
    :goto_4
    const-string v0, "[WXBridgeManager] call callNative arguments is null"

    .line 767
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 768
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v1, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    const/4 v2, 0x0

    invoke-static {v8, v0, v11, v1, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return v12
.end method

.method public callNativeComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "componentRef",
            "method",
            "arguments",
            "options"
        }
    .end annotation

    .line 722
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    const-string v0, "callNativeComponent"

    const/4 v1, 0x0

    if-nez p5, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_0

    goto :goto_1

    .line 730
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 738
    :try_start_0
    invoke-static {p1}, Lcom/taobao/weex/bridge/WXModuleManager;->getDomModule(Ljava/lang/String;)Lcom/taobao/weex/ui/module/WXDomModule;

    move-result-object p5

    if-eqz p5, :cond_1

    .line 740
    invoke-virtual {p5, p2, p3, p4}, Lcom/taobao/weex/ui/module/WXDomModule;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V

    goto :goto_0

    .line 742
    :cond_1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 743
    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    const-string p2, "WXBridgeManager"

    .line 744
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "callNativeComponent exception :null == dom ,method:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "[WXBridgeManager] callNativeComponent exception: "

    .line 749
    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 750
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 752
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 750
    invoke-static {p1, p3, v0, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    :goto_0
    return-object v1

    :cond_4
    :goto_1
    const-string p2, "[WXBridgeManager] call callNativeComponent arguments is null"

    .line 723
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 724
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v0, p3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    .line 727
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public callNativeModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "module",
            "method",
            "arguments",
            "options"
        }
    .end annotation

    .line 683
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 691
    :cond_0
    invoke-static {}, Lcom/taobao/weex/performance/WXStateRecord;->getInstance()Lcom/taobao/weex/performance/WXStateRecord;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callNativeModule:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/taobao/weex/performance/WXStateRecord;->recordAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    :try_start_0
    const-string v0, "dom"

    .line 701
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 702
    invoke-static {p1}, Lcom/taobao/weex/bridge/WXModuleManager;->getDomModule(Ljava/lang/String;)Lcom/taobao/weex/ui/module/WXDomModule;

    move-result-object p2

    if-eqz p2, :cond_1

    new-array p1, v1, [J

    .line 704
    invoke-virtual {p2, p3, p4, p1}, Lcom/taobao/weex/ui/module/WXDomModule;->callDomMethod(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;[J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 706
    :cond_1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/bridge/WXModuleManager;->createDomModule(Lcom/taobao/weex/WXSDKInstance;)V

    goto :goto_0

    .line 709
    :cond_2
    invoke-virtual/range {p0 .. p5}, Lcom/taobao/weex/bridge/WXBridgeManager;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 713
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[WXBridgeManager] callNativeModule exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 714
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_3
    :goto_1
    const-string p2, "[WXBridgeManager] call callNativeModule arguments is null"

    .line 684
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 685
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "callNativeModule"

    const-string p4, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, p3, p4, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 688
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public callNativeModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "module",
            "method",
            "arguments",
            "options"
        }
    .end annotation

    .line 647
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    const/4 v0, 0x0

    const-string v1, "callNativeModule"

    const/4 v2, 0x0

    if-nez p5, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_0

    goto :goto_0

    .line 655
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    :try_start_0
    const-string p5, "dom"

    .line 663
    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 664
    invoke-static {p1}, Lcom/taobao/weex/bridge/WXModuleManager;->getDomModule(Ljava/lang/String;)Lcom/taobao/weex/ui/module/WXDomModule;

    move-result-object p2

    new-array p5, v0, [J

    .line 665
    invoke-virtual {p2, p3, p4, p5}, Lcom/taobao/weex/ui/module/WXDomModule;->callDomMethod(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;[J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 667
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->callModuleMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 671
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[WXBridgeManager] callNative exception: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 672
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 673
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    invoke-static {p1, p3, v1, p2, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v2

    :cond_2
    :goto_0
    const-string p2, "[WXBridgeManager] call callNativeModule arguments is null"

    .line 648
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 649
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v1, p3, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 652
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public callRefreshFinish(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "callback"
        }
    .end annotation

    .line 874
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "callRefreshFinish"

    if-eqz v0, :cond_0

    const-string p2, "[WXBridgeManager] call callRefreshFinish arguments is null"

    .line 875
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 876
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v0, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v3, v0, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return v1

    .line 882
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 889
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 894
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 896
    new-instance v4, Lcom/taobao/weex/ui/action/GraphicActionRefreshFinish;

    invoke-direct {v4, v0}, Lcom/taobao/weex/ui/action/GraphicActionRefreshFinish;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    .line 897
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "[WXBridgeManager] callRefreshFinish exception: "

    .line 900
    invoke-static {v4, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 901
    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 903
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 901
    invoke-static {p1, v4, v3, v0, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    const-string v0, "undefined"

    .line 906
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "-1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 910
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->getNextTick(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public callRemoveChildFromRichtext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "ref",
            "parentRef",
            "richTextRef"
        }
    .end annotation

    .line 3204
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callRemoveChildFromRichtext"

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3215
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 3222
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 3226
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3228
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionRemoveChildFromRichtext;

    invoke-direct {v3, v0, p2, p3, p4}, Lcom/taobao/weex/ui/action/GraphicActionRemoveChildFromRichtext;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3229
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p2

    invoke-virtual {v3}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "[WXBridgeManager] callRemoveChildFromRichtext exception: "

    .line 3232
    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3233
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 3235
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 3233
    invoke-static {p1, p3, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 3205
    :cond_3
    :goto_1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "[WXBridgeManager] call callRemoveChildFromRichtext arguments is null"

    .line 3206
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 3209
    :cond_4
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, p3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callRemoveElement(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "ref"
        }
    .end annotation

    .line 2876
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callRemoveElement"

    if-nez v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2886
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 2893
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 2898
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2900
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionRemoveElement;

    invoke-direct {v3, v0, p2}, Lcom/taobao/weex/ui/action/GraphicActionRemoveElement;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    .line 2901
    invoke-virtual {v0, p2}, Lcom/taobao/weex/WXSDKInstance;->getInActiveAddElementAction(Ljava/lang/String;)Lcom/taobao/weex/ui/action/GraphicActionAddElement;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2902
    invoke-virtual {v0, p2}, Lcom/taobao/weex/WXSDKInstance;->removeInActiveAddElmentAction(Ljava/lang/String;)V

    goto :goto_0

    .line 2905
    :cond_2
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p2

    .line 2906
    invoke-virtual {v3}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "[WXBridgeManager] callRemoveElement exception: "

    .line 2910
    invoke-static {v0, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2911
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 2913
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 2911
    invoke-static {p1, v0, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 2877
    :cond_4
    :goto_1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "[WXBridgeManager] call callRemoveElement arguments is null"

    .line 2878
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 2880
    :cond_5
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v0, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, v0, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callRemoveEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "ref",
            "event"
        }
    .end annotation

    .line 3003
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callRemoveEvent"

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3013
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 3021
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 3026
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3028
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionRemoveEvent;

    invoke-direct {v3, v0, p2, p3}, Lcom/taobao/weex/ui/action/GraphicActionRemoveEvent;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/taobao/weex/ui/action/GraphicActionRemoveEvent;->executeActionOnRender()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "[WXBridgeManager] callRemoveEvent exception: "

    .line 3031
    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3032
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 3034
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 3032
    invoke-static {p1, p3, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3038
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->getNextTick(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 3004
    :cond_3
    :goto_1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "[WXBridgeManager] call callRemoveEvent arguments is null"

    .line 3005
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 3007
    :cond_4
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, p3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callRenderSuccess(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instanceId"
        }
    .end annotation

    .line 3503
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callRenderSuccess"

    if-eqz v0, :cond_0

    const-string v0, "[WXBridgeManager] call callRenderSuccess arguments is null"

    .line 3504
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 3505
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, v0, v2, v3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1

    .line 3511
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 3517
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 3522
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3524
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionRenderSuccess;

    invoke-direct {v3, v0}, Lcom/taobao/weex/ui/action/GraphicActionRenderSuccess;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    .line 3525
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "[WXBridgeManager] callRenderSuccess exception: "

    .line 3528
    invoke-static {v3, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3529
    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 3531
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 3529
    invoke-static {p1, v3, v2, v0, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public callReportCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10
        }
        names = {
            "crashFile",
            "instanceId",
            "url",
            "extInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1009
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1010
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "yyyyMMddHHmmss"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1011
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1013
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1014
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1016
    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1018
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$7;

    move-object v3, v0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/taobao/weex/bridge/WXBridgeManager$7;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1054
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public callReportCrashReloadPage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "crashFile"
        }
    .end annotation

    const-string v0, "callReportCrashReloadPage"

    .line 916
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 919
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 921
    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v6

    .line 922
    invoke-virtual {v4, v5}, Lcom/taobao/weex/WXSDKInstance;->setHasException(Z)V

    move-object v11, v6

    goto :goto_0

    :cond_0
    move-object v11, v2

    .line 924
    :goto_0
    new-instance v4, Ljava/util/HashMap;

    const/4 v6, 0x2

    invoke-direct {v4, v6}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v6, "weexCoreThreadStackTrace:"

    .line 925
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/weex/bridge/WXBridgeManager;->getWeexCoreThreadStackTrace()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "wxStateInfo"

    .line 926
    invoke-static {}, Lcom/taobao/weex/performance/WXStateRecord;->getInstance()Lcom/taobao/weex/performance/WXStateRecord;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/weex/performance/WXStateRecord;->getStateInfo()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "null"

    if-nez v1, :cond_3

    .line 930
    :try_start_1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mInitParams:Lcom/taobao/weex/bridge/WXParams;

    invoke-virtual {v7}, Lcom/taobao/weex/bridge/WXParams;->getCrashFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "jsengine"

    .line 932
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "callReportCrashReloadPage crashFile:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 935
    :try_start_2
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 937
    :cond_1
    :goto_1
    invoke-static {}, Lcom/taobao/weex/performance/WXStateRecord;->getInstance()Lcom/taobao/weex/performance/WXStateRecord;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    move-object v6, p1

    :goto_2
    invoke-virtual {v1, v6}, Lcom/taobao/weex/performance/WXStateRecord;->onJSCCrash(Ljava/lang/String;)V

    .line 938
    invoke-virtual {p0, p2, p1, v11, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->callReportCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_4

    .line 940
    :cond_3
    invoke-static {}, Lcom/taobao/weex/performance/WXStateRecord;->getInstance()Lcom/taobao/weex/performance/WXStateRecord;

    move-result-object p2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v6, p1

    :goto_3
    invoke-virtual {p2, v6}, Lcom/taobao/weex/performance/WXStateRecord;->onJSEngineReload(Ljava/lang/String;)V

    const-string v7, "jsBridge"

    .line 941
    sget-object v8, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_RELOAD_PAGE:Lcom/taobao/weex/common/WXErrorCode;

    const-string v9, "reboot jsc Engine"

    move-object v6, p0

    move-object v10, p1

    move-object v12, v4

    invoke-virtual/range {v6 .. v12}, Lcom/taobao/weex/bridge/WXBridgeManager;->commitJscCrashAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 944
    :goto_4
    sget p2, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    const/16 v1, 0x32

    if-le p2, v1, :cond_5

    const-string p2, "jsEngine"

    .line 945
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_RELOAD_PAGE_EXCEED_LIMIT:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reInitCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v1, v0, v5, v4}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return v3

    .line 949
    :cond_5
    sget p2, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    add-int/2addr p2, v5

    sput p2, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    .line 951
    invoke-direct {p0, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setJSFrameworkInit(Z)V

    .line 952
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->resetAllModuleState()V

    const-string p2, ""

    .line 953
    invoke-virtual {p0, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->initScriptsFramework(Ljava/lang/String;)V

    .line 955
    iget-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz p2, :cond_6

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p2, :cond_6

    const/4 p1, -0x1

    return p1

    :catch_0
    move-exception p2

    const-string v1, "[WXBridgeManager] callReportCrashReloadPage exception: "

    .line 959
    invoke-static {v1, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 963
    :cond_6
    :try_start_3
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 965
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object p2

    .line 964
    invoke-virtual {p0, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->shouldReloadCurrentInstance(Ljava/lang/String;)Z

    move-result p2

    .line 966
    new-instance v1, Lcom/taobao/weex/ui/action/ActionReloadPage;

    invoke-direct {v1, p1, p2}, Lcom/taobao/weex/ui/action/ActionReloadPage;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lcom/taobao/weex/ui/action/ActionReloadPage;->executeAction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception p2

    const-string v1, "[WXBridgeManager] callReloadPage exception: "

    .line 970
    invoke-static {v1, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 971
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 973
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 971
    invoke-static {p1, v1, v0, p2, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_7
    :goto_5
    return v3
.end method

.method public callUpdateAttrs(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "ref",
            "attrs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 3090
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callUpdateAttrs"

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3101
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 3108
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 3113
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3115
    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionUpdateAttr;

    invoke-direct {v3, v0, p2, p3}, Lcom/taobao/weex/ui/action/GraphicActionUpdateAttr;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/Map;)V

    .line 3116
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p2

    invoke-virtual {v3}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "[WXBridgeManager] callUpdateAttrs exception: "

    .line 3119
    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3120
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 3122
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 3120
    invoke-static {p1, p3, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 3091
    :cond_3
    :goto_1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "[WXBridgeManager] call callUpdateAttrs arguments is null"

    .line 3092
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 3095
    :cond_4
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, p3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callUpdateFinish(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "callback"
        }
    .end annotation

    .line 834
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "callUpdateFinish"

    if-eqz v0, :cond_0

    const-string p2, "[WXBridgeManager] call callUpdateFinish arguments is null"

    .line 835
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 836
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v0, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v3, v0, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return v1

    .line 842
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 849
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 854
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "[WXBridgeManager] callUpdateFinish exception: "

    .line 857
    invoke-static {v4, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 858
    sget-object v4, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 860
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 858
    invoke-static {p1, v4, v3, v0, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    if-eqz p2, :cond_3

    .line 863
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "undefined"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "-1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 867
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->getNextTick(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public callUpdateRichtextChildAttr(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "ref",
            "attrs",
            "parentRef",
            "richTextRef"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 3330
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callUpdateRichtextChildAttr"

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3341
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 3349
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 3353
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3355
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicActionUpdateRichtextAttr;

    move-object v3, v0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/taobao/weex/ui/action/GraphicActionUpdateRichtextAttr;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 3356
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p2

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v0}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "[WXBridgeManager] callUpdateRichtextChildAttr exception: "

    .line 3359
    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3360
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 3362
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 3360
    invoke-static {p1, p3, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 3331
    :cond_3
    :goto_1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "[WXBridgeManager] call callUpdateRichtextChildAttr arguments is null"

    .line 3332
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 3335
    :cond_4
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, p3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callUpdateRichtextStyle(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "ref",
            "styles",
            "parentRef",
            "richTextRef"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 3292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "callUpdateRichtextStyle"

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3303
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    .line 3311
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 3315
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 3317
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicActionUpdateRichtextStyle;

    move-object v3, v0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/taobao/weex/ui/action/GraphicActionUpdateRichtextStyle;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 3318
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object p2

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v0}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "[WXBridgeManager] callUpdateRichtextStyle exception: "

    .line 3321
    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3322
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 3324
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 3322
    invoke-static {p1, p3, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 3293
    :cond_3
    :goto_1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "[WXBridgeManager] call callUpdateRichtextStyle arguments is null"

    .line 3294
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 3297
    :cond_4
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string p3, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, p2, v2, p3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public callUpdateStyle(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)I
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "ref",
            "styles",
            "paddings",
            "margins",
            "borders"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    move-object v1, p1

    .line 3047
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "callUpdateStyle"

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3058
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-object v4, p0

    .line 3068
    iget-object v0, v4, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    return v0

    .line 3073
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 3075
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;

    move-object v5, v0

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v5 .. v11}, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 3076
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v5

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicGraphicAction;->getPageId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "[WXBridgeManager] callUpdateStyle exception: "

    .line 3079
    invoke-static {v5, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3080
    sget-object v5, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_INVOKE_BRIDGE:Lcom/taobao/weex/common/WXErrorCode;

    .line 3082
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 3080
    invoke-static {p1, v5, v3, v0, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_1
    move-object v4, p0

    .line 3048
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "[WXBridgeManager] call callUpdateStyle arguments is null"

    .line 3049
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 3052
    :cond_4
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_BRIDGE_ARG_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string v5, "arguments is empty, INSTANCE_RENDERING_ERROR will be set"

    invoke-static {p1, v0, v3, v5, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x0

    return v0
.end method

.method public callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "instanceId",
            "callback",
            "data",
            "keepAlive"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1398
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->callbackJavascript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "callback",
            "data"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1375
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "instanceId",
            "callback",
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1384
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method callbackJavascript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "instanceId",
            "callback",
            "data",
            "keepAlive"
        }
    .end annotation

    .line 1411
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    sget-boolean v0, Lio/dcloud/common/util/RuningAcitvityUtil;->isRuningActivity:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1416
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_1

    .line 1417
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER_BINARY:Lcom/taobao/weex/common/WXRenderStrategy;

    if-ne v0, v1, :cond_1

    .line 1418
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->callbackJavascriptOnDataRender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    .line 1420
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "callback"

    invoke-direct {p0, p2, p1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->addJSTask(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x6

    .line 1421
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->sendMessage(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method callbackJavascriptOnDataRender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "instanceId",
            "callback",
            "data",
            "keepAlive"
        }
    .end annotation

    .line 1426
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    new-instance v7, Lcom/taobao/weex/bridge/WXBridgeManager$15;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/taobao/weex/bridge/WXBridgeManager$15;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v7}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 p2, 0x0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public checkJsEngineMultiThread()V
    .locals 2

    .line 319
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXJscProcessManager()Lcom/taobao/weex/adapter/IWXJscProcessManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    invoke-interface {v0}, Lcom/taobao/weex/adapter/IWXJscProcessManager;->enableBackupThread()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 324
    :goto_0
    sget-boolean v1, Lcom/taobao/weex/bridge/WXBridgeManager;->isJsEngineMultiThreadEnable:Z

    if-ne v0, v1, :cond_1

    return-void

    .line 328
    :cond_1
    sput-boolean v0, Lcom/taobao/weex/bridge/WXBridgeManager;->isJsEngineMultiThreadEnable:Z

    .line 330
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 331
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->reload()V

    goto :goto_1

    .line 334
    :cond_2
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/bridge/WXBridgeManager$2;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public commitJscCrashAlarmMonitor(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "errorCode",
            "errMsg",
            "instanceId",
            "url",
            "extInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXErrorCode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1507
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1511
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " commitJscCrashAlarmMonitor errMsg "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ReportCrash"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string p1, "jscCrashStack"

    .line 1515
    invoke-interface {v7, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p6, :cond_1

    .line 1517
    invoke-interface {v7, p6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1519
    :cond_1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getIWXJSExceptionAdapter()Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1521
    new-instance p3, Lcom/taobao/weex/common/WXJSExceptionInfo;

    const-string v5, "callReportCrash"

    const-string/jumbo v6, "weex core process crash and restart exception"

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/common/WXJSExceptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1522
    invoke-interface {p1, p3}, Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;->onJSException(Lcom/taobao/weex/common/WXJSExceptionInfo;)V

    .line 1524
    invoke-virtual {p3}, Lcom/taobao/weex/common/WXJSExceptionInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public createInstance(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "instanceId",
            "template",
            "options",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/Script;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1551
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "WXBridgeManager"

    const-string p2, "createInstance failed, SDKInstance does not exist"

    .line 1553
    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1556
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/taobao/weex/Script;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    goto :goto_0

    .line 1565
    :cond_1
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v1

    if-nez v1, :cond_2

    sget v1, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    sget-boolean v1, Lcom/taobao/weex/WXEnvironment;->sDebugServerConnectable:Z

    if-nez v1, :cond_2

    .line 1566
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1567
    invoke-virtual {p2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p4, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1568
    invoke-virtual {p4}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " isJSFrameworkInit=="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " reInitCount == 1"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1566
    invoke-virtual {v0, p2, p3}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    new-instance p2, Lcom/taobao/weex/bridge/WXBridgeManager$17;

    invoke-direct {p2, p0}, Lcom/taobao/weex/bridge/WXBridgeManager$17;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V

    const-string p3, "initFrameworkInCreateInstance"

    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    return-void

    .line 1579
    :cond_2
    invoke-static {v0}, Lcom/taobao/weex/bridge/WXModuleManager;->createDomModule(Lcom/taobao/weex/WXSDKInstance;)V

    .line 1580
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    const-string/jumbo v2, "wxStartLoadBundle"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    .line 1581
    new-instance v8, Lcom/taobao/weex/bridge/WXBridgeManager$18;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/bridge/WXBridgeManager$18;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V

    const-string p2, "createInstance"

    invoke-virtual {p0, v8, p1, v0, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    return-void

    .line 1557
    :cond_3
    :goto_0
    sget-object p3, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1558
    invoke-virtual {p3}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 1559
    invoke-virtual {v1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " instanceId=="

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " template =="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mJSHandler== "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    .line 1560
    invoke-virtual {p1}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1557
    invoke-virtual {v0, p3, p1}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "instanceId",
            "template",
            "options",
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
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1546
    new-instance v0, Lcom/taobao/weex/Script;

    invoke-direct {v0, p2}, Lcom/taobao/weex/Script;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->createInstance(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "appId",
            "data",
            "appKey",
            "clientKeyData"
        }
    .end annotation

    .line 3798
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    instance-of v1, v0, Lcom/taobao/weex/bridge/WXBridge;

    if-eqz v1, :cond_0

    .line 3799
    check-cast v0, Lcom/taobao/weex/bridge/WXBridge;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridge;->decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public destroy()V
    .locals 1

    .line 2524
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    if-eqz v0, :cond_0

    .line 2525
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXThread;->quit()Z

    :cond_0
    const/4 v0, 0x0

    .line 2527
    sput-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mBridgeManager:Lcom/taobao/weex/bridge/WXBridgeManager;

    .line 2528
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 2529
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_1
    return-void
.end method

.method public destroyInstance(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "instanceId"
        }
    .end annotation

    .line 1859
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1860
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1863
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mDestroyedInstanceId:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 1864
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1867
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1868
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$19;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager$19;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "destroyInstance"

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public dumpIpcPageInfo()Ljava/lang/String;
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    instance-of v1, v0, Lcom/taobao/weex/bridge/WXBridge;

    if-eqz v1, :cond_0

    .line 473
    check-cast v0, Lcom/taobao/weex/bridge/WXBridge;

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXBridge;->nativeDumpIpcPageQueueInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "appId",
            "data",
            "appKey",
            "clientKeyData"
        }
    .end annotation

    .line 3791
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    instance-of v1, v0, Lcom/taobao/weex/bridge/WXBridge;

    if-eqz v1, :cond_0

    .line 3792
    check-cast v0, Lcom/taobao/weex/bridge/WXBridge;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridge;->encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public encryptGetClientKeyPayload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "appId",
            "data",
            "appKey"
        }
    .end annotation

    .line 3784
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    instance-of v1, v0, Lcom/taobao/weex/bridge/WXBridge;

    if-eqz v1, :cond_0

    .line 3785
    check-cast v0, Lcom/taobao/weex/bridge/WXBridge;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/weex/bridge/WXBridge;->encryptGetClientKeyPayload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public execJSService(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "service"
        }
    .end annotation

    .line 2392
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$25;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager$25;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string v1, "execJSService"

    invoke-virtual {p0, v0, p1, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->postWithName(Ljava/lang/Runnable;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "instanceId",
            "ref",
            "type",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1274
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "instanceId",
            "ref",
            "type",
            "data",
            "domChanges"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1289
    invoke-virtual/range {p0 .. p5}, Lcom/taobao/weex/bridge/WXBridgeManager;->fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "instanceId",
            "ref",
            "type",
            "data",
            "domChanges"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1297
    invoke-virtual/range {v0 .. v7}, Lcom/taobao/weex/bridge/WXBridgeManager;->fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/taobao/weex/bridge/EventResult;)V

    return-void
.end method

.method public fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "instanceId",
            "ref",
            "type",
            "data",
            "domChanges",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1306
    invoke-virtual/range {v0 .. v7}, Lcom/taobao/weex/bridge/WXBridgeManager;->fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/taobao/weex/bridge/EventResult;)V

    return-void
.end method

.method public fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/taobao/weex/bridge/EventResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "ref",
            "type",
            "data",
            "domChanges",
            "params",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/bridge/EventResult;",
            ")V"
        }
    .end annotation

    .line 1312
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1313
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1316
    :cond_0
    invoke-direct {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1320
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_2

    .line 1321
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v1

    sget-object v2, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER:Lcom/taobao/weex/common/WXRenderStrategy;

    if-eq v1, v2, :cond_1

    .line 1322
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER_BINARY:Lcom/taobao/weex/common/WXRenderStrategy;

    if-ne v0, v1, :cond_2

    .line 1323
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/taobao/weex/bridge/WXBridgeManager;->fireEventOnDataRenderNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-nez p7, :cond_3

    new-array p7, v4, [Ljava/lang/Object;

    aput-object p2, p7, v3

    aput-object p3, p7, v2

    aput-object p4, p7, v1

    aput-object p5, p7, v0

    const-string p2, "fireEvent"

    .line 1326
    invoke-direct {p0, p2, p1, p6, p7}, Lcom/taobao/weex/bridge/WXBridgeManager;->addJSEventTask(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V

    const/4 p2, 0x6

    .line 1327
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->sendMessage(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    new-array v5, v4, [Ljava/lang/Object;

    aput-object p2, v5, v3

    aput-object p3, v5, v2

    aput-object p4, v5, v1

    aput-object p5, v5, v0

    const-string v2, "fireEventSync"

    move-object v0, p0

    move-object v1, p7

    move-object v3, p1

    move-object v4, p6

    .line 1329
    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->asyncCallJSEventWithResult(Lcom/taobao/weex/bridge/EventResult;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 1317
    :cond_4
    new-instance p1, Lcom/taobao/weex/common/WXRuntimeException;

    const-string p2, "fireEvent must be called by main thread"

    invoke-direct {p1, p2}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return-void
.end method

.method public forceLayout(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instanceId"
        }
    .end annotation

    .line 3568
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3569
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->forceLayout(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getBundleType(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "temp"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1809
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "bundleType"

    .line 1810
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Vue"

    .line 1811
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "vue"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Rax"

    .line 1813
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "rax"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1814
    :cond_1
    sget-object p1, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Rax:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    return-object p1

    .line 1812
    :cond_2
    :goto_0
    sget-object p1, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Vue:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 1818
    sget-object p1, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Vue:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    return-object p1

    .line 1847
    :cond_4
    sget-object p1, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Others:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 1849
    :goto_1
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 1850
    sget-object p1, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Others:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    return-object p1
.end method

.method public getFirstScreenRenderTime(Ljava/lang/String;)[J
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instanceId"
        }
    .end annotation

    .line 3623
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3624
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->getFirstScreenRenderTime(Ljava/lang/String;)[J

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [J

    .line 3626
    fill-array-data p1, :array_0

    return-object p1

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getInitParams()Lcom/taobao/weex/bridge/WXParams;
    .locals 1

    .line 2310
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mInitParams:Lcom/taobao/weex/bridge/WXParams;

    return-object v0
.end method

.method public getJSLooper()Landroid/os/Looper;
    .locals 1

    .line 2749
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    if-eqz v0, :cond_0

    .line 2750
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMeasurementFunc(Ljava/lang/String;J)Lcom/taobao/weex/layout/ContentBoxMeasurement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "renderObjectPtr"
        }
    .end annotation

    .line 3539
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3541
    invoke-virtual {p1, p2, p3}, Lcom/taobao/weex/WXSDKInstance;->getContentBoxMeasurement(J)Lcom/taobao/weex/layout/ContentBoxMeasurement;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getRenderFinishTime(Ljava/lang/String;)[J
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instanceId"
        }
    .end annotation

    .line 3630
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3631
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->getRenderFinishTime(Ljava/lang/String;)[J

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [J

    .line 3633
    fill-array-data p1, :array_0

    return-object p1

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getWeexCoreThreadStackTrace()Ljava/lang/String;
    .locals 9

    .line 3765
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    if-nez v0, :cond_0

    const-string v0, "null == mJSThread"

    return-object v0

    .line 3768
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    const-string v1, "Thread Name: \'%s\'\n"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 3771
    iget-object v4, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    invoke-virtual {v4}, Lcom/taobao/weex/common/WXThread;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3772
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "\"%s\" prio=%d tid=%d %s\n"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    invoke-virtual {v6}, Lcom/taobao/weex/common/WXThread;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    invoke-virtual {v6}, Lcom/taobao/weex/common/WXThread;->getPriority()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    invoke-virtual {v7}, Lcom/taobao/weex/common/WXThread;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    invoke-virtual {v7}, Lcom/taobao/weex/common/WXThread;->getState()Ljava/lang/Thread$State;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3774
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXThread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v6, v1, v4

    const-string v7, "\tat %s\n"

    new-array v8, v2, [Ljava/lang/Object;

    .line 3775
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    invoke-static {v7, v8}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "weex"

    const-string v3, "getJSThreadStackTrace error:"

    .line 3778
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3780
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1907
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/16 v2, 0xd

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 1910
    :cond_1
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeInitFramework(Landroid/os/Message;)V

    goto :goto_0

    .line 1913
    :cond_2
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeCallJSBatch(Landroid/os/Message;)V

    goto :goto_0

    .line 1925
    :cond_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_6

    .line 1926
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1927
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v1, p1}, Lcom/taobao/weex/common/IWXBridge;->takeHeapSnapshot(Ljava/lang/String;)V

    goto :goto_0

    .line 1916
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;

    if-nez p1, :cond_5

    goto :goto_0

    .line 1920
    :cond_5
    new-instance v1, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v3, 0x2

    iget-object p1, p1, Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;->callbackId:Ljava/lang/String;

    invoke-direct {v1, v3, p1}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    new-array p1, v2, [Lcom/taobao/weex/bridge/WXJSObject;

    aput-object v1, p1, v0

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, "setTimeoutCallback"

    .line 1922
    invoke-direct {p0, v2, v1, v3, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V

    :cond_6
    :goto_0
    return v0
.end method

.method public declared-synchronized initScriptsFramework(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "framework"
        }
    .end annotation

    monitor-enter p0

    .line 1264
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1265
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 1266
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1267
    iget-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 1268
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1269
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public invokeCreateInstanceContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "namespace",
            "function",
            "args",
            "logTaskDetail"
        }
    .end annotation

    .line 2002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invokeCreateInstanceContext instanceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " function:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2003
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, " isJSFrameworkInit\uff1a%b"

    invoke-static {v2, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2002
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 2004
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string v1, "createInstanceContext >>>> instanceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "function:"

    .line 2005
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_0

    .line 2007
    iget-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string v0, " tasks:"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2008
    :cond_0
    iget-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 2009
    iget-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2011
    iget-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {p5, p1, p2, p3, p4}, Lcom/taobao/weex/common/IWXBridge;->createInstanceContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I

    move-result p1

    return p1
.end method

.method public invokeDestoryInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "namespace",
            "function",
            "args",
            "logTaskDetail"
        }
    .end annotation

    .line 2017
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string v1, "callJS >>>> instanceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "function:"

    .line 2018
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_0

    .line 2020
    iget-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    const-string v0, " tasks:"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2021
    :cond_0
    iget-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    .line 2022
    iget-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mLodBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2024
    iget-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {p5, p1}, Lcom/taobao/weex/common/IWXBridge;->removeInstanceRenderType(Ljava/lang/String;)V

    .line 2025
    iget-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {p5, p1, p2, p3, p4}, Lcom/taobao/weex/common/IWXBridge;->destoryInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I

    return-void
.end method

.method public invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "instanceId",
            "namespace",
            "function",
            "args",
            "logTaskDetail"
        }
    .end annotation

    .line 1942
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isOpenDebugLog()Z

    .line 1951
    sget-boolean p5, Lio/dcloud/common/util/RuningAcitvityUtil;->isRuningActivity:Z

    if-nez p5, :cond_0

    return-void

    .line 1954
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1955
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p5

    if-eqz p5, :cond_3

    .line 1956
    invoke-virtual {p5}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v2

    sget-object v3, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER_BINARY:Lcom/taobao/weex/common/WXRenderStrategy;

    if-ne v2, v3, :cond_3

    .line 1958
    array-length p2, p4

    const/4 p3, 0x2

    if-ne p2, p3, :cond_2

    const/4 p2, 0x0

    aget-object p2, p4, p2

    iget-object p2, p2, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    instance-of p2, p2, Ljava/lang/String;

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    aget-object p3, p4, p2

    iget-object p3, p3, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    instance-of p3, p3, Ljava/lang/String;

    if-eqz p3, :cond_2

    aget-object p2, p4, p2

    iget-object p2, p2, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    .line 1960
    invoke-direct {p0, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->extractCallbackArgs(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 1964
    :cond_1
    iget-object p3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Landroid/util/Pair;

    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    iget-object p4, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p4, Landroid/util/Pair;

    iget-object p4, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->callbackJavascriptOnDataRender(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "invokeExecJS on data render that is not a callback call"

    .line 1961
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    return-void

    .line 1966
    :cond_3
    new-instance v8, Lcom/taobao/weex/bridge/WXBridgeManager$20;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/taobao/weex/bridge/WXBridgeManager$20;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)V

    const-string p1, "ExecJs"

    invoke-static {v8, p5, p1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    .line 1971
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_1
    if-eqz p5, :cond_4

    .line 1974
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    .line 1975
    invoke-virtual {p5}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object p3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string/jumbo p4, "wxFSCallJsTotalNum"

    invoke-virtual {p3, p4, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->updateFSDiffStats(Ljava/lang/String;D)V

    .line 1976
    invoke-virtual {p5}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object p3

    long-to-double v0, p1

    const-string/jumbo p4, "wxFSCallJsTotalTime"

    invoke-virtual {p3, p4, v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->updateFSDiffStats(Ljava/lang/String;D)V

    .line 1977
    invoke-virtual {p5, p1, p2}, Lcom/taobao/weex/WXSDKInstance;->callJsTime(J)V

    :cond_4
    return-void
.end method

.method public isJSFrameworkInit()Z
    .locals 1

    .line 387
    sget-boolean v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mInit:Z

    return v0
.end method

.method public isJSThread()Z
    .locals 5

    .line 2425
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXThread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public jsEngineMultiThreadEnable()Z
    .locals 1

    .line 314
    sget-boolean v0, Lcom/taobao/weex/bridge/WXBridgeManager;->isJsEngineMultiThreadEnable:Z

    return v0
.end method

.method public loadJsBundleInPreInitMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "instanceId",
            "js"
        }
    .end annotation

    .line 1090
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager$9;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public markDirty(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "ref",
            "dirty"
        }
    .end annotation

    .line 3698
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3699
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/IWXBridge;->markDirty(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public notifyLayout(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instanceId"
        }
    .end annotation

    .line 3560
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 3561
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->notifyLayout(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public notifySerializeCodeCache()V
    .locals 1

    .line 2756
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$27;

    invoke-direct {v0, p0}, Lcom/taobao/weex/bridge/WXBridgeManager$27;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyTrimMemory()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onInstanceClose(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instanceId"
        }
    .end annotation

    .line 3579
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3580
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->onInstanceClose(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onInteractionTimeUpdate(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "instanceId"
        }
    .end annotation

    .line 303
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$1;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager$1;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public optionObjConvert(ZLcom/taobao/weex/bridge/WXBridgeManager$BundType;Lcom/taobao/weex/bridge/WXJSObject;)Lcom/taobao/weex/bridge/WXJSObject;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "useSandBox",
            "type",
            "opt"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p3

    .line 1781
    :cond_0
    :try_start_0
    iget-object p1, p3, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1782
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string p2, "env"

    .line 1784
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "options"

    .line 1785
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1787
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1788
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1792
    :cond_1
    new-instance p2, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p2

    :catchall_0
    move-exception p1

    .line 1794
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-object p3
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    const/4 v0, 0x0

    .line 565
    invoke-virtual {p0, p1, v0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->postWithName(Ljava/lang/Runnable;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    return-void
.end method

.method public post(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "r",
            "token"
        }
    .end annotation

    const/4 v0, 0x0

    .line 596
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    return-void
.end method

.method public post(Ljava/lang/Runnable;Ljava/lang/Object;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "token",
            "instance",
            "runnableName"
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 590
    :cond_0
    invoke-static {p1, p3, p4}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    .line 591
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 592
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public postDelay(Ljava/lang/Runnable;J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "r",
            "delayMillis"
        }
    .end annotation

    .line 601
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 604
    :cond_0
    invoke-static {p1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public postWithName(Ljava/lang/Runnable;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "instance",
            "runnableName"
        }
    .end annotation

    .line 569
    invoke-static {p1, p2, p3}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p1

    .line 570
    iget-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mInterceptor:Lcom/taobao/weex/utils/batch/Interceptor;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/taobao/weex/utils/batch/Interceptor;->take(Ljava/lang/Runnable;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 574
    :cond_0
    iget-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-nez p2, :cond_1

    return-void

    .line 577
    :cond_1
    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public refreshInstance(Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "instanceId",
            "jsonData"
        }
    .end annotation

    .line 1455
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1458
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    new-instance v1, Lcom/taobao/weex/bridge/WXBridgeManager$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager$16;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V

    invoke-static {v1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public registerComponents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "components"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 2373
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 2374
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2377
    :cond_0
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$24;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager$24;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/List;)V

    .line 2384
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSThread()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2385
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 2387
    :cond_1
    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V
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

    .line 3735
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3736
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/common/IWXBridge;->registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3738
    :cond_0
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWeexCoreEnvOptions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public registerModules(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "modules"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2355
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2356
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2357
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mRegisterModuleFailList:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeRegisterModules(Ljava/util/Map;Ljava/util/List;)V

    goto :goto_0

    .line 2359
    :cond_0
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$23;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager$23;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/Map;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public reloadPageLayout(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instanceId"
        }
    .end annotation

    .line 3709
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3710
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->reloadPageLayout(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public removeMessage(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "what",
            "obj"
        }
    .end annotation

    .line 638
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    if-eqz v0, :cond_1

    .line 639
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXThread;->isWXThreadAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public reportJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "function",
            "exception"
        }
    .end annotation

    const-string v0, "jsscope::"

    .line 2539
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    .line 2540
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2541
    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->isBase(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2544
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x4

    const-string v5, "app-service.js"

    const-string v6, "uni-jsframework.js"

    const/4 v7, 0x0

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "service"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v3, "jsfm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v3, "jsframework"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    packed-switch v2, :pswitch_data_0

    const/4 v4, 0x6

    .line 2557
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2559
    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getUniPagePath()Ljava/lang/String;

    move-result-object v6

    if-ne v6, v5, :cond_6

    goto :goto_1

    :cond_5
    move-object v6, p1

    goto :goto_2

    :pswitch_0
    move-object v6, p1

    :goto_1
    const/4 v4, 0x5

    .line 2569
    :cond_6
    :goto_2
    :pswitch_1
    invoke-static {}, Lio/dcloud/common/util/AppRuntime;->getUniStatistics()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string/jumbo v3, "version"

    .line 2571
    invoke-static {v2, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "enable"

    .line 2572
    invoke-static {v2, v5}, Lio/dcloud/common/util/JSONUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    const-string v5, "2"

    .line 2573
    invoke-static {v5, v3}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    const/4 v7, 0x1

    :cond_7
    if-eqz v7, :cond_8

    .line 2576
    invoke-static {v0, v6, p3, v4}, Lio/dcloud/common/adapter/util/UEH;->commitUncatchException(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_8
    const/16 v0, 0x9

    .line 2579
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 2581
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportJSException >>>> instanceId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", exception function:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", exception:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 2585
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_JS_EXECUTE:Lcom/taobao/weex/common/WXErrorCode;

    if-eqz p1, :cond_13

    .line 2586
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 2587
    invoke-virtual {v4, v1}, Lcom/taobao/weex/WXSDKInstance;->setHasException(Z)V

    const-string v5, "createInstance"

    .line 2589
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->isContentMd5Match()Z

    move-result v6

    if-nez v6, :cond_d

    .line 2593
    :cond_a
    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v6

    if-eqz v6, :cond_b

    sget v6, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    if-le v6, v1, :cond_b

    sget v6, Lcom/taobao/weex/bridge/WXBridgeManager;->reInitCount:I

    const/16 v7, 0xa

    if-ge v6, v7, :cond_b

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->isNeedReLoad()Z

    move-result v6

    if-nez v6, :cond_b

    .line 2594
    new-instance v2, Lcom/taobao/weex/ui/action/ActionReloadPage;

    invoke-direct {v2, p1, v1}, Lcom/taobao/weex/ui/action/ActionReloadPage;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Lcom/taobao/weex/ui/action/ActionReloadPage;->executeAction()V

    .line 2595
    invoke-virtual {v4, v1}, Lcom/taobao/weex/WXSDKInstance;->setNeedLoad(Z)V

    return-void

    .line 2598
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 2599
    invoke-virtual {v6}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", reportJSException >>>> instanceId:"

    .line 2600
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2601
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2602
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", extInitTime:"

    .line 2603
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v6, Lcom/taobao/weex/bridge/WXBridgeManager;->sInitFrameWorkTimeOrigin:J

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", extInitErrorMsg:"

    .line 2604
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/taobao/weex/bridge/WXBridgeManager;->sInitFrameWorkMsg:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2605
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2606
    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_ERR_INSTANCE_CREATE_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 2607
    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    .line 2606
    invoke-virtual {v4, v2, v1}, Lcom/taobao/weex/WXSDKInstance;->onRenderError(Ljava/lang/String;Ljava/lang/String;)V

    .line 2610
    sget-boolean v1, Lcom/taobao/weex/WXEnvironment;->sInAliWeex:Z

    if-nez v1, :cond_c

    .line 2611
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_JS_CREATE_INSTANCE:Lcom/taobao/weex/common/WXErrorCode;

    const/4 v2, 0x0

    invoke-static {p1, v1, p2, p3, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    return-void

    :catch_0
    move-exception v1

    .line 2616
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 2619
    :cond_d
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    iget-boolean v1, v1, Lcom/taobao/weex/performance/WXInstanceApm;->hasAddView:Z

    if-nez v1, :cond_e

    .line 2620
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_JS_CREATE_INSTANCE:Lcom/taobao/weex/common/WXErrorCode;

    goto :goto_3

    :cond_e
    const-string v1, "createInstanceContext"

    .line 2621
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    iget-boolean v1, v1, Lcom/taobao/weex/performance/WXInstanceApm;->hasAddView:Z

    if-nez v1, :cond_f

    .line 2622
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_JS_CREATE_INSTANCE_CONTEXT:Lcom/taobao/weex/common/WXErrorCode;

    goto :goto_3

    :cond_f
    const-string v1, "UpdateComponentData"

    .line 2624
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "CreatePageWithContent"

    .line 2625
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "PostTaskToMsgLoop"

    .line 2626
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "JsfmNotInitInEagleMode"

    .line 2627
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2628
    :cond_10
    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    iget-boolean v1, v1, Lcom/taobao/weex/performance/WXInstanceApm;->hasAddView:Z

    if-nez v1, :cond_11

    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_DEGRAD_EAGLE_RENDER_ERROR:Lcom/taobao/weex/common/WXErrorCode;

    goto :goto_3

    :cond_11
    const-string v1, "dc_checkappkey"

    .line 2629
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2630
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_VALIDAPPKEY:Lcom/taobao/weex/common/WXErrorCode;

    .line 2632
    :cond_12
    :goto_3
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, p2, p3}, Lcom/taobao/weex/WXSDKInstance;->onJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    :cond_13
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->doReportJSException(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bc2392b -> :sswitch_4
        -0x1eea8e81 -> :sswitch_3
        0x31ebd0 -> :sswitch_2
        0x11797e4e -> :sswitch_1
        0x7643c6b5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public restart()V
    .locals 2

    const/4 v0, 0x0

    .line 542
    invoke-direct {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->setJSFrameworkInit(Z)V

    .line 543
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->resetAllModuleState()V

    .line 544
    sget-boolean v0, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    invoke-direct {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->initWXBridge(Z)V

    .line 545
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    sget-boolean v1, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    invoke-interface {v0, v1}, Lcom/taobao/weex/common/IWXBridge;->resetWXBridge(Z)V

    return-void
.end method

.method public sendMessageDelayed(Landroid/os/Message;J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "delayMillis"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 630
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    if-eqz v0, :cond_1

    .line 631
    invoke-virtual {v0}, Lcom/taobao/weex/common/WXThread;->isWXThreadAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSThread:Lcom/taobao/weex/common/WXThread;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setDefaultRootSize(Ljava/lang/String;FFZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "instanceId",
            "defaultWidth",
            "defaultHeight",
            "isWidthWrapContent",
            "isHeightWrapContent"
        }
    .end annotation

    .line 3591
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3592
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/taobao/weex/common/IWXBridge;->setDefaultHeightAndWidthIntoRootDom(Ljava/lang/String;FFZZ)V

    :cond_1
    return-void
.end method

.method public setDeviceDisplay(Ljava/lang/String;FFF)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "instanceId",
            "deviceWidth",
            "deviceHeight",
            "scale"
        }
    .end annotation

    .line 3637
    new-instance v6, Lcom/taobao/weex/bridge/WXBridgeManager$28;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager$28;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;FFF)V

    invoke-virtual {p0, v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDeviceDisplayOfPage(Ljava/lang/String;FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "width",
            "height"
        }
    .end annotation

    .line 3715
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3716
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/IWXBridge;->setDeviceDisplayOfPage(Ljava/lang/String;FF)V

    :cond_1
    return-void
.end method

.method public setFlexDirectionDef(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "def"
        }
    .end annotation

    .line 3759
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3760
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1}, Lcom/taobao/weex/common/IWXBridge;->setFlexDirectionDef(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setInterceptor(Lcom/taobao/weex/utils/batch/Interceptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interceptor"
        }
    .end annotation

    .line 582
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mInterceptor:Lcom/taobao/weex/utils/batch/Interceptor;

    return-void
.end method

.method public setLogLevel(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "level",
            "isPerf"
        }
    .end annotation

    .line 608
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager$6;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;IZ)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMargin(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "ref",
            "edge",
            "value"
        }
    .end annotation

    .line 3680
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3681
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taobao/weex/common/IWXBridge;->setMargin(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    :cond_1
    return-void
.end method

.method public setPadding(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "ref",
            "edge",
            "value"
        }
    .end annotation

    .line 3686
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3687
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taobao/weex/common/IWXBridge;->setPadding(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    :cond_1
    return-void
.end method

.method public setPageArgument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "key",
            "value"
        }
    .end annotation

    .line 3704
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3705
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/common/IWXBridge;->setPageArgument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setPosition(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "ref",
            "edge",
            "value"
        }
    .end annotation

    .line 3692
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3693
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taobao/weex/common/IWXBridge;->setPosition(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    :cond_1
    return-void
.end method

.method public setRenderContentWrapContentToCore(ZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "wrap",
            "instanceId"
        }
    .end annotation

    .line 3597
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3598
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/common/IWXBridge;->setRenderContainerWrapContent(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSandBoxContext(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "flag"
        }
    .end annotation

    .line 344
    sget-boolean v0, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z

    if-eq p1, v0, :cond_2

    .line 345
    sput-boolean p1, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z

    .line 347
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSThread()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 349
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setJSFrameworkInit(Z)V

    .line 350
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->resetAllModuleState()V

    .line 352
    sget-boolean p1, Lcom/taobao/weex/bridge/WXBridgeManager;->isSandBoxContext:Z

    if-nez p1, :cond_0

    .line 353
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string v0, "main.js"

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 355
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string/jumbo v0, "weex-main-jsfm.js"

    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 357
    :goto_0
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->initFramework(Ljava/lang/String;)V

    .line 358
    invoke-static {}, Lcom/taobao/weex/bridge/WXServiceManager;->reload()V

    .line 359
    invoke-static {}, Lcom/taobao/weex/bridge/WXModuleManager;->reload()V

    .line 360
    invoke-static {}, Lcom/taobao/weex/ui/WXComponentRegistry;->reload()V

    goto :goto_1

    .line 362
    :cond_1
    new-instance p1, Lcom/taobao/weex/bridge/WXBridgeManager$3;

    invoke-direct {p1, p0}, Lcom/taobao/weex/bridge/WXBridgeManager$3;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public declared-synchronized setStackTopInstance(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "instanceId"
        }
    .end annotation

    monitor-enter p0

    .line 554
    :try_start_0
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$5;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager$5;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "ref",
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3613
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;FZ)V

    return-void
.end method

.method public setStyleHeight(Ljava/lang/String;Ljava/lang/String;FZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "ref",
            "value",
            "update"
        }
    .end annotation

    .line 3617
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3618
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taobao/weex/common/IWXBridge;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;FZ)V

    :cond_1
    return-void
.end method

.method public setStyleWidth(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "ref",
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3603
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleWidth(Ljava/lang/String;Ljava/lang/String;FZ)V

    return-void
.end method

.method public setStyleWidth(Ljava/lang/String;Ljava/lang/String;FZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "ref",
            "value",
            "update"
        }
    .end annotation

    .line 3607
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isSkipFrameworkInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3608
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taobao/weex/common/IWXBridge;->setStyleWidth(Ljava/lang/String;Ljava/lang/String;FZ)V

    :cond_1
    return-void
.end method

.method setTimeout(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callbackId",
            "time"
        }
    .end annotation

    .line 619
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 620
    iput v1, v0, Landroid/os/Message;->what:I

    .line 621
    new-instance v1, Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;

    invoke-direct {v1}, Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;-><init>()V

    .line 622
    iput-object p1, v1, Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;->callbackId:Ljava/lang/String;

    .line 623
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    float-to-long p1, p1

    iput-wide p1, v1, Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;->time:J

    .line 624
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 626
    iget-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    iget-wide v1, v1, Lcom/taobao/weex/bridge/WXBridgeManager$TimerInfo;->time:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setUseSingleProcess(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "flag"
        }
    .end annotation

    .line 284
    sget-boolean v0, Lcom/taobao/weex/bridge/WXBridgeManager;->isUseSingleProcess:Z

    if-eq p1, v0, :cond_0

    .line 285
    sput-boolean p1, Lcom/taobao/weex/bridge/WXBridgeManager;->isUseSingleProcess:Z

    :cond_0
    return-void
.end method

.method public setViewPortWidth(Ljava/lang/String;F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "value"
        }
    .end annotation

    .line 3749
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3750
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    invoke-interface {v0, p1, p2}, Lcom/taobao/weex/common/IWXBridge;->setViewPortWidth(Ljava/lang/String;F)V

    :cond_0
    return-void
.end method

.method public shouldReloadCurrentInstance(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aUrl"
        }
    .end annotation

    .line 979
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 981
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getWxConfigAdapter()Lcom/taobao/weex/adapter/IWXConfigAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "android_weex_ext_config"

    const-string v4, "check_biz_url"

    const-string v5, "true"

    .line 984
    invoke-interface {v2, v3, v4, v5}, Lcom/taobao/weex/adapter/IWXConfigAdapter;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 983
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 987
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check_biz_url : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    .line 988
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 989
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 991
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 996
    :cond_0
    sget-object v2, Lcom/taobao/weex/bridge/WXBridgeManager;->crashUrl:Ljava/lang/String;

    if-eqz v2, :cond_3

    if-eqz v2, :cond_1

    .line 997
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    sget-wide v2, Lcom/taobao/weex/bridge/WXBridgeManager;->lastCrashTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3a98

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    goto :goto_0

    .line 1003
    :cond_2
    sput-wide v0, Lcom/taobao/weex/bridge/WXBridgeManager;->lastCrashTime:J

    const/4 p1, 0x0

    return p1

    .line 999
    :cond_3
    :goto_0
    sput-object p1, Lcom/taobao/weex/bridge/WXBridgeManager;->crashUrl:Ljava/lang/String;

    .line 1000
    sput-wide v0, Lcom/taobao/weex/bridge/WXBridgeManager;->lastCrashTime:J

    const/4 p1, 0x1

    return p1
.end method

.method public stopRemoteDebug()V
    .locals 6

    .line 479
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 481
    :try_start_0
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.taobao.weex.devtools.debug.DebugServerProxy"

    .line 482
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    .line 484
    :cond_0
    sget-object v0, Lcom/taobao/weex/bridge/WXBridgeManager;->clazz_debugProxy:Ljava/lang/Class;

    if-eqz v0, :cond_1

    const-string v1, "stop"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 485
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 487
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 488
    iput-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWxDebugProxy:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public varargs syncCallJSEventWithResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)Lcom/taobao/weex/bridge/EventResult;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "method",
            "instanceId",
            "params",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/taobao/weex/bridge/EventResult;"
        }
    .end annotation

    .line 1107
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1108
    new-instance v1, Lcom/taobao/weex/bridge/WXBridgeManager$10;

    invoke-direct {v1, p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager$10;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/concurrent/CountDownLatch;)V

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 1116
    :try_start_0
    invoke-direct/range {v2 .. v7}, Lcom/taobao/weex/bridge/WXBridgeManager;->asyncCallJSEventWithResult(Lcom/taobao/weex/bridge/EventResult;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V

    const-wide/16 p1, 0x64

    .line 1117
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    const-string p2, "syncCallJSEventWithResult"

    .line 1120
    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public syncExecJsOnInstanceWithResult(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "instanceId",
            "js",
            "type"
        }
    .end annotation

    const-string v0, ""

    .line 1068
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1069
    new-instance v2, Lcom/taobao/weex/bridge/WXBridgeManager$8;

    invoke-direct {v2, p0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager$8;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/util/concurrent/CountDownLatch;)V

    .line 1077
    :try_start_0
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->execJSOnInstance(Lcom/taobao/weex/bridge/EventResult;Ljava/lang/String;Ljava/lang/String;I)V

    const-wide/16 p1, 0x64

    .line 1078
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 1079
    invoke-virtual {v2}, Lcom/taobao/weex/bridge/EventResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1080
    invoke-virtual {v2}, Lcom/taobao/weex/bridge/EventResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_0
    return-object v0

    :catchall_0
    move-exception p1

    const-string p2, "syncCallExecJsOnInstance"

    .line 1084
    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public takeJSHeapSnapshot(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filename"
        }
    .end annotation

    .line 2768
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2769
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p1, 0xd

    .line 2770
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2771
    iget-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 2772
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateInitDeviceParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "width",
            "height",
            "density",
            "statusHeight"
        }
    .end annotation

    .line 3646
    invoke-virtual {p0}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3649
    :cond_0
    new-instance v0, Lcom/taobao/weex/bridge/WXBridgeManager$29;

    invoke-direct {v0, p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager$29;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    .line 3655
    new-instance p1, Lcom/taobao/weex/bridge/WXBridgeManager$30;

    invoke-direct {p1, p0, p2}, Lcom/taobao/weex/bridge/WXBridgeManager$30;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    .line 3662
    new-instance p1, Lcom/taobao/weex/bridge/WXBridgeManager$31;

    invoke-direct {p1, p0, p3}, Lcom/taobao/weex/bridge/WXBridgeManager$31;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    if-eqz p4, :cond_1

    .line 3670
    new-instance p1, Lcom/taobao/weex/bridge/WXBridgeManager$32;

    invoke-direct {p1, p0, p4}, Lcom/taobao/weex/bridge/WXBridgeManager$32;-><init>(Lcom/taobao/weex/bridge/WXBridgeManager;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public verifyClientKeyPayload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "appId",
            "appKey",
            "clientKeyData"
        }
    .end annotation

    .line 3805
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager;->mWXBridge:Lcom/taobao/weex/common/IWXBridge;

    instance-of v1, v0, Lcom/taobao/weex/bridge/WXBridge;

    if-eqz v1, :cond_0

    .line 3806
    check-cast v0, Lcom/taobao/weex/bridge/WXBridge;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/weex/bridge/WXBridge;->verifyClientKeyPayload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
