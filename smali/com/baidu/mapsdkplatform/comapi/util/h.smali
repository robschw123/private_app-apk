.class public Lcom/baidu/mapsdkplatform/comapi/util/h;
.super Ljava/lang/Object;
.source "SysOSAPI.java"


# static fields
.field private static A:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static B:Ljava/lang/String; = null

.field public static a:Landroid/content/Context; = null

.field public static b:F = 0.0f

.field public static c:Ljava/lang/String; = null

.field private static final d:Ljava/lang/String; = "h"

.field private static e:Lcom/baidu/mapsdkplatform/comjni/util/a;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:I

.field private static l:I

.field private static m:I

.field private static n:I

.field private static o:I

.field private static p:I

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;

.field private static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/baidu/mapsdkplatform/comjni/util/a;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comjni/util/a;-><init>()V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->e:Lcom/baidu/mapsdkplatform/comjni/util/a;

    const-string v0, "02"

    .line 39
    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->f:Ljava/lang/String;

    const-string v0, "baidu"

    .line 52
    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->r:Ljava/lang/String;

    const-string v0, ""

    .line 54
    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->s:Ljava/lang/String;

    .line 56
    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->t:Ljava/lang/String;

    .line 58
    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->u:Ljava/lang/String;

    const-string v1, "-1"

    .line 64
    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->x:Ljava/lang/String;

    .line 65
    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->y:Ljava/lang/String;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 71
    sput v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->b:F

    .line 73
    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->z:Ljava/lang/String;

    .line 75
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->A:Ljava/util/Map;

    .line 77
    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->B:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    .line 127
    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .line 352
    sput-object p0, Lcom/baidu/mapsdkplatform/comapi/util/h;->q:Ljava/lang/String;

    .line 353
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->h()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 400
    sput-object p1, Lcom/baidu/mapsdkplatform/comapi/util/h;->x:Ljava/lang/String;

    .line 401
    sput-object p0, Lcom/baidu/mapsdkplatform/comapi/util/h;->y:Ljava/lang/String;

    .line 402
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->h()V

    return-void
.end method

.method public static a(Landroid/content/Context;)[B
    .locals 4

    const/4 v0, 0x0

    .line 167
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_2

    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-nez v1, :cond_0

    return-object v0

    .line 173
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 175
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 178
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object p0

    goto :goto_0

    .line 181
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x40

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    :goto_0
    if-eqz p0, :cond_3

    .line 185
    array-length v1, p0

    if-lez v1, :cond_3

    const/4 v1, 0x0

    .line 186
    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 190
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-object v0
.end method

.method public static b()V
    .locals 0

    .line 261
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->f()V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0

    .line 208
    sput-object p0, Lcom/baidu/mapsdkplatform/comapi/util/h;->a:Landroid/content/Context;

    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 4

    .line 266
    new-instance v0, Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;-><init>()V

    .line 267
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;->object()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 268
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->s:Ljava/lang/String;

    const-string v2, "cpu"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 269
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->f:Ljava/lang/String;

    const-string v2, "resid"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 270
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->r:Ljava/lang/String;

    const-string v2, "channel"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 271
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->t:Ljava/lang/String;

    const-string v2, "glr"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 272
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->u:Ljava/lang/String;

    const-string v2, "glv"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 273
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mb"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 274
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sv"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 275
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "os"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "dpi_x"

    .line 276
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->n()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "dpi_y"

    .line 277
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->n()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 278
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->q:Ljava/lang/String;

    const-string v2, "net"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 279
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->z:Ljava/lang/String;

    const-string v2, "cuid"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "signature"

    .line 282
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->arrayValue()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 283
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/util/h;->a(Landroid/content/Context;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 285
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 286
    aget-byte v3, v1, v2

    invoke-virtual {v0, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endArrayValue()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 291
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pcn"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "screen_x"

    .line 292
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "screen_y"

    .line 293
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 294
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endObject()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 296
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;->getJson()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->B:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 6

    .line 213
    sput-object p0, Lcom/baidu/mapsdkplatform/comapi/util/h;->a:Landroid/content/Context;

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->v:Ljava/lang/String;

    .line 219
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->w:Ljava/lang/String;

    .line 223
    :cond_1
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/c;->b()Z

    move-result v0

    const-string v1, "Android"

    if-eqz v0, :cond_2

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->i:Ljava/lang/String;

    .line 225
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->h:Ljava/lang/String;

    goto :goto_0

    .line 227
    :cond_2
    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->i:Ljava/lang/String;

    const-string v0, ""

    .line 228
    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->h:Ljava/lang/String;

    .line 231
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->g:Ljava/lang/String;

    .line 232
    invoke-static {p0}, Lcom/baidu/mapsdkplatform/comapi/util/h;->d(Landroid/content/Context;)V

    .line 233
    invoke-static {p0}, Lcom/baidu/mapsdkplatform/comapi/util/h;->e(Landroid/content/Context;)V

    .line 234
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->s()V

    .line 239
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->r()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/baidu/mapsdkplatform/comapi/util/h;->z:Ljava/lang/String;

    .line 242
    sget-object p0, Lcom/baidu/mapsdkplatform/comapi/util/h;->A:Ljava/util/Map;

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resid"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object p0, Lcom/baidu/mapsdkplatform/comapi/util/h;->A:Ljava/util/Map;

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "channel"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object p0, Lcom/baidu/mapsdkplatform/comapi/util/h;->A:Ljava/util/Map;

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mb"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object p0, Lcom/baidu/mapsdkplatform/comapi/util/h;->A:Ljava/util/Map;

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sv"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object p0, Lcom/baidu/mapsdkplatform/comapi/util/h;->A:Ljava/util/Map;

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "os"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object p0, Lcom/baidu/mapsdkplatform/comapi/util/h;->A:Ljava/util/Map;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 248
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->n()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->n()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "%d,%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "dpi"

    .line 247
    invoke-interface {p0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object p0, Lcom/baidu/mapsdkplatform/comapi/util/h;->A:Ljava/util/Map;

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->z:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "cuid"

    invoke-interface {p0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object p0, Lcom/baidu/mapsdkplatform/comapi/util/h;->A:Ljava/util/Map;

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "pcn"

    invoke-interface {p0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object p0, Lcom/baidu/mapsdkplatform/comapi/util/h;->A:Ljava/util/Map;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->l()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object p0, Lcom/baidu/mapsdkplatform/comapi/util/h;->e:Lcom/baidu/mapsdkplatform/comjni/util/a;

    if-eqz p0, :cond_3

    .line 255
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comjni/util/a;->a()V

    :cond_3
    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .line 302
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->B:Ljava/lang/String;

    return-object v0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 3

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 114
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 115
    invoke-static {}, Lcom/baidu/mapapi/VersionInfo;->getApiVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->j:Ljava/lang/String;

    const/16 v1, 0x5f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->j:Ljava/lang/String;

    .line 119
    :cond_0
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput p0, Lcom/baidu/mapsdkplatform/comapi/util/h;->k:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "1.0.0"

    .line 121
    sput-object p0, Lcom/baidu/mapsdkplatform/comapi/util/h;->j:Ljava/lang/String;

    const/4 p0, 0x1

    .line 122
    sput p0, Lcom/baidu/mapsdkplatform/comapi/util/h;->k:I

    :goto_0
    return-void
.end method

.method public static e()Ljava/lang/String;
    .locals 7

    .line 326
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->A:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 330
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 331
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    add-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    .line 332
    div-long v5, v1, v3

    long-to-double v5, v5

    rem-long/2addr v1, v3

    long-to-double v0, v1

    const-wide v2, 0x408f400000000000L    # 1000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v0

    .line 333
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->A:Ljava/util/Map;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ctm"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->A:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 337
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 338
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v3, "&"

    .line 339
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    .line 340
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 342
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "window"

    .line 137
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 138
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz p0, :cond_0

    .line 141
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 145
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v1

    sput v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->l:I

    .line 146
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v1

    sput v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->m:I

    .line 147
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 149
    :cond_1
    iget p0, v0, Landroid/util/DisplayMetrics;->density:F

    sput p0, Lcom/baidu/mapsdkplatform/comapi/util/h;->b:F

    .line 150
    iget p0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-int p0, p0

    sput p0, Lcom/baidu/mapsdkplatform/comapi/util/h;->n:I

    .line 151
    iget p0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-int p0, p0

    sput p0, Lcom/baidu/mapsdkplatform/comapi/util/h;->o:I

    .line 158
    iget p0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput p0, Lcom/baidu/mapsdkplatform/comapi/util/h;->p:I

    if-nez p0, :cond_2

    const/16 p0, 0xa0

    .line 160
    sput p0, Lcom/baidu/mapsdkplatform/comapi/util/h;->p:I

    :cond_2
    return-void
.end method

.method public static f()V
    .locals 1

    .line 346
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->e:Lcom/baidu/mapsdkplatform/comjni/util/a;

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comjni/util/a;->b()V

    :cond_0
    return-void
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .line 357
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->q:Ljava/lang/String;

    return-object v0
.end method

.method public static h()V
    .locals 5

    .line 361
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->A:Ljava/util/Map;

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "net"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->A:Ljava/util/Map;

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->x:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comjni/util/AppMD5;->encodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "appid"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->A:Ljava/util/Map;

    const-string v1, "bduid"

    const-string v4, ""

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    new-instance v0, Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;-><init>()V

    .line 367
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;->object()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 368
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->s:Ljava/lang/String;

    const-string v4, "cpu"

    invoke-virtual {v0, v4, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 369
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->f:Ljava/lang/String;

    const-string v4, "resid"

    invoke-virtual {v0, v4, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 370
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->r:Ljava/lang/String;

    const-string v4, "channel"

    invoke-virtual {v0, v4, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 371
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->t:Ljava/lang/String;

    const-string v4, "glr"

    invoke-virtual {v0, v4, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 372
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->u:Ljava/lang/String;

    const-string v4, "glv"

    invoke-virtual {v0, v4, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 373
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->i()Ljava/lang/String;

    move-result-object v1

    const-string v4, "mb"

    invoke-virtual {v0, v4, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 374
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->k()Ljava/lang/String;

    move-result-object v1

    const-string v4, "sv"

    invoke-virtual {v0, v4, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 375
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->m()Ljava/lang/String;

    move-result-object v1

    const-string v4, "os"

    invoke-virtual {v0, v4, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "dpi_x"

    .line 376
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->n()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "dpi_y"

    .line 377
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->n()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 378
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->q:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 379
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->z:Ljava/lang/String;

    const-string v2, "cuid"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 380
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pcn"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "screen_x"

    .line 381
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v1, "screen_y"

    .line 382
    invoke-virtual {v0, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/h;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 383
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->x:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 384
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->y:Ljava/lang/String;

    const-string v2, "duid"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 386
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 387
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->c:Ljava/lang/String;

    const-string v2, "token"

    invoke-virtual {v0, v2, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->putStringValue(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 389
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endObject()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 391
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->getInstance()Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;->getJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->updatePhoneInfo(Ljava/lang/String;)V

    return-void
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    .line 406
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static j()I
    .locals 1

    .line 410
    sget v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->l:I

    return v0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    .line 414
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static l()I
    .locals 1

    .line 418
    sget v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->m:I

    return v0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    .line 422
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static n()I
    .locals 1

    .line 434
    sget v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->p:I

    return v0
.end method

.method public static o()Ljava/lang/String;
    .locals 1

    .line 438
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->r:Ljava/lang/String;

    return-object v0
.end method

.method public static p()Ljava/lang/String;
    .locals 1

    .line 442
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static q()Ljava/lang/String;
    .locals 1

    .line 446
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->v:Ljava/lang/String;

    return-object v0
.end method

.method public static r()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 479
    :try_start_0
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/util/h;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->getInstance(Landroid/content/Context;)Lcom/baidu/lbsapi/auth/LBSAuthManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/lbsapi/auth/LBSAuthManager;->getCUID()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method private static s()V
    .locals 1

    const-string v0, "0"

    .line 198
    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/util/h;->q:Ljava/lang/String;

    return-void
.end method
