.class Lcom/taobao/weex/ui/component/WXSlider$FlingGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WXSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlingGestureListener"
.end annotation


# static fields
.field private static final SWIPE_MAX_OFF_PATH:I

.field private static final SWIPE_MIN_DISTANCE:I

.field private static final SWIPE_THRESHOLD_VELOCITY:I


# instance fields
.field private pagerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/weex/ui/view/WXCircleViewPager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x42480000    # 50.0f

    .line 576
    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->dip2px(F)I

    move-result v0

    sput v0, Lcom/taobao/weex/ui/component/WXSlider$FlingGestureListener;->SWIPE_MIN_DISTANCE:I

    const/high16 v0, 0x437a0000    # 250.0f

    .line 577
    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->dip2px(F)I

    move-result v0

    sput v0, Lcom/taobao/weex/ui/component/WXSlider$FlingGestureListener;->SWIPE_MAX_OFF_PATH:I

    const/high16 v0, 0x43480000    # 200.0f

    .line 578
    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->dip2px(F)I

    move-result v0

    sput v0, Lcom/taobao/weex/ui/component/WXSlider$FlingGestureListener;->SWIPE_THRESHOLD_VELOCITY:I

    return-void
.end method

.method constructor <init>(Lcom/taobao/weex/ui/view/WXCircleViewPager;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pager"
        }
    .end annotation

    .line 581
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 582
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXSlider$FlingGestureListener;->pagerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e1",
            "e2",
            "velocityX",
            "velocityY"
        }
    .end annotation

    .line 587
    iget-object p4, p0, Lcom/taobao/weex/ui/component/WXSlider$FlingGestureListener;->pagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/taobao/weex/ui/view/WXCircleViewPager;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return v0

    .line 593
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/taobao/weex/ui/component/WXSlider$FlingGestureListener;->SWIPE_MAX_OFF_PATH:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    return v0

    .line 597
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    sget v2, Lcom/taobao/weex/ui/component/WXSlider$FlingGestureListener;->SWIPE_MIN_DISTANCE:I

    int-to-float v3, v2

    const/4 v4, 0x1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    .line 598
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v3, Lcom/taobao/weex/ui/component/WXSlider$FlingGestureListener;->SWIPE_THRESHOLD_VELOCITY:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    .line 599
    invoke-virtual {p4}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superGetCurrentItem()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 601
    invoke-virtual {p4, v0, v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setCurrentItem(IZ)V

    return v4

    .line 603
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    int-to-float p1, v2

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3

    .line 604
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget p2, Lcom/taobao/weex/ui/component/WXSlider$FlingGestureListener;->SWIPE_THRESHOLD_VELOCITY:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    .line 605
    invoke-virtual {p4}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->superGetCurrentItem()I

    move-result p1

    if-nez p1, :cond_3

    .line 607
    invoke-virtual {p4, v4, v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setCurrentItem(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    :cond_3
    return v0
.end method
