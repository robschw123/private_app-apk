.class public Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
.super Ljava/lang/Object;
.source "DCGenericDraweeHierarchyBuilder.java"


# static fields
.field public static final DEFAULT_ACTUAL_IMAGE_SCALE_TYPE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field public static final DEFAULT_FADE_DURATION:I = 0x12c

.field public static final DEFAULT_SCALE_TYPE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# instance fields
.field private mActualImageColorFilter:Landroid/graphics/ColorFilter;

.field private mActualImageFocusPoint:Landroid/graphics/PointF;

.field private mActualImageMatrix:Landroid/graphics/Matrix;

.field private mActualImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mDesiredAspectRatio:F

.field private mFadeDuration:I

.field private mFailureImage:Landroid/graphics/drawable/Drawable;

.field private mFailureImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field private mOverlays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaceholderImage:Landroid/graphics/drawable/Drawable;

.field private mPlaceholderImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field private mPressedStateOverlay:Landroid/graphics/drawable/Drawable;

.field private mProgressBarImage:Landroid/graphics/drawable/Drawable;

.field private mProgressBarImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field private mResources:Landroid/content/res/Resources;

.field private mRetryImage:Landroid/graphics/drawable/Drawable;

.field private mRetryImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field private mRoundingParams:Lcom/facebook/drawee/generic/RoundingParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_INSIDE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    sput-object v0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->DEFAULT_SCALE_TYPE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 22
    sget-object v0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    sput-object v0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->DEFAULT_ACTUAL_IMAGE_SCALE_TYPE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resources"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mResources:Landroid/content/res/Resources;

    .line 57
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    const/16 v0, 0x12c

    .line 68
    iput v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mFadeDuration:I

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mDesiredAspectRatio:F

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mPlaceholderImage:Landroid/graphics/drawable/Drawable;

    .line 73
    sget-object v1, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->DEFAULT_SCALE_TYPE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iput-object v1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mPlaceholderImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 75
    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mRetryImage:Landroid/graphics/drawable/Drawable;

    .line 76
    iput-object v1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mRetryImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 78
    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mFailureImage:Landroid/graphics/drawable/Drawable;

    .line 79
    iput-object v1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mFailureImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 81
    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mProgressBarImage:Landroid/graphics/drawable/Drawable;

    .line 82
    iput-object v1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mProgressBarImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 84
    sget-object v1, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->DEFAULT_ACTUAL_IMAGE_SCALE_TYPE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iput-object v1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mActualImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 85
    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mActualImageMatrix:Landroid/graphics/Matrix;

    .line 86
    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mActualImageFocusPoint:Landroid/graphics/PointF;

    .line 87
    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mActualImageColorFilter:Landroid/graphics/ColorFilter;

    .line 89
    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 90
    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mOverlays:Ljava/util/List;

    .line 91
    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mPressedStateOverlay:Landroid/graphics/drawable/Drawable;

    .line 93
    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mRoundingParams:Lcom/facebook/drawee/generic/RoundingParams;

    return-void
.end method

.method public static newInstance(Landroid/content/res/Resources;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resources"
        }
    .end annotation

    .line 61
    new-instance v0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method private validate()V
    .locals 2

    .line 619
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mOverlays:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 620
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 621
    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;
    .locals 1

    .line 630
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->validate()V

    .line 631
    new-instance v0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;-><init>(Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;)V

    return-object v0
.end method

.method public getActualImageColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 518
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mActualImageColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getActualImageFocusPoint()Landroid/graphics/PointF;
    .locals 1

    .line 500
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mActualImageFocusPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getActualImageScaleType()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .locals 1

    .line 477
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mActualImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 536
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDesiredAspectRatio()F
    .locals 1

    .line 153
    iget v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mDesiredAspectRatio:F

    return v0
.end method

.method public getFadeDuration()I
    .locals 1

    .line 132
    iget v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mFadeDuration:I

    return v0
.end method

.method public getFailureImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 334
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mFailureImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getFailureImageScaleType()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .locals 1

    .line 353
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mFailureImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method

.method public getOverlays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 572
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mOverlays:Ljava/util/List;

    return-object v0
.end method

.method public getPlaceholderImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 182
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mPlaceholderImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPlaceholderImageScaleType()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .locals 1

    .line 201
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mPlaceholderImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method

.method public getPressedStateOverlay()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 596
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mPressedStateOverlay:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getProgressBarImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 410
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mProgressBarImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getProgressBarImageScaleType()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .locals 1

    .line 429
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mProgressBarImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 112
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getRetryImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 258
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mRetryImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getRetryImageScaleType()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .locals 1

    .line 277
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mRetryImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method

.method public getRoundingParams()Lcom/facebook/drawee/generic/RoundingParams;
    .locals 1

    .line 615
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mRoundingParams:Lcom/facebook/drawee/generic/RoundingParams;

    return-object v0
.end method

.method public reset()Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 0

    .line 102
    invoke-direct {p0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->init()V

    return-object p0
.end method

.method public setActualImageColorFilter(Landroid/graphics/ColorFilter;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorFilter"
        }
    .end annotation

    .line 510
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mActualImageColorFilter:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method public setActualImageFocusPoint(Landroid/graphics/PointF;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusPoint"
        }
    .end annotation

    .line 492
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mActualImageFocusPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method public setActualImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actualImageScaleType"
        }
    .end annotation

    .line 470
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mActualImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    const/4 p1, 0x0

    .line 471
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mActualImageMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "background"
        }
    .end annotation

    .line 528
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setDesiredAspectRatio(F)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "desiredAspectRatio"
        }
    .end annotation

    .line 145
    iput p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mDesiredAspectRatio:F

    return-object p0
.end method

.method public setFadeDuration(I)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fadeDuration"
        }
    .end annotation

    .line 124
    iput p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mFadeDuration:I

    return-object p0
.end method

.method public setFailureImage(I)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mFailureImage:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setFailureImage(ILcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceId",
            "failureImageScaleType"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mFailureImage:Landroid/graphics/drawable/Drawable;

    .line 380
    iput-object p2, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mFailureImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0
.end method

.method public setFailureImage(Landroid/graphics/drawable/Drawable;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failureDrawable"
        }
    .end annotation

    .line 315
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mFailureImage:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setFailureImage(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "failureDrawable",
            "failureImageScaleType"
        }
    .end annotation

    .line 365
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mFailureImage:Landroid/graphics/drawable/Drawable;

    .line 366
    iput-object p2, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mFailureImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0
.end method

.method public setFailureImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failureImageScaleType"
        }
    .end annotation

    .line 347
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mFailureImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0
.end method

.method public setOverlay(Landroid/graphics/drawable/Drawable;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "overlay"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 561
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mOverlays:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 563
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mOverlays:Ljava/util/List;

    :goto_0
    return-object p0
.end method

.method public setOverlays(Ljava/util/List;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "overlays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;"
        }
    .end annotation

    .line 549
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mOverlays:Ljava/util/List;

    return-object p0
.end method

.method public setPlaceholderImage(I)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mPlaceholderImage:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setPlaceholderImage(ILcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceId",
            "placeholderImageScaleType"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mPlaceholderImage:Landroid/graphics/drawable/Drawable;

    .line 228
    iput-object p2, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mPlaceholderImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0
.end method

.method public setPlaceholderImage(Landroid/graphics/drawable/Drawable;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placeholderDrawable"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mPlaceholderImage:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setPlaceholderImage(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "placeholderDrawable",
            "placeholderImageScaleType"
        }
    .end annotation

    .line 213
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mPlaceholderImage:Landroid/graphics/drawable/Drawable;

    .line 214
    iput-object p2, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mPlaceholderImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0
.end method

.method public setPlaceholderImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placeholderImageScaleType"
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mPlaceholderImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0
.end method

.method public setPressedStateOverlay(Landroid/graphics/drawable/Drawable;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 583
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mPressedStateOverlay:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 585
    :cond_0
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    .line 586
    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 587
    iput-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mPressedStateOverlay:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object p0
.end method

.method public setProgressBarImage(I)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mProgressBarImage:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setProgressBarImage(ILcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceId",
            "progressBarImageScaleType"
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mProgressBarImage:Landroid/graphics/drawable/Drawable;

    .line 456
    iput-object p2, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mProgressBarImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0
.end method

.method public setProgressBarImage(Landroid/graphics/drawable/Drawable;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progressBarDrawable"
        }
    .end annotation

    .line 391
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mProgressBarImage:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setProgressBarImage(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "progressBarDrawable",
            "progressBarImageScaleType"
        }
    .end annotation

    .line 441
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mProgressBarImage:Landroid/graphics/drawable/Drawable;

    .line 442
    iput-object p2, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mProgressBarImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0
.end method

.method public setProgressBarImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progressBarImageScaleType"
        }
    .end annotation

    .line 423
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mProgressBarImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0
.end method

.method public setRetryImage(I)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mRetryImage:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setRetryImage(ILcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resourceId",
            "retryImageScaleType"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mRetryImage:Landroid/graphics/drawable/Drawable;

    .line 304
    iput-object p2, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mRetryImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0
.end method

.method public setRetryImage(Landroid/graphics/drawable/Drawable;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "retryDrawable"
        }
    .end annotation

    .line 239
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mRetryImage:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setRetryImage(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "retryDrawable",
            "retryImageScaleType"
        }
    .end annotation

    .line 289
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mRetryImage:Landroid/graphics/drawable/Drawable;

    .line 290
    iput-object p2, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mRetryImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0
.end method

.method public setRetryImageScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "retryImageScaleType"
        }
    .end annotation

    .line 271
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mRetryImageScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0
.end method

.method public setRoundingParams(Lcom/facebook/drawee/generic/RoundingParams;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roundingParams"
        }
    .end annotation

    .line 606
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->mRoundingParams:Lcom/facebook/drawee/generic/RoundingParams;

    return-object p0
.end method
