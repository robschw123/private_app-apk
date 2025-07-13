.class Lcom/taobao/weex/ui/component/list/SimpleRecyclerView;
.super Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
.source "SimpleRecyclerView.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/list/ListComponentView;


# instance fields
.field private mAdapter:Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;


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

    .line 41
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/SimpleRecyclerView;->mAdapter:Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    return-void
.end method


# virtual methods
.method public getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
    .locals 0

    return-object p0
.end method

.method public getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/SimpleRecyclerView;->mAdapter:Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    return-object v0
.end method

.method public notifyStickyRemove(Lcom/taobao/weex/ui/component/list/WXCell;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    return-void
.end method

.method public notifyStickyShow(Lcom/taobao/weex/ui/component/list/WXCell;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    return-void
.end method

.method public setRecyclerViewBaseAdapter(Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/SimpleRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 52
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/SimpleRecyclerView;->mAdapter:Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;

    return-void
.end method

.method public updateStickyView(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentStickyPos"
        }
    .end annotation

    return-void
.end method
