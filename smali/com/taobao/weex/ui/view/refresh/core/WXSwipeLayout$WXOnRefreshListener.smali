.class public interface abstract Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;
.super Ljava/lang/Object;
.source "WXSwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WXOnRefreshListener"
.end annotation


# virtual methods
.method public abstract onPullingDown(FIF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dy",
            "pullOutDistance",
            "viewHeight"
        }
    .end annotation
.end method

.method public abstract onRefresh()V
.end method
