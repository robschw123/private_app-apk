.class Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


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
    iput-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$1;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$1;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$200(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Lcom/dcloud/android/widget/photoview/OnSingleFlingListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$1;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    invoke-static {}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$300()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    return v1

    .line 6
    :cond_0
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$400()I

    move-result v2

    if-gt v0, v2, :cond_2

    .line 7
    invoke-static {p2}, Landroidx/core/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$400()I

    move-result v2

    if-le v0, v2, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$1;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$200(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Lcom/dcloud/android/widget/photoview/OnSingleFlingListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/dcloud/android/widget/photoview/OnSingleFlingListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$1;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$000(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$1;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$000(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$1;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$100(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_0
    return-void
.end method
