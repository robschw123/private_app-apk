.class Lcom/baidu/platform/comapi/map/VulkanDetect;
.super Ljava/lang/Object;
.source "VulkanDetect.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getNativeWindow(Landroid/view/Surface;)J
.end method

.method public static native isSupportedVulkan()Z
.end method

.method public static native releaseNativeWindow(J)V
.end method
