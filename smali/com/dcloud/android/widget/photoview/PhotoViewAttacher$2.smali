.class Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;


# direct methods
.method constructor <init>(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getScale()F

    move-result v1

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 5
    iget-object v3, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    .line 6
    iget-object v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v3

    invoke-virtual {v1, v3, v2, p1, v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v3, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v3

    invoke-virtual {v1, v3, v2, p1, v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getMinimumScale()F

    move-result v3

    invoke-virtual {v1, v3, v2, p1, v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->setScale(FFFZ)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$500(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$500(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$100(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    .line 13
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    .line 14
    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v2

    .line 15
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr p1, v0

    .line 17
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$600(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Lcom/dcloud/android/widget/photoview/OnPhotoTapListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$600(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Lcom/dcloud/android/widget/photoview/OnPhotoTapListener;

    move-result-object v0

    iget-object v2, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {v2}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$100(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-interface {v0, v2, v1, p1}, Lcom/dcloud/android/widget/photoview/OnPhotoTapListener;->onPhotoTap(Landroid/widget/ImageView;FF)V

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$700(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Lcom/dcloud/android/widget/photoview/OnOutsidePhotoTapListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 23
    iget-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$700(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Lcom/dcloud/android/widget/photoview/OnOutsidePhotoTapListener;

    move-result-object p1

    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$100(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/dcloud/android/widget/photoview/OnOutsidePhotoTapListener;->onOutsidePhotoTap(Landroid/widget/ImageView;)V

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
