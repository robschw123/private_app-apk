.class Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$2;
.super Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXRefreshAnimatorListener;
.source "WXSwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->startRefresh(I)V
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

    .line 582
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$2;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXRefreshAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 585
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$2;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$000(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->startAnimation()V

    .line 587
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$2;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$300(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 588
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$2;->this$0:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->access$300(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;)Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;->onRefresh()V

    :cond_0
    return-void
.end method
