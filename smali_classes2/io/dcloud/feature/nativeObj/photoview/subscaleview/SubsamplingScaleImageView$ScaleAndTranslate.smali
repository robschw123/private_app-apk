.class Lio/dcloud/feature/nativeObj/photoview/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/nativeObj/photoview/subscaleview/SubsamplingScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleAndTranslate"
.end annotation


# instance fields
.field private scale:F

.field private final vTranslate:Landroid/graphics/PointF;


# direct methods
.method private constructor <init>(FLandroid/graphics/PointF;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;->scale:F

    .line 4
    iput-object p2, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;->vTranslate:Landroid/graphics/PointF;

    return-void
.end method

.method synthetic constructor <init>(FLandroid/graphics/PointF;Lio/dcloud/feature/nativeObj/photoview/subscaleview/SubsamplingScaleImageView$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/nativeObj/photoview/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;-><init>(FLandroid/graphics/PointF;)V

    return-void
.end method

.method static synthetic access$4700(Lio/dcloud/feature/nativeObj/photoview/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;)F
    .locals 0

    .line 1
    iget p0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;->scale:F

    return p0
.end method

.method static synthetic access$4702(Lio/dcloud/feature/nativeObj/photoview/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;F)F
    .locals 0

    .line 1
    iput p1, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;->scale:F

    return p1
.end method

.method static synthetic access$4800(Lio/dcloud/feature/nativeObj/photoview/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;)Landroid/graphics/PointF;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/feature/nativeObj/photoview/subscaleview/SubsamplingScaleImageView$ScaleAndTranslate;->vTranslate:Landroid/graphics/PointF;

    return-object p0
.end method
