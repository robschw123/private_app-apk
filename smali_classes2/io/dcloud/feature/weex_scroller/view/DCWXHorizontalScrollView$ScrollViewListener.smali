.class public interface abstract Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView$ScrollViewListener;
.super Ljava/lang/Object;
.source "DCWXHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScrollViewListener"
.end annotation


# virtual methods
.method public abstract onScrollChanged(Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;IIII)V
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

.method public abstract onScrollToBottom()V
.end method

.method public abstract onScrolltoTop()V
.end method
