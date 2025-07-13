.class Lcom/taobao/weex/ui/view/border/BorderEdge;
.super Ljava/lang/Object;
.source "BorderEdge.java"


# instance fields
.field private mBorderWidth:F

.field private mEdge:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

.field private mPostCorner:Lcom/taobao/weex/ui/view/border/BorderCorner;

.field private mPreCorner:Lcom/taobao/weex/ui/view/border/BorderCorner;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method drawEdge(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "paint"
        }
    .end annotation

    .line 61
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderEdge;->mBorderWidth:F

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderEdge;->mPreCorner:Lcom/taobao/weex/ui/view/border/BorderCorner;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getAngleBisectorDegree()F

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/taobao/weex/ui/view/border/BorderCorner;->drawRoundedCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 65
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderEdge;->mBorderWidth:F

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderEdge;->mPreCorner:Lcom/taobao/weex/ui/view/border/BorderCorner;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getRoundCornerEndX()F

    move-result v2

    .line 68
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderEdge;->mPreCorner:Lcom/taobao/weex/ui/view/border/BorderCorner;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getRoundCornerEndY()F

    move-result v3

    .line 70
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderEdge;->mPostCorner:Lcom/taobao/weex/ui/view/border/BorderCorner;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getRoundCornerStartX()F

    move-result v4

    .line 71
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderEdge;->mPostCorner:Lcom/taobao/weex/ui/view/border/BorderCorner;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getRoundCornerStartY()F

    move-result v5

    move-object v1, p1

    move-object v6, p2

    .line 73
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 75
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderEdge;->mPostCorner:Lcom/taobao/weex/ui/view/border/BorderCorner;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/border/BorderCorner;->getAngleBisectorDegree()F

    move-result v1

    const/high16 v2, 0x42340000    # 45.0f

    sub-float/2addr v1, v2

    invoke-virtual {v0, p1, p2, v1}, Lcom/taobao/weex/ui/view/border/BorderCorner;->drawRoundedCorner(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    return-void
.end method

.method public getBorderWidth()F
    .locals 1

    .line 87
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderEdge;->mBorderWidth:F

    return v0
.end method

.method public getEdge()Lcom/taobao/weex/dom/CSSShorthand$EDGE;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderEdge;->mEdge:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    return-object v0
.end method

.method set(Lcom/taobao/weex/ui/view/border/BorderCorner;Lcom/taobao/weex/ui/view/border/BorderCorner;FLcom/taobao/weex/dom/CSSShorthand$EDGE;)Lcom/taobao/weex/ui/view/border/BorderEdge;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "preCorner",
            "postCorner",
            "borderWidth",
            "edge"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/taobao/weex/ui/view/border/BorderEdge;->mPreCorner:Lcom/taobao/weex/ui/view/border/BorderCorner;

    .line 49
    iput-object p2, p0, Lcom/taobao/weex/ui/view/border/BorderEdge;->mPostCorner:Lcom/taobao/weex/ui/view/border/BorderCorner;

    .line 50
    iput p3, p0, Lcom/taobao/weex/ui/view/border/BorderEdge;->mBorderWidth:F

    .line 51
    iput-object p4, p0, Lcom/taobao/weex/ui/view/border/BorderEdge;->mEdge:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    return-object p0
.end method
