.class public Lio/dcloud/nineoldandroids/animation/TimeAnimator;
.super Lio/dcloud/nineoldandroids/animation/ValueAnimator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/nineoldandroids/animation/TimeAnimator$TimeListener;
    }
.end annotation


# instance fields
.field private mListener:Lio/dcloud/nineoldandroids/animation/TimeAnimator$TimeListener;

.field private mPreviousTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;-><init>()V

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lio/dcloud/nineoldandroids/animation/TimeAnimator;->mPreviousTime:J

    return-void
.end method


# virtual methods
.method animateValue(F)V
    .locals 0

    return-void
.end method

.method animationFrame(J)Z
    .locals 11

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    .line 3
    iget-wide v3, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 4
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    goto :goto_0

    :cond_0
    sub-long v3, p1, v3

    .line 6
    iput-wide v3, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    const-wide/16 v3, -0x1

    .line 8
    iput-wide v3, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    .line 11
    :cond_1
    :goto_0
    iget-object v5, p0, Lio/dcloud/nineoldandroids/animation/TimeAnimator;->mListener:Lio/dcloud/nineoldandroids/animation/TimeAnimator$TimeListener;

    if-eqz v5, :cond_3

    .line 12
    iget-wide v3, p0, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    sub-long v7, p1, v3

    .line 13
    iget-wide v3, p0, Lio/dcloud/nineoldandroids/animation/TimeAnimator;->mPreviousTime:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    sub-long v1, p1, v3

    :goto_1
    move-wide v9, v1

    .line 14
    iput-wide p1, p0, Lio/dcloud/nineoldandroids/animation/TimeAnimator;->mPreviousTime:J

    move-object v6, p0

    .line 15
    invoke-interface/range {v5 .. v10}, Lio/dcloud/nineoldandroids/animation/TimeAnimator$TimeListener;->onTimeUpdate(Lio/dcloud/nineoldandroids/animation/TimeAnimator;JJ)V

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method initAnimation()V
    .locals 0

    return-void
.end method

.method public setTimeListener(Lio/dcloud/nineoldandroids/animation/TimeAnimator$TimeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/nineoldandroids/animation/TimeAnimator;->mListener:Lio/dcloud/nineoldandroids/animation/TimeAnimator$TimeListener;

    return-void
.end method
