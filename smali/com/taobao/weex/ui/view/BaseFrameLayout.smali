.class public Lcom/taobao/weex/ui/view/BaseFrameLayout;
.super Landroid/widget/FrameLayout;
.source "BaseFrameLayout.java"


# instance fields
.field private mWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/flat/widget/Widget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 41
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/BaseFrameLayout;->dispatchDrawInterval(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 43
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected dispatchDrawInterval(Landroid/graphics/Canvas;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/taobao/weex/ui/view/BaseFrameLayout;->mWidgets:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 50
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/BaseFrameLayout;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/BaseFrameLayout;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 51
    iget-object v0, p0, Lcom/taobao/weex/ui/view/BaseFrameLayout;->mWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/flat/widget/Widget;

    .line 52
    invoke-interface {v1, p1}, Lcom/taobao/weex/ui/flat/widget/Widget;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 56
    :cond_1
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXViewUtils;->clipCanvasWithinBorderBox(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 57
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_1
    return-void
.end method

.method public mountFlatGUI(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "widgets"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/flat/widget/Widget;",
            ">;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/taobao/weex/ui/view/BaseFrameLayout;->mWidgets:Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 63
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/BaseFrameLayout;->setWillNotDraw(Z)V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/BaseFrameLayout;->invalidate()V

    return-void
.end method

.method public unmountFlatGUI()V
    .locals 1

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/taobao/weex/ui/view/BaseFrameLayout;->mWidgets:Ljava/util/List;

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/BaseFrameLayout;->setWillNotDraw(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/BaseFrameLayout;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "who"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/taobao/weex/ui/view/BaseFrameLayout;->mWidgets:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
