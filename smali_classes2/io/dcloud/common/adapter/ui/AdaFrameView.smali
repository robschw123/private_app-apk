.class public abstract Lio/dcloud/common/adapter/ui/AdaFrameView;
.super Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;

# interfaces
.implements Lio/dcloud/common/DHInterface/IFrameView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/adapter/ui/AdaFrameView$OnAnimationEnd;
    }
.end annotation


# static fields
.field private static final ERROR:I = 0x0

.field private static final SUCCESS:I = 0x1


# instance fields
.field public inStack:Z

.field public interceptTouchEvent:Z

.field public isChildOfFrameView:Z

.field private isTabItem:Z

.field public isTouchEvent:Z

.field public mAccelerationType:Ljava/lang/String;

.field public mAnimationCapture:Z

.field mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field protected mAnimationStarted:Z

.field mBounceView:Lio/dcloud/common/adapter/ui/BounceView;

.field private mCaptureHandler:Landroid/os/Handler;

.field private mCircleRefreshView:Lcom/dcloud/android/v4/widget/IRefreshAble;

.field private mContext:Landroid/content/Context;

.field private mErrCallBack:Lio/dcloud/common/DHInterface/ICallBack;

.field protected mFrameStatus:B

.field private mFrameType:I

.field private mLastScreenHeight:I

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/dcloud/common/DHInterface/IEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mLoadingSnapshot:Landroid/graphics/Bitmap;

.field public mNativeViewAction:Ljava/lang/String;

.field private mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

.field mRefreshView:Lio/dcloud/common/adapter/ui/RefreshView;

.field public mSnapshot:Landroid/graphics/Bitmap;

.field private mSucCallBack:Lio/dcloud/common/DHInterface/ICallBack;

.field public mWindowMgr:Lio/dcloud/common/core/ui/l;


# direct methods
.method protected constructor <init>(Landroid/content/Context;ILjava/lang/Object;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mLoadingSnapshot:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    const-string v2, "none"

    .line 6
    iput-object v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mNativeViewAction:Ljava/lang/String;

    .line 9
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationStarted:Z

    .line 11
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mRefreshView:Lio/dcloud/common/adapter/ui/RefreshView;

    .line 12
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mBounceView:Lio/dcloud/common/adapter/ui/BounceView;

    .line 13
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mCircleRefreshView:Lcom/dcloud/android/v4/widget/IRefreshAble;

    .line 14
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mListeners:Ljava/util/ArrayList;

    .line 15
    iput v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mFrameType:I

    const-string v2, "auto"

    .line 16
    iput-object v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAccelerationType:Ljava/lang/String;

    const/4 v2, 0x1

    .line 19
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    .line 24
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->interceptTouchEvent:Z

    .line 36
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->isTouchEvent:Z

    .line 69
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    .line 71
    iput v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mLastScreenHeight:I

    .line 75
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationCapture:Z

    .line 885
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSucCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mErrCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    .line 886
    new-instance v1, Lio/dcloud/common/adapter/ui/AdaFrameView$4;

    invoke-direct {v1, p0}, Lio/dcloud/common/adapter/ui/AdaFrameView$4;-><init>(Lio/dcloud/common/adapter/ui/AdaFrameView;)V

    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mCaptureHandler:Landroid/os/Handler;

    .line 1052
    new-instance v1, Lio/dcloud/common/adapter/ui/AdaFrameView$7;

    invoke-direct {v1, p0}, Lio/dcloud/common/adapter/ui/AdaFrameView$7;-><init>(Lio/dcloud/common/adapter/ui/AdaFrameView;)V

    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1156
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->isTabItem:Z

    .line 1157
    iput p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mFrameType:I

    .line 1158
    invoke-virtual {p0, p1, p2, p3}, Lio/dcloud/common/adapter/ui/AdaFrameView;->initMainView(Landroid/content/Context;ILjava/lang/Object;)V

    .line 1159
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mContext:Landroid/content/Context;

    .line 1160
    iput-boolean v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNeedOrientationUpdate:Z

    .line 1161
    invoke-static {p1}, Lio/dcloud/common/adapter/util/PlatformUtil;->SCREEN_HEIGHT(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mLastScreenHeight:I

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/adapter/ui/DHImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    return-object p0
.end method

.method static synthetic access$100(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/DHInterface/ICallBack;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSucCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    return-object p0
.end method

.method static synthetic access$102(Lio/dcloud/common/adapter/ui/AdaFrameView;Lio/dcloud/common/DHInterface/ICallBack;)Lio/dcloud/common/DHInterface/ICallBack;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSucCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    return-object p1
.end method

.method static synthetic access$200(Lio/dcloud/common/adapter/ui/AdaFrameView;)Lio/dcloud/common/DHInterface/ICallBack;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mErrCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    return-object p0
.end method

.method static synthetic access$202(Lio/dcloud/common/adapter/ui/AdaFrameView;Lio/dcloud/common/DHInterface/ICallBack;)Lio/dcloud/common/DHInterface/ICallBack;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mErrCallBack:Lio/dcloud/common/DHInterface/ICallBack;

    return-object p1
.end method

.method static synthetic access$300(Lio/dcloud/common/adapter/ui/AdaFrameView;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mCaptureHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lio/dcloud/common/adapter/ui/AdaFrameView;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->sendErrorMessage(ILjava/lang/String;)V

    return-void
.end method

.method private addCaptureImageView(Landroid/view/ViewGroup;Lio/dcloud/common/adapter/ui/DHImageView;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    :cond_1
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 8
    invoke-virtual {p2, p3}, Lio/dcloud/common/adapter/ui/DHImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 9
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/DHImageView;->removeNativeView()V

    .line 10
    sget p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->VISIBLE:I

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private captureAnimation(Lio/dcloud/nineoldandroids/animation/Animator;I)Z
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v2, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-boolean v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->isAnimationOptimization:Z

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static/range {p0 .. p2}, Lio/dcloud/common/util/SubNViewsUtil;->startAnimation(Lio/dcloud/common/adapter/ui/AdaFrameView;Lio/dcloud/nineoldandroids/animation/Animator;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v8

    .line 6
    :cond_0
    iget-boolean v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationCapture:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->sAnimationCaptureC:Z

    if-nez v0, :cond_1

    goto/16 :goto_b

    .line 11
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    .line 13
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->checkITypeofAble()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 16
    :cond_2
    invoke-interface/range {p0 .. p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebAppRootView;->obtainMainView()Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lio/dcloud/common/core/ui/k;

    .line 17
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v9, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    if-eq v0, v9, :cond_3

    .line 18
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/DHImageView;->clear()V

    .line 19
    iput-object v5, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    return v1

    .line 22
    :cond_3
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    if-nez v0, :cond_4

    .line 23
    invoke-virtual {v4}, Lio/dcloud/common/core/ui/k;->getRightImageView()Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object v0

    iput-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    .line 26
    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v9}, Lio/dcloud/common/adapter/ui/DHImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 28
    :cond_4
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/DHImageView;->isSlipping()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 31
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "C\u9875\u9762\u662f\u5426\u542f\u7528\u622a\u56fe\u52a8\u753b\u65b9\u6848:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationCapture:Z

    if-eqz v9, :cond_6

    sget-boolean v9, Lio/dcloud/common/util/BaseInfo;->sAnimationCaptureC:Z

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    goto :goto_0

    :cond_6
    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " | "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-object v9, v9, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "mabo"

    invoke-static {v9, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 34
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNativeView:Lio/dcloud/common/DHInterface/INativeView;

    if-eqz v0, :cond_8

    .line 35
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/INativeView;->isAnimate()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 36
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/DHImageView;->removeNativeView()V

    .line 37
    iput-object v5, v6, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNativeView:Lio/dcloud/common/DHInterface/INativeView;

    goto :goto_1

    .line 39
    :cond_7
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {v0, v5}, Lio/dcloud/common/adapter/ui/DHImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 40
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    iget-object v12, v6, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNativeView:Lio/dcloud/common/DHInterface/INativeView;

    invoke-virtual {v0, v6, v12}, Lio/dcloud/common/adapter/ui/DHImageView;->addNativeView(Lio/dcloud/common/DHInterface/IFrameView;Lio/dcloud/common/DHInterface/INativeView;)V

    .line 43
    :cond_8
    :goto_1
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNativeView:Lio/dcloud/common/DHInterface/INativeView;

    const/16 v12, 0x16

    if-nez v0, :cond_e

    if-nez v2, :cond_c

    .line 45
    iget-object v5, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mLoadingSnapshot:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_9

    goto :goto_4

    .line 47
    :cond_9
    iget-object v5, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_a

    goto :goto_4

    .line 50
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v12, :cond_b

    iget-boolean v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-eqz v0, :cond_b

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v5

    iget v5, v5, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-le v0, v5, :cond_b

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v13

    iget v13, v13, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    invoke-direct {v0, v1, v1, v5, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v5, "ARGB"

    .line 52
    invoke-static {v3, v8, v8, v0, v5}, Lio/dcloud/common/adapter/util/PlatformUtil;->captureView(Landroid/view/View;ZZLandroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 54
    :cond_b
    invoke-static {v3}, Lio/dcloud/common/adapter/util/PlatformUtil;->captureView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    move-object v5, v0

    goto :goto_3

    .line 59
    :cond_c
    iget-object v5, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_d

    goto :goto_4

    .line 62
    :cond_d
    invoke-static {v3}, Lio/dcloud/common/adapter/util/PlatformUtil;->captureView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v5

    :goto_3
    const/4 v0, 0x1

    goto :goto_5

    :cond_e
    :goto_4
    const/4 v0, 0x0

    .line 77
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 78
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "==============C\u622a\u56fe\u8017\u65f6="

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v13, v10

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget v9, Lio/dcloud/common/util/BaseInfo;->sTimeoutCapture:I

    int-to-long v9, v9

    cmp-long v11, v13, v9

    if-ltz v11, :cond_f

    .line 81
    sget v0, Lio/dcloud/common/util/BaseInfo;->sTimeOutCount:I

    add-int/2addr v0, v8

    sput v0, Lio/dcloud/common/util/BaseInfo;->sTimeOutCount:I

    .line 82
    sget v9, Lio/dcloud/common/util/BaseInfo;->sTimeOutMax:I

    if-le v0, v9, :cond_10

    .line 83
    sput-boolean v1, Lio/dcloud/common/util/BaseInfo;->sAnimationCaptureC:Z

    goto :goto_6

    :cond_f
    if-eqz v0, :cond_10

    .line 86
    sput v1, Lio/dcloud/common/util/BaseInfo;->sTimeOutCount:I

    .line 88
    :cond_10
    :goto_6
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/DHImageView;->refreshImagerView()V

    .line 89
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNativeView:Lio/dcloud/common/DHInterface/INativeView;

    if-nez v0, :cond_12

    if-eqz v5, :cond_11

    invoke-static {v5}, Lio/dcloud/common/adapter/util/PlatformUtil;->isWhiteBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_7

    :cond_11
    return v1

    .line 90
    :cond_12
    :goto_7
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_15

    .line 91
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v10

    invoke-direct {v0, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 92
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x16

    if-ge v9, v10, :cond_14

    iget-boolean v9, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-eqz v9, :cond_14

    .line 93
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v10

    iget v10, v10, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    add-int/2addr v9, v10

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getParentFrameItem()Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;

    move-result-object v10

    invoke-virtual {v10}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v10

    iget-boolean v10, v10, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-eqz v10, :cond_13

    sget v10, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    goto :goto_8

    :cond_13
    const/4 v10, 0x0

    :goto_8
    sub-int/2addr v9, v10

    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 94
    iget-object v9, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v10

    iget v10, v10, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    invoke-virtual {v9, v1, v10, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 96
    :cond_14
    iget-object v9, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    :cond_15
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNativeView:Lio/dcloud/common/DHInterface/INativeView;

    if-nez v0, :cond_16

    .line 99
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-direct {v6, v4, v0, v5}, Lio/dcloud/common/adapter/ui/AdaFrameView;->addCaptureImageView(Landroid/view/ViewGroup;Lio/dcloud/common/adapter/ui/DHImageView;Landroid/graphics/Bitmap;)V

    goto :goto_9

    .line 101
    :cond_16
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 102
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_9
    const/4 v0, 0x4

    .line 104
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 105
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    iget-object v5, v6, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    iget v5, v5, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    int-to-float v5, v5

    invoke-static {v0, v5}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    .line 106
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    .line 107
    iget-boolean v5, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-eqz v5, :cond_18

    .line 108
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getParentFrameItem()Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;

    move-result-object v5

    invoke-virtual {v5}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v5

    iget-boolean v5, v5, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-eqz v5, :cond_17

    sget v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    :cond_17
    add-int/2addr v0, v1

    .line 110
    :cond_18
    iget-object v1, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    int-to-float v0, v0

    invoke-static {v1, v0}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setY(Landroid/view/View;F)V

    .line 112
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-object v0, v0, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimator:Landroid/view/animation/Animation;

    if-nez v0, :cond_19

    .line 115
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {v7, v0}, Lio/dcloud/nineoldandroids/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 116
    new-instance v9, Lio/dcloud/common/adapter/ui/AdaFrameView$1;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lio/dcloud/common/adapter/ui/AdaFrameView$1;-><init>(Lio/dcloud/common/adapter/ui/AdaFrameView;ILandroid/view/ViewGroup;Lio/dcloud/common/core/ui/k;Lio/dcloud/nineoldandroids/animation/Animator;)V

    invoke-virtual {v7, v9}, Lio/dcloud/nineoldandroids/animation/Animator;->addListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 184
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/nineoldandroids/animation/Animator;->start()V

    goto :goto_a

    .line 186
    :cond_19
    new-instance v1, Lio/dcloud/common/adapter/ui/AdaFrameView$2;

    invoke-direct {v1, v6, v3, v2}, Lio/dcloud/common/adapter/ui/AdaFrameView$2;-><init>(Lio/dcloud/common/adapter/ui/AdaFrameView;Landroid/view/ViewGroup;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 248
    iget-object v0, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    if-eqz v0, :cond_1a

    .line 249
    iget-object v1, v6, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-object v1, v1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimator:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1a
    :goto_a
    return v8

    :cond_1b
    :goto_b
    return v1
.end method

.method private getFrameHeight()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebAppRootView;->obtainMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-boolean v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbarDodifyHeight:Z

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    sget v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    :cond_2
    :goto_0
    return v0
.end method

.method private indexOfViewInParent(Landroid/view/View;Landroid/view/ViewGroup;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private sendErrorMessage(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mCaptureHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public final addFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mListeners:Ljava/util/ArrayList;

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public animate(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/dcloud/android/widget/AbsoluteLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dcloud/android/widget/AbsoluteLayout;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/dcloud/android/widget/AbsoluteLayout;->animate(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public captureSnapshot(Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/dcloud/common/adapter/ui/AdaFrameView$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/dcloud/common/adapter/ui/AdaFrameView$5;-><init>(Lio/dcloud/common/adapter/ui/AdaFrameView;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 37
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public changeWebParentViewRect()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_c

    if-nez v1, :cond_1

    goto/16 :goto_5

    .line 11
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_c

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    iget-boolean v3, v2, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-nez v3, :cond_2

    iget-object v2, v2, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v2

    iget-boolean v2, v2, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    if-eqz v2, :cond_c

    .line 13
    :cond_2
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/common/adapter/util/ViewOptions;->hasBackground()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v3

    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v3

    iget v3, v3, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    iget-boolean v2, v2, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    iget-object v2, v2, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-nez v2, :cond_3

    return-void

    .line 16
    :cond_3
    invoke-direct {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameHeight()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 18
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_b

    .line 19
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eq v6, v1, :cond_a

    .line 21
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 23
    instance-of v8, v6, Lcom/dcloud/android/widget/AbsoluteLayout;

    if-eqz v8, :cond_4

    .line 24
    check-cast v6, Lcom/dcloud/android/widget/AbsoluteLayout;

    invoke-virtual {v6}, Lcom/dcloud/android/widget/AbsoluteLayout;->getFrameView()Lio/dcloud/common/adapter/ui/AdaFrameView;

    move-result-object v6

    iget v6, v6, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mPosition:I

    sget-byte v8, Lio/dcloud/common/adapter/util/ViewRect;->DOCK_TOP:B

    if-eq v6, v8, :cond_9

    goto :goto_4

    .line 27
    :cond_4
    instance-of v8, v6, Lio/dcloud/common/DHInterface/INativeView;

    if-eqz v8, :cond_8

    .line 28
    move-object v7, v6

    check-cast v7, Lio/dcloud/common/DHInterface/INativeView;

    invoke-interface {v7}, Lio/dcloud/common/DHInterface/INativeView;->isDock()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 29
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    const-string v8, "NavigationBar"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    const-string v8, "titleNView"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    move-object v7, v6

    check-cast v7, Lio/dcloud/common/DHInterface/INativeView;

    invoke-interface {v7}, Lio/dcloud/common/DHInterface/INativeView;->isStatusBar()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 30
    move-object v7, v6

    check-cast v7, Lio/dcloud/common/DHInterface/INativeView;

    invoke-interface {v7}, Lio/dcloud/common/DHInterface/INativeView;->getInnerHeight()I

    move-result v7

    sget v8, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v7, v8

    goto :goto_1

    .line 32
    :cond_6
    move-object v7, v6

    check-cast v7, Lio/dcloud/common/DHInterface/INativeView;

    invoke-interface {v7}, Lio/dcloud/common/DHInterface/INativeView;->getInnerHeight()I

    move-result v7

    .line 34
    :goto_1
    check-cast v6, Lio/dcloud/common/DHInterface/INativeView;

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/INativeView;->isDockTop()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    .line 42
    :cond_8
    instance-of v6, v6, Lcom/dcloud/android/widget/StatusBarView;

    if-eqz v6, :cond_a

    :cond_9
    :goto_2
    move v6, v7

    :goto_3
    sub-int/2addr v2, v7

    add-int/2addr v5, v6

    :cond_a
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 51
    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v5

    .line 54
    invoke-static {v1, v0}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setY(Landroid/view/View;F)V

    .line 56
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 57
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 58
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    if-nez v0, :cond_c

    .line 59
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->changeWebviewRect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaFrameItem"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_5
    return-void
.end method

.method protected changeWebviewRect()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public chkUseCaptureAnimation(ZIZ)V
    .locals 5

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "B\u9875\u9762"

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "C\u9875\u9762"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAccelerationType:Ljava/lang/String;

    const-string v0, "none"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    .line 4
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationCapture:Z

    return-void

    .line 8
    :cond_1
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAccelerationType:Ljava/lang/String;

    const-string p3, "acceleration"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string p3, "1\u662f\u5426\u542f\u7528\u622a\u56fe\u52a8\u753b\u65b9\u6848:"

    const-string v1, "mabo"

    if-nez p2, :cond_2

    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    if-nez p2, :cond_2

    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNativeView:Lio/dcloud/common/DHInterface/INativeView;

    if-nez p2, :cond_2

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt p2, v2, :cond_2

    .line 9
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationCapture:Z

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationCapture:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_2
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    iget-object p2, p2, Lio/dcloud/common/adapter/util/ViewOptions;->mUniNViewJson:Lorg/json/JSONObject;

    if-eqz p2, :cond_3

    .line 15
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationCapture:Z

    return-void

    .line 20
    :cond_3
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-byte p2, p2, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p2, v2, :cond_5

    if-ne p2, v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p2, 0x1

    .line 28
    :goto_2
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    if-nez v2, :cond_7

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNativeView:Lio/dcloud/common/DHInterface/INativeView;

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_6

    sget v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 v4, 0xb

    if-ge v2, v4, :cond_7

    .line 29
    :cond_6
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationCapture:Z

    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationCapture:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 34
    :cond_7
    iget-boolean p3, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-eqz p3, :cond_8

    .line 35
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationCapture:Z

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "2\u662f\u5426\u542f\u7528\u622a\u56fe\u52a8\u753b\u65b9\u6848:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationCapture:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 40
    :cond_8
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p3

    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-static {p3}, Lio/dcloud/common/adapter/util/PlatformUtil;->MESURE_SCREEN_STATUSBAR_HEIGHT(Landroid/app/Activity;)I

    .line 43
    iget p3, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mLastScreenHeight:I

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->SCREEN_HEIGHT(Landroid/content/Context;)I

    move-result v2

    if-eq p3, v2, :cond_9

    .line 44
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lio/dcloud/common/adapter/util/PlatformUtil;->SCREEN_HEIGHT(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mLastScreenHeight:I

    .line 45
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationCapture:Z

    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "3\u662f\u5426\u542f\u7528\u622a\u56fe\u52a8\u753b\u65b9\u6848:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationCapture:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 52
    :cond_9
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAccelerationType:Ljava/lang/String;

    const-string p3, "auto"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p3, "fade-in"

    if-eqz p1, :cond_a

    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-object p1, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    invoke-static {p1, p3}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    if-eqz p2, :cond_a

    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-object p1, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    const-string v1, "slide"

    invoke-static {p1, v1}, Lio/dcloud/common/util/PdrUtil;->isContains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_a
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAccelerationType:Ljava/lang/String;

    const-string v1, "capture"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_b
    const/4 p1, 0x1

    goto :goto_3

    :cond_c
    const/4 p1, 0x0

    :goto_3
    if-nez p2, :cond_11

    .line 57
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-byte v1, p2, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    const/4 v2, 0x4

    if-eq v1, v2, :cond_e

    if-nez v1, :cond_d

    goto :goto_4

    :cond_d
    const/4 v1, 0x0

    goto :goto_5

    :cond_e
    :goto_4
    const/4 v1, 0x1

    :goto_5
    if-nez p1, :cond_f

    .line 59
    iget-object p1, p2, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    const-string p2, "pop-in"

    invoke-static {p1, p2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-object p1, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    const-string p2, "zoom-fade-out"

    invoke-static {p1, p2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    :cond_f
    const/4 v0, 0x1

    :cond_10
    and-int p1, v1, v0

    goto :goto_6

    :cond_11
    if-nez p1, :cond_12

    .line 63
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-object p1, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType_close:Ljava/lang/String;

    const-string p2, "pop-out"

    invoke-static {p1, p2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-object p1, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    const-string p2, "zoom-fade-in"

    invoke-static {p1, p2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    :cond_12
    const/4 v0, 0x1

    :cond_13
    and-int p1, v3, v0

    .line 66
    :goto_6
    iget-boolean p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-eqz p2, :cond_14

    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-object p2, p2, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    invoke-static {p2, p3}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_14

    const/4 p1, 0x1

    .line 70
    :cond_14
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    if-nez p2, :cond_16

    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNativeView:Lio/dcloud/common/DHInterface/INativeView;

    if-eqz p2, :cond_15

    goto :goto_7

    :cond_15
    move v3, p1

    .line 73
    :cond_16
    :goto_7
    iput-boolean v3, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationCapture:Z

    return-void
.end method

.method public clearSnapshot(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lio/dcloud/common/adapter/ui/DHImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "loading"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mLoadingSnapshot:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mLoadingSnapshot:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :cond_1
    :goto_0
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mLoadingSnapshot:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 15
    :cond_2
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    .line 17
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 18
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    :cond_3
    :goto_1
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    :goto_2
    return-void
.end method

.method public final dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdaFrameView.dispatchFrameViewEvents type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";args="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 5
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/IEventCallback;

    const-string v2, "close"

    .line 6
    invoke-static {p1, v2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 9
    :cond_0
    invoke-interface {v1, p1, p2}, Lio/dcloud/common/DHInterface/IEventCallback;->onCallBack(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 1
    invoke-super {p0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->dispose()V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mRefreshView:Lio/dcloud/common/adapter/ui/RefreshView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mRefreshView:Lio/dcloud/common/adapter/ui/RefreshView;

    .line 5
    :cond_0
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mBounceView:Lio/dcloud/common/adapter/ui/BounceView;

    if-eqz v0, :cond_1

    .line 6
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mBounceView:Lio/dcloud/common/adapter/ui/BounceView;

    .line 8
    :cond_1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mCircleRefreshView:Lcom/dcloud/android/v4/widget/IRefreshAble;

    if-eqz v0, :cond_2

    .line 9
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mCircleRefreshView:Lcom/dcloud/android/v4/widget/IRefreshAble;

    :cond_2
    return-void
.end method

.method public declared-synchronized draw(Landroid/view/View;Lio/dcloud/common/DHInterface/INativeBitmap;ZZLandroid/graphics/Rect;Ljava/lang/String;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V
    .locals 13

    move-object v11, p0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, v11, Lio/dcloud/common/adapter/ui/AdaFrameView;->mCaptureHandler:Landroid/os/Handler;

    new-instance v12, Lio/dcloud/common/adapter/ui/AdaFrameView$6;

    move-object v1, v12

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, p2

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lio/dcloud/common/adapter/ui/AdaFrameView$6;-><init>(Lio/dcloud/common/adapter/ui/AdaFrameView;Landroid/view/View;ZZLandroid/graphics/Rect;Ljava/lang/String;Lio/dcloud/common/DHInterface/INativeBitmap;Lio/dcloud/common/DHInterface/ICallBack;Lio/dcloud/common/DHInterface/ICallBack;)V

    invoke-virtual {v0, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public findPageB()Lio/dcloud/common/DHInterface/IFrameView;
    .locals 1

    .line 1
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/dcloud/common/DHInterface/IWebAppRootView;->findFrameViewB(Lio/dcloud/common/DHInterface/IFrameView;)Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    return-object v0
.end method

.method public getCircleRefreshView()Lcom/dcloud/android/v4/widget/IRefreshAble;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mCircleRefreshView:Lcom/dcloud/android/v4/widget/IRefreshAble;

    return-object v0
.end method

.method public getFrameType()I
    .locals 1

    .line 1
    iget v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mFrameType:I

    return v0
.end method

.method public handleNativeViewByAction(Lio/dcloud/common/adapter/ui/DHImageView;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mNativeViewAction:Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-nez v0, :cond_4

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mNativeViewAction:Ljava/lang/String;

    const-string v5, "hide"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v6, "close"

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mNativeViewAction:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    :cond_0
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNativeView:Lio/dcloud/common/DHInterface/INativeView;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/INativeView;->getViewUUId()Ljava/lang/String;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mNativeViewAction:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v5, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mNativeViewAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 11
    invoke-virtual {p1, v2}, Lio/dcloud/common/adapter/ui/DHImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 12
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/DHImageView;->removeNativeView()V

    :cond_2
    const-string v0, "view_close"

    .line 16
    :cond_3
    :goto_0
    iput-object v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNativeView:Lio/dcloud/common/DHInterface/INativeView;

    .line 17
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mNativeViewAction:Ljava/lang/String;

    .line 18
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 19
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object p1

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array v2, v4, [Ljava/lang/Object;

    .line 20
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string v4, "nativeobj"

    aput-object v4, v2, v3

    const/4 v4, 0x2

    aput-object v0, v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\',\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\']"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    const/4 v0, 0x3

    aput-object p2, v2, v0

    .line 21
    invoke-interface {p1, v1, v3, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    if-ne p2, v3, :cond_5

    if-eqz p1, :cond_5

    .line 26
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 27
    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 28
    invoke-virtual {p1, v2}, Lio/dcloud/common/adapter/ui/DHImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 29
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/DHImageView;->removeNativeView()V

    :cond_5
    :goto_1
    return-void
.end method

.method protected abstract initMainView(Landroid/content/Context;ILjava/lang/Object;)V
.end method

.method public interceptTouchEvent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->interceptTouchEvent:Z

    return-void
.end method

.method public isSupportLongTouch()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTabItem()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->isTabItem:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->isTabItem:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isWebviewCovered()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 9
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_2

    goto/16 :goto_3

    .line 13
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->SCREEN_WIDTH(Landroid/content/Context;)I

    move-result v2

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/adapter/util/PlatformUtil;->SCREEN_HEIGHT(Landroid/content/Context;)I

    move-result v3

    .line 15
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 16
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 17
    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 19
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    .line 22
    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_8

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 24
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_4

    return v1

    .line 27
    :cond_4
    invoke-direct {p0, v0, v3}, Lio/dcloud/common/adapter/ui/AdaFrameView;->indexOfViewInParent(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result v0

    add-int/2addr v0, v1

    .line 28
    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 29
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 30
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_6

    instance-of v6, v4, Lio/dcloud/common/DHInterface/IWaiter;

    if-eqz v6, :cond_5

    goto :goto_2

    .line 33
    :cond_5
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 34
    invoke-virtual {v4, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 35
    invoke-virtual {v6, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_6

    return v1

    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move-object v0, v3

    goto :goto_0

    .line 41
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_9

    return v1

    :cond_9
    return v5

    :cond_a
    :goto_3
    return v1
.end method

.method public abstract obtainApp()Lio/dcloud/common/DHInterface/IApp;
.end method

.method public abstract obtainPrePlusreadyJs()Ljava/lang/String;
.end method

.method public obtainStatus()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mFrameStatus:B

    return v0
.end method

.method public abstract obtainWebView()Lio/dcloud/common/DHInterface/IWebview;
.end method

.method public abstract obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;
.end method

.method public onConfigurationChanged()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    iput-byte v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mFrameStatus:B

    .line 2
    invoke-virtual {p0, v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->transition(B)V

    .line 3
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispose()V

    return-void
.end method

.method public onDispose()Z
    .locals 3

    .line 1
    invoke-super {p0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->onDispose()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    const-string v2, "close"

    invoke-virtual {p0, v2, v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Lio/dcloud/common/adapter/ui/DHImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return v0
.end method

.method public onDrawAfter(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mCircleRefreshView:Lcom/dcloud/android/v4/widget/IRefreshAble;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/dcloud/android/v4/widget/IRefreshAble;->isRefreshEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 4
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/nineoldandroids/view/ViewHelper;->getY(Landroid/view/View;)F

    move-result v1

    float-to-int v1, v1

    .line 5
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    if-eqz v2, :cond_0

    iget-boolean v3, v2, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-eqz v3, :cond_0

    iget-object v2, v2, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-nez v2, :cond_0

    .line 6
    sget v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v1, v2

    :cond_0
    int-to-float v0, v0

    int-to-float v1, v1

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mCircleRefreshView:Lcom/dcloud/android/v4/widget/IRefreshAble;

    invoke-interface {v0, p1}, Lcom/dcloud/android/v4/widget/IRefreshAble;->onSelfDraw(Landroid/graphics/Canvas;)V

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public onInit()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-byte v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mFrameStatus:B

    return-void
.end method

.method public onLoading()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    iput-byte v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mFrameStatus:B

    return-void
.end method

.method public onPreLoading()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-byte v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mFrameStatus:B

    return-void
.end method

.method public onPreShow(Lio/dcloud/common/DHInterface/IFrameView;)V
    .locals 0

    const/4 p1, 0x3

    .line 1
    iput-byte p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mFrameStatus:B

    .line 2
    invoke-virtual {p0, p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->transition(B)V

    return-void
.end method

.method protected onResize()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->manifestBeParsed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->onResize()V

    .line 5
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mRefreshView:Lio/dcloud/common/adapter/ui/RefreshView;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/RefreshView;->onResize()V

    .line 8
    :cond_1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mBounceView:Lio/dcloud/common/adapter/ui/BounceView;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/BounceView;->onResize()V

    :cond_2
    const/4 v0, 0x0

    const-string v1, "onresize"

    .line 11
    invoke-virtual {p0, v1, v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public paint(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->paint(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mRefreshView:Lio/dcloud/common/adapter/ui/RefreshView;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->isSlipping:Z

    if-nez v0, :cond_4

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdaFrameView.paint mRefreshView paint"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "View_Visible_Path"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions_birth:Lio/dcloud/common/adapter/util/ViewOptions;

    .line 7
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions_birth:Lio/dcloud/common/adapter/util/ViewOptions;

    :cond_0
    if-nez v1, :cond_1

    .line 9
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    .line 11
    :cond_1
    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    iget v3, v1, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 12
    :goto_0
    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    iget v1, v1, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    if-eq v0, v1, :cond_3

    move v4, v1

    .line 15
    :cond_3
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mRefreshView:Lio/dcloud/common/adapter/ui/RefreshView;

    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v3, v1

    int-to-float v1, v4

    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/nineoldandroids/view/ViewHelper;->getY(Landroid/view/View;)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, p1, v3, v1}, Lio/dcloud/common/adapter/ui/RefreshView;->paint(Landroid/graphics/Canvas;II)V

    :cond_4
    return-void
.end method

.method public final removeFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public restore()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/dcloud/android/widget/AbsoluteLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dcloud/android/widget/AbsoluteLayout;

    .line 3
    invoke-virtual {v0}, Lcom/dcloud/android/widget/AbsoluteLayout;->restore()V

    :cond_0
    return-void
.end method

.method public setAccelerationType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAccelerationType:Ljava/lang/String;

    return-void
.end method

.method public setCircleRefreshView(Lcom/dcloud/android/v4/widget/IRefreshAble;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mCircleRefreshView:Lcom/dcloud/android/v4/widget/IRefreshAble;

    return-void
.end method

.method public setSnapshot(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4
    :cond_0
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setSnapshotView(Lio/dcloud/common/DHInterface/INativeView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNativeView:Lio/dcloud/common/DHInterface/INativeView;

    .line 2
    iput-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mNativeViewAction:Ljava/lang/String;

    return-void
.end method

.method public setTabItem(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->isTabItem:Z

    return-void
.end method

.method public setVisible(ZZ)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AdaFrameView.setVisible pVisible"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "       "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "View_Visible_Path"

    invoke-static {v0, p2}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    sget p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->VISIBLE:I

    goto :goto_0

    :cond_0
    sget p1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->INVISIBLE:I

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setVisibility(I)V

    return-void
.end method

.method public startAnimator(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->startAnimator(Lio/dcloud/common/adapter/ui/AdaFrameView$OnAnimationEnd;I)V

    return-void
.end method

.method public startAnimator(Lio/dcloud/common/adapter/ui/AdaFrameView$OnAnimationEnd;I)V
    .locals 4

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    if-eqz v0, :cond_4

    .line 3
    iput-object p0, v0, Lio/dcloud/common/adapter/util/AnimOptions;->mUserFrameItem:Lio/dcloud/common/adapter/ui/AdaFrameItem;

    .line 4
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v1

    iput v1, v0, Lio/dcloud/common/adapter/util/AnimOptions;->sScreenWidth:I

    .line 5
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v1

    iput v1, v0, Lio/dcloud/common/adapter/util/AnimOptions;->sScreenHeight:I

    .line 6
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/util/AnimOptions;->createAnimation()Lio/dcloud/nineoldandroids/animation/Animator;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/common/adapter/util/ViewOptions;->hasBackground()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-byte v1, v1, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 10
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object p2

    .line 11
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iput-object p2, v1, Lio/dcloud/common/adapter/util/AnimOptions;->mUserFrameItem:Lio/dcloud/common/adapter/ui/AdaFrameItem;

    .line 12
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p2

    .line 13
    invoke-virtual {v0, p2}, Lio/dcloud/nineoldandroids/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 14
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimatorListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-virtual {v0, p2}, Lio/dcloud/nineoldandroids/animation/Animator;->addListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 15
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/Animator;->start()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-direct {p0, v0, p2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->captureAnimation(Lio/dcloud/nineoldandroids/animation/Animator;I)Z

    move-result p2

    if-nez p2, :cond_3

    .line 19
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/DHImageView;->isSlipping()Z

    move-result p2

    if-nez p2, :cond_1

    .line 20
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 21
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 22
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mPageCImageView:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p2, v2}, Lio/dcloud/common/adapter/ui/DHImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 25
    :cond_1
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewImpl:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->bringToFront()V

    .line 26
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-object p2, p2, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimator:Landroid/view/animation/Animation;

    if-nez p2, :cond_2

    .line 27
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewImpl:Landroid/view/View;

    invoke-virtual {v0, p2}, Lio/dcloud/nineoldandroids/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 28
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimatorListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-virtual {v0, p2}, Lio/dcloud/nineoldandroids/animation/Animator;->addListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 29
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/Animator;->start()V

    goto :goto_0

    .line 31
    :cond_2
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p2, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 32
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewImpl:Landroid/view/View;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-object v1, v1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimator:Landroid/view/animation/Animation;

    invoke-virtual {p2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 36
    :cond_3
    :goto_0
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p2}, Lio/dcloud/nineoldandroids/animation/Animator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 44
    iget-object p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget v0, p2, Lio/dcloud/common/adapter/util/AnimOptions;->duration_show:I

    iget v1, p2, Lio/dcloud/common/adapter/util/AnimOptions;->duration_close:I

    iget p2, p2, Lio/dcloud/common/adapter/util/AnimOptions;->duration:I

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 45
    new-instance v0, Lio/dcloud/common/adapter/ui/AdaFrameView$3;

    invoke-direct {v0, p0, p1}, Lio/dcloud/common/adapter/ui/AdaFrameView$3;-><init>(Lio/dcloud/common/adapter/ui/AdaFrameView;Lio/dcloud/common/adapter/ui/AdaFrameView$OnAnimationEnd;)V

    int-to-long p1, p2

    invoke-static {v0, p1, p2, v2}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;JLjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public transition(B)V
    .locals 0

    return-void
.end method

.method public updateFrameRelViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/util/ViewOptions;->hasBackground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-boolean v1, v1, Lio/dcloud/common/adapter/util/ViewRect;->allowUpdate:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/dcloud/common/adapter/util/ViewOptions;->updateViewData(Lio/dcloud/common/adapter/util/ViewRect;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    invoke-virtual {v1, p1}, Lio/dcloud/common/adapter/util/ViewOptions;->updateViewData(Lio/dcloud/common/adapter/util/ViewRect;)V

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mRefreshView:Lio/dcloud/common/adapter/ui/RefreshView;

    if-eqz p1, :cond_1

    .line 10
    invoke-interface {p0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->reInit()V

    .line 13
    :cond_1
    :goto_0
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    iget v1, p1, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    .line 14
    iget v2, p1, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    .line 15
    iget-boolean v3, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-eqz v3, :cond_3

    .line 16
    invoke-virtual {p1}, Lio/dcloud/common/adapter/util/ViewRect;->getParentViewRect()Lio/dcloud/common/adapter/util/ViewRect;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 17
    iget-boolean p1, p1, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    iget-boolean p1, p1, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-nez p1, :cond_3

    .line 18
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/adapter/util/ViewRect;->isBottomAbsolute()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 19
    sget p1, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    sub-int/2addr v2, p1

    .line 21
    :cond_2
    sget p1, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v1, p1

    .line 24
    :cond_3
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewImpl:Landroid/view/View;

    iget-object v3, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    iget v4, v3, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    iget v3, v3, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    invoke-static {p1, v4, v1, v3, v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->setViewLayoutParams(Landroid/view/View;IIII)V

    .line 25
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->changeWebParentViewRect()V

    if-eqz v0, :cond_4

    .line 32
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method
