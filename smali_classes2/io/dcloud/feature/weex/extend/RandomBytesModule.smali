.class public Lio/dcloud/feature/weex/extend/RandomBytesModule;
.super Lcom/taobao/weex/common/WXModule;
.source "RandomBytesModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    return-void
.end method

.method private getRandomBytes(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 24
    new-array p1, p1, [B

    .line 25
    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v0, 0x2

    .line 26
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getRandomValues(I)Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/extend/RandomBytesModule;->getRandomBytes(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
