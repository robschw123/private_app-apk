.class Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$3;
.super Ljava/lang/Object;
.source "WXSwipeLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->resetHeaderView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 604
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$3;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 607
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$3;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-static {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$000(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 608
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 609
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$3;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p1, v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$100(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;I)V

    .line 610
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$3;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$000(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 611
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$3;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$200(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;F)V

    return-void
.end method
