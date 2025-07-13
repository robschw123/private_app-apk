.class Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimationHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimationHandler;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimationHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    .line 1
    invoke-static {}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$2()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2
    invoke-static {}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$3()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3
    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v5, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v7, 0x1

    goto :goto_2

    .line 7
    :cond_1
    invoke-static {}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$4()Ljava/lang/ThreadLocal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v6, 0x0

    .line 16
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_f

    move v7, v6

    .line 35
    :goto_2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    .line 36
    invoke-static {}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$7()Ljava/lang/ThreadLocal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v10, p1

    check-cast v10, Ljava/util/ArrayList;

    .line 37
    invoke-static {}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$8()Ljava/lang/ThreadLocal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v11, p1

    check-cast v11, Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 p1, 0x0

    :goto_3
    if-lt p1, v12, :cond_d

    .line 48
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    const/4 v6, 0x0

    :goto_4
    if-lt v6, p1, :cond_4

    .line 56
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto :goto_5

    .line 57
    :cond_4
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 58
    invoke-static {v12}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$6(Lio/dcloud/nineoldandroids/animation/ValueAnimator;)V

    .line 59
    invoke-static {v12, v5}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$10(Lio/dcloud/nineoldandroids/animation/ValueAnimator;Z)V

    .line 60
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 67
    :cond_5
    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v6, 0x0

    :goto_6
    if-lt v6, p1, :cond_a

    .line 88
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 89
    :goto_7
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt v4, p1, :cond_6

    .line 92
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    goto :goto_8

    .line 93
    :cond_6
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    invoke-static {p1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$11(Lio/dcloud/nineoldandroids/animation/ValueAnimator;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_7
    :goto_8
    if-eqz v7, :cond_9

    .line 100
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    .line 101
    :cond_8
    invoke-static {}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$12()J

    move-result-wide v0

    .line 102
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v8

    sub-long/2addr v0, v6

    .line 103
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_9
    :goto_9
    return-void

    .line 104
    :cond_a
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 105
    invoke-virtual {v10, v8, v9}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->animationFrame(J)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 106
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v12, p1, :cond_c

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_c
    add-int/lit8 p1, p1, -0x1

    .line 119
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 120
    :cond_d
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 121
    invoke-static {v6, v8, v9}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$9(Lio/dcloud/nineoldandroids/animation/ValueAnimator;J)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 122
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_3

    .line 123
    :cond_f
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 124
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 125
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_a
    if-lt v9, v8, :cond_10

    goto/16 :goto_1

    .line 127
    :cond_10
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 129
    invoke-static {v10}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$5(Lio/dcloud/nineoldandroids/animation/ValueAnimator;)J

    move-result-wide v11

    cmp-long v13, v11, v2

    if-nez v13, :cond_11

    .line 130
    invoke-static {v10}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->access$6(Lio/dcloud/nineoldandroids/animation/ValueAnimator;)V

    goto :goto_b

    .line 132
    :cond_11
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_a
.end method
