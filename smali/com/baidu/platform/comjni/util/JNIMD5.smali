.class public Lcom/baidu/platform/comjni/util/JNIMD5;
.super Lcom/baidu/platform/comjni/JNIBaseApi;
.source "JNIMD5.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/baidu/platform/comjni/JNIBaseApi;-><init>()V

    return-void
.end method

.method public static native EncodeUrlParamsValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native GetSignMD5String(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native GetWebSignMD5String(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native SignOpra(Ljava/lang/String;)Ljava/lang/String;
.end method
