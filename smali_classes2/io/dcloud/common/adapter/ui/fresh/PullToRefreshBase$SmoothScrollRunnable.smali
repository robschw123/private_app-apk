.class final Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SmoothScrollRunnable"
.end annotation


# instance fields
.field private mContinueRunning:Z

.field private mCurrentY:I

.field private final mDuration:J

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mScrollFromY:I

.field private final mScrollToY:I

.field private mStartTime:J

.field final synthetic this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;


# direct methods
.method public constructor <init>(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;IIJ)V
    .locals 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    .line 16
    iput p2, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    .line 17
    iput p3, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    .line 18
    iput-wide p4, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mDuration:J

    .line 19
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-wide v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mDuration:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_0

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    iget v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    invoke-static {v0, v2, v1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->access$600(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;II)V

    return-void

    .line 10
    :cond_0
    iget-wide v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v7, v0, v5

    if-nez v7, :cond_1

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    goto :goto_0

    .line 20
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x3e8

    mul-long v0, v0, v5

    iget-wide v7, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mDuration:J

    div-long/2addr v0, v7

    .line 21
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 23
    iget v3, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    iget v4, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 24
    invoke-interface {v4, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float v3, v3, v0

    .line 25
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 27
    iget v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    sub-int/2addr v1, v0

    iput v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    .line 29
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    invoke-static {v0, v2, v1}, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;->access$600(Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;II)V

    .line 33
    :goto_0
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    iget v1, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    if-eq v0, v1, :cond_2

    .line 34
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lio/dcloud/common/adapter/ui/fresh/PullToRefreshBase;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
