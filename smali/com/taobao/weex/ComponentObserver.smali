.class public interface abstract Lcom/taobao/weex/ComponentObserver;
.super Ljava/lang/Object;
.source "ComponentObserver.java"


# virtual methods
.method public abstract onCreate(Lcom/taobao/weex/ui/component/WXComponent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation
.end method

.method public abstract onPreDestory(Lcom/taobao/weex/ui/component/WXComponent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation
.end method

.method public abstract onViewCreated(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "component",
            "view"
        }
    .end annotation
.end method
