.class public Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;
.super Lcom/baidu/platform/comjni/NativeComponent;
.source "NACommonMemCache.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/baidu/platform/comjni/NativeComponent;-><init>()V

    .line 26
    invoke-virtual {p0}, Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;->create()J

    return-void
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeDecodeUsync(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeEnCrypt(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeEnCryptWithType(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeEnCryptWithUsync(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeGetKeyString(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeGetPhoneInfoBundle(JZ)Ljava/lang/String;
.end method

.method private static native nativeGetPhoneInfoUrl(J)Ljava/lang/String;
.end method

.method private static native nativeGetSataInfo(JZII)Ljava/lang/String;
.end method

.method private static native nativeInit(JLjava/lang/String;)V
.end method

.method private static native nativeRelease(J)I
.end method

.method private static native nativeSetKeyBundle(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeSetKeyDouble(JLjava/lang/String;D)V
.end method

.method private static native nativeSetKeyFloat(JLjava/lang/String;F)V
.end method

.method private static native nativeSetKeyInt(JLjava/lang/String;I)V
.end method

.method private static native nativeSetKeyString(JLjava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;->nativeInit(JLjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;->mNativePointer:J

    invoke-static {v0, v1, p1, p2}, Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;->nativeSetKeyBundle(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public create()J
    .locals 2

    .line 31
    invoke-static {}, Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;->mNativePointer:J

    .line 32
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;->mNativePointer:J

    return-wide v0
.end method

.method public dispose()I
    .locals 5

    .line 38
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;->mNativePointer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 39
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;->nativeRelease(J)I

    move-result v0

    .line 40
    iput-wide v2, p0, Lcom/baidu/platform/comjni/map/commonmemcache/NACommonMemCache;->mNativePointer:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
