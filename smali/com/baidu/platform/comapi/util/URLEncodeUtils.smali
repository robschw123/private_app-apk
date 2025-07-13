.class public final Lcom/baidu/platform/comapi/util/URLEncodeUtils;
.super Lcom/baidu/platform/comjni/JNIBaseApi;
.source "URLEncodeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/baidu/platform/comjni/JNIBaseApi;-><init>()V

    return-void
.end method

.method private static native nativeMD5Sign(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeOperSign(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeUrlEncode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeWebSign(Ljava/lang/String;)Ljava/lang/String;
.end method
