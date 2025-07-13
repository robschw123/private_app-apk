.class public Lcom/baidu/mapapi/OpenLogUtil;
.super Ljava/lang/Object;
.source "OpenLogUtil.java"


# static fields
.field private static a:Lcom/baidu/mapapi/ModuleName; = null

.field private static b:Z = true

.field private static c:Z = false

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMapLogFilePath()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/baidu/mapapi/OpenLogUtil;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static isMapLogEnable()Z
    .locals 1

    .line 73
    sget-boolean v0, Lcom/baidu/mapapi/OpenLogUtil;->c:Z

    return v0
.end method

.method public static isNativeLogAnalysisEnable()Z
    .locals 1

    .line 41
    sget-boolean v0, Lcom/baidu/mapapi/OpenLogUtil;->b:Z

    return v0
.end method

.method public static setMapLogEnable(Z)V
    .locals 0

    .line 65
    sput-boolean p0, Lcom/baidu/mapapi/OpenLogUtil;->c:Z

    return-void
.end method

.method public static setMapLogFilePath(Ljava/lang/String;)V
    .locals 0

    .line 49
    sput-object p0, Lcom/baidu/mapapi/OpenLogUtil;->d:Ljava/lang/String;

    return-void
.end method

.method public static setModuleLogEnable(Lcom/baidu/mapapi/ModuleName;Z)V
    .locals 0

    .line 28
    sput-object p0, Lcom/baidu/mapapi/OpenLogUtil;->a:Lcom/baidu/mapapi/ModuleName;

    .line 29
    invoke-virtual {p0}, Lcom/baidu/mapapi/ModuleName;->ordinal()I

    move-result p0

    invoke-static {p1, p0}, Lcom/baidu/mapsdkplatform/comjni/tools/a;->a(ZI)V

    return-void
.end method

.method public static setNativeLogAnalysisEnable(Z)V
    .locals 0

    .line 33
    sput-boolean p0, Lcom/baidu/mapapi/OpenLogUtil;->b:Z

    return-void
.end method
