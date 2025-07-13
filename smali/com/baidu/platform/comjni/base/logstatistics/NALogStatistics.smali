.class public Lcom/baidu/platform/comjni/base/logstatistics/NALogStatistics;
.super Lcom/baidu/platform/comjni/NativeComponent;
.source "NALogStatistics.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/baidu/platform/comjni/NativeComponent;-><init>()V

    .line 18
    invoke-virtual {p0}, Lcom/baidu/platform/comjni/base/logstatistics/NALogStatistics;->create()J

    return-void
.end method

.method public static native nativeAddLog(JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native nativeCreate()J
.end method

.method public static native nativeRelease(J)I
.end method

.method public static native nativeSave(J)Z
.end method


# virtual methods
.method public a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public create()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/baidu/platform/comjni/base/logstatistics/NALogStatistics;->mNativePointer:J

    return-wide v0
.end method

.method public dispose()I
    .locals 5

    .line 30
    iget-wide v0, p0, Lcom/baidu/platform/comjni/base/logstatistics/NALogStatistics;->mNativePointer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 31
    iget-wide v0, p0, Lcom/baidu/platform/comjni/base/logstatistics/NALogStatistics;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/baidu/platform/comjni/base/logstatistics/NALogStatistics;->nativeRelease(J)I

    move-result v0

    .line 32
    iput-wide v2, p0, Lcom/baidu/platform/comjni/base/logstatistics/NALogStatistics;->mNativePointer:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
