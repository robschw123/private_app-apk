.class Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DependencyListener"
.end annotation


# instance fields
.field private mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

.field private mNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

.field private mRule:I


# direct methods
.method public constructor <init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    .line 3
    iput-object p2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 4
    iput p3, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mRule:I

    return-void
.end method

.method private startIfReady(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    iget-boolean v0, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v3, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v3, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;

    .line 9
    iget v4, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->rule:I

    iget v5, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mRule:I

    if-ne v4, v5, :cond_3

    .line 10
    iget-object v4, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v4, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    if-ne v4, p1, :cond_3

    .line 14
    invoke-virtual {p1, p0}, Lio/dcloud/nineoldandroids/animation/Animator;->removeListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    move-object v0, v3

    .line 18
    :goto_1
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    iget-object p1, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 19
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    iget-object p1, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 21
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    iget-object p1, p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/animation/Animator;->start()V

    .line 22
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mAnimatorSet:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$2(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v0, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onAnimationCancel(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .locals 2

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mRule:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->startIfReady(Lio/dcloud/nineoldandroids/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .locals 1

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->mRule:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;->startIfReady(Lio/dcloud/nineoldandroids/animation/Animator;)V

    :cond_0
    return-void
.end method
