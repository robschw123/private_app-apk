.class public interface abstract Lcom/taobao/weex/ui/component/list/ListComponentView;
.super Ljava/lang/Object;
.source "ListComponentView.java"


# virtual methods
.method public abstract getInnerView()Lcom/taobao/weex/ui/view/listview/WXRecyclerView;
.end method

.method public abstract getRecyclerViewBaseAdapter()Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;
.end method

.method public abstract notifyStickyRemove(Lcom/taobao/weex/ui/component/list/WXCell;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation
.end method

.method public abstract notifyStickyShow(Lcom/taobao/weex/ui/component/list/WXCell;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation
.end method

.method public abstract setRecyclerViewBaseAdapter(Lcom/taobao/weex/ui/view/listview/adapter/RecyclerViewBaseAdapter;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation
.end method

.method public abstract updateStickyView(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentStickyPos"
        }
    .end annotation
.end method
