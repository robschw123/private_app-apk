.class public Lcom/baidu/platform/comjni/map/dataengine/NADataEngine;
.super Lcom/baidu/platform/comjni/NativeComponent;
.source "NADataEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/baidu/platform/comjni/NativeComponent;-><init>()V

    return-void
.end method

.method private native nativeCancelThumbImageRequest(J)V
.end method

.method private native nativeCreate()J
.end method

.method private native nativeGetCurrentStreetId(J)Ljava/lang/String;
.end method

.method private native nativeGetCurrentStreetInfo(JLandroid/os/Bundle;)Ljava/lang/String;
.end method

.method private native nativeGetHotMapCityInfo(JLandroid/os/Bundle;)Z
.end method

.method private native nativeGetStreetCityInfo(JLandroid/os/Bundle;)Z
.end method

.method private native nativeQueryThumbImage(JLjava/lang/String;)Z
.end method

.method private native nativeRelease(J)I
.end method

.method private native nativeSetStreetPOIUID(JLjava/lang/String;)V
.end method

.method private native nativeStreetSwitchByUID(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeStreetSwitchToID(JLjava/lang/String;I)Z
.end method

.method private native nativeStreetSwitchToIDFromReGeo(JLjava/lang/String;Ljava/lang/String;JJ)Z
.end method

.method private native nativeStreetSwitchToIID(JLjava/lang/String;Ljava/lang/String;Z)Z
.end method


# virtual methods
.method public create()J
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/baidu/platform/comjni/map/dataengine/NADataEngine;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/platform/comjni/map/dataengine/NADataEngine;->mNativePointer:J

    .line 16
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/dataengine/NADataEngine;->mNativePointer:J

    return-wide v0
.end method

.method public dispose()I
    .locals 5

    .line 21
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/dataengine/NADataEngine;->mNativePointer:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 22
    iget-wide v0, p0, Lcom/baidu/platform/comjni/map/dataengine/NADataEngine;->mNativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/baidu/platform/comjni/map/dataengine/NADataEngine;->nativeRelease(J)I

    move-result v0

    .line 23
    iput-wide v2, p0, Lcom/baidu/platform/comjni/map/dataengine/NADataEngine;->mNativePointer:J

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
