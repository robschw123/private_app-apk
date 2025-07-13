.class public Lcom/baidu/mapsdkplatform/comapi/commonutils/b;
.super Ljava/lang/Object;
.source "BMapSDKLogStatistics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapsdkplatform/comapi/commonutils/b$c;,
        Lcom/baidu/mapsdkplatform/comapi/commonutils/b$d;,
        Lcom/baidu/mapsdkplatform/comapi/commonutils/b$b;,
        Lcom/baidu/mapsdkplatform/comapi/commonutils/b$a;
    }
.end annotation


# static fields
.field private static a:Z = true

.field private static b:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mapsdkplatform/comapi/commonutils/c;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;
    .locals 1

    .line 69
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b$c;->a()Lcom/baidu/mapsdkplatform/comapi/commonutils/b;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/baidu/mapsdkplatform/comapi/commonutils/b$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 131
    sget-boolean v0, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-static {}, Lcom/baidu/platform/comapi/util/j;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/commonutils/c;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/baidu/mapsdkplatform/comapi/commonutils/c;-><init>(Lcom/baidu/mapsdkplatform/comapi/commonutils/b;Lcom/baidu/mapsdkplatform/comapi/commonutils/b$b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private d()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 98
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/commonutils/b$d;->a:Lcom/baidu/mapsdkplatform/comapi/commonutils/b$d;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b$d;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 99
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/commonutils/b$d;->c:Lcom/baidu/mapsdkplatform/comapi/commonutils/b$d;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b$d;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 100
    invoke-static {v0}, Lcom/baidu/platform/comjni/engine/NAEngine;->a([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 119
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/commonutils/b$b;->g:Lcom/baidu/mapsdkplatform/comapi/commonutils/b$b;

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/commonutils/b$d;->a:Lcom/baidu/mapsdkplatform/comapi/commonutils/b$d;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b$d;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a(Lcom/baidu/mapsdkplatform/comapi/commonutils/b$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 77
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->isMapLogEnable()Z

    move-result v0

    sput-boolean v0, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a:Z

    if-eqz v0, :cond_2

    .line 78
    sget-boolean v0, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {}, Lcom/baidu/mapapi/OpenLogUtil;->getMapLogFilePath()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getExternalFilesDir()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/4 v1, 0x0

    .line 87
    invoke-static {v1}, Lcom/baidu/platform/comjni/engine/NAEngine;->a(Z)V

    .line 88
    invoke-static {v0}, Lcom/baidu/platform/comjni/engine/NAEngine;->a(Ljava/lang/String;)V

    .line 89
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/commonutils/b$a;->b:Lcom/baidu/mapsdkplatform/comapi/commonutils/b$a;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b$a;->a()I

    move-result v0

    invoke-static {v0}, Lcom/baidu/platform/comjni/engine/NAEngine;->a(I)V

    .line 90
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/commonutils/b$b;->f:Lcom/baidu/mapsdkplatform/comapi/commonutils/b$b;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b$b;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/baidu/platform/comjni/engine/NAEngine;->b(I)V

    .line 91
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->d()V

    const/4 v0, 0x1

    .line 92
    invoke-static {v0}, Lcom/baidu/platform/comjni/engine/NAEngine;->a(Z)V

    .line 93
    sput-boolean v0, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->b:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 143
    sget-boolean v0, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->b:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 146
    sput-boolean v0, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->b:Z

    .line 147
    sput-boolean v0, Lcom/baidu/mapsdkplatform/comapi/commonutils/b;->a:Z

    .line 148
    invoke-static {v0}, Lcom/baidu/platform/comjni/engine/NAEngine;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method
