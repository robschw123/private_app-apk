.class public Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;
.super Lcom/taobao/weex/ui/flat/widget/BaseWidget;
.source "AndroidViewWidget.java"

# interfaces
.implements Lcom/taobao/weex/common/Destroyable;


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/flat/FlatGUIContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/flat/widget/BaseWidget;-><init>(Lcom/taobao/weex/ui/flat/FlatGUIContext;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->mView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->mView:Landroid/view/View;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .line 63
    invoke-super {p0}, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->invalidate()V

    .line 64
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setBackgroundAndBorder(Lcom/taobao/weex/ui/view/border/BorderDrawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "backgroundBorder"
        }
    .end annotation

    .line 32
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->setBackgroundAndBorder(Lcom/taobao/weex/ui/view/border/BorderDrawable;)V

    return-void
.end method

.method public setContentBox(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "leftOffset",
            "topOffset",
            "rightOffset",
            "bottomOffset"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 50
    invoke-virtual {p0}, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->invalidate()V

    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->mView:Landroid/view/View;

    return-void
.end method

.method public bridge synthetic setLayout(IIIIIILandroid/graphics/Point;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "width",
            "height",
            "left",
            "right",
            "top",
            "bottom",
            "offset"
        }
    .end annotation

    .line 32
    invoke-super/range {p0 .. p7}, Lcom/taobao/weex/ui/flat/widget/BaseWidget;->setLayout(IIIIIILandroid/graphics/Point;)V

    return-void
.end method
