.class Lio/dcloud/feature/weex/extend/DCWXSlider$2;
.super Ljava/lang/Object;
.source "DCWXSlider.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCWXSlider;->hackTwoItemsInfiniteScroll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

.field final synthetic val$gestureDetector:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCWXSlider;Landroid/view/GestureDetector;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$gestureDetector"
        }
    .end annotation

    .line 666
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$2;->this$0:Lio/dcloud/feature/weex/extend/DCWXSlider;

    iput-object p2, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$2;->val$gestureDetector:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    .line 669
    iget-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXSlider$2;->val$gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
