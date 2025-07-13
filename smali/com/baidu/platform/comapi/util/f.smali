.class public Lcom/baidu/platform/comapi/util/f;
.super Ljava/lang/Object;
.source "CommonMemCacheManager.java"


# static fields
.field private static a:Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;

    invoke-direct {v0}, Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;-><init>()V

    sput-object v0, Lcom/baidu/platform/comapi/util/f;->a:Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;

    return-void
.end method

.method public static a()V
    .locals 0

    .line 154
    invoke-static {}, Lcom/baidu/platform/comapi/util/f;->c()V

    return-void
.end method

.method public static b()Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;
    .locals 1

    .line 158
    sget-object v0, Lcom/baidu/platform/comapi/util/f;->a:Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;

    return-object v0
.end method

.method private static c()V
    .locals 6

    .line 27
    new-instance v0, Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;-><init>()V

    .line 31
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/SyncSysInfo;->initPhoneInfo()Ljava/lang/String;

    move-result-object v3

    .line 69
    sget-object v4, Lcom/baidu/platform/comapi/util/f;->a:Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;

    invoke-virtual {v4, v3}, Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;->a(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;->object()Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v3, "pd"

    const-string v4, "map"

    .line 74
    invoke-virtual {v0, v3, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v3, "ov"

    .line 75
    invoke-virtual {v0, v3, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string/jumbo v2, "ver"

    const-string v3, "2"

    .line 76
    invoke-virtual {v0, v2, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "sw"

    .line 77
    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v2

    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getScreenWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "sh"

    .line 78
    invoke-virtual {v0, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v2

    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getScreenHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "channel"

    const-string v3, "oem"

    .line 82
    invoke-virtual {v0, v2, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "mb"

    .line 83
    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 84
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/SyncSysInfo;->getSoftWareVer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sv"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "os"

    const-string v2, "android"

    .line 85
    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 86
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/SyncSysInfo;->getCid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cuid"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getOutputDirPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/udc/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "path"

    invoke-virtual {v0, v3, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 88
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endObject()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 89
    sget-object v1, Lcom/baidu/platform/comapi/util/f;->a:Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;->getJson()Ljava/lang/String;

    move-result-object v4

    const-string v5, "logstatistics"

    invoke-virtual {v1, v5, v4}, Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;->reset()V

    .line 93
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;->object()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 94
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/SyncSysInfo;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "app"

    const-string v2, "1"

    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/vi/VIContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "domain"

    const-string v2, ""

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 105
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endObject()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 106
    sget-object v1, Lcom/baidu/platform/comapi/util/f;->a:Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;->getJson()Ljava/lang/String;

    move-result-object v0

    const-string v2, "longlink"

    invoke-virtual {v1, v2, v0}, Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
