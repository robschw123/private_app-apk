.class Lcom/taobao/weex/dom/transition/WXTransition$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WXTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/dom/transition/WXTransition;->doPendingTransformAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field hasCancel:Z

.field final synthetic this$0:Lcom/taobao/weex/dom/transition/WXTransition;


# direct methods
.method constructor <init>(Lcom/taobao/weex/dom/transition/WXTransition;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 391
    iput-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition$4;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 392
    iput-boolean p1, p0, Lcom/taobao/weex/dom/transition/WXTransition$4;->hasCancel:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 395
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const/4 p1, 0x1

    .line 396
    iput-boolean p1, p0, Lcom/taobao/weex/dom/transition/WXTransition$4;->hasCancel:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 401
    iget-boolean v0, p0, Lcom/taobao/weex/dom/transition/WXTransition$4;->hasCancel:Z

    if-eqz v0, :cond_0

    return-void

    .line 404
    :cond_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 405
    iget-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition$4;->this$0:Lcom/taobao/weex/dom/transition/WXTransition;

    invoke-static {p1}, Lcom/taobao/weex/dom/transition/WXTransition;->access$700(Lcom/taobao/weex/dom/transition/WXTransition;)V

    return-void
.end method
