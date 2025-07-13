.class abstract Lcom/taobao/weex/ui/animation/LayoutParamsProperty;
.super Landroid/util/Property;
.source "LayoutParamsProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 34
    const-class v0, Ljava/lang/Integer;

    const-string v1, "layoutParams"

    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/animation/LayoutParamsProperty;->getProperty(Landroid/view/ViewGroup$LayoutParams;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "object"
        }
    .end annotation

    .line 31
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/animation/LayoutParamsProperty;->get(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getProperty(Landroid/view/ViewGroup$LayoutParams;)Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutParams"
        }
    .end annotation
.end method

.method public set(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "value"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p0, v0, p2}, Lcom/taobao/weex/ui/animation/LayoutParamsProperty;->setProperty(Landroid/view/ViewGroup$LayoutParams;Ljava/lang/Integer;)V

    .line 51
    instance-of p2, p1, Lcom/taobao/weex/ui/view/IRenderResult;

    if-eqz p2, :cond_0

    .line 52
    move-object p2, p1

    check-cast p2, Lcom/taobao/weex/ui/view/IRenderResult;

    invoke-interface {p2}, Lcom/taobao/weex/ui/view/IRenderResult;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 54
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2, v1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->notifyNativeSizeChanged(II)V

    .line 57
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
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

    .line 31
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/animation/LayoutParamsProperty;->set(Landroid/view/View;Ljava/lang/Integer;)V

    return-void
.end method

.method protected abstract setProperty(Landroid/view/ViewGroup$LayoutParams;Ljava/lang/Integer;)V
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
.end method
