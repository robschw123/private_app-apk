.class public Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field private mCurrentNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

.field final synthetic this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet;Lio/dcloud/nineoldandroids/animation/Animator;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$3(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-direct {v0, p2}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;-><init>(Lio/dcloud/nineoldandroids/animation/Animator;)V

    iput-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    .line 5
    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$3(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$6(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public after(J)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 9
    fill-array-data v0, :array_0

    invoke-static {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p1, p2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 11
    invoke-virtual {p0, v0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->after(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public after(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {v0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$3(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-direct {v0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;-><init>(Lio/dcloud/nineoldandroids/animation/Animator;)V

    .line 4
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {v1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$3(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$6(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    new-instance p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;-><init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;I)V

    .line 8
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->addDependency(Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;)V

    return-object p0
.end method

.method public before(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {v0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$3(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-direct {v0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;-><init>(Lio/dcloud/nineoldandroids/animation/Animator;)V

    .line 4
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {v1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$3(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$6(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    new-instance p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;

    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;-><init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;I)V

    .line 8
    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->addDependency(Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;)V

    return-object p0
.end method

.method public with(Lio/dcloud/nineoldandroids/animation/Animator;)Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {v0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$3(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    invoke-direct {v0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;-><init>(Lio/dcloud/nineoldandroids/animation/Animator;)V

    .line 4
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {v1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$3(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->this$0:Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->access$6(Lio/dcloud/nineoldandroids/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    new-instance p1, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;

    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Builder;->mCurrentNode:Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;-><init>(Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;I)V

    .line 8
    invoke-virtual {v0, p1}, Lio/dcloud/nineoldandroids/animation/AnimatorSet$Node;->addDependency(Lio/dcloud/nineoldandroids/animation/AnimatorSet$Dependency;)V

    return-object p0
.end method
