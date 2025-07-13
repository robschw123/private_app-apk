.class public Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;
.super Ljava/lang/Object;
.source "NativeRenderObjectUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeAddChildRenderObject(JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "child"
        }
    .end annotation
.end method

.method public static native nativeCopyRenderObject(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ptr"
        }
    .end annotation
.end method

.method public static native nativeGetRenderObject(Ljava/lang/String;Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "ref"
        }
    .end annotation
.end method

.method public static native nativeLayoutRenderObject(JFF)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ptr",
            "width",
            "height"
        }
    .end annotation
.end method

.method public static native nativeRenderObjectChildCount(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ptr"
        }
    .end annotation
.end method

.method public static native nativeRenderObjectChildWaste(JZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ptr",
            "waster"
        }
    .end annotation
.end method

.method public static native nativeRenderObjectGetChild(JI)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ptr",
            "index"
        }
    .end annotation
.end method

.method public static native nativeRenderObjectGetLayoutDirectionFromPathNode(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ptr"
        }
    .end annotation
.end method

.method public static native nativeRenderObjectHasNewLayout(J)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ptr"
        }
    .end annotation
.end method

.method public static native nativeRenderObjectUpdateComponent(JLcom/taobao/weex/ui/component/WXComponent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ptr",
            "component"
        }
    .end annotation
.end method

.method public static native nativeUpdateRenderObjectAttr(JLjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ptr",
            "key",
            "value"
        }
    .end annotation
.end method

.method public static native nativeUpdateRenderObjectStyle(JLjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ptr",
            "key",
            "value"
        }
    .end annotation
.end method

.method public static updateComponentSize(Lcom/taobao/weex/ui/component/WXComponent;FFFFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "component",
            "top",
            "bottom",
            "left",
            "right",
            "height",
            "width"
        }
    .end annotation

    .line 75
    invoke-virtual/range {p0 .. p6}, Lcom/taobao/weex/ui/component/WXComponent;->updateDemission(FFFFFF)V

    .line 76
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->applyLayoutOnly()V

    return-void
.end method
