.class public Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ListBaseViewHolder.java"


# instance fields
.field private isRecycled:Z

.field private mComponent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mViewType:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "viewType"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 57
    iput p2, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->mViewType:I

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "component",
            "viewType"
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 42
    iput p2, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->mViewType:I

    .line 43
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->mComponent:Ljava/lang/ref/WeakReference;

    .line 47
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->canRecycled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->isRecycled:Z

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "component",
            "viewType",
            "forceBindData"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;-><init>(Lcom/taobao/weex/ui/component/WXComponent;I)V

    .line 52
    iget-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->isRecycled:Z

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->isRecycled:Z

    return-void
.end method


# virtual methods
.method public bindData(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->mComponent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->mComponent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->bindData(Lcom/taobao/weex/ui/component/WXComponent;)V

    const/4 p1, 0x0

    .line 75
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->isRecycled:Z

    :cond_0
    return-void
.end method

.method public canRecycled()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->mComponent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->mComponent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->canRecycled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getComponent()Lcom/taobao/weex/ui/component/WXComponent;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->mComponent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->mViewType:I

    return v0
.end method

.method public isFullSpan()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->mComponent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/component/WXHeader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecycled()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->isRecycled:Z

    return v0
.end method

.method public recycled()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->mComponent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->mComponent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->recycled()V

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->isRecycled:Z

    :cond_0
    return-void
.end method

.method public setComponentUsing(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "using"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->mComponent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/ListBaseViewHolder;->mComponent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setUsing(Z)V

    :cond_0
    return-void
.end method
