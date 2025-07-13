.class public Lcom/taobao/weex/ui/animation/WidthProperty;
.super Lcom/taobao/weex/ui/animation/LayoutParamsProperty;
.source "WidthProperty.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/taobao/weex/ui/animation/LayoutParamsProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Landroid/view/View;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "object"
        }
    .end annotation

    .line 24
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/animation/LayoutParamsProperty;->get(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected getProperty(Landroid/view/ViewGroup$LayoutParams;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutParams"
        }
    .end annotation

    .line 28
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "object",
            "value"
        }
    .end annotation

    .line 24
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/animation/LayoutParamsProperty;->set(Landroid/view/View;Ljava/lang/Integer;)V

    return-void
.end method

.method protected setProperty(Landroid/view/ViewGroup$LayoutParams;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layoutParams",
            "expected"
        }
    .end annotation

    .line 33
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method
