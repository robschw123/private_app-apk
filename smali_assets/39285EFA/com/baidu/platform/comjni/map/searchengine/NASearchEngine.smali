.class public Lcom/baidu/platform/comjni/map/searchengine/NASearchEngine;
.super Lcom/baidu/platform/comjni/NativeComponent;
.source "NASearchEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/baidu/platform/comjni/NativeComponent;-><init>()V

    .line 19
    invoke-virtual {p0}, Lcom/baidu/platform/comjni/map/searchengine/NASearchEngine;->create()J

    return-void
.end method

.method private static native nativeCancelRequest(JI)Z
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeGetJsonResult(JI)Ljava/lang/String;
.end method

.method private static native nativeGetProtobufResult(JI)[B
.end method

.method private static native nativeInit(JI)Z
.end method

.method private static native nativeInitWithBundle(JLjava/lang/String;)Z
.end method

.method private static native nativeRelease(J)I
.end method

.method private static native nativeRequest(JLjava/lang/String;)I
.end method

.method private static native nativeRequestData(J[B)Z
.end method

.method private static native nativeUpdateOfflineSearchPath(JLjava/lang/String;)V
.end method


# virtual methods
.method public create()J
    .locals 2

    .line 24
    invoke-static {}, Lcom/baidu/platform/comjni/map/searchengine/NASearchEngine;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/platform/comjni/map/searchengine/NASearchEngine;->mNativePointer:J

    .line 25
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/searchengine/NASearchEngine;->mNativePointer:J

    return-wide v0
.end method

.method public dispose()I
    .locals 5

    .line 30
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/searchengine/NASearchEngine;->mNativePointer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 31
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/searchengine/NASearchEngine;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/baidu/platform/comjni/map/searchengine/NASearchEngine;->nativeRelease(J)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
