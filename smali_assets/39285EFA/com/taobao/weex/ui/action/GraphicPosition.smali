.class public Lcom/taobao/weex/ui/action/GraphicPosition;
.super Ljava/lang/Object;
.source "GraphicPosition.java"


# instance fields
.field private mBottom:F

.field private mLeft:F

.field private mRight:F

.field private mTop:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mLeft:F

    .line 30
    iput p2, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mTop:F

    .line 31
    iput p3, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mRight:F

    .line 32
    iput p4, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mBottom:F

    return-void
.end method


# virtual methods
.method public getBottom()F
    .locals 1

    .line 60
    iget v0, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mBottom:F

    return v0
.end method

.method public getLeft()F
    .locals 1

    .line 36
    iget v0, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mLeft:F

    return v0
.end method

.method public getRight()F
    .locals 1

    .line 52
    iget v0, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mRight:F

    return v0
.end method

.method public getTop()F
    .locals 1

    .line 44
    iget v0, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mTop:F

    return v0
.end method

.method public setBottom(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bottom"
        }
    .end annotation

    .line 64
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mBottom:F

    return-void
.end method

.method public setLeft(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "left"
        }
    .end annotation

    .line 40
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mLeft:F

    return-void
.end method

.method public setRight(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "right"
        }
    .end annotation

    .line 56
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mRight:F

    return-void
.end method

.method public setTop(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "top"
        }
    .end annotation

    .line 48
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mTop:F

    return-void
.end method

.method public update(FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "top",
            "bottom",
            "left",
            "right"
        }
    .end annotation

    .line 69
    iput p1, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mTop:F

    .line 70
    iput p2, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mBottom:F

    .line 71
    iput p3, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mLeft:F

    .line 72
    iput p4, p0, Lcom/taobao/weex/ui/action/GraphicPosition;->mRight:F

    return-void
.end method
