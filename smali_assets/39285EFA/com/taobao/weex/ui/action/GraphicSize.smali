.class public Lcom/taobao/weex/ui/action/GraphicSize;
.super Ljava/lang/Object;
.source "GraphicSize.java"


# instance fields
.field private mHeight:F

.field private mWidth:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicSize;->mWidth:F

    .line 28
    iput p2, p0, Lcom/taobao/weex/ui/action/GraphicSize;->mHeight:F

    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    .line 40
    iget v0, p0, Lcom/taobao/weex/ui/action/GraphicSize;->mHeight:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .line 32
    iget v0, p0, Lcom/taobao/weex/ui/action/GraphicSize;->mWidth:F

    return v0
.end method

.method public setHeight(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 44
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicSize;->mHeight:F

    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    .line 36
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicSize;->mWidth:F

    return-void
.end method

.method public update(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 48
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicSize;->mWidth:F

    .line 49
    iput p2, p0, Lcom/taobao/weex/ui/action/GraphicSize;->mHeight:F

    return-void
.end method
