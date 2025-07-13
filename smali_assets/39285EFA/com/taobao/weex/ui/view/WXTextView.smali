.class public Lcom/taobao/weex/ui/view/WXTextView;
.super Landroid/view/View;
.source "WXTextView.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;
.implements Lcom/taobao/weex/ui/view/IWXTextView;
.implements Lcom/taobao/weex/ui/view/IRenderStatus;
.implements Lcom/taobao/weex/ui/view/IRenderResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/View;",
        "Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;",
        "Lcom/taobao/weex/ui/view/IWXTextView;",
        "Lcom/taobao/weex/ui/view/IRenderStatus<",
        "Lcom/taobao/weex/ui/component/WXText;",
        ">;",
        "Lcom/taobao/weex/ui/view/IRenderResult<",
        "Lcom/taobao/weex/ui/component/WXText;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsLabelSet:Z

.field private mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/weex/ui/component/WXText;",
            ">;"
        }
    .end annotation
.end field

.field private textLayout:Landroid/text/Layout;

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

    .line 52
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXTextView;->mIsLabelSet:Z

    return-void
.end method


# virtual methods
.method public enableCopy(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 150
    new-instance p1, Lcom/taobao/weex/ui/view/WXTextView$1;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/view/WXTextView$1;-><init>(Lcom/taobao/weex/ui/view/WXTextView;)V

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/WXTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 182
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/WXTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic getComponent()Lcom/taobao/weex/ui/component/WXComponent;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXTextView;->getComponent()Lcom/taobao/weex/ui/component/WXText;

    move-result-object v0

    return-object v0
.end method

.method public getComponent()Lcom/taobao/weex/ui/component/WXText;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXTextView;->mWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXText;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getGestureListener()Lcom/taobao/weex/ui/view/gesture/WXGesture;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXTextView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXTextView;->textLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTextLayout()Landroid/text/Layout;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/taobao/weex/ui/view/WXTextView;->textLayout:Landroid/text/Layout;

    return-object v0
.end method

.method public bridge synthetic holdComponent(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "component"
        }
    .end annotation

    .line 43
    check-cast p1, Lcom/taobao/weex/ui/component/WXText;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/WXTextView;->holdComponent(Lcom/taobao/weex/ui/component/WXText;)V

    return-void
.end method

.method public holdComponent(Lcom/taobao/weex/ui/component/WXText;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/WXTextView;->mWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 57
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 59
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXTextView;->getTextLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXTextView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXTextView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 62
    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
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
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/taobao/weex/ui/view/WXTextView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v1, p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_0
    return v0
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

    .line 78
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXTextView;->wxGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    return-void
.end method

.method public setAriaLabel(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "label"
        }
    .end annotation

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/WXTextView;->mIsLabelSet:Z

    .line 111
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/WXTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 113
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/WXTextView;->mIsLabelSet:Z

    .line 114
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXTextView;->textLayout:Landroid/text/Layout;

    if-eqz p1, :cond_1

    .line 115
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/WXTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXTextView;->getTextLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setTextLayout(Landroid/text/Layout;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layout"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/taobao/weex/ui/view/WXTextView;->textLayout:Landroid/text/Layout;

    if-eqz p1, :cond_0

    .line 97
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/WXTextView;->mIsLabelSet:Z

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/WXTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/taobao/weex/ui/view/WXTextView;->mWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    .line 101
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/component/WXText;

    if-eqz p1, :cond_1

    .line 103
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXText;->readyToRender()V

    :cond_1
    return-void
.end method
