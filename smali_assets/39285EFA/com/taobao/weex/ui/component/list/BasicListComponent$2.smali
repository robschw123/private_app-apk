.class Lcom/taobao/weex/ui/component/list/BasicListComponent$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "BasicListComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/list/BasicListComponent;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/list/BasicListComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 327
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$2;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "newState"
        }
    .end annotation

    .line 330
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 331
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$2;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getScrollStartEndHelper()Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/taobao/weex/ui/component/helper/ScrollStartEndHelper;->onScrollStateChanged(I)V

    .line 332
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$2;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXScrollListeners()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 335
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 337
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    goto :goto_1

    .line 340
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/common/OnWXScrollListener;

    if-eqz v4, :cond_1

    .line 342
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 344
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    .line 345
    invoke-interface {v4, p1, v2, v5, p2}, Lcom/taobao/weex/common/OnWXScrollListener;->onScrollStateChanged(Landroid/view/View;III)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "dx",
            "dy"
        }
    .end annotation

    .line 354
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 355
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$2;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getWXScrollListeners()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 356
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 358
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/common/OnWXScrollListener;

    if-eqz v1, :cond_0

    .line 360
    instance-of v2, v1, Lcom/taobao/weex/common/ICheckBindingScroller;

    if-eqz v2, :cond_1

    .line 361
    move-object v2, v1

    check-cast v2, Lcom/taobao/weex/common/ICheckBindingScroller;

    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/BasicListComponent$2;->this$0:Lcom/taobao/weex/ui/component/list/BasicListComponent;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/component/list/BasicListComponent;->getRef()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/taobao/weex/common/ICheckBindingScroller;->isNeedScroller(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 362
    invoke-interface {v1, p1, p2, p3}, Lcom/taobao/weex/common/OnWXScrollListener;->onScrolled(Landroid/view/View;II)V

    goto :goto_0

    .line 365
    :cond_1
    invoke-interface {v1, p1, p2, p3}, Lcom/taobao/weex/common/OnWXScrollListener;->onScrolled(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 370
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method
