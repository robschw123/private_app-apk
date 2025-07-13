.class public Lcom/baidu/mapsdkplatform/comapi/commonutils/SysUpdateUtil;
.super Ljava/lang/Object;
.source "SysUpdateUtil.java"

# interfaces
.implements Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObserver;


# static fields
.field private static a:Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache; = null

.field private static b:Z = false

.field private static c:Ljava/lang/String; = ""

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/baidu/platform/comapi/util/f;->b()Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/commonutils/SysUpdateUtil;->a:Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;

    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;)V
    .locals 1

    .line 67
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/commonutils/SysUpdateUtil;->a:Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;

    if-eqz v0, :cond_1

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/SyncSysInfo;->getPhoneInfoCache()Ljava/lang/String;

    move-result-object p1

    .line 71
    :cond_0
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/commonutils/SysUpdateUtil;->a:Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public updateNetworkInfo(Landroid/content/Context;)V
    .locals 0

    .line 84
    invoke-static {p1}, Lcom/baidu/mapapi/NetworkUtil;->updateNetworkProxy(Landroid/content/Context;)V

    return-void
.end method

.method public updateNetworkProxy(Landroid/content/Context;)V
    .locals 6

    .line 89
    invoke-static {p1}, Lcom/baidu/mapapi/NetworkUtil;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 91
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 92
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    sput-boolean v3, Lcom/baidu/mapsdkplatform/comapi/commonutils/SysUpdateUtil;->b:Z

    return-void

    :cond_0
    const-string v2, "mobile"

    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/baidu/mapapi/NetworkUtil;->isWifiConnected(Landroid/net/NetworkInfo;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 102
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p1

    .line 103
    sput-boolean v3, Lcom/baidu/mapsdkplatform/comapi/commonutils/SysUpdateUtil;->b:Z

    const-string v0, "10.0.0.200"

    const/16 v1, 0x50

    const-string v2, "10.0.0.172"

    const/4 v4, 0x1

    if-eqz p1, :cond_6

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v5, "cmwap"

    .line 106
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "uniwap"

    .line 107
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "3gwap"

    .line 108
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "ctwap"

    .line 112
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 113
    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/commonutils/SysUpdateUtil;->c:Ljava/lang/String;

    .line 114
    sput v1, Lcom/baidu/mapsdkplatform/comapi/commonutils/SysUpdateUtil;->d:I

    .line 115
    sput-boolean v4, Lcom/baidu/mapsdkplatform/comapi/commonutils/SysUpdateUtil;->b:Z

    goto :goto_1

    :cond_3
    const-string v0, "cmnet"

    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "uninet"

    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ctnet"

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "3gnet"

    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 120
    :cond_4
    sput-boolean v3, Lcom/baidu/mapsdkplatform/comapi/commonutils/SysUpdateUtil;->b:Z

    goto :goto_1

    .line 109
    :cond_5
    :goto_0
    sput-object v2, Lcom/baidu/mapsdkplatform/comapi/commonutils/SysUpdateUtil;->c:Ljava/lang/String;

    .line 110
    sput v1, Lcom/baidu/mapsdkplatform/comapi/commonutils/SysUpdateUtil;->d:I

    .line 111
    sput-boolean v4, Lcom/baidu/mapsdkplatform/comapi/commonutils/SysUpdateUtil;->b:Z

    goto :goto_1

    .line 131
    :cond_6
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    if-eqz p1, :cond_8

    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 140
    sput-object v2, Lcom/baidu/mapsdkplatform/comapi/commonutils/SysUpdateUtil;->c:Ljava/lang/String;

    .line 141
    sput v3, Lcom/baidu/mapsdkplatform/comapi/commonutils/SysUpdateUtil;->d:I

    .line 142
    sput-boolean v4, Lcom/baidu/mapsdkplatform/comapi/commonutils/SysUpdateUtil;->b:Z

    goto :goto_1

    .line 143
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 144
    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/commonutils/SysUpdateUtil;->c:Ljava/lang/String;

    .line 145
    sput v1, Lcom/baidu/mapsdkplatform/comapi/commonutils/SysUpdateUtil;->d:I

    .line 146
    sput-boolean v4, Lcom/baidu/mapsdkplatform/comapi/commonutils/SysUpdateUtil;->b:Z

    :cond_8
    :goto_1
    return-void
.end method

.method public updatePhoneInfo(Ljava/lang/String;)V
    .locals 1

    .line 77
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/commonutils/SysUpdateUtil;->a:Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
