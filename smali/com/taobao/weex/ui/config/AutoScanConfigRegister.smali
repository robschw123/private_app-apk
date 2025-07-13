.class public Lcom/taobao/weex/ui/config/AutoScanConfigRegister;
.super Ljava/lang/Object;
.source "AutoScanConfigRegister.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WeexScanConfigRegister"

.field private static scanDelay:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 41
    invoke-static {}, Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->doScanConfigSync()V

    return-void
.end method

.method public static doScanConfig()V
    .locals 5

    .line 52
    sget-wide v0, Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->scanDelay:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 53
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/ui/config/AutoScanConfigRegister$1;

    invoke-direct {v1}, Lcom/taobao/weex/ui/config/AutoScanConfigRegister$1;-><init>()V

    sget-wide v2, Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->scanDelay:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postOnUiThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {}, Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->doScanConfigAsync()V

    :goto_0
    return-void
.end method

.method public static doScanConfigAsync()V
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/taobao/weex/ui/config/AutoScanConfigRegister$2;

    invoke-direct {v1}, Lcom/taobao/weex/ui/config/AutoScanConfigRegister$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "AutoScanConfigRegister"

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static doScanConfigSync()V
    .locals 13

    const-string v0, "components"

    const-string v1, "modules"

    const-string v2, "WeexScanConfigRegister"

    .line 76
    sget-object v3, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    if-nez v3, :cond_0

    return-void

    .line 80
    :cond_0
    :try_start_0
    sget-object v3, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v6, ""

    .line 84
    invoke-virtual {v3, v6}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 86
    :try_start_2
    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v5, :cond_a

    .line 88
    array-length v3, v5

    if-nez v3, :cond_1

    goto/16 :goto_6

    .line 91
    :cond_1
    array-length v3, v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_b

    aget-object v7, v5, v6

    .line 92
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto/16 :goto_5

    :cond_2
    const-string/jumbo v8, "weex_config_"

    .line 95
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, ".json"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 97
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v8, :cond_3

    return-void

    .line 101
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/taobao/weex/utils/WXFileUtils;->loadAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 102
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto/16 :goto_5

    .line 105
    :cond_4
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 106
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " find config "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_5
    invoke-static {v8}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 109
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 110
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v8

    const/4 v9, 0x0

    .line 111
    :goto_2
    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_7

    .line 112
    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    invoke-static {v10}, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->fromConfig(Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/weex/ui/config/ConfigModuleFactory;

    move-result-object v10

    if-nez v10, :cond_6

    goto :goto_3

    .line 116
    :cond_6
    invoke-virtual {v10}, Lcom/taobao/weex/ui/config/ConfigModuleFactory;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v10, v4}, Lcom/taobao/weex/WXSDKEngine;->registerModule(Ljava/lang/String;Lcom/taobao/weex/bridge/ModuleFactory;Z)Z

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 120
    :cond_7
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 121
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v7

    const/4 v8, 0x0

    .line 122
    :goto_4
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_9

    .line 123
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    invoke-static {v9}, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->fromConfig(Lcom/alibaba/fastjson/JSONObject;)Lcom/taobao/weex/ui/config/ConfigComponentHolder;

    move-result-object v9

    if-nez v9, :cond_8

    return-void

    .line 127
    :cond_8
    invoke-virtual {v9}, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->isAppendTree()Z

    move-result v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v9}, Lcom/taobao/weex/ui/config/ConfigComponentHolder;->getType()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-static {v9, v10, v11}, Lcom/taobao/weex/WXSDKEngine;->registerComponent(Lcom/taobao/weex/ui/IFComponentHolder;Z[Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :catchall_0
    move-exception v7

    .line 131
    :try_start_4
    invoke-static {v2, v7}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_9
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_a
    :goto_6
    return-void

    :catch_1
    move-exception v0

    .line 136
    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    return-void
.end method

.method public static setScanDelay(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scanDelay"
        }
    .end annotation

    .line 141
    sput-wide p0, Lcom/taobao/weex/ui/config/AutoScanConfigRegister;->scanDelay:J

    return-void
.end method
