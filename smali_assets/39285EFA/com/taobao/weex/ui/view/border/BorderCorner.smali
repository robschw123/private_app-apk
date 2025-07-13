.class abstract Lcom/taobao/weex/ui/view/border/BorderCorner;
.super Ljava/lang/Object;
.source "BorderCorner.java"


# static fields
.field static final SWEEP_ANGLE:F = 45.0f


# instance fields
.field private hasInnerCorner:Z

.field private hasOuterCorner:Z

.field protected mAngleBisector:F

.field private mBorderBox:Landroid/graphics/RectF;

.field private mCornerRadius:F

.field private mOvalBottom:F

.field private mOvalLeft:F

.field private mOvalRight:F

.field private mOvalTop:F

.field private mPostBorderWidth:F

.field private mPreBorderWidth:F

.field private mRoundCornerEndX:F

.field private mRoundCornerEndY:F

.field private mRoundCornerStartX:F

.field private mRoundCornerStartY:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mCornerRadius:F

    .line 33
    iput v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mPreBorderWidth:F

    .line 34
    iput v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mPostBorderWidth:F

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->hasInnerCorner:Z

    .line 47
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->hasOuterCorner:Z

    return-void
.end method


# virtual methods
.method public final drawRoundedCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "paint",
            "startAngle"
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->hasOuterCorner()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 103
    iget v1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mOvalLeft:F

    iget v2, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mOvalRight:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 104
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p2

    cmpl-float p2, p2, v1

    if-lez p2, :cond_0

    .line 105
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 107
    :cond_0
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 108
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p2, v1, :cond_1

    .line 109
    iget v2, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mOvalLeft:F

    iget v3, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mOvalTop:F

    iget v4, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mOvalRight:F

    iget v5, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mOvalBottom:F

    const/high16 v7, 0x42340000    # 45.0f

    const/4 v8, 0x0

    move-object v1, p1

    move v6, p3

    move-object v9, v0

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 112
    :cond_1
    new-instance v2, Landroid/graphics/RectF;

    iget p2, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mOvalLeft:F

    iget v1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mOvalTop:F

    iget v3, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mOvalRight:F

    iget v4, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mOvalBottom:F

    invoke-direct {v2, p2, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v4, 0x42340000    # 45.0f

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getRoundCornerStartX()F

    move-result p3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getRoundCornerEndX()F

    move-result v0

    cmpl-float p3, p3, v0

    if-nez p3, :cond_3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getRoundCornerStartY()F

    move-result p3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getRoundCornerEndY()F

    move-result v0

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_4

    .line 118
    :cond_3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getRoundCornerStartX()F

    move-result v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getRoundCornerStartY()F

    move-result v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getRoundCornerEndX()F

    move-result v3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getRoundCornerEndY()F

    move-result v4

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected final getAngleBisectorDegree()F
    .locals 1

    .line 203
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mAngleBisector:F

    return v0
.end method

.method protected final getBorderBox()Landroid/graphics/RectF;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mBorderBox:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected final getOuterCornerRadius()F
    .locals 1

    .line 199
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mCornerRadius:F

    return v0
.end method

.method protected final getPostBorderWidth()F
    .locals 1

    .line 195
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mPostBorderWidth:F

    return v0
.end method

.method protected final getPreBorderWidth()F
    .locals 1

    .line 191
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mPreBorderWidth:F

    return v0
.end method

.method public final getRoundCornerEndX()F
    .locals 1

    .line 142
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mRoundCornerEndX:F

    return v0
.end method

.method public final getRoundCornerEndY()F
    .locals 1

    .line 150
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mRoundCornerEndY:F

    return v0
.end method

.method public final getRoundCornerStartX()F
    .locals 1

    .line 126
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mRoundCornerStartX:F

    return v0
.end method

.method public final getRoundCornerStartY()F
    .locals 1

    .line 134
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mRoundCornerStartY:F

    return v0
.end method

.method hasInnerCorner()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->hasInnerCorner:Z

    return v0
.end method

.method hasOuterCorner()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->hasOuterCorner:Z

    return v0
.end method

.method protected abstract prepareOval()V
.end method

.method protected abstract prepareRoundCorner()V
.end method

.method final set(FFFLandroid/graphics/RectF;F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cornerRadius",
            "preBorderWidth",
            "postBorderWidth",
            "borderBox",
            "angleBisector"
        }
    .end annotation

    .line 59
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mCornerRadius:F

    invoke-static {v0, p1}, Lcom/taobao/weex/base/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mPreBorderWidth:F

    .line 60
    invoke-static {v0, p2}, Lcom/taobao/weex/base/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mPostBorderWidth:F

    .line 61
    invoke-static {v0, p3}, Lcom/taobao/weex/base/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mAngleBisector:F

    .line 62
    invoke-static {v0, p5}, Lcom/taobao/weex/base/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mBorderBox:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, p4}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    .line 66
    iput p1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mCornerRadius:F

    .line 67
    iput p2, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mPreBorderWidth:F

    .line 68
    iput p3, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mPostBorderWidth:F

    .line 69
    iput-object p4, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mBorderBox:Landroid/graphics/RectF;

    .line 70
    iput p5, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mAngleBisector:F

    const/4 p2, 0x0

    cmpl-float p3, p1, p2

    if-lez p3, :cond_2

    .line 72
    invoke-static {p2, p1}, Lcom/taobao/weex/base/FloatUtil;->floatsEqual(FF)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->hasOuterCorner:Z

    if-eqz p1, :cond_3

    .line 75
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getPreBorderWidth()F

    move-result p1

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_3

    .line 76
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getPostBorderWidth()F

    move-result p1

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_3

    .line 77
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getOuterCornerRadius()F

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getPreBorderWidth()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    .line 78
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getOuterCornerRadius()F

    move-result p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getPostBorderWidth()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->hasInnerCorner:Z

    .line 80
    iget-boolean p1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->hasOuterCorner:Z

    if-eqz p1, :cond_4

    .line 81
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->prepareOval()V

    .line 83
    :cond_4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->prepareRoundCorner()V

    :cond_5
    return-void
.end method

.method final setOvalBottom(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mOvalBottom"
        }
    .end annotation

    .line 170
    iput p1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mOvalBottom:F

    return-void
.end method

.method final setOvalLeft(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mOvalLeft"
        }
    .end annotation

    .line 158
    iput p1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mOvalLeft:F

    return-void
.end method

.method final setOvalRight(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mOvalRight"
        }
    .end annotation

    .line 166
    iput p1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mOvalRight:F

    return-void
.end method

.method final setOvalTop(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mOvalTop"
        }
    .end annotation

    .line 162
    iput p1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mOvalTop:F

    return-void
.end method

.method final setRoundCornerEndX(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mRoundCornerEndX"
        }
    .end annotation

    .line 146
    iput p1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mRoundCornerEndX:F

    return-void
.end method

.method final setRoundCornerEndY(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mRoundCornerEndY"
        }
    .end annotation

    .line 154
    iput p1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mRoundCornerEndY:F

    return-void
.end method

.method final setRoundCornerStartX(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roundCornerStartX"
        }
    .end annotation

    .line 130
    iput p1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mRoundCornerStartX:F

    return-void
.end method

.method final setRoundCornerStartY(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roundCornerStartY"
        }
    .end annotation

    .line 138
    iput p1, p0, Lcom/taobao/weex/ui/view/border/BorderCorner;->mRoundCornerStartY:F

    return-void
.end method
