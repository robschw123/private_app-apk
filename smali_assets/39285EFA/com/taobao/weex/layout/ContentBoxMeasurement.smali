.class public abstract Lcom/taobao/weex/layout/ContentBoxMeasurement;
.super Ljava/lang/Object;
.source "ContentBoxMeasurement.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/taobao/weex/common/Destroyable;


# instance fields
.field protected mComponent:Lcom/taobao/weex/ui/component/WXComponent;

.field protected mMeasureExactly:Z

.field protected mMeasureHeight:F

.field protected mMeasureWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mMeasureExactly:Z

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mMeasureExactly:Z

    .line 45
    iput-object p1, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mComponent:Lcom/taobao/weex/ui/component/WXComponent;

    return-void
.end method

.method public getHeight()F
    .locals 1

    .line 77
    iget v0, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mMeasureHeight:F

    return v0
.end method

.method public getMeasureExactly()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mMeasureExactly:Z

    return v0
.end method

.method public getWidth()F
    .locals 1

    .line 67
    iget v0, p0, Lcom/taobao/weex/layout/ContentBoxMeasurement;->mMeasureWidth:F

    return v0
.end method

.method public abstract layoutAfter(FF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "computedWidth",
            "computedHeight"
        }
    .end annotation
.end method

.method public abstract layoutBefore()V
.end method

.method public final measure(FFII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "widthMeasureMode",
            "heightMeasureMode"
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/taobao/weex/layout/ContentBoxMeasurement;->measureInternal(FFII)V

    return-void
.end method

.method public abstract measureInternal(FFII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "widthMeasureMode",
            "heightMeasureMode"
        }
    .end annotation
.end method
