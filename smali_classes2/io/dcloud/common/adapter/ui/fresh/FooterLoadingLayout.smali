.class public Lio/dcloud/common/adapter/ui/fresh/FooterLoadingLayout;
.super Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/common/adapter/ui/fresh/FooterLoadingLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lio/dcloud/common/adapter/ui/fresh/FooterLoadingLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    .line 1
    sget-object p1, Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;->RESET:Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;

    invoke-virtual {p0, p1}, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;->setState(Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;)V

    return-void
.end method


# virtual methods
.method protected createLoadingView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 1
    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string p1, "createLoadingView"

    .line 2
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public getContentSize()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected onNoMoreData()V
    .locals 0

    return-void
.end method

.method protected onPullToRefresh()V
    .locals 0

    return-void
.end method

.method protected onRefreshing()V
    .locals 0

    return-void
.end method

.method protected onReleaseToRefresh()V
    .locals 0

    return-void
.end method

.method protected onReset()V
    .locals 0

    return-void
.end method

.method protected onStateChanged(Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lio/dcloud/common/adapter/ui/fresh/LoadingLayout;->onStateChanged(Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;Lio/dcloud/common/adapter/ui/fresh/ILoadingLayout$State;)V

    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method
