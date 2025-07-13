.class public Lcom/taobao/weex/RenderContainer;
.super Lcom/taobao/weex/render/WXAbstractRenderContainer;
.source "RenderContainer.java"

# interfaces
.implements Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;


# instance fields
.field private mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;


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

    .line 38
    invoke-direct {p0, p1}, Lcom/taobao/weex/render/WXAbstractRenderContainer;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance p1, Lcom/taobao/weex/WeexFrameRateControl;

    invoke-direct {p1, p0}, Lcom/taobao/weex/WeexFrameRateControl;-><init>(Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;)V

    iput-object p1, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/render/WXAbstractRenderContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance p1, Lcom/taobao/weex/WeexFrameRateControl;

    invoke-direct {p1, p0}, Lcom/taobao/weex/WeexFrameRateControl;-><init>(Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;)V

    iput-object p1, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/render/WXAbstractRenderContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance p1, Lcom/taobao/weex/WeexFrameRateControl;

    invoke-direct {p1, p0}, Lcom/taobao/weex/WeexFrameRateControl;-><init>(Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;)V

    iput-object p1, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/render/WXAbstractRenderContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    new-instance p1, Lcom/taobao/weex/WeexFrameRateControl;

    invoke-direct {p1, p0}, Lcom/taobao/weex/WeexFrameRateControl;-><init>(Lcom/taobao/weex/WeexFrameRateControl$VSyncListener;)V

    iput-object p1, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    return-void
.end method


# virtual methods
.method public OnVSync()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/taobao/weex/RenderContainer;->mSDKInstance:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/RenderContainer;->mSDKInstance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/taobao/weex/RenderContainer;->mSDKInstance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->OnVSync()V

    :cond_0
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 77
    invoke-super {p0, p1}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->dispatchWindowVisibilityChanged(I)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 79
    iget-object p1, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    if-eqz p1, :cond_1

    .line 80
    invoke-virtual {p1}, Lcom/taobao/weex/WeexFrameRateControl;->stop()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 83
    iget-object p1, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    if-eqz p1, :cond_1

    .line 84
    invoke-virtual {p1}, Lcom/taobao/weex/WeexFrameRateControl;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 62
    invoke-super {p0}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->onAttachedToWindow()V

    .line 63
    iget-object v0, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/taobao/weex/WeexFrameRateControl;->start()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->onDetachedFromWindow()V

    .line 71
    iget-object v0, p0, Lcom/taobao/weex/RenderContainer;->mFrameRateControl:Lcom/taobao/weex/WeexFrameRateControl;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/taobao/weex/WeexFrameRateControl;->stop()V

    :cond_0
    return-void
.end method
