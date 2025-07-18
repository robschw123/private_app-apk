.class public Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;
.super Ljava/lang/Object;


# instance fields
.field private mIsNestedScrollingEnabled:Z

.field private mNestedScrollingParent:Landroid/view/ViewParent;

.field private mTempNestedScrollConsumed:[I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/dcloud/android/v4/view/ViewParentCompat;->onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Lcom/dcloud/android/v4/view/ViewParentCompat;->onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_7

    .line 28
    aput v1, p4, v1

    .line 29
    aput v1, p4, v0

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    .line 30
    iget-object v2, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v2, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 31
    aget v2, p4, v1

    .line 32
    aget v3, p4, v0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-nez p3, :cond_4

    .line 36
    iget-object p3, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    if-nez p3, :cond_3

    const/4 p3, 0x2

    new-array p3, p3, [I

    .line 37
    iput-object p3, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 39
    :cond_3
    iget-object p3, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 41
    :cond_4
    aput v1, p3, v1

    .line 42
    aput v1, p3, v0

    .line 43
    iget-object v4, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v5, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v4, v5, p1, p2, p3}, Lcom/dcloud/android/v4/view/ViewParentCompat;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V

    if-eqz p4, :cond_5

    .line 46
    iget-object p1, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 47
    aget p1, p4, v1

    sub-int/2addr p1, v2

    aput p1, p4, v1

    .line 48
    aget p1, p4, v0

    sub-int/2addr p1, v3

    aput p1, p4, v0

    .line 50
    :cond_5
    aget p1, p3, v1

    if-nez p1, :cond_6

    aget p1, p3, v0

    if-eqz p1, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    :goto_2
    return v1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_4

    .line 22
    aput v1, p5, v1

    .line 23
    aput v1, p5, v0

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p5, :cond_2

    .line 24
    iget-object v2, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v2, p5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 25
    aget v2, p5, v1

    .line 26
    aget v3, p5, v0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 29
    :goto_1
    iget-object v4, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v5, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-static/range {v4 .. v9}, Lcom/dcloud/android/v4/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V

    if-eqz p5, :cond_3

    .line 33
    iget-object p1, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {p1, p5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 34
    aget p1, p5, v1

    sub-int/2addr p1, v2

    aput p1, p5, v1

    .line 35
    aget p1, p5, v0

    sub-int/2addr p1, v3

    aput p1, p5, v0

    :cond_3
    return v0

    :cond_4
    :goto_2
    return v1
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/dcloud/android/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/dcloud/android/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 4
    :cond_0
    iput-boolean p1, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    :goto_0
    if-eqz v0, :cond_3

    .line 9
    iget-object v3, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v2, v3, p1}, Lcom/dcloud/android/v4/view/ViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    iput-object v0, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    .line 11
    iget-object v3, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v2, v3, p1}, Lcom/dcloud/android/v4/view/ViewParentCompat;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    return v1

    .line 14
    :cond_1
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2

    .line 15
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 17
    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public stopNestedScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/dcloud/android/v4/view/ViewParentCompat;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/dcloud/android/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    :cond_0
    return-void
.end method
