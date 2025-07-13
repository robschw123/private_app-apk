.class public Lcom/taobao/weex/ui/view/WXVideoView;
.super Landroid/widget/VideoView;
.source "WXVideoView.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;,
        Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;
    }
.end annotation


# instance fields
.field private mVideoPauseListener:Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;

.field private wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;


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

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getGestureListener()Lcom/taobao/weex/ui/view/gesture/WXGesture;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 69
    invoke-super {p0, p1}, Landroid/widget/VideoView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXVideoView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public pause()V
    .locals 1

    .line 86
    invoke-super {p0}, Landroid/widget/VideoView;->pause()V

    .line 87
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView;->mVideoPauseListener:Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0}, Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;->onPause()V

    :cond_0
    return-void
.end method

.method public registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wxGesture"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXVideoView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-void
.end method

.method public setOnVideoPauseListener(Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXVideoView;->mVideoPauseListener:Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;

    return-void
.end method

.method public start()V
    .locals 1

    .line 78
    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    .line 79
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXVideoView;->mVideoPauseListener:Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v0}, Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;->onStart()V

    :cond_0
    return-void
.end method
