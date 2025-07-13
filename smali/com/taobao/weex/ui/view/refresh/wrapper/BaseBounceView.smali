.class public abstract Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;
.super Landroid/widget/FrameLayout;
.source "BaseBounceView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/FrameLayout;"
    }
.end annotation


# instance fields
.field private mInnerView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field protected swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "orientation"
        }
    .end annotation

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0, p2}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "orientation"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 45
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->mOrientation:I

    .line 55
    iput p3, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->mOrientation:I

    return-void
.end method

.method private createBounceView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 94
    new-instance v0, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    .line 95
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setInnerView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->mInnerView:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->addTargetView(Landroid/view/View;)V

    .line 100
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {p0, p1, v2, v2}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->addView(Landroid/view/View;II)V

    .line 101
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    return-object p1
.end method


# virtual methods
.method public finishPullLoad()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->finishPullLoad()V

    :cond_0
    return-void
.end method

.method public finishPullRefresh()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->finishPullRefresh()V

    :cond_0
    return-void
.end method

.method public getInnerView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->mInnerView:Landroid/view/View;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->mOrientation:I

    return v0
.end method

.method public getSwipeLayout()Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->createBounceView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    return-void
.end method

.method isVertical()Z
    .locals 2

    .line 67
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public abstract onLoadmoreComplete()V
.end method

.method public abstract onRefreshingComplete()V
.end method

.method public removeFooterView(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loading"
        }
    .end annotation

    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setLoadmoreEnable(Z)V

    .line 180
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->getFooterView()Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setLoadingHeight(I)V

    .line 183
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->getFooterView()Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->removeView(Landroid/view/View;)V

    .line 184
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->finishPullLoad()V

    :cond_0
    return-void
.end method

.method public removeHeaderView(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refresh"
        }
    .end annotation

    const/4 v0, 0x0

    .line 190
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setRefreshEnable(Z)V

    .line 191
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->getHeaderView()Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v1, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setRefreshHeight(I)V

    .line 194
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->getHeaderView()Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->removeView(Landroid/view/View;)V

    .line 195
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->finishPullRefresh()V

    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 212
    instance-of v0, p1, Lcom/taobao/weex/ui/view/WXLoadingLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->finishPullLoad()V

    .line 214
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setLoadmoreEnable(Z)V

    .line 215
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    if-eqz p1, :cond_2

    .line 216
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->getFooterView()Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 218
    :cond_0
    instance-of v0, p1, Lcom/taobao/weex/ui/view/WXRefreshLayout;

    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->finishPullRefresh()V

    .line 220
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setRefreshEnable(Z)V

    .line 221
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    if-eqz p1, :cond_2

    .line 222
    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->getHeaderView()Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 225
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setFooterView(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loading"
        }
    .end annotation

    const/4 v0, 0x1

    .line 150
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setLoadmoreEnable(Z)V

    .line 151
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    if-eqz v0, :cond_2

    .line 152
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->getFooterView()Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 154
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 155
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x50

    .line 156
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 157
    iget-object v2, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v2, v0, v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-eqz p1, :cond_2

    .line 160
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v1

    float-to-int v1, v1

    .line 161
    iget-object v2, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v2, v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setLoadingHeight(I)V

    .line 162
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    const-string v2, "backgroundColor"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 163
    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 165
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 166
    invoke-static {v1}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    iget-object v2, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v2, v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setLoadingBgColor(I)V

    .line 172
    :cond_1
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setRefreshView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public setHeaderView(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refresh"
        }
    .end annotation

    const/4 v0, 0x1

    .line 118
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->setRefreshEnable(Z)V

    .line 119
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->getHeaderView()Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 123
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 124
    iget-object v2, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v2, v0, v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-eqz p1, :cond_2

    .line 127
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v1

    float-to-int v1, v1

    .line 128
    iget-object v2, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v2, v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setRefreshHeight(I)V

    .line 129
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    const-string v2, "backgroundColor"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 130
    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 132
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 133
    invoke-static {v1}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    iget-object v2, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    invoke-virtual {v2, v1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setRefreshBgColor(I)V

    .line 139
    :cond_1
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXRefreshView;->setRefreshView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public abstract setInnerView(Landroid/content/Context;)Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation
.end method

.method public setLoadmoreEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setPullLoadEnable(Z)V

    :cond_0
    return-void
.end method

.method public setOnLoadingListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onLoadingListener"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setOnLoadingListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnLoadingListener;)V

    :cond_0
    return-void
.end method

.method public setOnRefreshListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onRefreshListener"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setOnRefreshListener(Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout$WXOnRefreshListener;)V

    :cond_0
    return-void
.end method

.method public setRefreshEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/wrapper/BaseBounceView;->swipeLayout:Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/core/WXSwipeLayout;->setPullRefreshEnable(Z)V

    :cond_0
    return-void
.end method
