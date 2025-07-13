.class public Lcom/baidu/mapapi/common/EnvironmentUtilities;
.super Ljava/lang/Object;
.source "EnvironmentUtilities.java"


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field static d:I

.field static e:I

.field static f:I

.field static g:I

.field private static h:Lcom/baidu/mapsdkplatform/comapi/util/g;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppCachePath()Ljava/lang/String;
    .locals 1

    .line 105
    sget-object v0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppSDCardPath()Ljava/lang/String;
    .locals 3

    .line 90
    sget-object v0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->a:Ljava/lang/String;

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/BaiduMapSDKNew"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method public static getAppSecondCachePath()Ljava/lang/String;
    .locals 1

    .line 109
    sget-object v0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getDomTmpStgMax()I
    .locals 1

    .line 117
    sget v0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->e:I

    return v0
.end method

.method public static getItsTmpStgMax()I
    .locals 1

    .line 121
    sget v0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->f:I

    return v0
.end method

.method public static getMapTmpStgMax()I
    .locals 1

    .line 113
    sget v0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->d:I

    return v0
.end method

.method public static getSDCardPath()Ljava/lang/String;
    .locals 1

    .line 74
    sget-object v0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getSsgTmpStgMax()I
    .locals 1

    .line 125
    sget v0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->g:I

    return v0
.end method

.method public static initAppDirectory(Landroid/content/Context;)V
    .locals 1

    .line 46
    sget-object v0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->h:Lcom/baidu/mapsdkplatform/comapi/util/g;

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/g;->a()Lcom/baidu/mapsdkplatform/comapi/util/g;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->h:Lcom/baidu/mapsdkplatform/comapi/util/g;

    .line 48
    invoke-virtual {v0, p0}, Lcom/baidu/mapsdkplatform/comapi/util/g;->a(Landroid/content/Context;)V

    .line 51
    :cond_0
    sget-object p0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->a:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1

    .line 52
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "BaiduMapSDKNew"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "cache"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->b:Ljava/lang/String;

    goto :goto_0

    .line 57
    :cond_1
    sget-object p0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->h:Lcom/baidu/mapsdkplatform/comapi/util/g;

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/util/g;->b()Lcom/baidu/mapsdkplatform/comapi/util/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/util/f;->a()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->a:Ljava/lang/String;

    .line 58
    sget-object p0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->h:Lcom/baidu/mapsdkplatform/comapi/util/g;

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/util/g;->b()Lcom/baidu/mapsdkplatform/comapi/util/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/util/f;->c()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->b:Ljava/lang/String;

    .line 60
    :goto_0
    sget-object p0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->h:Lcom/baidu/mapsdkplatform/comapi/util/g;

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/util/g;->b()Lcom/baidu/mapsdkplatform/comapi/util/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/util/f;->d()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->c:Ljava/lang/String;

    const/high16 p0, 0x3200000

    .line 61
    sput p0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->d:I

    .line 62
    sput p0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->e:I

    const/high16 v0, 0x500000

    .line 63
    sput v0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->f:I

    .line 64
    sput p0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->g:I

    return-void
.end method

.method public static setSDCardPath(Ljava/lang/String;)V
    .locals 0

    .line 82
    sput-object p0, Lcom/baidu/mapapi/common/EnvironmentUtilities;->a:Ljava/lang/String;

    return-void
.end method
