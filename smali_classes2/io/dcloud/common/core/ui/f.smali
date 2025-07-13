.class Lio/dcloud/common/core/ui/f;
.super Lio/dcloud/common/adapter/ui/AdaFrameItem;


# static fields
.field static a:Lio/dcloud/common/core/ui/f;


# direct methods
.method public static b()V
    .locals 1

    .line 1
    sget-object v0, Lio/dcloud/common/core/ui/f;->a:Lio/dcloud/common/core/ui/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0
.end method
