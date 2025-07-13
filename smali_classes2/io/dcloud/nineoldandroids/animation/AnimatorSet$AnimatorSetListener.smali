.class Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorSetListener"
.end annotation


# instance fields
.field private mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

.field final synthetic this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Lio/dcloud/nineoldandroids/animation/AnimatorSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    iget-boolean v0, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    if-nez v0, :cond_1

    .line 4
    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$2(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    iget-object p1, p1, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-interface {v1, v2}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationCancel(Lio/dcloud/nineoldandroids/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .locals 5

    .line 1
    invoke-virtual {p1, p0}, Lio/dcloud/nineoldandroids/animation/Animator;->removeListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {v0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$2(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {v0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$3(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->done:Z

    .line 5
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    iget-boolean p1, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    if-nez p1, :cond_4

    .line 8
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$4(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    iget-boolean v4, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->done:Z

    if-nez v4, :cond_3

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 20
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    iget-object p1, p1, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    .line 22
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-lt v1, v0, :cond_1

    goto :goto_3

    .line 25
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    iget-object v4, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-interface {v3, v4}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 28
    :cond_2
    :goto_3
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;->mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {p1, v2}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$5(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Z)V

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_4
    return-void
.end method

.method public onAnimationRepeat(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .locals 0

    return-void
.end method
