.class Lcom/dcloud/android/widget/photoview/CustomGestureDetector$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dcloud/android/widget/photoview/CustomGestureDetector;-><init>(Landroid/content/Context;Lcom/dcloud/android/widget/photoview/OnGestureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dcloud/android/widget/photoview/CustomGestureDetector;


# direct methods
.method constructor <init>(Lcom/dcloud/android/widget/photoview/CustomGestureDetector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector$1;->this$0:Lcom/dcloud/android/widget/photoview/CustomGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 3
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector$1;->this$0:Lcom/dcloud/android/widget/photoview/CustomGestureDetector;

    invoke-static {v1}, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->access$000(Lcom/dcloud/android/widget/photoview/CustomGestureDetector;)Lcom/dcloud/android/widget/photoview/OnGestureListener;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    .line 8
    invoke-interface {v1, v0, v2, p1}, Lcom/dcloud/android/widget/photoview/OnGestureListener;->onScale(FFF)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method
