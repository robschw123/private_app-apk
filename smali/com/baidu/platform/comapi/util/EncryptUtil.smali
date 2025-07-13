.class public final Lcom/baidu/platform/comapi/util/EncryptUtil;
.super Lcom/baidu/platform/comjni/JNIBaseApi;
.source "EncryptUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/baidu/platform/comjni/JNIBaseApi;-><init>()V

    return-void
.end method

.method private static native nativeDecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
