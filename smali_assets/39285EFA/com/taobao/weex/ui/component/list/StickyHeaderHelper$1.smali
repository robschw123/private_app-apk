.class Lcom/taobao/weex/ui/component/list/StickyHeaderHelper$1;
.super Ljava/lang/Object;
.source "StickyHeaderHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->notifyStickyRemove(Lcom/taobao/weex/ui/component/list/WXCell;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

.field final synthetic val$component:Lcom/taobao/weex/ui/component/list/WXCell;

.field final synthetic val$headerView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;Landroid/view/View;Lcom/taobao/weex/ui/component/list/WXCell;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$headerView",
            "val$component"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper$1;->this$0:Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper$1;->val$headerView:Landroid/view/View;

    iput-object p3, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper$1;->val$component:Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper$1;->this$0:Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->access$000(Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper$1;->val$headerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 134
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper$1;->val$headerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper$1;->val$headerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper$1;->val$component:Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/WXCell;->recoverySticky()V

    .line 138
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper$1;->this$0:Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;

    invoke-static {v0}, Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;->access$100(Lcom/taobao/weex/ui/component/list/StickyHeaderHelper;)V

    return-void
.end method
