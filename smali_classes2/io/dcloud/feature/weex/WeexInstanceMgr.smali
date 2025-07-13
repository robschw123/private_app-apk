.class public Lio/dcloud/feature/weex/WeexInstanceMgr;
.super Ljava/lang/Object;
.source "WeexInstanceMgr.java"

# interfaces
.implements Lcom/taobao/weex/IWXStatisticsListener;
.implements Lio/dcloud/common/DHInterface/IUniInstanceMgr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex/WeexInstanceMgr$IWXStatisticsCallBack;,
        Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;
    }
.end annotation


# static fields
.field static final SERVICE_NAME:Ljava/lang/String; = "weexPlus"

.field private static instance:Lio/dcloud/feature/weex/WeexInstanceMgr;


# instance fields
.field TAG:Ljava/lang/String;

.field private callBacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/feature/weex/WeexInstanceMgr$IWXStatisticsCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private complier:Ljava/lang/String;

.field private control:Ljava/lang/String;

.field private featureMgr:Lio/dcloud/common/DHInterface/AbsMgr;

.field private instanceHashMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/feature/weex/WXViewWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private isAssetsRes:Z

.field private isJSFKFileNotFound:Z

.field private isJsFrameworkReady:Z

.field private isUniServiceCreated:Z

.field private isWeexInitEnd:Z

.field private jsSACName:Ljava/lang/String;

.field private mApplication:Landroid/app/Application;

.field private mConfusionMgr:Lio/dcloud/common/DHInterface/IConfusionMgr;

.field private mHandler:Landroid/os/Handler;

.field private mPreInstanceId:Ljava/lang/String;

.field private mPreUniAppid:Ljava/lang/String;

.field private mPreUniMPCallBackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/dcloud/common/DHInterface/ICallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mReladyCallBacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/DHInterface/ICallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mRestartReadyCall:Lio/dcloud/common/DHInterface/ICallBack;

.field private mUniNViewModules:Ljava/lang/String;

.field private mVueVersion:I

.field private render:Ljava/lang/String;

.field private sb:Ljava/lang/StringBuffer;

.field private serviceWrapperMapsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/feature/weex/WXServiceWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WeexInstanceMgr"

    .line 102
    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->TAG:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->callBacks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mUniNViewModules:Ljava/lang/String;

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mReladyCallBacks:Ljava/util/ArrayList;

    const-string v1, "weex"

    .line 112
    iput-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->complier:Ljava/lang/String;

    const-string v1, "auto"

    .line 113
    iput-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->render:Ljava/lang/String;

    const-string v1, "uni-app-config"

    .line 114
    iput-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->jsSACName:Ljava/lang/String;

    const-string v1, "uni-v3"

    .line 115
    iput-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->control:Ljava/lang/String;

    const/4 v1, 0x2

    .line 116
    iput v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mVueVersion:I

    const/4 v1, 0x0

    .line 117
    iput-boolean v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isWeexInitEnd:Z

    .line 118
    iput-boolean v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isJsFrameworkReady:Z

    .line 119
    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mApplication:Landroid/app/Application;

    .line 121
    iput-boolean v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isAssetsRes:Z

    .line 124
    iput-boolean v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isJSFKFileNotFound:Z

    .line 1010
    iput-boolean v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isUniServiceCreated:Z

    .line 1022
    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniAppid:Ljava/lang/String;

    .line 1023
    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreInstanceId:Ljava/lang/String;

    .line 1088
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniMPCallBackMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/weex/WeexInstanceMgr;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->unRegisterUniappService()V

    return-void
.end method

.method static synthetic access$100(Lio/dcloud/feature/weex/WeexInstanceMgr;)Lio/dcloud/common/DHInterface/ICallBack;
    .locals 0

    .line 100
    iget-object p0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mRestartReadyCall:Lio/dcloud/common/DHInterface/ICallBack;

    return-object p0
.end method

.method static synthetic access$102(Lio/dcloud/feature/weex/WeexInstanceMgr;Lio/dcloud/common/DHInterface/ICallBack;)Lio/dcloud/common/DHInterface/ICallBack;
    .locals 0

    .line 100
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mRestartReadyCall:Lio/dcloud/common/DHInterface/ICallBack;

    return-object p1
.end method

.method static synthetic access$200(Lio/dcloud/feature/weex/WeexInstanceMgr;)Landroid/app/Application;
    .locals 0

    .line 100
    iget-object p0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mApplication:Landroid/app/Application;

    return-object p0
.end method

.method static synthetic access$202(Lio/dcloud/feature/weex/WeexInstanceMgr;Landroid/app/Application;)Landroid/app/Application;
    .locals 0

    .line 100
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mApplication:Landroid/app/Application;

    return-object p1
.end method

.method static synthetic access$300(Lio/dcloud/feature/weex/WeexInstanceMgr;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->initJSFramework(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lio/dcloud/feature/weex/WeexInstanceMgr;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->wrapperDestroy()V

    return-void
.end method

.method static synthetic access$500(Lio/dcloud/feature/weex/WeexInstanceMgr;Landroid/app/Application;Ljava/lang/String;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->preUniControlService(Landroid/app/Application;Ljava/lang/String;)V

    return-void
.end method

.method private clearHandler()V
    .locals 1

    .line 1129
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1130
    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private forEach(Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 847
    :try_start_0
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 849
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex/WXViewWrapper;

    if-eqz v1, :cond_0

    .line 851
    invoke-interface {p1, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;->onEach(Ljava/lang/Object;)V

    goto :goto_0

    .line 854
    :cond_1
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 856
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex/WXServiceWrapper;

    if-eqz v1, :cond_2

    .line 858
    invoke-interface {p1, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;->onEach(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forEach---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private getAppFileStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "appid",
            "fileName"
        }
    .end annotation

    const/4 v0, 0x0

    .line 426
    :try_start_0
    invoke-static {p1}, Lio/dcloud/common/adapter/util/AndroidResources;->initAndroidResources(Landroid/content/Context;)V

    .line 427
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->parseControl()V

    goto :goto_0

    .line 430
    :cond_0
    sput-object p2, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    .line 432
    :goto_0
    sget-boolean p2, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    if-nez p2, :cond_2

    invoke-static {}, Lio/dcloud/common/adapter/io/DHFile;->hasFile()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p2, 0x1

    .line 433
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apps/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/www/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 434
    iget-boolean v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isAssetsRes:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    if-nez v1, :cond_3

    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v1, :cond_3

    .line 436
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    :cond_3
    move-object v1, v0

    :goto_3
    if-nez v1, :cond_6

    if-eqz p2, :cond_4

    .line 444
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Android/data/"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    .line 446
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 448
    :goto_4
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 452
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 455
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    nop

    :goto_5
    if-eqz v0, :cond_6

    goto :goto_7

    :catch_2
    move-exception p1

    move-object v0, v1

    goto :goto_6

    :catch_3
    move-exception p1

    .line 464
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    move-object v1, v0

    :cond_6
    return-object v1
.end method

.method private getConfigParam()Ljava/lang/String;
    .locals 4

    .line 574
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v1, "__HtMl_Id__"

    const-string v2, "__uniapp_webview"

    .line 575
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 577
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "platform"

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "debug"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 581
    invoke-static {}, Lio/dcloud/common/util/language/LanguageUtil;->getDeviceDefLocalLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "language"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "version"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "name"

    const-string v3, "Android"

    .line 583
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "vendor"

    const-string v3, "Google"

    .line 584
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "os"

    .line 585
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v2, 0x0

    .line 588
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "CONNECTION_TYPE"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "networkinfo"

    .line 589
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 2

    .line 1122
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1123
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mHandler:Landroid/os/Handler;

    .line 1125
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getUniFileStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "appid",
            "fileName"
        }
    .end annotation

    .line 1075
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getAppFileStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 1078
    :try_start_0
    invoke-static {p1}, Lio/dcloud/common/util/IOUtil;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1080
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private handleEncryptionInputStream(Ljava/io/InputStream;Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputStream",
            "context",
            "isCode"
        }
    .end annotation

    .line 485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz p3, :cond_0

    .line 487
    new-instance p3, Lio/dcloud/common/adapter/io/UnicodeInputStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p1, v0}, Lio/dcloud/common/adapter/io/UnicodeInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object p1, p3

    :cond_0
    const/4 p3, 0x0

    new-array p3, p3, [B

    .line 491
    :try_start_0
    invoke-static {p1}, Lio/dcloud/common/util/IOUtil;->getBytes(Ljava/io/InputStream;)[B

    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 493
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    .line 496
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mConfusionMgr:Lio/dcloud/common/DHInterface/IConfusionMgr;

    if-eqz v0, :cond_1

    .line 497
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Lio/dcloud/common/DHInterface/IConfusionMgr;->handleEncryption(Landroid/content/Context;[B)Ljava/lang/String;

    move-result-object p1

    .line 499
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 500
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>([B)V

    :cond_2
    return-object p1
.end method

.method private initJSFramework(Landroid/content/Context;Ljava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "application",
            "appid"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "allowDownloadWithoutWiFi"

    const-string v3, "showTipsWithoutWifi"

    const-string v4, "timeOut"

    const-string v5, "x5"

    const-string v6, "minUserAgentVersion"

    const-string v7, "webView"

    const-string v8, "useJSProcess"

    const-string v9, "vueVersion"

    const-string v10, "nvueCompiler"

    const-string v11, "uniStatistics"

    const-string v12, "uni-app"

    const-string v13, "plus"

    const-string v14, "uniCloud"

    const-string v15, "version"

    move-object/from16 v16, v14

    const-string v14, "enable"

    move-object/from16 v17, v15

    .line 333
    sget-object v15, Lio/dcloud/common/util/BaseInfo;->sConfigXML:Ljava/lang/String;

    move-object/from16 v18, v14

    move-object/from16 v14, p2

    invoke-direct {v0, v1, v14, v15}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getAppFileStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    if-eqz v14, :cond_d

    const/4 v15, 0x1

    .line 336
    :try_start_0
    invoke-direct {v0, v14, v1, v15}, Lio/dcloud/feature/weex/WeexInstanceMgr;->handleEncryptionInputStream(Ljava/io/InputStream;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 338
    invoke-virtual {v1, v13}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 339
    invoke-virtual {v1, v13}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v13, "renderer"

    if-eqz v1, :cond_8

    .line 340
    :try_start_1
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 341
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v12

    .line 342
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v14

    const-string v15, "uni-v3"

    iput-object v15, v14, Lio/dcloud/feature/weex/WeexInstanceMgr;->control:Ljava/lang/String;

    .line 343
    invoke-virtual {v12, v13}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 344
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v14

    invoke-virtual {v12, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lio/dcloud/feature/weex/WeexInstanceMgr;->render:Ljava/lang/String;

    .line 346
    :cond_0
    invoke-virtual {v12, v10}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 347
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v14

    invoke-virtual {v12, v10}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v14, Lio/dcloud/feature/weex/WeexInstanceMgr;->complier:Ljava/lang/String;

    .line 350
    :cond_1
    invoke-virtual {v12, v9}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 351
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v10

    invoke-virtual {v12, v9}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v9

    iput v9, v10, Lio/dcloud/feature/weex/WeexInstanceMgr;->mVueVersion:I

    goto :goto_0

    .line 354
    :cond_2
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v9

    const/4 v10, 0x2

    iput v10, v9, Lio/dcloud/feature/weex/WeexInstanceMgr;->mVueVersion:I

    .line 356
    :goto_0
    invoke-virtual {v12, v8}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 357
    invoke-virtual {v12, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "false"

    .line 359
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 361
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/taobao/weex/bridge/WXBridgeManager;->setUseSingleProcess(Z)V

    goto :goto_1

    .line 364
    :cond_3
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/taobao/weex/bridge/WXBridgeManager;->setUseSingleProcess(Z)V

    .line 367
    :cond_4
    :goto_1
    invoke-virtual {v12, v7}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 368
    invoke-virtual {v12, v7}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v7, :cond_8

    .line 371
    :try_start_2
    invoke-virtual {v7, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 372
    invoke-virtual {v7, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lio/dcloud/common/util/BaseInfo;->minUserAgentVersion:Ljava/lang/String;

    .line 374
    :cond_5
    invoke-virtual {v7, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 375
    invoke-virtual {v7, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 376
    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 377
    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    sput v4, Lio/dcloud/common/util/BaseInfo;->timeOut:I

    .line 379
    :cond_6
    invoke-virtual {v5, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 380
    invoke-virtual {v5, v3}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lio/dcloud/common/util/BaseInfo;->showTipsWithoutWifi:Z

    .line 382
    :cond_7
    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 383
    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lio/dcloud/common/util/BaseInfo;->allowDownloadWithoutWiFi:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    nop

    :cond_8
    :goto_2
    if-eqz v1, :cond_c

    .line 392
    :try_start_3
    invoke-virtual {v1, v11}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 393
    invoke-virtual {v1, v11}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 395
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v4, v18

    .line 397
    :try_start_4
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 398
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    move-object/from16 v4, v17

    .line 400
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 401
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    move-object/from16 v4, v16

    .line 403
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 404
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 405
    invoke-virtual {v3, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    :cond_b
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/AppRuntime;->setUniStatistics(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    nop

    :cond_c
    :goto_3
    if-eqz v1, :cond_d

    .line 413
    :try_start_5
    invoke-virtual {v1, v13}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 414
    invoke-virtual {v1, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lio/dcloud/common/util/BaseInfo;->renderer:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_d
    return-void
.end method

.method private makeWXViewWrapper(Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup;Lorg/json/JSONObject;Ljava/lang/String;I)Lio/dcloud/feature/weex/WXViewWrapper;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "webview",
            "parentView",
            "itme",
            "weexId",
            "zIndex"
        }
    .end annotation

    const-string v0, "__uniapp__service"

    .line 602
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniAppid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 603
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreInstanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 608
    :goto_0
    new-instance v0, Lio/dcloud/feature/weex/WXViewWrapper;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lio/dcloud/feature/weex/WXViewWrapper;-><init>(Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup;Lorg/json/JSONObject;Ljava/lang/String;IZ)V

    .line 609
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 610
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object p1, p1, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->destroy()V

    .line 612
    :cond_1
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private preUniControlService(Landroid/app/Application;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "appid"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1057
    iput-boolean v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isUniServiceCreated:Z

    .line 1058
    iput-object p2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniAppid:Ljava/lang/String;

    .line 1059
    new-instance v1, Lio/dcloud/feature/uniapp/UniSDKInstance;

    invoke-direct {v1, p1}, Lio/dcloud/feature/uniapp/UniSDKInstance;-><init>(Landroid/content/Context;)V

    .line 1060
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreInstanceId:Ljava/lang/String;

    const-string v2, "app-service.js"

    .line 1061
    invoke-direct {p0, p1, p2, v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getUniFileStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "app-config.js"

    .line 1062
    invoke-direct {p0, p1, p2, v4}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getUniFileStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1063
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "plus_appid"

    .line 1064
    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v5, "preload"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bundleUrl"

    .line 1066
    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1068
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " plus.weexBridge.preloadReady(\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "\"use weex:vue\""

    .line 1069
    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v3}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1070
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    const-string v2, "__uniapp__service"

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    .line 1071
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preUniControlService------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private registerReflexWeexPlugin(Landroid/content/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 538
    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.weex_amap.AMapPluginImpl"

    const-string v5, "initPlugin"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Class;

    .line 539
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.weex.map.google.GoogleMapPluginImpl"

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Class;

    .line 540
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.weex_scroller.DCScrollerPluginImpl"

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Class;

    .line 541
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.weex_barcode.BarcodePlugin"

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Class;

    .line 542
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.utsplugin.UTSPlugin"

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Class;

    .line 543
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.weex_livepusher.LivePusherPlugin"

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Class;

    .line 544
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.weex_media.VideoPlayerPlugin"

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Class;

    .line 545
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.weex_text.DCWXTextPlugin"

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Class;

    .line 546
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.weex_input.DCWXInputRegister"

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Class;

    .line 547
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.gcanvas.GCanvasRegister"

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Class;

    .line 548
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v4, "io.dcloud.feature.weex_switch.DCWXSwitchPlugin"

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Class;

    .line 550
    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "io.dcloud.feature.weex_ad.DCWXAdPlugin"

    invoke-static {p1, v5, v6, v1, v0}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "com.taobao.weex.devtools.inspector.elements.android.WXComponentDescriptor"

    const-string v0, "sClassName"

    .line 552
    invoke-static {p1, v0, v6}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 553
    instance-of v0, p1, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 554
    check-cast p1, Ljava/util/HashMap;

    .line 555
    const-class v0, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    const-string v1, "image"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    const-class v0, Lio/dcloud/feature/weex/adapter/FrescoImageComponentU;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const-class v0, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;

    const-string v1, "web-view"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const-class v0, Lio/dcloud/feature/weex/extend/DCWXView;

    const-string v1, "view"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const-class v0, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;

    const-string v1, "cover-view"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const-class v0, Lio/dcloud/feature/weex/extend/DCWXSlider;

    const-string v1, "slider"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private reloadWeexEngine()V
    .locals 0

    .line 841
    invoke-direct {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->unRegisterUniappService()V

    .line 842
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->reload()V

    return-void
.end method

.method public static declared-synchronized self()Lio/dcloud/feature/weex/WeexInstanceMgr;
    .locals 2

    const-class v0, Lio/dcloud/feature/weex/WeexInstanceMgr;

    monitor-enter v0

    .line 127
    :try_start_0
    sget-object v1, Lio/dcloud/feature/weex/WeexInstanceMgr;->instance:Lio/dcloud/feature/weex/WeexInstanceMgr;

    if-nez v1, :cond_0

    .line 128
    new-instance v1, Lio/dcloud/feature/weex/WeexInstanceMgr;

    invoke-direct {v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;-><init>()V

    sput-object v1, Lio/dcloud/feature/weex/WeexInstanceMgr;->instance:Lio/dcloud/feature/weex/WeexInstanceMgr;

    .line 130
    :cond_0
    sget-object v1, Lio/dcloud/feature/weex/WeexInstanceMgr;->instance:Lio/dcloud/feature/weex/WeexInstanceMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private unRegisterUniappService()V
    .locals 1

    .line 533
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->jsSACName:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKEngine;->unRegisterService(Ljava/lang/String;)Z

    return-void
.end method

.method private wrapperDestroy()V
    .locals 1

    .line 821
    new-instance v0, Lio/dcloud/feature/weex/WeexInstanceMgr$7;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/WeexInstanceMgr$7;-><init>(Lio/dcloud/feature/weex/WeexInstanceMgr;)V

    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->forEach(Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;)V

    .line 829
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 830
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 831
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    invoke-direct {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->reloadWeexEngine()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addComponentByName(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "component"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.taobao.weex.devtools.inspector.elements.android.WXComponentDescriptor"

    const-string v1, "sClassName"

    const/4 v2, 0x0

    .line 566
    invoke-static {v0, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 567
    instance-of v1, v0, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 568
    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public createWeexService(Lio/dcloud/common/DHInterface/IApp;Landroid/view/ViewGroup;Ljava/lang/String;Lorg/json/JSONObject;)Lio/dcloud/feature/weex/WXServiceWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "app",
            "parentView",
            "weexId",
            "data"
        }
    .end annotation

    .line 624
    new-instance v0, Lio/dcloud/feature/weex/WXServiceWrapper;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/dcloud/feature/weex/WXServiceWrapper;-><init>(Lio/dcloud/common/DHInterface/IApp;Landroid/view/ViewGroup;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 625
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {p1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public createWeexView(Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup;Lorg/json/JSONObject;Ljava/lang/String;I)Lio/dcloud/feature/weex/WXViewWrapper;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "webview",
            "parentView",
            "itme",
            "weexId",
            "zIndex"
        }
    .end annotation

    .line 595
    invoke-direct/range {p0 .. p5}, Lio/dcloud/feature/weex/WeexInstanceMgr;->makeWXViewWrapper(Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup;Lorg/json/JSONObject;Ljava/lang/String;I)Lio/dcloud/feature/weex/WXViewWrapper;

    move-result-object p1

    .line 596
    invoke-virtual {p1, p3}, Lio/dcloud/feature/weex/WXViewWrapper;->loadTemplate(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public doForFeature(Lio/dcloud/common/DHInterface/IMgr$MgrType;I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "event",
            "args"
        }
    .end annotation

    .line 696
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->featureMgr:Lio/dcloud/common/DHInterface/AbsMgr;

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {v0, p1, p2, p3}, Lio/dcloud/common/DHInterface/AbsMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findPathByWrapper(Ljava/lang/String;)Lio/dcloud/feature/weex/WXViewWrapper;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byPath"
        }
    .end annotation

    .line 744
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 745
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 746
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 747
    iget-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex/WXViewWrapper;

    .line 748
    invoke-virtual {v1, p1}, Lio/dcloud/feature/weex/WXViewWrapper;->initSrcPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 749
    invoke-virtual {v1}, Lio/dcloud/feature/weex/WXViewWrapper;->getSrcPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_0

    .line 750
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findWXBaseWrapper(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/feature/weex/WXBaseWrapper;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 704
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 705
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 706
    iget-object v3, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/feature/weex/WXBaseWrapper;

    if-eqz v2, :cond_0

    .line 708
    iget-object v3, v2, Lio/dcloud/feature/weex/WXBaseWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-ne v3, p1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method findWXBaseWrapper(Ljava/lang/String;)Lio/dcloud/feature/weex/WXBaseWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "weexId"
        }
    .end annotation

    .line 672
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/WXBaseWrapper;

    return-object p1

    .line 675
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/WXBaseWrapper;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findWXSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "weexId"
        }
    .end annotation

    .line 662
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/WXServiceWrapper;

    iget-object p1, p1, Lio/dcloud/feature/weex/WXServiceWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    return-object p1

    .line 665
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/WXViewWrapper;

    iget-object p1, p1, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findWXServiceWrapper(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/feature/weex/WXServiceWrapper;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 637
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 638
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 639
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 640
    iget-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex/WXServiceWrapper;

    if-eqz v1, :cond_0

    .line 641
    iget-object v2, v1, Lio/dcloud/feature/weex/WXServiceWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method findWXViewWrapper(Ljava/lang/String;)Lio/dcloud/feature/weex/WXViewWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "weexId"
        }
    .end annotation

    .line 630
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/WXViewWrapper;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findWebview(Lcom/taobao/weex/WXSDKInstance;)Lio/dcloud/common/DHInterface/IWebview;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 717
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 718
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 719
    iget-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex/WXViewWrapper;

    if-eqz v1, :cond_0

    .line 721
    iget-object v2, v1, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-ne v2, p1, :cond_0

    .line 722
    iget-object p1, v1, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findWebview(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/common/DHInterface/IWebview;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "webview",
            "app",
            "appid",
            "webviewid"
        }
    .end annotation

    .line 682
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->featureMgr:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    const/4 p2, 0x0

    aput-object p1, v2, p2

    const-string p1, "ui"

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "findWebview"

    const/4 v4, 0x2

    aput-object p1, v2, v4

    const/4 p1, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p3, v4, p2

    aput-object p4, v4, v3

    aput-object v4, v2, p1

    const/16 p1, 0xa

    invoke-virtual {v0, v1, p1, v2}, Lio/dcloud/common/DHInterface/AbsMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 684
    instance-of p2, p1, Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p2, :cond_1

    .line 685
    check-cast p1, Lio/dcloud/common/DHInterface/IWebview;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findWebviewByInstanceId(Ljava/lang/String;)Lio/dcloud/common/DHInterface/IWebview;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instanceId"
        }
    .end annotation

    .line 730
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 731
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 732
    iget-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex/WXViewWrapper;

    if-eqz v1, :cond_0

    .line 734
    iget-object v2, v1, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 735
    iget-object p1, v1, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getComplier()Ljava/lang/String;
    .locals 1

    .line 901
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->complier:Ljava/lang/String;

    return-object v0
.end method

.method public getControl()Ljava/lang/String;
    .locals 1

    .line 909
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->control:Ljava/lang/String;

    return-object v0
.end method

.method public getPreInstanceId()Ljava/lang/String;
    .locals 1

    .line 1025
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreInstanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getPreUniAppid()Ljava/lang/String;
    .locals 1

    .line 1028
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniAppid:Ljava/lang/String;

    return-object v0
.end method

.method public getPreUniMPCallBack(Ljava/lang/String;)Lio/dcloud/common/DHInterface/ICallBack;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appid"
        }
    .end annotation

    .line 1090
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniMPCallBackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniMPCallBackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/DHInterface/ICallBack;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getUniMPFeature()Ljava/lang/String;
    .locals 2

    .line 163
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "UniMP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniNViewModules()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mUniNViewModules:Ljava/lang/String;

    return-object v0
.end method

.method public getVueVersion()I
    .locals 1

    .line 912
    iget v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mVueVersion:I

    return v0
.end method

.method init(Lio/dcloud/common/DHInterface/AbsMgr;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "featureMgr"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->featureMgr:Lio/dcloud/common/DHInterface/AbsMgr;

    return-void
.end method

.method public initAppForPath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "appid"
        }
    .end annotation

    .line 475
    invoke-static {p1, p2}, Lio/dcloud/common/util/AppRuntime;->isAppResourcesInAssetsPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isAssetsRes:Z

    return-void
.end method

.method public initStatisticsListener()V
    .locals 1

    .line 322
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/WXSDKManager;->registerStatisticsListener(Lcom/taobao/weex/IWXStatisticsListener;)V

    return-void
.end method

.method public initUniappPlugin(Landroid/app/Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    .line 1139
    invoke-static {}, Lio/dcloud/feature/uniapp/UniMoudlesLoader;->getInstance()Lio/dcloud/weex/MoudlesLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/dcloud/weex/MoudlesLoader;->onCreate(Landroid/app/Application;)V

    return-void
.end method

.method public initWeexEnv(Landroid/app/Application;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    .line 177
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    const-string v1, "io.dcloud.feature.weex.WeexDevtoolImpl"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    new-array v0, v4, [Ljava/lang/Class;

    .line 178
    const-class v5, Landroid/app/Application;

    aput-object v5, v0, v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v3

    const-string v6, "registerReloadReceiver"

    invoke-static {v1, v6, v2, v0, v5}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_0
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->setApplication(Landroid/app/Application;)V

    .line 181
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    .line 182
    new-instance v0, Lcom/taobao/weex/InitConfig$Builder;

    invoke-direct {v0}, Lcom/taobao/weex/InitConfig$Builder;-><init>()V

    .line 183
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v5

    invoke-virtual {v5, p1, v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->initAppForPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v5

    invoke-direct {v5, p1, v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->initJSFramework(Landroid/content/Context;Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v5

    if-nez v5, :cond_1

    new-array v5, v4, [Ljava/lang/Class;

    .line 186
    const-class v6, Landroid/app/Application;

    aput-object v6, v5, v3

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p1, v6, v3

    const-string v7, "initDebugEnvironment"

    invoke-static {v1, v7, v2, v5, v6}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_1
    new-instance v1, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;

    invoke-direct {v1}, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;-><init>()V

    .line 189
    invoke-virtual {v0, v1}, Lcom/taobao/weex/InitConfig$Builder;->setHttpAdapter(Lcom/taobao/weex/adapter/IWXHttpAdapter;)Lcom/taobao/weex/InitConfig$Builder;

    .line 190
    invoke-virtual {v1}, Lio/dcloud/feature/weex/adapter/DCWXHttpAdapter;->getImageOkHttpClient()Ldc/squareup/okhttp3/OkHttpClient;

    move-result-object v1

    invoke-static {p1, v1}, Lio/dcloud/feature/weex/adapter/Fresco/imagepipeline/OkHttpImagePipelineConfigFactory;->newBuilder(Landroid/content/Context;Ldc/squareup/okhttp3/OkHttpClient;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->build()Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    move-result-object v1

    .line 191
    invoke-static {p1, v1}, Lcom/facebook/drawee/backends/pipeline/Fresco;->initialize(Landroid/content/Context;Lcom/facebook/imagepipeline/core/ImagePipelineConfig;)V

    const-string v1, "@type_ft"

    .line 193
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->setDefaultTypeKey(Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getDraweeControllerBuilderSupplier()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilderSupplier;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeView;->initialize(Lcom/facebook/common/internal/Supplier;)V

    .line 195
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter;

    invoke-direct {v1}, Lio/dcloud/feature/weex/adapter/FrescoImageAdapter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/InitConfig$Builder;->setImgAdapter(Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;)Lcom/taobao/weex/InitConfig$Builder;

    .line 196
    new-instance v1, Lio/dcloud/feature/weex/adapter/FrescoDrawableLoader;

    invoke-direct {v1, p1}, Lio/dcloud/feature/weex/adapter/FrescoDrawableLoader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/InitConfig$Builder;->setDrawableLoader(Lcom/taobao/weex/adapter/IDrawableLoader;)Lcom/taobao/weex/InitConfig$Builder;

    .line 197
    new-instance v1, Lio/dcloud/feature/weex/adapter/PlusUriAdapter;

    invoke-direct {v1}, Lio/dcloud/feature/weex/adapter/PlusUriAdapter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/InitConfig$Builder;->setURIAdapter(Lcom/taobao/weex/adapter/URIAdapter;)Lcom/taobao/weex/InitConfig$Builder;

    .line 198
    new-instance v1, Lio/dcloud/feature/weex/adapter/DCVueBridgeAdapter;

    invoke-direct {v1}, Lio/dcloud/feature/weex/adapter/DCVueBridgeAdapter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/InitConfig$Builder;->setDCVueBridgeAdapter(Lcom/taobao/weex/bridge/IDCVueBridgeAdapter;)Lcom/taobao/weex/InitConfig$Builder;

    .line 199
    new-instance v1, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapterFactory;

    invoke-direct {v1}, Lio/dcloud/feature/weex/adapter/DefaultWebSocketAdapterFactory;-><init>()V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/InitConfig$Builder;->setWebSocketAdapterFactory(Lcom/taobao/weex/appfram/websocket/IWebSocketAdapterFactory;)Lcom/taobao/weex/InitConfig$Builder;

    .line 200
    new-instance v1, Lio/dcloud/feature/weex/adapter/JSExceptionAdapter;

    invoke-direct {v1}, Lio/dcloud/feature/weex/adapter/JSExceptionAdapter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/InitConfig$Builder;->setJSExceptionAdapter(Lcom/taobao/weex/adapter/IWXJSExceptionAdapter;)Lcom/taobao/weex/InitConfig$Builder;

    .line 201
    invoke-virtual {v0}, Lcom/taobao/weex/InitConfig$Builder;->build()Lcom/taobao/weex/InitConfig;

    move-result-object v0

    .line 202
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    new-instance v2, Lio/dcloud/feature/weex/adapter/DCDefaultConfigAdapter;

    invoke-direct {v2}, Lio/dcloud/feature/weex/adapter/DCDefaultConfigAdapter;-><init>()V

    invoke-virtual {v1, v2}, Lcom/taobao/weex/WXSDKManager;->setWxConfigAdapter(Lcom/taobao/weex/adapter/IWXConfigAdapter;)V

    .line 203
    invoke-static {p1, v0}, Lcom/taobao/weex/WXSDKEngine;->initialize(Landroid/app/Application;Lcom/taobao/weex/InitConfig;)V

    .line 205
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->initStatisticsListener()V

    .line 207
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "io/dcloud/weexUniJs.js"

    invoke-static {v1, v4}, Lio/dcloud/common/adapter/util/PlatformUtil;->getFileContent(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 208
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->sb:Ljava/lang/StringBuffer;

    .line 209
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v1

    invoke-direct {v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getConfigParam()Ljava/lang/String;

    move-result-object v1

    .line 210
    iget-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->sb:Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "var plusContext = {};plusContext.getLocationHerf = function(plus){\n    return plus.weex.config.bundleUrl;\n};var param = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    iget-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "image"

    .line 216
    const-class v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponent;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v0, "cover-view"

    .line 217
    const-class v1, Lio/dcloud/feature/weex/extend/DCCoverViewComponent;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v0, "u-image"

    .line 218
    const-class v1, Lio/dcloud/feature/weex/adapter/FrescoImageComponentU;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v0, "cover-image"

    .line 219
    const-class v1, Lio/dcloud/feature/weex/extend/DCCoverImageComponent;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 220
    new-instance v0, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v1, Lio/dcloud/feature/weex/adapter/ScalableViewComponent;

    new-instance v2, Lio/dcloud/feature/weex/adapter/ScalableViewComponent$Ceator;

    invoke-direct {v2}, Lio/dcloud/feature/weex/adapter/ScalableViewComponent$Ceator;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const-string v1, "u-scalable"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    .line 221
    new-instance v0, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v1, Lio/dcloud/feature/weex/extend/DCWXSlider;

    new-instance v2, Lio/dcloud/feature/weex/extend/DCWXSlider$Creator;

    invoke-direct {v2}, Lio/dcloud/feature/weex/extend/DCWXSlider$Creator;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const-string v1, "slider"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    .line 222
    new-instance v0, Lcom/taobao/weex/ui/SimpleComponentHolder;

    const-class v1, Lio/dcloud/feature/weex/extend/DCWXView;

    new-instance v2, Lio/dcloud/feature/weex/extend/DCWXView$Ceator;

    invoke-direct {v2}, Lio/dcloud/feature/weex/extend/DCWXView$Ceator;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/ui/SimpleComponentHolder;-><init>(Ljava/lang/Class;Lcom/taobao/weex/ui/ComponentCreator;)V

    const-string v1, "view"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z

    const-string v0, "u-web-view"

    .line 223
    const-class v1, Lio/dcloud/feature/weex/adapter/webview/WXDCWeb;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v0, "plus"

    .line 224
    const-class v1, Lio/dcloud/feature/weex/extend/PlusModule;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v0, "DCloud-Crypto"

    .line 226
    const-class v1, Lio/dcloud/feature/weex/extend/RandomBytesModule;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v0, "plusstorage"

    .line 227
    const-class v1, Lio/dcloud/feature/weex/extend/PlusStorageModule;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v0, "uni-tabview"

    .line 228
    const-class v1, Lio/dcloud/feature/weex/extend/DCTabBarModule;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    const-string v0, "div"

    .line 229
    const-class v1, Lio/dcloud/feature/weex/adapter/ScalableViewComponent;

    invoke-virtual {p0, v0, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->addComponentByName(Ljava/lang/String;Ljava/lang/Class;)V

    .line 230
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->isUniMPHostForUniApp()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "uniMP"

    .line 231
    const-class v1, Lio/dcloud/feature/weex/extend/DCUniMPModule;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    :cond_2
    const-string v0, "event"

    .line 235
    const-class v1, Lio/dcloud/feature/weex/extend/WXEventModule;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 236
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->sb:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_3

    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "weexPlus"

    .line 238
    iget-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/taobao/weex/WXSDKEngine;->registerService(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    .line 240
    :cond_3
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-nez v0, :cond_4

    .line 241
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->registerUniappService(Landroid/content/Context;Ljava/lang/String;)V

    .line 244
    :cond_4
    invoke-virtual {p1}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/unincomponents.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    const-string v1, "unincomponents"

    .line 245
    invoke-static {v1, v0}, Lcom/taobao/weex/WXEnvironment;->setGlobalFontFamily(Ljava/lang/String;Landroid/graphics/Typeface;)V

    const-string v0, "uni-webSocket"

    .line 246
    const-class v1, Lio/dcloud/feature/weex_websocket/UniWebSocketModule;

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Ljava/lang/Class;)Z

    .line 247
    invoke-static {}, Lcom/alibaba/android/bindingx/plugin/weex/BindingX;->register()V

    .line 248
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->registerReflexWeexPlugin(Landroid/content/Context;)V

    .line 249
    invoke-virtual {p0, v4}, Lio/dcloud/feature/weex/WeexInstanceMgr;->setWeexInitEnd(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 251
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method

.method public initWeexEnv(Lio/dcloud/common/DHInterface/INativeAppInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 170
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/INativeAppInfo;->getCofusionMgr()Lio/dcloud/common/DHInterface/IConfusionMgr;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mConfusionMgr:Lio/dcloud/common/DHInterface/IConfusionMgr;

    .line 171
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/INativeAppInfo;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->initWeexEnv(Landroid/app/Application;)V

    :cond_0
    return-void
.end method

.method public isJSFKFileNotFound()Z
    .locals 1

    .line 1143
    iget-boolean v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isJSFKFileNotFound:Z

    return v0
.end method

.method public isJsFrameworkReady()Z
    .locals 1

    .line 927
    iget-boolean v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isJsFrameworkReady:Z

    return v0
.end method

.method public isUniAppAssetsRes()Z
    .locals 1

    .line 529
    iget-boolean v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isAssetsRes:Z

    return v0
.end method

.method public isUniServiceCreated(Lio/dcloud/common/DHInterface/IApp;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "app"
        }
    .end annotation

    const-string v0, "nvueLaunchMode"

    .line 1012
    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1013
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getControl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "uni-v3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1014
    iget-boolean p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isUniServiceCreated:Z

    return p1

    .line 1016
    :cond_0
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getControl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "v8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 1019
    :cond_1
    iget-boolean p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isUniServiceCreated:Z

    return p1
.end method

.method public isWeexInitEnd()Z
    .locals 1

    .line 916
    iget-boolean v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isWeexInitEnd:Z

    return v0
.end method

.method public loadWeexToAppid(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "appid",
            "isErrorOpen"
        }
    .end annotation

    .line 301
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getVueVersion()I

    move-result v0

    .line 302
    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->initAppForPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 303
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->initJSFramework(Landroid/content/Context;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getVueVersion()I

    move-result p1

    if-eq p1, v0, :cond_0

    const/4 p3, 0x1

    .line 310
    :cond_0
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->isJSFrameworkInit()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 311
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->setJsFrameworkReady(Z)V

    .line 312
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->restartWeex()V

    :cond_2
    return-void
.end method

.method onActivityDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 793
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->onActivityDestroy(Z)V

    return-void
.end method

.method onActivityDestroy(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "isDelay"
        }
    .end annotation

    const/4 v0, 0x0

    .line 796
    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniAppid:Ljava/lang/String;

    .line 797
    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreInstanceId:Ljava/lang/String;

    .line 798
    iget-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 801
    invoke-direct {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lio/dcloud/feature/weex/WeexInstanceMgr$5;

    invoke-direct {v1, p0}, Lio/dcloud/feature/weex/WeexInstanceMgr$5;-><init>(Lio/dcloud/feature/weex/WeexInstanceMgr;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 808
    :cond_1
    invoke-direct {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lio/dcloud/feature/weex/WeexInstanceMgr$6;

    invoke-direct {v1, p0}, Lio/dcloud/feature/weex/WeexInstanceMgr$6;-><init>(Lio/dcloud/feature/weex/WeexInstanceMgr;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 816
    :cond_2
    :goto_0
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniMPCallBackMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 817
    iput-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mApplication:Landroid/app/Application;

    return-void
.end method

.method onActivityPause()V
    .locals 1

    .line 776
    new-instance v0, Lio/dcloud/feature/weex/WeexInstanceMgr$3;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/WeexInstanceMgr$3;-><init>(Lio/dcloud/feature/weex/WeexInstanceMgr;)V

    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->forEach(Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;)V

    return-void
.end method

.method onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 785
    new-instance v0, Lio/dcloud/feature/weex/WeexInstanceMgr$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/dcloud/feature/weex/WeexInstanceMgr$4;-><init>(Lio/dcloud/feature/weex/WeexInstanceMgr;IILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->forEach(Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;)V

    return-void
.end method

.method onActivityResume()V
    .locals 1

    .line 767
    new-instance v0, Lio/dcloud/feature/weex/WeexInstanceMgr$2;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/WeexInstanceMgr$2;-><init>(Lio/dcloud/feature/weex/WeexInstanceMgr;)V

    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->forEach(Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;)V

    return-void
.end method

.method public onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceid",
            "errCode",
            "msg"
        }
    .end annotation

    return-void
.end method

.method public onFirstScreen()V
    .locals 0

    return-void
.end method

.method public onFirstView()V
    .locals 0

    return-void
.end method

.method public onHeadersReceived()V
    .locals 0

    return-void
.end method

.method public onHttpFinish()V
    .locals 0

    return-void
.end method

.method public onHttpStart()V
    .locals 0

    return-void
.end method

.method public onJsFrameworkReady()V
    .locals 2

    const/4 v0, 0x1

    .line 942
    iput-boolean v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isJsFrameworkReady:Z

    .line 944
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mRestartReadyCall:Lio/dcloud/common/DHInterface/ICallBack;

    if-eqz v0, :cond_0

    .line 945
    new-instance v0, Lio/dcloud/feature/weex/WeexInstanceMgr$9;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/WeexInstanceMgr$9;-><init>(Lio/dcloud/feature/weex/WeexInstanceMgr;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;Ljava/lang/Object;)V

    .line 954
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->callBacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 955
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex/WeexInstanceMgr$IWXStatisticsCallBack;

    .line 956
    invoke-interface {v1}, Lio/dcloud/feature/weex/WeexInstanceMgr$IWXStatisticsCallBack;->onJsFrameworkReady()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onJsFrameworkStart()V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 890
    new-instance v0, Lio/dcloud/feature/weex/WeexInstanceMgr$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/dcloud/feature/weex/WeexInstanceMgr$8;-><init>(Lio/dcloud/feature/weex/WeexInstanceMgr;I[Ljava/lang/String;[I)V

    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->forEach(Lio/dcloud/feature/weex/WeexInstanceMgr$EachListener;)V

    return-void
.end method

.method public onSDKEngineInitialize()V
    .locals 0

    return-void
.end method

.method public onSubProcess(Landroid/app/Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    .line 318
    invoke-static {}, Lio/dcloud/weex/MoudlesLoader;->getInstance()Lio/dcloud/weex/MoudlesLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/dcloud/weex/MoudlesLoader;->onSubProcess(Landroid/app/Application;)V

    return-void
.end method

.method public preUniMP(Landroid/app/Application;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "context",
            "appid",
            "iCallBack"
        }
    .end annotation

    .line 1096
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniAppid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    const/16 p1, -0x65

    const-string p2, ""

    .line 1098
    invoke-interface {p3, p1, p2}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 1103
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreUniMPCallBackMap:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    :cond_1
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->isWeexInitEnd()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1106
    new-instance p3, Lio/dcloud/feature/weex/WeexInstanceMgr$10;

    invoke-direct {p3, p0, p1, p2}, Lio/dcloud/feature/weex/WeexInstanceMgr$10;-><init>(Lio/dcloud/feature/weex/WeexInstanceMgr;Landroid/app/Application;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3, p2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->restartWeex(Landroid/app/Application;Lio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;)V

    goto :goto_0

    .line 1116
    :cond_2
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->initWeexEnv(Landroid/app/Application;)V

    .line 1117
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->preUniControlService(Landroid/app/Application;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public registerUniappService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "appid"
        }
    .end annotation

    .line 510
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/feature/weex/WeexInstanceMgr;->control:Ljava/lang/String;

    const-string v1, "uni-v3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    const-string v1, "app-config-service.js"

    invoke-direct {v0, p1, p2, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getAppFileStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 514
    :try_start_0
    invoke-direct {p0, p2, p1, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->handleEncryptionInputStream(Ljava/io/InputStream;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    .line 515
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 517
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->jsSACName:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/taobao/weex/WXSDKEngine;->registerService(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 519
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public reloadWXServiceWrapper()V
    .locals 3

    .line 650
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 651
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 652
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 653
    iget-object v2, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->serviceWrapperMapsCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex/WXServiceWrapper;

    if-eqz v1, :cond_0

    .line 655
    invoke-virtual {v1}, Lio/dcloud/feature/weex/WXServiceWrapper;->reload()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeWeexView(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "weexId"
        }
    .end annotation

    .line 759
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/feature/weex/WXViewWrapper;

    .line 761
    invoke-virtual {p1}, Lio/dcloud/feature/weex/WXViewWrapper;->onDestroy()V

    :cond_0
    return-void
.end method

.method public restartWeex(Landroid/app/Application;Lio/dcloud/common/DHInterface/ICallBack;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "application",
            "callBack",
            "appid"
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getControl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uni-v3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->isWeexInitEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->isFirstRun:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->isWeexInitEnd()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 270
    :cond_1
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mPreInstanceId:Ljava/lang/String;

    if-eqz v0, :cond_2

    return-void

    .line 273
    :cond_2
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->TAG:Ljava/lang/String;

    const-string v1, "restartWeex-------"

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 275
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->onActivityDestroy(Z)V

    .line 277
    :cond_3
    invoke-direct {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/dcloud/feature/weex/WeexInstanceMgr$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lio/dcloud/feature/weex/WeexInstanceMgr$1;-><init>(Lio/dcloud/feature/weex/WeexInstanceMgr;Lio/dcloud/common/DHInterface/ICallBack;Landroid/app/Application;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public setApplication(Landroid/app/Application;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mApplication"
        }
    .end annotation

    .line 257
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mApplication:Landroid/app/Application;

    return-void
.end method

.method public setJSFKFileNotFound(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "JSFKFileNotFound"
        }
    .end annotation

    .line 1147
    iput-boolean p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isJSFKFileNotFound:Z

    return-void
.end method

.method public setJsFrameworkReady(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isReady"
        }
    .end annotation

    .line 923
    iput-boolean p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isJsFrameworkReady:Z

    return-void
.end method

.method public setUniNViewModuleReladyCallBack(Lio/dcloud/common/DHInterface/ICallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callBack"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mReladyCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mReladyCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setUniNViewModules(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modules"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mUniNViewModules:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mReladyCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 137
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mReladyCallBacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/ICallBack;

    const/4 v2, 0x0

    .line 138
    invoke-interface {v1, v2, p1}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 140
    :cond_0
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->mReladyCallBacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public setUniServiceCreated(ZLio/dcloud/common/DHInterface/IApp;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "is",
            "app"
        }
    .end annotation

    .line 1032
    iput-boolean p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isUniServiceCreated:Z

    const-string p1, "fast"

    if-eqz p2, :cond_0

    const-string v0, "nvueLaunchMode"

    .line 1035
    invoke-interface {p2, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1036
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    .line 1040
    :goto_0
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getControl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "v8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getControl()Ljava/lang/String;

    move-result-object p1

    const-string p2, "uni-v3"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1041
    :cond_1
    iget-boolean p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isUniServiceCreated:Z

    if-eqz p1, :cond_3

    .line 1042
    iget-object p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 1043
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1044
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/dcloud/feature/weex/WXViewWrapper;

    if-eqz p2, :cond_2

    .line 1046
    iget-boolean v0, p2, Lio/dcloud/feature/weex/WXViewWrapper;->isService:Z

    if-nez v0, :cond_2

    .line 1048
    invoke-virtual {p2}, Lio/dcloud/feature/weex/WXViewWrapper;->getWaitServiceRenderList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/dcloud/feature/weex/WXViewWrapper;->runDelayedRenderCaches(Ljava/util/List;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setWXStatisticsCallBack(Lio/dcloud/feature/weex/WeexInstanceMgr$IWXStatisticsCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callBack"
        }
    .end annotation

    .line 996
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->callBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 997
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->callBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setWeexInitEnd(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isEnd"
        }
    .end annotation

    .line 919
    iput-boolean p1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->isWeexInitEnd:Z

    return-void
.end method

.method public unWXStatisticsCallBack(Lio/dcloud/feature/weex/WeexInstanceMgr$IWXStatisticsCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callBack"
        }
    .end annotation

    .line 1002
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->callBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->callBacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public weexDebugReload()V
    .locals 4

    .line 879
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 880
    iget-object v0, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 881
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 882
    iget-object v1, p0, Lio/dcloud/feature/weex/WeexInstanceMgr;->instanceHashMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/weex/WXViewWrapper;

    .line 883
    iget-object v0, v0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object v0

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v2, 0x3

    const-string v3, "snc:CID"

    invoke-virtual {v0, v1, v2, v3}, Lio/dcloud/common/DHInterface/AbsMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
