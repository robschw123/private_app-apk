.class public Lcom/taobao/weex/utils/WXSoInstallMgrSdk;
.super Ljava/lang/Object;
.source "WXSoInstallMgrSdk.java"


# static fields
.field private static final ARMEABI:Ljava/lang/String; = "armeabi"

.field static final LOGTAG:Ljava/lang/String; = "INIT_SO"

.field private static final MIPS:Ljava/lang/String; = "mips"

.field private static final STARTUPSO:Ljava/lang/String; = "/libweexjsb.so"

.field private static final STARTUPSOANDROID15:Ljava/lang/String; = "/libweexjst.so"

.field private static final X86:Ljava/lang/String; = "x86"

.field private static mAbi:Ljava/lang/String;

.field static mContext:Landroid/app/Application;

.field private static mSoLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

.field private static mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _cpuType()Ljava/lang/String;
    .locals 2

    const-string v0, "armeabi"

    .line 352
    sget-object v1, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mAbi:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 354
    :try_start_0
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    sput-object v1, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mAbi:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 356
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 357
    sput-object v0, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mAbi:Ljava/lang/String;

    .line 359
    :goto_0
    sget-object v1, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mAbi:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    sput-object v0, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mAbi:Ljava/lang/String;

    .line 362
    :cond_0
    sget-object v0, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mAbi:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mAbi:Ljava/lang/String;

    .line 364
    :cond_1
    sget-object v0, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mAbi:Ljava/lang/String;

    return-object v0
.end method

.method private static _desSoCopyFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "soName"
        }
    .end annotation

    .line 214
    invoke-static {}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_cpuType()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->copySoDesDir()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 219
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static _getFieldReflectively(Landroid/os/Build;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "build",
            "fieldName"
        }
    .end annotation

    .line 344
    :try_start_0
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 345
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "Unknown"

    return-object p0
.end method

.method static _loadUnzipSo(Ljava/lang/String;ILcom/taobao/weex/adapter/IWXUserTrackAdapter;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "libName",
            "version",
            "utAdapter"
        }
    .end annotation

    .line 466
    :try_start_0
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->isExist(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 469
    sget-object p2, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mSoLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    if-eqz p2, :cond_0

    .line 470
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;->doLoad(Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :cond_0
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    const/4 p1, 0x0

    .line 478
    sget-object p2, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_SDK_INIT_CPU_NOT_SUPPORT:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WX_KEY_EXCEPTION_SDK_INIT_WX_ERR_COPY_FROM_APK] \n Detail Msg is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "_loadUnzipSo"

    .line 478
    invoke-static {v1, p2, v2, v0, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string p2, ""

    .line 483
    invoke-static {p2, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method static _targetSoFile(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "libName",
            "version"
        }
    .end annotation

    .line 415
    sget-object v0, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mContext:Landroid/app/Application;

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 420
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/files"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 422
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 426
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "bk"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".so"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static checkSoIsValid(Ljava/lang/String;J)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "libName",
            "size"
        }
    .end annotation

    .line 374
    const-class v0, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;

    sget-object v1, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mContext:Landroid/app/Application;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    .line 379
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 380
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    instance-of v5, v5, Ldalvik/system/PathClassLoader;

    if-eqz v5, :cond_4

    .line 382
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    check-cast v0, Ldalvik/system/PathClassLoader;

    invoke-virtual {v0, p0}, Ldalvik/system/PathClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 383
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 386
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v0, p1, v5

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    .line 389
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "weex so size check path :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "   "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception p0

    .line 396
    sget-object p1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_SDK_INIT:Lcom/taobao/weex/common/WXErrorCode;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[WX_KEY_EXCEPTION_SDK_INIT_CPU_NOT_SUPPORT] for weex so size check fail exception :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const-string v2, "checkSoIsValid"

    .line 396
    invoke-static {v0, p1, v2, p2, v0}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 401
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "weex so size check fail exception :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_4
    return v1
.end method

.method public static copyJssRuntimeSo()V
    .locals 6

    const-string/jumbo v0, "wxapm"

    const-string v1, "use_runtime_api"

    const-string v2, "0"

    .line 295
    invoke-static {v0, v1, v2}, Lcom/taobao/weex/utils/WXUtils;->checkGreyConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryUseRunTimeApi ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "weex"

    invoke-static {v2, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "copyJssRuntimeSo: "

    .line 301
    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "weexjss"

    .line 302
    invoke-static {v0}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_desSoCopyFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 304
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 306
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v3, "libweexjss.so"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v0, "app_version_code_weex"

    const-string v3, "-1"

    .line 310
    invoke-static {v0, v3}, Lcom/taobao/weex/WXEnvironment;->getDefaultSettingValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 313
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 314
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getAppVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 315
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 317
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_RUNTIME_SO_PATH:Ljava/lang/String;

    .line 318
    sput-boolean v5, Lcom/taobao/weex/WXEnvironment;->sUseRunTimeApi:Z

    const-string v0, "copyJssRuntimeSo exist:  return"

    .line 319
    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 324
    :cond_3
    :goto_0
    const-class v3, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    check-cast v3, Ldalvik/system/PathClassLoader;

    const-string/jumbo v4, "weexjssr"

    invoke-virtual {v3, v4}, Ldalvik/system/PathClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-void

    .line 328
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 329
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v1}, Lcom/taobao/weex/utils/WXFileUtils;->copyFileWithException(Ljava/io/File;Ljava/io/File;)V

    .line 331
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/taobao/weex/WXEnvironment;->CORE_JSS_RUNTIME_SO_PATH:Ljava/lang/String;

    .line 332
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getAppVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/WXEnvironment;->writeDefaultSettingsValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    sput-boolean v5, Lcom/taobao/weex/WXEnvironment;->sUseRunTimeApi:Z

    const-string v0, "copyJssRuntimeSo: cp end and return "

    .line 334
    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 336
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    .line 337
    sput-boolean v1, Lcom/taobao/weex/WXEnvironment;->sUseRunTimeApi:Z

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyJssRuntimeSo:  exception"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static copyStartUpSo()V
    .locals 11

    const-string v0, "/cache"

    const-string v1, "/lib"

    .line 230
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const-string/jumbo v5, "weexjsb"

    .line 239
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v7, 0x10

    const-string v8, "/libweexjst.so"

    const-string v9, "/libweexjsb.so"

    if-ge v6, v7, :cond_0

    const/4 v4, 0x0

    :try_start_1
    const-string/jumbo v5, "weexjst"

    move-object v6, v8

    goto :goto_0

    :cond_0
    move-object v6, v9

    .line 245
    :goto_0
    invoke-static {v5}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_desSoCopyFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 246
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 247
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 249
    :cond_1
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/taobao/weex/WXEnvironment;->CORE_JSB_SO_PATH:Ljava/lang/String;

    const-string v6, "-1"

    .line 251
    invoke-static {v5, v6}, Lcom/taobao/weex/WXEnvironment;->getDefaultSettingValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 252
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getAppVersionName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    return-void

    .line 257
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_3

    .line 258
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_3

    .line 259
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    if-eqz v4, :cond_4

    .line 263
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 265
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_5

    .line 271
    :try_start_2
    const-class v1, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    check-cast v1, Ldalvik/system/PathClassLoader;

    invoke-virtual {v1, v5}, Ldalvik/system/PathClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v2

    .line 279
    :catchall_0
    :cond_5
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    .line 280
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->extractSo()Z

    .line 281
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->copySoDesDir()Ljava/lang/String;

    move-result-object v0

    .line 282
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 285
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 286
    invoke-static {v0, v10}, Lcom/taobao/weex/utils/WXFileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 288
    :cond_7
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/taobao/weex/WXEnvironment;->writeDefaultSettingsValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 290
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static init(Landroid/app/Application;Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;Lcom/taobao/weex/IWXStatisticsListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "loader",
            "listener"
        }
    .end annotation

    .line 87
    sput-object p0, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mContext:Landroid/app/Application;

    .line 88
    sput-object p1, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mSoLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    .line 89
    sput-object p2, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    return-void
.end method

.method public static initSo(Ljava/lang/String;ILcom/taobao/weex/adapter/IWXUserTrackAdapter;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "libName",
            "version",
            "utAdapter"
        }
    .end annotation

    .line 114
    invoke-static {}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_cpuType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mips"

    .line 115
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x0

    const-string v1, "initSo"

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 116
    sget-object p0, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_SDK_INIT:Lcom/taobao/weex/common/WXErrorCode;

    const-string p1, "[WX_KEY_EXCEPTION_SDK_INIT_CPU_NOT_SUPPORT] for android cpuType is MIPS"

    invoke-static {v2, p0, v1, p1, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return v0

    :cond_0
    const-string/jumbo p2, "weexcore"

    .line 124
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 125
    invoke-static {}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->copyStartUpSo()V

    .line 133
    :cond_1
    :try_start_0
    sget-object p2, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mSoLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "c++_shared"

    if-eqz p2, :cond_2

    .line 134
    :try_start_1
    invoke-interface {p2, v3}, Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;->doLoadLibrary(Ljava/lang/String;)V

    goto :goto_1

    .line 136
    :cond_2
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    .line 139
    :goto_0
    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_SDK_INIT:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load c++_shared failed Detail Error is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-static {v2, v3, v1, v4, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 145
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v3

    if-nez v3, :cond_7

    .line 156
    :goto_1
    :try_start_2
    sget-object p2, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mSoLoader:Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;

    if-eqz p2, :cond_3

    .line 157
    invoke-interface {p2, p0}, Lcom/taobao/weex/adapter/IWXSoLoaderAdapter;->doLoadLibrary(Ljava/lang/String;)V

    goto :goto_2

    .line 159
    :cond_3
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    const/4 v0, 0x1

    goto :goto_4

    :catch_2
    move-exception p2

    goto :goto_3

    :catch_3
    move-exception p2

    :goto_3
    const-string v3, "armeabi"

    .line 164
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "x86"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 165
    :cond_4
    sget-object v3, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_SDK_INIT:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "[WX_KEY_EXCEPTION_SDK_INIT_CPU_NOT_SUPPORT] for android cpuType is "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n Detail Error is: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 165
    invoke-static {v2, v3, v1, p0, v2}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 172
    :cond_5
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p0

    if-nez p0, :cond_6

    :goto_4
    return v0

    .line 173
    :cond_6
    throw p2

    .line 146
    :cond_7
    throw p2
.end method

.method public static isCPUSupport()Z
    .locals 2

    .line 98
    invoke-static {}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_cpuType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mips"

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static isExist(Ljava/lang/String;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "libName",
            "version"
        }
    .end annotation

    .line 450
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 451
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static isX86()Z
    .locals 2

    .line 93
    invoke-static {}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_cpuType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x86"

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static removeSoIfExit(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "libName",
            "version"
        }
    .end annotation

    .line 437
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 438
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 440
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method static unZipSelectedFiles(Ljava/lang/String;ILcom/taobao/weex/adapter/IWXUserTrackAdapter;)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "libName",
            "version",
            "utAdapter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lib/armeabi/lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isSafeEntryName(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 496
    :cond_0
    sget-object v2, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->mContext:Landroid/app/Application;

    if-nez v2, :cond_1

    return v3

    .line 501
    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 503
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v4, ""

    .line 507
    :goto_0
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 510
    :try_start_0
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 511
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/zip/ZipEntry;

    .line 512
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v8, :cond_3

    .line 521
    :try_start_1
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->removeSoIfExit(Ljava/lang/String;I)V

    .line 524
    invoke-virtual {v5, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 525
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lib"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "bk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 527
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v6, 0x400

    :try_start_4
    new-array v6, v6, [B

    const/4 v7, 0x0

    .line 532
    :goto_1
    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_4

    .line 534
    invoke-static {v6, v3, v8}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/2addr v7, v8

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 541
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_2

    :catch_0
    move-exception v0

    .line 543
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    .line 549
    :try_start_7
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_3

    :catch_1
    move-exception v0

    .line 551
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    .line 557
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_4

    :catch_2
    move-exception v0

    .line 559
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 564
    :cond_7
    :goto_4
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-lez v7, :cond_8

    .line 570
    :try_start_b
    invoke-static {p0, p1, p2}, Lcom/taobao/weex/utils/WXSoInstallMgrSdk;->_loadUnzipSo(Ljava/lang/String;ILcom/taobao/weex/adapter/IWXUserTrackAdapter;)Z

    move-result p0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    return p0

    :cond_8
    return v3

    :catchall_0
    move-exception p0

    goto :goto_6

    :catchall_1
    move-exception p0

    move-object v2, v4

    goto :goto_6

    :catchall_2
    move-exception p0

    move-object v1, v4

    goto :goto_5

    :catchall_3
    move-exception p0

    move-object v0, v4

    move-object v1, v0

    :goto_5
    move-object v2, v1

    :goto_6
    if-eqz v0, :cond_9

    .line 541
    :try_start_c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_7

    :catch_3
    move-exception p1

    .line 543
    :try_start_d
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :cond_9
    :goto_7
    if-eqz v2, :cond_a

    .line 549
    :try_start_e
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_8

    :catch_4
    move-exception p1

    .line 551
    :try_start_f
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :cond_a
    :goto_8
    if-eqz v1, :cond_b

    .line 557
    :try_start_10
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_9

    :catch_5
    move-exception p1

    .line 559
    :try_start_11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 564
    :cond_b
    :goto_9
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 567
    :try_start_12
    throw p0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :catchall_4
    move-exception p0

    move-object v5, v4

    goto :goto_d

    :catch_6
    move-exception p0

    move-object v5, v4

    goto :goto_b

    .line 587
    :cond_c
    :goto_a
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    goto :goto_c

    :catchall_5
    move-exception p0

    goto :goto_d

    :catch_7
    move-exception p0

    .line 577
    :goto_b
    :try_start_13
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 578
    sget-object p1, Lcom/taobao/weex/common/WXErrorCode;->WX_KEY_EXCEPTION_SDK_INIT_CPU_NOT_SUPPORT:Lcom/taobao/weex/common/WXErrorCode;

    const-string p2, "unZipSelectedFiles"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WX_KEY_EXCEPTION_SDK_INIT_unZipSelectedFiles] \n Detail msg is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 578
    invoke-static {v4, p1, p2, p0, v4}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    if-eqz v5, :cond_d

    goto :goto_a

    :cond_d
    :goto_c
    return v3

    :goto_d
    if-eqz v5, :cond_e

    .line 587
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    .line 590
    :cond_e
    goto :goto_f

    :goto_e
    throw p0

    :goto_f
    goto :goto_e
.end method
