.class Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS;->setListener(Landroid/view/View;Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS$1;->val$listener:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;

    iput-object p2, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS$1;->val$listener:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;

    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS$1;->val$view:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS$1;->val$listener:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;

    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS$1;->val$view:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS$1;->val$listener:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;

    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatICS$1;->val$view:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    return-void
.end method
