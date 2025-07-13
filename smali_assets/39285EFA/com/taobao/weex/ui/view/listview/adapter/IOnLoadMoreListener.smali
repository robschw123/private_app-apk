.class public interface abstract Lcom/taobao/weex/ui/view/listview/adapter/IOnLoadMoreListener;
.super Ljava/lang/Object;
.source "IOnLoadMoreListener.java"


# virtual methods
.method public abstract notifyAppearStateChange(IIII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "firstVisible",
            "lastVisible",
            "directionX",
            "directionY"
        }
    .end annotation
.end method

.method public abstract onBeforeScroll(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy"
        }
    .end annotation
.end method

.method public abstract onLoadMore(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offScreenY"
        }
    .end annotation
.end method
