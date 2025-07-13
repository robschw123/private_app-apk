.class public interface abstract Lcom/taobao/weex/IWXRenderListener;
.super Ljava/lang/Object;
.source "IWXRenderListener.java"


# virtual methods
.method public abstract onException(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "errCode",
            "msg"
        }
    .end annotation
.end method

.method public abstract onRefreshSuccess(Lcom/taobao/weex/WXSDKInstance;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "width",
            "height"
        }
    .end annotation
.end method

.method public abstract onRenderSuccess(Lcom/taobao/weex/WXSDKInstance;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "width",
            "height"
        }
    .end annotation
.end method

.method public abstract onViewCreated(Lcom/taobao/weex/WXSDKInstance;Landroid/view/View;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "view"
        }
    .end annotation
.end method
