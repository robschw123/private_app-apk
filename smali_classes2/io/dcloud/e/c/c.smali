.class Lio/dcloud/e/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/common/DHInterface/ICore;


# static fields
.field private static a:Lio/dcloud/e/c/c;


# instance fields
.field b:Z

.field c:Landroid/content/Context;

.field d:Landroid/content/Context;

.field e:Lio/dcloud/common/DHInterface/AbsMgr;

.field f:Lio/dcloud/common/DHInterface/AbsMgr;

.field g:Lio/dcloud/common/DHInterface/AbsMgr;

.field h:Lio/dcloud/common/DHInterface/AbsMgr;

.field i:Ljava/lang/String;

.field private j:Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;

.field k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/common/DHInterface/IBoot;",
            ">;"
        }
    .end annotation
.end field

.field final l:I

.field final m:I

.field final n:I

.field final o:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/dcloud/e/c/c;->b:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lio/dcloud/e/c/c;->c:Landroid/content/Context;

    .line 4
    iput-object v1, p0, Lio/dcloud/e/c/c;->d:Landroid/content/Context;

    .line 5
    iput-object v1, p0, Lio/dcloud/e/c/c;->e:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 6
    iput-object v1, p0, Lio/dcloud/e/c/c;->f:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 7
    iput-object v1, p0, Lio/dcloud/e/c/c;->g:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 8
    iput-object v1, p0, Lio/dcloud/e/c/c;->h:Lio/dcloud/common/DHInterface/AbsMgr;

    const-string v2, "CORE"

    .line 10
    iput-object v2, p0, Lio/dcloud/e/c/c;->i:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lio/dcloud/e/c/c;->j:Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;

    .line 18
    iput-object v1, p0, Lio/dcloud/e/c/c;->k:Ljava/util/HashMap;

    .line 19
    iput v0, p0, Lio/dcloud/e/c/c;->l:I

    const/4 v0, 0x1

    iput v0, p0, Lio/dcloud/e/c/c;->m:I

    const/4 v0, 0x2

    iput v0, p0, Lio/dcloud/e/c/c;->n:I

    const/4 v0, 0x3

    iput v0, p0, Lio/dcloud/e/c/c;->o:I

    return-void
.end method

.method public static a(Landroid/content/Context;Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;)Lio/dcloud/e/c/c;
    .locals 1

    .line 2
    sget-object v0, Lio/dcloud/e/c/c;->a:Lio/dcloud/e/c/c;

    if-nez v0, :cond_0

    new-instance v0, Lio/dcloud/e/c/c;

    invoke-direct {v0}, Lio/dcloud/e/c/c;-><init>()V

    sput-object v0, Lio/dcloud/e/c/c;->a:Lio/dcloud/e/c/c;

    .line 3
    :cond_0
    sget-object v0, Lio/dcloud/e/c/c;->a:Lio/dcloud/e/c/c;

    iput-object p0, v0, Lio/dcloud/e/c/c;->c:Landroid/content/Context;

    .line 4
    iput-object p1, v0, Lio/dcloud/e/c/c;->j:Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;

    .line 5
    invoke-static {v0}, Lio/dcloud/feature/internal/sdk/SDK;->initSDK(Lio/dcloud/common/DHInterface/ICore;)V

    .line 6
    sget-object p0, Lio/dcloud/e/c/c;->a:Lio/dcloud/e/c/c;

    return-object p0
.end method

.method private a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_1

    .line 191
    :cond_0
    check-cast p2, [Ljava/lang/Object;

    .line 192
    aget-object p1, p2, v0

    check-cast p1, Landroid/app/Activity;

    .line 193
    aget-object v0, p2, v3

    check-cast v0, Ljava/lang/String;

    .line 194
    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x3

    .line 195
    aget-object p2, p2, v3

    check-cast p2, Lio/dcloud/common/DHInterface/IOnCreateSplashView;

    .line 196
    invoke-virtual {p0, p1, v0, v2, p2}, Lio/dcloud/e/c/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IOnCreateSplashView;)Lio/dcloud/common/DHInterface/IApp;

    goto :goto_1

    .line 197
    :cond_1
    iget-object p1, p0, Lio/dcloud/e/c/c;->k:Ljava/util/HashMap;

    check-cast p2, Lio/dcloud/common/DHInterface/IBoot;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    .line 204
    :cond_2
    instance-of p1, p2, Lio/dcloud/common/DHInterface/IApp;

    if-eqz p1, :cond_3

    .line 205
    check-cast p2, Lio/dcloud/common/DHInterface/IApp;

    .line 206
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 207
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v0

    .line 208
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 209
    :cond_3
    instance-of p1, p2, [Ljava/lang/Object;

    if-eqz p1, :cond_4

    .line 210
    check-cast p2, [Ljava/lang/Object;

    .line 211
    aget-object p1, p2, v0

    check-cast p1, Landroid/app/Activity;

    .line 212
    aget-object v0, p2, v3

    check-cast v0, Landroid/content/Intent;

    .line 213
    aget-object p2, p2, v2

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    move-object p2, v1

    goto :goto_0

    :cond_4
    move-object p1, v1

    move-object p2, p1

    move-object v0, p2

    move-object v2, v0

    .line 215
    :goto_0
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v3

    if-nez v3, :cond_5

    .line 216
    invoke-static {}, Lio/dcloud/e/c/a;->f()Lio/dcloud/e/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lio/dcloud/e/c/a;->g()V

    .line 217
    :cond_5
    invoke-virtual {p0, p1, v0, p2, v2}, Lio/dcloud/e/c/c;->a(Landroid/app/Activity;Landroid/content/Intent;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)V

    goto :goto_1

    .line 218
    :cond_6
    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sRuntimeMode:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    :goto_1
    return-object v1
.end method

.method private a()V
    .locals 6

    const-string v0, "DCLOUD_LOCALE"

    .line 219
    invoke-static {v0}, Lio/dcloud/common/adapter/util/AndroidResources;->getMetaValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "_"

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 222
    new-instance v1, Ljava/util/Locale;

    array-length v2, v0

    const-string v3, ""

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v4, v0, v2

    if-eqz v4, :cond_0

    aget-object v2, v0, v2

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    aget-object v4, v0, v5

    if-eqz v4, :cond_1

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    :cond_2
    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 4

    .line 36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "deviceBrand"

    .line 38
    :try_start_0
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "deviceModel"

    .line 39
    :try_start_1
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "deviceType"

    .line 40
    :try_start_2
    invoke-static {p1}, Lio/dcloud/common/adapter/util/DeviceInfo;->getSystemUIModeType(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "uniPlatform"

    const-string v1, "app"

    .line 41
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "osName"

    const-string v1, "android"

    .line 42
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p1, "osAndroidAPILevel"

    .line 43
    :try_start_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string p1, "osVersion"

    .line 44
    :try_start_4
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string p1, "osLanguage"

    .line 45
    :try_start_5
    invoke-static {}, Lio/dcloud/common/util/language/LanguageUtil;->getDeviceDefLocalLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string p1, "romName"

    .line 47
    :try_start_6
    invoke-static {v2}, Lio/dcloud/e/c/h/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string p1, "romVersion"

    .line 48
    :try_start_7
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/e/c/h/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 51
    :catch_0
    sput-object v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sSystemInfo:Lorg/json/JSONObject;

    return-void
.end method

.method private a(Landroid/app/Activity;Lio/dcloud/common/DHInterface/IApp;)V
    .locals 1

    .line 66
    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onWebAppStop:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {p0, p1, v0, p2}, Lio/dcloud/e/c/c;->onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 52
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "core"

    invoke-static {v1, v0}, Lio/dcloud/common/util/TestUtil;->record(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    new-instance v0, Lio/dcloud/g/b;

    invoke-direct {v0, p0}, Lio/dcloud/g/b;-><init>(Lio/dcloud/common/DHInterface/ICore;)V

    iput-object v0, p0, Lio/dcloud/e/c/c;->h:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 55
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v1, p0, Lio/dcloud/e/c/c;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lio/dcloud/e/c/c;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lio/dcloud/e/c/c;->k:Ljava/util/HashMap;

    .line 57
    iget-object v0, p0, Lio/dcloud/e/c/c;->j:Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;

    invoke-static {p1, p0, v0}, Lio/dcloud/common/util/BaseInfo;->parseControl(Landroid/content/Context;Lio/dcloud/common/DHInterface/ICore;Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;)[Ljava/lang/String;

    .line 58
    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->initLogger(Landroid/content/Context;)V

    .line 59
    invoke-static {p1}, Lio/dcloud/common/adapter/util/DeviceInfo;->init(Landroid/content/Context;)V

    .line 61
    new-instance p1, Lio/dcloud/e/b/a;

    invoke-direct {p1, p0}, Lio/dcloud/e/b/a;-><init>(Lio/dcloud/common/DHInterface/ICore;)V

    iput-object p1, p0, Lio/dcloud/e/c/c;->f:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 63
    new-instance p1, Lio/dcloud/common/core/ui/l;

    invoke-direct {p1, p0}, Lio/dcloud/common/core/ui/l;-><init>(Lio/dcloud/common/DHInterface/ICore;)V

    iput-object p1, p0, Lio/dcloud/e/c/c;->e:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 64
    new-instance p1, Lio/dcloud/common/util/net/NetMgr;

    invoke-direct {p1, p0}, Lio/dcloud/common/util/net/NetMgr;-><init>(Lio/dcloud/common/DHInterface/ICore;)V

    iput-object p1, p0, Lio/dcloud/e/c/c;->g:Lio/dcloud/common/DHInterface/AbsMgr;

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lio/dcloud/e/c/c;->b:Z

    return-void
.end method

.method private a(Landroid/content/Context;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)V
    .locals 6

    .line 154
    iget-object v0, p0, Lio/dcloud/e/c/c;->k:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    .line 155
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 157
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/IBoot;

    if-nez v1, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    :try_start_0
    sget-object v2, Lio/dcloud/e/c/c$c;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 174
    :cond_1
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IBoot;->onResume()V

    goto :goto_0

    .line 175
    :cond_2
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IBoot;->onPause()V

    goto :goto_0

    .line 176
    :cond_3
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IBoot;->onStop()V

    goto :goto_0

    .line 177
    :cond_4
    move-object v2, p3

    check-cast v2, Landroid/os/Bundle;

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-interface {v1, p1, v2, v3}, Lio/dcloud/common/DHInterface/IBoot;->onStart(Landroid/content/Context;Landroid/os/Bundle;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 190
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_5
    return-void
.end method

.method static synthetic a(Lio/dcloud/e/c/c;Landroid/app/Activity;Lio/dcloud/common/DHInterface/IApp;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/e/c/c;->a(Landroid/app/Activity;Lio/dcloud/common/DHInterface/IApp;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IOnCreateSplashView;)Lio/dcloud/common/DHInterface/IApp;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 111
    invoke-virtual/range {v0 .. v5}, Lio/dcloud/e/c/c;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IOnCreateSplashView;Z)Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/common/DHInterface/IOnCreateSplashView;Z)Lio/dcloud/common/DHInterface/IApp;
    .locals 7

    const-string v0, "GET_STATUS_BY_APPID"

    .line 124
    invoke-static {v0}, Lio/dcloud/common/util/TestUtil;->record(Ljava/lang/String;)V

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncStartApp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 126
    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v3, 0xc

    invoke-virtual {p0, v1, v3, p2}, Lio/dcloud/e/c/c;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 129
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 131
    :goto_0
    invoke-static {v0}, Lio/dcloud/common/util/TestUtil;->print(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lio/dcloud/e/c/c;->a(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-ne v4, v3, :cond_1

    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " STATUS_UN_RUNNING"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    if-eqz p4, :cond_1

    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ShowSplash"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 137
    invoke-interface {p4, p1}, Lio/dcloud/common/DHInterface/IOnCreateSplashView;->onCreateSplash(Landroid/content/Context;)Ljava/lang/Object;

    :cond_1
    if-eqz v0, :cond_4

    .line 142
    :try_start_0
    sget-object v0, Lio/dcloud/common/util/TestUtil;->START_APP_SET_ROOTVIEW:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u542f\u52a8"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/dcloud/common/util/TestUtil;->record(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v2, v5

    aput-object p2, v2, v4

    const/4 v4, 0x2

    aput-object p3, v2, v4

    .line 143
    invoke-virtual {p0, v1, v5, v2}, Lio/dcloud/e/c/c;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/IApp;

    .line 144
    invoke-interface {v1, p4}, Lio/dcloud/common/DHInterface/IAppInfo;->setOnCreateSplashView(Lio/dcloud/common/DHInterface/IOnCreateSplashView;)V

    if-eqz p5, :cond_3

    if-eq v0, v3, :cond_2

    if-ne v4, v3, :cond_3

    .line 147
    :cond_2
    sget-object p4, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onNewIntent:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {p0, p1, p4, p3}, Lio/dcloud/e/c/c;->onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v1

    .line 152
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "syncStartApp appid="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/app/Activity;Landroid/content/Intent;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)V
    .locals 5

    .line 67
    iget-object p2, p0, Lio/dcloud/e/c/c;->j:Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 68
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;->onCoreStop()Z

    move-result p2

    xor-int/2addr p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    const/4 v1, 0x0

    .line 70
    iput-object v1, p0, Lio/dcloud/e/c/c;->d:Landroid/content/Context;

    if-eqz p3, :cond_1

    .line 72
    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v3, 0xd

    invoke-virtual {p0, v2, v3, p3}, Lio/dcloud/e/c/c;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v2, 0x0

    if-eqz p2, :cond_6

    .line 75
    invoke-static {p1}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    move-result-object p2

    .line 76
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "appid"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    if-eqz p2, :cond_5

    if-nez p3, :cond_5

    const/16 p2, 0xa

    .line 81
    sget-object v3, Lio/dcloud/common/adapter/util/MobilePhoneModel;->HUAWEI:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_4

    if-eqz p3, :cond_2

    .line 83
    invoke-direct {p0, p1, p3}, Lio/dcloud/e/c/c;->a(Landroid/app/Activity;Lio/dcloud/common/DHInterface/IApp;)V

    .line 85
    :cond_2
    sget-object p2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, v2

    aput-object p4, p3, v0

    const/16 p4, 0x20

    invoke-virtual {p0, p2, p4, p3}, Lio/dcloud/e/c/c;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 86
    instance-of p3, p2, Ljava/lang/Boolean;

    if-eqz p3, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-nez p2, :cond_6

    .line 88
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 91
    :cond_4
    new-instance v0, Lio/dcloud/e/c/c$a;

    invoke-direct {v0, p0, p3, p1, p4}, Lio/dcloud/e/c/c$a;-><init>(Lio/dcloud/e/c/c;Lio/dcloud/common/DHInterface/IApp;Landroid/app/Activity;Ljava/lang/String;)V

    int-to-long p1, p2

    invoke-static {v0, p1, p2, v1}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;JLjava/lang/Object;)V

    goto :goto_2

    .line 107
    :cond_5
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 110
    :cond_6
    :goto_2
    sput-boolean v2, Lio/dcloud/common/util/BaseInfo;->sGlobalFullScreen:Z

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;)V
    .locals 2

    .line 7
    iput-object p1, p0, Lio/dcloud/e/c/c;->d:Landroid/content/Context;

    .line 8
    invoke-static {p1}, Lio/dcloud/common/adapter/util/DownloadUtil;->getInstance(Landroid/content/Context;)Lio/dcloud/common/adapter/util/DownloadUtil;

    .line 9
    invoke-static {}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->resetSysWebViewState()V

    .line 10
    invoke-direct {p0}, Lio/dcloud/e/c/c;->a()V

    .line 11
    invoke-direct {p0, p1}, Lio/dcloud/e/c/c;->a(Landroid/app/Activity;)V

    .line 12
    sput-object p3, Lio/dcloud/common/util/BaseInfo;->sRuntimeMode:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    .line 13
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->USE_ACTIVITY_HANDLE_KEYEVENT:Z

    .line 14
    :cond_0
    iget-boolean v0, p0, Lio/dcloud/e/c/c;->b:Z

    if-eqz v0, :cond_1

    return-void

    .line 15
    :cond_1
    invoke-static {p1}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/dcloud/e/c/c;->a(Landroid/content/Context;)V

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Core onInit mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;)V

    .line 19
    sget-object p3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onStart:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-direct {p0, p1, p3, p2}, Lio/dcloud/e/c/c;->a(Landroid/content/Context;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)V

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Core onInit mCoreListener="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/dcloud/e/c/c;->j:Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;)V

    .line 22
    :try_start_0
    sget-object p1, Lio/dcloud/common/util/BaseInfo;->sRuntimeMode:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    if-eqz p1, :cond_3

    sget-object p2, Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;->RUNTIME:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    if-ne p1, p2, :cond_2

    goto :goto_0

    .line 26
    :cond_2
    iget-object p1, p0, Lio/dcloud/e/c/c;->j:Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;

    if-eqz p1, :cond_4

    .line 27
    invoke-interface {p1, p0}, Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;->onCoreInitEnd(Lio/dcloud/common/DHInterface/ICore;)V

    goto :goto_1

    .line 28
    :cond_3
    :goto_0
    iget-object p1, p0, Lio/dcloud/e/c/c;->j:Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;

    if-eqz p1, :cond_4

    .line 29
    invoke-interface {p1, p0}, Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;->onCoreInitEnd(Lio/dcloud/common/DHInterface/ICore;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 153
    new-instance v0, Lio/dcloud/e/c/c$b;

    invoke-direct {v0, p0, p2, p1, p3}, Lio/dcloud/e/c/c$b;-><init>(Lio/dcloud/e/c/c;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {v0}, Lio/dcloud/common/adapter/util/AsyncTaskHandler;->executeThreadTask(Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;)V

    return-void
.end method

.method a(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 6

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/www/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 115
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/manifest.json"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    return v2

    :cond_0
    const-string v0, "direct_page"

    .line 120
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v2

    :cond_1
    const/4 p2, 0x0

    const-string v0, "has_stream_splash"

    .line 123
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1
.end method

.method public b(Landroid/app/Activity;)V
    .locals 3

    .line 1
    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onPause:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/dcloud/e/c/c;->a(Landroid/content/Context;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)V

    .line 2
    iget-boolean v2, p0, Lio/dcloud/e/c/c;->b:Z

    if-eqz v2, :cond_1

    .line 3
    iget-object v2, p0, Lio/dcloud/e/c/c;->g:Lio/dcloud/common/DHInterface/AbsMgr;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2, v0, v1}, Lio/dcloud/common/DHInterface/AbsMgr;->onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)V

    .line 6
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lio/dcloud/e/c/c;->onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    .line 8
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 3

    .line 1
    sget-object v0, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onResume:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/dcloud/e/c/c;->a(Landroid/content/Context;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)V

    .line 3
    iget-object v2, p0, Lio/dcloud/e/c/c;->g:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual {v2, v0, v1}, Lio/dcloud/common/DHInterface/AbsMgr;->onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lio/dcloud/e/c/c;->onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Landroid/app/Activity;)Z
    .locals 7

    .line 1
    invoke-static {p1}, Lio/dcloud/common/adapter/util/DownloadUtil;->getInstance(Landroid/content/Context;)Lio/dcloud/common/adapter/util/DownloadUtil;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/adapter/util/DownloadUtil;->stop()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 2
    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v4, "io.dcloud.feature.apsqh.QHNotifactionReceiver"

    const-string v5, "doSaveNotifications"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6, v1, v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :try_start_0
    sget-object v1, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onStop:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {p0, p1, v1, v6}, Lio/dcloud/e/c/c;->onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z

    .line 7
    iput-boolean v3, p0, Lio/dcloud/e/c/c;->b:Z

    const-string v2, "onStop"

    .line 8
    invoke-static {v3, v2}, Lio/dcloud/common/util/BaseInfo;->setLoadingLaunchePage(ZLjava/lang/String;)V

    .line 9
    invoke-direct {p0, p1, v1, v6}, Lio/dcloud/e/c/c;->a(Landroid/content/Context;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)V

    .line 10
    sput-object v6, Lio/dcloud/e/c/c;->a:Lio/dcloud/e/c/c;

    .line 11
    iget-object p1, p0, Lio/dcloud/e/c/c;->e:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual {p1}, Lio/dcloud/common/DHInterface/AbsMgr;->dispose()V

    .line 12
    iput-object v6, p0, Lio/dcloud/e/c/c;->e:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 13
    iget-object p1, p0, Lio/dcloud/e/c/c;->f:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual {p1}, Lio/dcloud/common/DHInterface/AbsMgr;->dispose()V

    .line 14
    iput-object v6, p0, Lio/dcloud/e/c/c;->f:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 15
    iget-object p1, p0, Lio/dcloud/e/c/c;->g:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual {p1}, Lio/dcloud/common/DHInterface/AbsMgr;->dispose()V

    .line 16
    iput-object v6, p0, Lio/dcloud/e/c/c;->g:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 17
    iget-object p1, p0, Lio/dcloud/e/c/c;->h:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-virtual {p1}, Lio/dcloud/common/DHInterface/AbsMgr;->dispose()V

    .line 18
    iput-object v6, p0, Lio/dcloud/e/c/c;->h:Lio/dcloud/common/DHInterface/AbsMgr;

    const-string p1, "Main_Path"

    const-string v1, "core exit"

    .line 19
    invoke-static {p1, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    invoke-direct {p0, p2, p3}, Lio/dcloud/e/c/c;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 4
    :cond_0
    :try_start_0
    sget-object v0, Lio/dcloud/e/c/c;->a:Lio/dcloud/e/c/c;

    if-nez v0, :cond_1

    sput-object p0, Lio/dcloud/e/c/c;->a:Lio/dcloud/e/c/c;

    .line 5
    :cond_1
    sget-object v0, Lio/dcloud/e/c/c$c;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 19
    :cond_2
    sget-object v0, Lio/dcloud/e/c/c;->a:Lio/dcloud/e/c/c;

    iget-object v0, v0, Lio/dcloud/e/c/c;->e:Lio/dcloud/common/DHInterface/AbsMgr;

    if-eqz v0, :cond_6

    .line 20
    invoke-interface {v0, p1, p2, p3}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 21
    :cond_3
    sget-object v0, Lio/dcloud/e/c/c;->a:Lio/dcloud/e/c/c;

    iget-object v0, v0, Lio/dcloud/e/c/c;->h:Lio/dcloud/common/DHInterface/AbsMgr;

    if-eqz v0, :cond_6

    .line 22
    invoke-interface {v0, p1, p2, p3}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 23
    :cond_4
    sget-object v0, Lio/dcloud/e/c/c;->a:Lio/dcloud/e/c/c;

    iget-object v0, v0, Lio/dcloud/e/c/c;->g:Lio/dcloud/common/DHInterface/AbsMgr;

    if-eqz v0, :cond_6

    .line 24
    invoke-interface {v0, p1, p2, p3}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 25
    :cond_5
    sget-object v0, Lio/dcloud/e/c/c;->a:Lio/dcloud/e/c/c;

    iget-object v0, v0, Lio/dcloud/e/c/c;->f:Lio/dcloud/common/DHInterface/AbsMgr;

    if-eqz v0, :cond_6

    .line 26
    invoke-interface {v0, p1, p2, p3}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Core.dispatchEvent"

    .line 42
    invoke-static {p2, p1}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public obtainActivityContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/e/c/c;->d:Landroid/content/Context;

    return-object v0
.end method

.method public obtainContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/e/c/c;->c:Landroid/content/Context;

    return-object v0
.end method

.method public onActivityExecute(Landroid/app/Activity;Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .locals 7

    .line 1
    instance-of v0, p3, Lio/dcloud/common/DHInterface/IApp;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p3

    check-cast v0, Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 4
    :cond_0
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sRuntimeMode:Lio/dcloud/feature/internal/sdk/SDK$IntegratedMode;

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDefaultBootApp:Ljava/lang/String;

    .line 5
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "appid"

    .line 8
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    :cond_2
    :goto_1
    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v5, 0x1

    aput-object p3, v3, v5

    const/4 v6, 0x2

    aput-object v0, v3, v6

    invoke-virtual {p0, v2, v5, v3}, Lio/dcloud/e/c/c;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 14
    sget-object v3, Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;->onKeyUp:Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;

    invoke-virtual {p2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v2, :cond_5

    move-object v6, v2

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_5

    .line 15
    check-cast p3, [Ljava/lang/Object;

    .line 16
    aget-object p3, p3, v4

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v4, 0x4

    if-ne p3, v4, :cond_5

    .line 18
    invoke-virtual {p2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 20
    instance-of p2, p1, Lio/dcloud/common/DHInterface/IActivityHandler;

    if-eqz p2, :cond_3

    .line 21
    move-object p2, p1

    check-cast p2, Lio/dcloud/common/DHInterface/IActivityHandler;

    invoke-interface {p2, v0}, Lio/dcloud/common/DHInterface/IActivityHandler;->closeAppStreamSplash(Ljava/lang/String;)V

    .line 23
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v1, v0}, Lio/dcloud/e/c/c;->a(Landroid/app/Activity;Landroid/content/Intent;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)V

    :cond_4
    return v5

    .line 28
    :cond_5
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onRestart(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/e/c/c;->k:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/IBoot;

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v1, p1}, Lio/dcloud/common/DHInterface/IBoot;->onRestart(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setmCoreListener(Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/e/c/c;->j:Lio/dcloud/common/DHInterface/ICore$ICoreStatusListener;

    return-void
.end method
