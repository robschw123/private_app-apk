.class public Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;
.super Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;
.source "BounceScrollerView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView<",
        "Lcom/taobao/weex/ui/view/WXScrollView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/taobao/weex/ui/component/WXBaseScroller;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "orientation",
            "waScroller"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;-><init>(Landroid/content/Context;I)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;->init(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;->getInnerView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;->getInnerView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXScrollView;

    invoke-virtual {p1, p3}, Lcom/taobao/weex/ui/view/WXScrollView;->setWAScroller(Lcom/taobao/weex/ui/component/WXBaseScroller;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onLoadmoreComplete()V
    .locals 0

    return-void
.end method

.method public onRefreshingComplete()V
    .locals 0

    return-void
.end method

.method public bridge synthetic setInnerView(Landroid/content/Context;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "context"
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceScrollerView;->setInnerView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXScrollView;

    move-result-object p1

    return-object p1
.end method

.method public setInnerView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXScrollView;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/taobao/weex/ui/view/WXScrollView;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/WXScrollView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
