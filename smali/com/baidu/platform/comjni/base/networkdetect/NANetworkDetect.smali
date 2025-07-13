.class public Lcom/baidu/platform/comjni/base/networkdetect/NANetworkDetect;
.super Lcom/baidu/platform/comjni/NativeComponent;
.source "NANetworkDetect.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/baidu/platform/comjni/NativeComponent;-><init>()V

    .line 18
    invoke-virtual {p0}, Lcom/baidu/platform/comjni/base/networkdetect/NANetworkDetect;->create()J

    return-void
.end method

.method private native nativeCreate()J
.end method

.method private native nativeNetworkDetect(JLjava/lang/String;)Z
.end method

.method private native nativeRelease(J)I
.end method


# virtual methods
.method public create()J
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/baidu/platform/comjni/base/networkdetect/NANetworkDetect;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/platform/comjni/base/networkdetect/NANetworkDetect;->mNativePointer:J

    .line 24
    iget-wide v0, p0, Lcom/baidu/platform/comjni/base/networkdetect/NANetworkDetect;->mNativePointer:J

    return-wide v0
.end method

.method public dispose()I
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/baidu/platform/comjni/base/networkdetect/NANetworkDetect;->mNativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/base/networkdetect/NANetworkDetect;->nativeRelease(J)I

    move-result v0

    return v0
.end method
