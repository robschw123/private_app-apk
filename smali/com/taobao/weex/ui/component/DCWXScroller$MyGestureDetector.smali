.class Lcom/taobao/weex/ui/component/DCWXScroller$MyGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DCWXScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/DCWXScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyGestureDetector"
.end annotation


# instance fields
.field private final scrollView:Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

.field final synthetic this$0:Lcom/taobao/weex/ui/component/DCWXScroller;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/DCWXScroller;Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "horizontalScrollView"
        }
    .end annotation

    .line 1380
    iput-object p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller$MyGestureDetector;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 1381
    iput-object p2, p0, Lcom/taobao/weex/ui/component/DCWXScroller$MyGestureDetector;->scrollView:Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    return-void
.end method


# virtual methods
.method public getScrollView()Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;
    .locals 1

    .line 1375
    iget-object v0, p0, Lcom/taobao/weex/ui/component/DCWXScroller$MyGestureDetector;->scrollView:Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    return-object v0
.end method

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

    .line 1386
    iget-object p4, p0, Lcom/taobao/weex/ui/component/DCWXScroller$MyGestureDetector;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-static {p4}, Lcom/taobao/weex/ui/component/DCWXScroller;->access$1100(Lcom/taobao/weex/ui/component/DCWXScroller;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    const/4 v0, 0x0

    .line 1389
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x43960000    # 300.0f

    const/high16 v3, 0x40a00000    # 5.0f

    const/4 v4, 0x1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 1390
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller$MyGestureDetector;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/DCWXScroller;->access$400(Lcom/taobao/weex/ui/component/DCWXScroller;)I

    move-result p1

    .line 1391
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXScroller$MyGestureDetector;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-static {p2}, Lcom/taobao/weex/ui/component/DCWXScroller;->access$600(Lcom/taobao/weex/ui/component/DCWXScroller;)I

    move-result p3

    sub-int/2addr p4, v4

    if-ge p3, p4, :cond_0

    iget-object p3, p0, Lcom/taobao/weex/ui/component/DCWXScroller$MyGestureDetector;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-static {p3}, Lcom/taobao/weex/ui/component/DCWXScroller;->access$600(Lcom/taobao/weex/ui/component/DCWXScroller;)I

    move-result p3

    add-int/lit8 p4, p3, 0x1

    :cond_0
    invoke-static {p2, p4}, Lcom/taobao/weex/ui/component/DCWXScroller;->access$602(Lcom/taobao/weex/ui/component/DCWXScroller;I)I

    .line 1392
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXScroller$MyGestureDetector;->scrollView:Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    iget-object p3, p0, Lcom/taobao/weex/ui/component/DCWXScroller$MyGestureDetector;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-static {p3}, Lcom/taobao/weex/ui/component/DCWXScroller;->access$600(Lcom/taobao/weex/ui/component/DCWXScroller;)I

    move-result p3

    mul-int p3, p3, p1

    invoke-virtual {p2, p3, v0}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->smoothScrollTo(II)V

    return v4

    .line 1396
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    cmpl-float p1, p2, v3

    if-lez p1, :cond_3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    .line 1397
    iget-object p1, p0, Lcom/taobao/weex/ui/component/DCWXScroller$MyGestureDetector;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/DCWXScroller;->access$400(Lcom/taobao/weex/ui/component/DCWXScroller;)I

    move-result p1

    .line 1398
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXScroller$MyGestureDetector;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-static {p2}, Lcom/taobao/weex/ui/component/DCWXScroller;->access$600(Lcom/taobao/weex/ui/component/DCWXScroller;)I

    move-result p3

    if-lez p3, :cond_2

    iget-object p3, p0, Lcom/taobao/weex/ui/component/DCWXScroller$MyGestureDetector;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-static {p3}, Lcom/taobao/weex/ui/component/DCWXScroller;->access$600(Lcom/taobao/weex/ui/component/DCWXScroller;)I

    move-result p3

    sub-int/2addr p3, v4

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    invoke-static {p2, p3}, Lcom/taobao/weex/ui/component/DCWXScroller;->access$602(Lcom/taobao/weex/ui/component/DCWXScroller;I)I

    .line 1399
    iget-object p2, p0, Lcom/taobao/weex/ui/component/DCWXScroller$MyGestureDetector;->scrollView:Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;

    iget-object p3, p0, Lcom/taobao/weex/ui/component/DCWXScroller$MyGestureDetector;->this$0:Lcom/taobao/weex/ui/component/DCWXScroller;

    invoke-static {p3}, Lcom/taobao/weex/ui/component/DCWXScroller;->access$600(Lcom/taobao/weex/ui/component/DCWXScroller;)I

    move-result p3

    mul-int p3, p3, p1

    invoke-virtual {p2, p3, v0}, Lio/dcloud/feature/weex_scroller/view/DCWXHorizontalScrollView;->smoothScrollTo(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p1

    .line 1403
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "There was an error processing the Fling event:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_3
    return v0
.end method
