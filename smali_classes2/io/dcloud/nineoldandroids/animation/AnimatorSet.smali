.class public final Lio/dcloud/nineoldandroids/animation/AnimatorSet;
.super Lio/dcloud/nineoldandroids/animation/Animator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;,
        Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;,
        Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;,
        Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;,
        Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;
    }
.end annotation


# instance fields
.field private mDelayAnim:Lio/dcloud/nineoldandroids/animation/ValueAnimator;

.field private mDuration:J

.field private mNeedsSort:Z

.field private mNodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/dcloud/nineoldandroids/animation/Animator;",
            "Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayingSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mSetListener:Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

.field private mSortedNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mStartDelay:J

.field private mStarted:Z

.field mTerminated:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/Animator;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSetListener:Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    const/4 v1, 0x0

    .line 54
    iput-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    .line 60
    iput-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    const-wide/16 v1, 0x0

    .line 63
    iput-wide v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStartDelay:J

    .line 66
    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    const-wide/16 v0, -0x1

    .line 72
    iput-wide v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mDuration:J

    return-void
.end method

.method static synthetic access$2(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$4(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$5(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    return-void
.end method

.method static synthetic access$6(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    return-object p0
.end method

.method private sortNodes()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_6

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 32
    iput-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    .line 33
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto/16 :goto_6

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Circular dependencies cannot exist in AnimatorSet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v2, 0x0

    :goto_2
    if-lt v2, v5, :cond_2

    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 51
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 52
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 53
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 54
    iget-object v6, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v6, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    .line 56
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_3
    if-lt v7, v6, :cond_3

    goto :goto_4

    .line 58
    :cond_3
    iget-object v8, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 59
    iget-object v9, v8, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 60
    iget-object v9, v8, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_4

    .line 61
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 62
    :cond_6
    iget-object v4, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 63
    iget-object v5, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_8

    .line 64
    :cond_7
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 97
    :cond_9
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_5
    if-lt v2, v0, :cond_a

    :goto_6
    return-void

    .line 99
    :cond_a
    iget-object v3, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 100
    iget-object v4, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_e

    .line 101
    iget-object v4, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_7
    if-lt v5, v4, :cond_b

    goto :goto_8

    .line 103
    :cond_b
    iget-object v6, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;

    .line 104
    iget-object v7, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    if-nez v7, :cond_c

    .line 105
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 107
    :cond_c
    iget-object v7, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v8, v6, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 108
    iget-object v7, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v6, v6, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 114
    :cond_e
    :goto_8
    iput-boolean v1, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->done:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    .line 2
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    .line 7
    invoke-interface {v0, p0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationCancel(Lio/dcloud/nineoldandroids/animation/Animator;)V

    goto :goto_0

    .line 10
    :cond_1
    :goto_1
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->cancel()V

    goto :goto_3

    .line 14
    :cond_2
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 15
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 16
    iget-object v2, v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v2}, Lio/dcloud/nineoldandroids/animation/Animator;->cancel()V

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v0, :cond_6

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    .line 21
    invoke-interface {v1, p0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V

    goto :goto_4

    :cond_6
    :goto_5
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    :cond_7
    return-void
.end method

.method public bridge synthetic clone()Lio/dcloud/nineoldandroids/animation/Animator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->clone()Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/dcloud/nineoldandroids/animation/AnimatorSet;
    .locals 8

    .line 2
    invoke-super {p0}, Lio/dcloud/nineoldandroids/animation/Animator;->clone()Lio/dcloud/nineoldandroids/animation/Animator;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    .line 13
    iput-boolean v1, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 15
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    .line 22
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 23
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 55
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 56
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 57
    iget-object v2, v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 58
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;

    .line 59
    iget-object v6, v5, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 60
    new-instance v7, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;

    .line 61
    iget v5, v5, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->rule:I

    .line 62
    invoke-direct {v7, v6, v5}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;-><init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;I)V

    .line 64
    invoke-virtual {v4, v7}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->addDependency(Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;)V

    goto :goto_2

    .line 65
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 66
    invoke-virtual {v3}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->clone()Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    move-result-object v4

    .line 67
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v3, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v3, v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    iget-object v5, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 71
    iput-object v3, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    .line 72
    iput-object v3, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    .line 73
    iput-object v3, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    .line 74
    iput-object v3, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 77
    iget-object v4, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v4}, Lio/dcloud/nineoldandroids/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 80
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_7

    if-eqz v3, :cond_0

    .line 89
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_0

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    .line 90
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 91
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    .line 92
    instance-of v7, v6, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    if-eqz v7, :cond_5

    if-nez v3, :cond_8

    .line 94
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 96
    :cond_8
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public end()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    .line 2
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 5
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->sortNodes()V

    .line 6
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 7
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSetListener:Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    if-nez v2, :cond_1

    .line 8
    new-instance v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    invoke-direct {v2, p0, p0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;-><init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Lio/dcloud/nineoldandroids/animation/AnimatorSet;)V

    iput-object v2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSetListener:Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    .line 10
    :cond_1
    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSetListener:Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    invoke-virtual {v1, v2}, Lio/dcloud/nineoldandroids/animation/Animator;->addListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 13
    :cond_2
    :goto_1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->cancel()V

    .line 16
    :cond_3
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 17
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 18
    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/Animator;->end()V

    goto :goto_2

    .line 21
    :cond_5
    :goto_3
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    .line 25
    invoke-interface {v1, p0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V

    goto :goto_4

    :cond_7
    :goto_5
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    :cond_8
    return-void
.end method

.method public getChildAnimations()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/dcloud/nineoldandroids/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 3
    iget-object v2, v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mDuration:J

    return-wide v0
.end method

.method public getStartDelay()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStartDelay:J

    return-wide v0
.end method

.method public isRunning()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 2
    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    return v0
.end method

.method public play(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    .line 2
    new-instance v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    invoke-direct {v0, p0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;-><init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Lio/dcloud/nineoldandroids/animation/Animator;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public playSequentially(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/dcloud/nineoldandroids/animation/Animator;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    .line 10
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->play(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-lt v2, v1, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {p0, v1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->play(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v1, v3}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->before(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public varargs playSequentially([Lio/dcloud/nineoldandroids/animation/Animator;)V
    .locals 4

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    .line 3
    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->play(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    array-length v1, p1

    sub-int/2addr v1, v0

    if-lt v2, v1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    aget-object v1, p1, v2

    invoke-virtual {p0, v1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->play(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->before(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public playTogether(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lio/dcloud/nineoldandroids/animation/Animator;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    const/4 v0, 0x0

    .line 8
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/Animator;

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p0, v1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->play(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v0, v1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->with(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public varargs playTogether([Lio/dcloud/nineoldandroids/animation/Animator;)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNeedsSort:Z

    const/4 v1, 0x0

    .line 2
    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->play(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 3
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->with(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public bridge synthetic setDuration(J)Lio/dcloud/nineoldandroids/animation/Animator;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Lio/dcloud/nineoldandroids/animation/AnimatorSet;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 2
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mDuration:J

    return-object p0

    .line 8
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 11
    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v1, p1, p2}, Lio/dcloud/nineoldandroids/animation/Animator;->setDuration(J)Lio/dcloud/nineoldandroids/animation/Animator;

    goto :goto_0

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "duration must be a value of zero or greater"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 2
    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v1, p1}, Lio/dcloud/nineoldandroids/animation/Animator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0
.end method

.method public setStartDelay(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStartDelay:J

    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 2
    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    .line 3
    instance-of v2, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    if-eqz v2, :cond_2

    .line 4
    check-cast v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v1, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_2
    instance-of v2, v1, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    .line 6
    check-cast v1, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v1, p1}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setupEndValues()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 2
    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/Animator;->setupEndValues()V

    goto :goto_0
.end method

.method public setupStartValues()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 2
    iget-object v1, v1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/Animator;->setupStartValues()V

    goto :goto_0
.end method

.method public start()V
    .locals 10

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mTerminated:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    .line 6
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->sortNodes()V

    .line 8
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_b

    .line 30
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_6

    .line 50
    iget-wide v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStartDelay:J

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-gtz v6, :cond_1

    .line 51
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 52
    iget-object v3, v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v3}, Lio/dcloud/nineoldandroids/animation/Animator;->start()V

    .line 53
    iget-object v3, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    iget-object v2, v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 56
    fill-array-data v1, :array_0

    invoke-static {v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 57
    iget-wide v6, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStartDelay:J

    invoke-virtual {v1, v6, v7}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 58
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    new-instance v2, Lio/dcloud/nineoldandroids/animation/AnimatorSet$1;

    invoke-direct {v2, p0, v3}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$1;-><init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lio/dcloud/nineoldandroids/animation/Animator;->addListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 74
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mDelayAnim:Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->start()V

    .line 76
    :goto_3
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 78
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_4
    if-lt v3, v2, :cond_2

    goto :goto_5

    .line 81
    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v6, p0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationStart(Lio/dcloud/nineoldandroids/animation/Animator;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 84
    :cond_3
    :goto_5
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    iget-wide v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStartDelay:J

    cmp-long v3, v1, v4

    if-nez v3, :cond_5

    .line 87
    iput-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mStarted:Z

    .line 88
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 90
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 91
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_6
    if-lt v0, v2, :cond_4

    goto :goto_7

    .line 93
    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_5
    :goto_7
    return-void

    .line 94
    :cond_6
    iget-object v4, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 95
    iget-object v5, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSetListener:Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    if-nez v5, :cond_7

    .line 96
    new-instance v5, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    invoke-direct {v5, p0, p0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;-><init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Lio/dcloud/nineoldandroids/animation/AnimatorSet;)V

    iput-object v5, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSetListener:Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    .line 98
    :cond_7
    iget-object v5, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_8

    goto :goto_9

    .line 101
    :cond_8
    iget-object v5, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_8
    if-lt v6, v5, :cond_9

    .line 107
    iget-object v5, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    goto :goto_a

    .line 108
    :cond_9
    iget-object v7, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;

    .line 109
    iget-object v8, v7, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->node:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    iget-object v8, v8, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    .line 110
    new-instance v9, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;

    iget v7, v7, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;->rule:I

    invoke-direct {v9, p0, v4, v7}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;-><init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;I)V

    .line 111
    invoke-virtual {v8, v9}, Lio/dcloud/nineoldandroids/animation/Animator;->addListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 112
    :cond_a
    :goto_9
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :goto_a
    iget-object v4, v4, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    iget-object v5, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSetListener:Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    invoke-virtual {v4, v5}, Lio/dcloud/nineoldandroids/animation/Animator;->addListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 123
    :cond_b
    iget-object v3, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 125
    iget-object v4, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v4}, Lio/dcloud/nineoldandroids/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 126
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_f

    .line 128
    new-instance v5, Ljava/util/ArrayList;

    .line 129
    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 132
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_c

    :cond_d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    .line 133
    instance-of v6, v5, Lio/dcloud/nineoldandroids/animation/AnimatorSet$DependencyListener;

    if-nez v6, :cond_e

    .line 134
    instance-of v6, v5, Lio/dcloud/nineoldandroids/animation/AnimatorSet$AnimatorSetListener;

    if-eqz v6, :cond_c

    .line 135
    :cond_e
    iget-object v6, v3, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->animation:Lio/dcloud/nineoldandroids/animation/Animator;

    invoke-virtual {v6, v5}, Lio/dcloud/nineoldandroids/animation/Animator;->removeListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    goto :goto_b

    :cond_f
    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
