.class public interface abstract Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;
.super Ljava/lang/Object;
.source "WXScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/WXScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WXScrollViewListener"
.end annotation


# virtual methods
.method public abstract onScroll(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scrollView",
            "x",
            "y"
        }
    .end annotation
.end method

.method public abstract onScrollChanged(Lcom/taobao/weex/ui/view/WXScrollView;IIII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "scrollView",
            "x",
            "y",
            "oldx",
            "oldy"
        }
    .end annotation
.end method

.method public abstract onScrollStopped(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scrollView",
            "x",
            "y"
        }
    .end annotation
.end method

.method public abstract onScrollToBottom(Lcom/taobao/weex/ui/view/WXScrollView;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scrollView",
            "x",
            "y"
        }
    .end annotation
.end method
