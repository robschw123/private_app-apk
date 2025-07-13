.class public Lcom/taobao/weex/ui/view/gesture/WXGesture;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WXGesture.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/view/gesture/WXGesture$GestureHandler;
    }
.end annotation


# static fields
.field private static final CUR_EVENT:I = -0x1

.field public static final DOWN:Ljava/lang/String; = "down"

.field public static final END:Ljava/lang/String; = "end"

.field public static final LEFT:Ljava/lang/String; = "left"

.field public static final MOVE:Ljava/lang/String; = "move"

.field public static final RIGHT:Ljava/lang/String; = "right"

.field public static final START:Ljava/lang/String; = "start"

.field private static final TAG:Ljava/lang/String; = "Gesture"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final UP:Ljava/lang/String; = "up"


# instance fields
.field private component:Lcom/taobao/weex/ui/component/WXComponent;

.field private globalEventOffset:Landroid/graphics/Point;

.field private globalOffset:Landroid/graphics/Point;

.field private globalRect:Landroid/graphics/Rect;

.field private locEventOffset:Landroid/graphics/PointF;

.field private locLeftTop:Landroid/graphics/PointF;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsPreventMoveEvent:Z

.field private mIsTouchEventConsumed:Z

.field private mParentOrientation:I

.field private mPendingPan:Lcom/taobao/weex/ui/view/gesture/WXGestureType;

.field private final mTouchListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View$OnTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private panDownTime:J

.field private requestDisallowInterceptTouchEvent:Z

.field private shouldBubbleCallRemainTimes:I

.field private shouldBubbleInterval:I

.field private shouldBubbleResult:Z

.field private swipeDownTime:J


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "wxComponent",
            "context"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const-wide/16 v0, -0x1

    .line 77
    iput-wide v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->swipeDownTime:J

    .line 78
    iput-wide v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->panDownTime:J

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mPendingPan:Lcom/taobao/weex/ui/view/gesture/WXGestureType;

    const/4 v0, -0x1

    .line 80
    iput v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mParentOrientation:I

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mIsPreventMoveEvent:Z

    .line 82
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mIsTouchEventConsumed:Z

    .line 84
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->requestDisallowInterceptTouchEvent:Z

    const/4 v1, 0x1

    .line 86
    iput-boolean v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleResult:Z

    .line 87
    iput v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleInterval:I

    .line 88
    iput v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleCallRemainTimes:I

    .line 90
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mTouchListeners:Ljava/util/List;

    .line 93
    iput-object p1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    .line 94
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->globalRect:Landroid/graphics/Rect;

    .line 95
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->globalOffset:Landroid/graphics/Point;

    .line 96
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->globalEventOffset:Landroid/graphics/Point;

    .line 97
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->locEventOffset:Landroid/graphics/PointF;

    .line 98
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->locLeftTop:Landroid/graphics/PointF;

    .line 99
    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/taobao/weex/ui/view/gesture/WXGesture$GestureHandler;

    invoke-direct {v3}, Lcom/taobao/weex/ui/view/gesture/WXGesture$GestureHandler;-><init>()V

    invoke-direct {v2, p2, p0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mGestureDetector:Landroid/view/GestureDetector;

    .line 100
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 102
    invoke-interface {p2}, Lcom/taobao/weex/ui/component/Scrollable;->getOrientation()I

    move-result p2

    iput p2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mParentOrientation:I

    .line 104
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p2

    const-string v2, "shouldStopPropagationInitResult"

    invoke-virtual {p2, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleResult:Z

    .line 105
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    const-string p2, "shouldStopPropagationInterval"

    invoke-virtual {p1, p2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXUtils;->getNumberInt(Ljava/lang/Object;I)I

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleInterval:I

    return-void
.end method

.method private containsSimplePan()Z
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    sget-object v1, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->PAN_START:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    sget-object v1, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->PAN_MOVE:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    .line 436
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    sget-object v1, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->PAN_END:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    .line 437
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z

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

.method private createFireEventParam(Landroid/view/MotionEvent;ILjava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "motionEvent",
            "pos",
            "state"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 400
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 401
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 402
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 403
    invoke-direct {p0, p1, p2, v1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->createJSONObject(Landroid/view/MotionEvent;II)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 405
    :cond_0
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->isPointerNumChanged(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 406
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    const/4 v1, -0x1

    .line 407
    invoke-direct {p0, p1, v1, p2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->createJSONObject(Landroid/view/MotionEvent;II)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 409
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "changedTouches"

    .line 410
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    const-string p2, "state"

    .line 412
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p1
.end method

.method private createJSONObject(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Lcom/alibaba/fastjson/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "screenXY",
            "pageXY",
            "pointerId"
        }
    .end annotation

    .line 475
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 476
    iget v1, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "pageX"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string v1, "pageY"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget p2, p1, Landroid/graphics/PointF;->x:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string v1, "screenX"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "screenY"

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "identifier"

    invoke-virtual {v0, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private createJSONObject(Landroid/view/MotionEvent;II)Lcom/alibaba/fastjson/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "motionEvent",
            "pos",
            "pointerIndex"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 451
    invoke-direct {p0, p1, p3}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->getEventLocInPageCoordinate(Landroid/view/MotionEvent;I)Landroid/graphics/PointF;

    move-result-object p2

    .line 452
    invoke-direct {p0, p1, p3}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->getEventLocInScreenCoordinate(Landroid/view/MotionEvent;I)Landroid/graphics/PointF;

    move-result-object v0

    goto :goto_0

    .line 454
    :cond_0
    invoke-direct {p0, p1, p3, p2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->getEventLocInPageCoordinate(Landroid/view/MotionEvent;II)Landroid/graphics/PointF;

    move-result-object v0

    .line 455
    invoke-direct {p0, p1, p3, p2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->getEventLocInScreenCoordinate(Landroid/view/MotionEvent;II)Landroid/graphics/PointF;

    move-result-object p2

    move-object v1, v0

    move-object v0, p2

    move-object p2, v1

    .line 457
    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p3

    int-to-float p3, p3

    invoke-direct {p0, v0, p2, p3}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->createJSONObject(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    .line 458
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result p3

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p3, p3, v0

    if-gez p3, :cond_1

    .line 460
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p3, "force"

    invoke-virtual {p2, p3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p2
.end method

.method private createMultipleFireEventParam(Landroid/view/MotionEvent;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "motionEvent",
            "state"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, -0x1

    .line 368
    invoke-direct {p0, p1, v1, p2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->createFireEventParam(Landroid/view/MotionEvent;ILjava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private finishDisallowInterceptTouchEvent(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private getEventLocInPageCoordinate(FF)Landroid/graphics/PointF;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventX",
            "eventY"
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->locEventOffset:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 570
    iget-object p1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->locLeftTop:Landroid/graphics/PointF;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 571
    iget-object p1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    iget-object p2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->locLeftTop:Landroid/graphics/PointF;

    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->computeVisiblePointInViewCoordinate(Landroid/graphics/PointF;)V

    .line 572
    iget-object p1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->locEventOffset:Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->locLeftTop:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->locLeftTop:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, v0}, Landroid/graphics/PointF;->offset(FF)V

    .line 573
    new-instance p1, Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->locEventOffset:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result p2

    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->locEventOffset:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    .line 574
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result v0

    invoke-direct {p1, p2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method private getEventLocInPageCoordinate(Landroid/view/MotionEvent;I)Landroid/graphics/PointF;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "motionEvent",
            "pointerIndex"
        }
    .end annotation

    const/4 v0, -0x1

    .line 535
    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->getEventLocInPageCoordinate(Landroid/view/MotionEvent;II)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method private getEventLocInPageCoordinate(Landroid/view/MotionEvent;II)Landroid/graphics/PointF;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "motionEvent",
            "pointerIndex",
            "position"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 551
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p3

    .line 552
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    goto :goto_0

    .line 554
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v0

    .line 555
    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result p1

    move p3, v0

    .line 557
    :goto_0
    invoke-direct {p0, p3, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->getEventLocInPageCoordinate(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method private getEventLocInScreenCoordinate(FF)Landroid/graphics/PointF;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventX",
            "eventY"
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->globalRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 523
    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->globalOffset:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 524
    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->globalEventOffset:Landroid/graphics/Point;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 525
    iget-object p1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->globalRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->globalOffset:Landroid/graphics/Point;

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 526
    iget-object p1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->globalEventOffset:Landroid/graphics/Point;

    iget-object p2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->globalOffset:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->globalOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Point;->offset(II)V

    .line 527
    new-instance p1, Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->globalEventOffset:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result p2

    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->globalEventOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    .line 528
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getWebPxByWidth(FF)F

    move-result v0

    invoke-direct {p1, p2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method private getEventLocInScreenCoordinate(Landroid/view/MotionEvent;I)Landroid/graphics/PointF;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "motionEvent",
            "pointerIndex"
        }
    .end annotation

    const/4 v0, -0x1

    .line 488
    invoke-direct {p0, p1, p2, v0}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->getEventLocInScreenCoordinate(Landroid/view/MotionEvent;II)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method private getEventLocInScreenCoordinate(Landroid/view/MotionEvent;II)Landroid/graphics/PointF;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "motionEvent",
            "pointerIndex",
            "position"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 504
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p3

    .line 505
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    goto :goto_0

    .line 507
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v0

    .line 508
    invoke-virtual {p1, p2, p3}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result p1

    move p3, v0

    .line 510
    :goto_0
    invoke-direct {p0, p3, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->getEventLocInScreenCoordinate(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method private getHistoricalEvents(Landroid/view/MotionEvent;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionEvent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 382
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 384
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v2, 0x0

    .line 385
    invoke-direct {p0, p1, v1, v2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->createFireEventParam(Landroid/view/MotionEvent;ILjava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 386
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getPanEventAction(Landroid/view/MotionEvent;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    const-string v1, "end"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, "unknown"

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    const-string p1, "move"

    return-object p1

    :cond_2
    return-object v1

    :cond_3
    const-string p1, "start"

    return-object p1
.end method

.method private handleMotionEvent(Lcom/taobao/weex/ui/view/gesture/WXGestureType;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "WXGestureType",
            "motionEvent"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHover()Lio/dcloud/weex/ViewHover;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHover()Lio/dcloud/weex/ViewHover;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/dcloud/weex/ViewHover;->handleMotionEvent(Lcom/taobao/weex/ui/view/gesture/WXGestureType;Landroid/view/MotionEvent;)V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 349
    invoke-direct {p0, p2, v0}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->createMultipleFireEventParam(Landroid/view/MotionEvent;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 350
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 351
    iget-object v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private handlePanMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionEvent"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mPendingPan:Lcom/taobao/weex/ui/view/gesture/WXGestureType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 315
    :cond_0
    sget-object v2, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->HORIZONTALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mPendingPan:Lcom/taobao/weex/ui/view/gesture/WXGestureType;

    sget-object v2, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->VERTICALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v3

    goto :goto_1

    .line 316
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->getPanEventAction(Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object v0

    .line 320
    :goto_1
    iget-object v2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    iget-object v4, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mPendingPan:Lcom/taobao/weex/ui/view/gesture/WXGestureType;

    invoke-virtual {v2, v4}, Lcom/taobao/weex/ui/component/WXComponent;->containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 321
    iget-boolean v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mIsPreventMoveEvent:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const-string v1, "move"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    .line 324
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->createMultipleFireEventParam(Landroid/view/MotionEvent;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 325
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 326
    iget-object v4, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    iget-object v5, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mPendingPan:Lcom/taobao/weex/ui/view/gesture/WXGestureType;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 329
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 330
    :cond_5
    iput-object v3, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mPendingPan:Lcom/taobao/weex/ui/view/gesture/WXGestureType;

    :cond_6
    return v2

    :cond_7
    return v1
.end method

.method private hasSameOrientationWithParent()Z
    .locals 3

    .line 117
    iget v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mParentOrientation:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    sget-object v2, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->HORIZONTALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/component/WXComponent;->containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mParentOrientation:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    sget-object v2, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->VERTICALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    .line 118
    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/component/WXComponent;->containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public static hasStopPropagation(Lcom/taobao/weex/ui/component/WXComponent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 149
    invoke-virtual {p0}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    goto :goto_1

    .line 152
    :cond_1
    invoke-virtual {p0, v2}, Lcom/taobao/weex/dom/WXEvent;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 153
    invoke-static {v3}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->isStopPropagation(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method private isParentScrollable()Z
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 112
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 113
    invoke-interface {v0}, Lcom/taobao/weex/ui/component/Scrollable;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private isPointerNumChanged(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    .line 425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    .line 427
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isStopPropagation(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const-string v0, "stopPropagation"

    .line 139
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "stoppropagation"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private shouldBubbleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {v0}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->hasStopPropagation(Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 165
    iget v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleInterval:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleCallRemainTimes:I

    if-lez v0, :cond_0

    sub-int/2addr v0, v1

    .line 166
    iput v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleCallRemainTimes:I

    .line 167
    iget-boolean p1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleResult:Z

    return p1

    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 169
    invoke-direct {p0, p1, v0, v2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->createFireEventParam(Landroid/view/MotionEvent;ILjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "type"

    const-string v3, "touch"

    .line 170
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const-string v3, "action"

    if-nez v2, :cond_1

    const-string p1, "start"

    .line 172
    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 173
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "move"

    .line 177
    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "end"

    .line 175
    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :goto_1
    iget-object p1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p1

    const-string v2, "stopPropagation"

    invoke-virtual {p1, v2}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string v2, "stoppropagation"

    .line 184
    :cond_4
    iget-object p1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p1, v2, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEventWait(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/weex/bridge/EventResult;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Lcom/taobao/weex/bridge/EventResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/taobao/weex/bridge/EventResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 186
    invoke-virtual {p1}, Lcom/taobao/weex/bridge/EventResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleResult:Z

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v1

    .line 187
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleResult:Z

    .line 189
    :cond_5
    iget p1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleInterval:I

    iput p1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleCallRemainTimes:I

    .line 190
    iget-boolean p1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleResult:Z

    return p1

    :cond_6
    return v1
.end method


# virtual methods
.method public addOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mTouchListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public isRequestDisallowInterceptTouchEvent()Z
    .locals 1

    .line 667
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->requestDisallowInterceptTouchEvent:Z

    return v0
.end method

.method public isTouchEventConsumedByAdvancedGesture()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mIsTouchEventConsumed:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    sget-object v1, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->LONG_PRESS:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 590
    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->createMultipleFireEventParam(Landroid/view/MotionEvent;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 591
    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    .line 592
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->LONG_PRESS:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    .line 593
    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->toString()Ljava/lang/String;

    move-result-object v2

    .line 594
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 591
    invoke-virtual {v0, v1, v2, p1}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 595
    iput-boolean v4, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mIsTouchEventConsumed:Z

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
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
            "distanceX",
            "distanceY"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    if-nez p2, :cond_0

    goto/16 :goto_7

    .line 608
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 609
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 612
    sget-object v1, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->HORIZONTALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    goto :goto_0

    .line 614
    :cond_1
    sget-object v1, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->VERTICALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    .line 616
    :goto_0
    iget-object v2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mPendingPan:Lcom/taobao/weex/ui/view/gesture/WXGestureType;

    sget-object v3, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->HORIZONTALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    const/4 v4, 0x1

    if-eq v2, v3, :cond_c

    iget-object v2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mPendingPan:Lcom/taobao/weex/ui/view/gesture/WXGestureType;

    sget-object v3, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->VERTICALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    if-ne v2, v3, :cond_2

    goto/16 :goto_5

    .line 619
    :cond_2
    iget-object v2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2, v1}, Lcom/taobao/weex/ui/component/WXComponent;->containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_5

    .line 621
    iget-object p1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 622
    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 624
    :cond_3
    iget-object p1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mPendingPan:Lcom/taobao/weex/ui/view/gesture/WXGestureType;

    if-eqz p1, :cond_4

    .line 625
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->handleMotionEvent(Lcom/taobao/weex/ui/view/gesture/WXGestureType;Landroid/view/MotionEvent;)Z

    .line 627
    :cond_4
    iput-object v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mPendingPan:Lcom/taobao/weex/ui/view/gesture/WXGestureType;

    .line 628
    iget-object p1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "start"

    invoke-direct {p0, p2, v3, p4}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->createFireEventParam(Landroid/view/MotionEvent;ILjava/lang/String;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :goto_1
    const/4 p1, 0x1

    goto/16 :goto_6

    .line 631
    :cond_5
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->containsSimplePan()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 632
    iget-wide p3, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->panDownTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    cmp-long v1, p3, v5

    if-eqz v1, :cond_6

    .line 633
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->panDownTime:J

    .line 634
    sget-object p2, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->PAN_END:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    iput-object p2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mPendingPan:Lcom/taobao/weex/ui/view/gesture/WXGestureType;

    .line 635
    iget-object p2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    sget-object p3, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->PAN_START:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    invoke-virtual {p3}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->toString()Ljava/lang/String;

    move-result-object p3

    .line 636
    invoke-direct {p0, p1, v3, v2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->createFireEventParam(Landroid/view/MotionEvent;ILjava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 635
    invoke-virtual {p2, p3, p1}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 638
    :cond_6
    iget-object p1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    sget-object p3, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->PAN_MOVE:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    invoke-virtual {p3}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->toString()Ljava/lang/String;

    move-result-object p3

    .line 639
    invoke-direct {p0, p2, v3, v2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->createFireEventParam(Landroid/view/MotionEvent;ILjava/lang/String;)Ljava/util/Map;

    move-result-object p2

    .line 638
    invoke-virtual {p1, p3, p2}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 642
    :cond_7
    iget-object v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    sget-object v3, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->SWIPE:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    invoke-virtual {v1, v3}, Lcom/taobao/weex/ui/component/WXComponent;->containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 643
    iget-wide v5, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->swipeDownTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-eqz v1, :cond_b

    .line 644
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->swipeDownTime:J

    .line 645
    invoke-direct {p0, p2, v2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->createMultipleFireEventParam(Landroid/view/MotionEvent;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 646
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v4

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 647
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x0

    const-string v3, "direction"

    cmpl-float p2, p2, v1

    if-lez p2, :cond_9

    cmpl-float p2, p3, v2

    if-lez p2, :cond_8

    const-string p2, "left"

    goto :goto_2

    :cond_8
    const-string p2, "right"

    .line 648
    :goto_2
    invoke-interface {p1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    cmpl-float p2, p4, v2

    if-lez p2, :cond_a

    const-string p2, "up"

    goto :goto_3

    :cond_a
    const-string p2, "down"

    .line 650
    :goto_3
    invoke-interface {p1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    :goto_4
    iget-object p2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p2

    iget-object p3, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p3}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object p3

    sget-object p4, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->SWIPE:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    .line 653
    invoke-virtual {p4}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->toString()Ljava/lang/String;

    move-result-object p4

    .line 652
    invoke-virtual {p2, p3, p4, p1}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1

    :cond_b
    const/4 p1, 0x0

    goto :goto_6

    .line 618
    :cond_c
    :goto_5
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->handlePanMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 657
    :goto_6
    iget-boolean p2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mIsTouchEventConsumed:Z

    if-nez p2, :cond_d

    if-eqz p1, :cond_e

    :cond_d
    const/4 v0, 0x1

    :cond_e
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mIsTouchEventConsumed:Z

    return p1

    :cond_f
    :goto_7
    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
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

    .line 213
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->requestDisallowInterceptTouchEvent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 214
    iput-boolean v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->requestDisallowInterceptTouchEvent:Z

    return v1

    .line 218
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 220
    iget-object v2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mTouchListeners:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 221
    iget-object v2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mTouchListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View$OnTouchListener;

    .line 222
    invoke-interface {v3, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v4, :cond_4

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    if-eq v2, v3, :cond_2

    const/4 v5, 0x5

    if-eq v2, v5, :cond_5

    const/4 v5, 0x6

    if-eq v2, v5, :cond_4

    goto/16 :goto_1

    .line 258
    :cond_2
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->finishDisallowInterceptTouchEvent(Landroid/view/View;)V

    .line 259
    sget-object v2, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->ACTION_CANCEL:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    invoke-direct {p0, v2, p2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->handleMotionEvent(Lcom/taobao/weex/ui/view/gesture/WXGestureType;Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 260
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->handlePanMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 261
    iget-object v2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->isPreventGesture()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 262
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v2

    iget-object v5, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v4, v6}, Lcom/taobao/weex/ui/WXRenderManager;->setScrollable(Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 246
    :cond_3
    sget-object v2, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->ACTION_MOVE:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    invoke-direct {p0, v2, p2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->handleMotionEvent(Lcom/taobao/weex/ui/view/gesture/WXGestureType;Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_1

    .line 250
    :cond_4
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->finishDisallowInterceptTouchEvent(Landroid/view/View;)V

    .line 251
    sget-object v2, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->ACTION_UP:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    invoke-direct {p0, v2, p2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->handleMotionEvent(Lcom/taobao/weex/ui/view/gesture/WXGestureType;Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 252
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->handlePanMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 253
    iget-object v2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->isPreventGesture()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 254
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v2

    iget-object v5, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v4, v6}, Lcom/taobao/weex/ui/WXRenderManager;->setScrollable(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_1

    .line 229
    :cond_5
    iput-boolean v1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mIsTouchEventConsumed:Z

    .line 234
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->hasSameOrientationWithParent()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->isParentScrollable()Z

    move-result v2

    if-nez v2, :cond_6

    .line 236
    iget-object v2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 237
    invoke-interface {v2, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 240
    :cond_6
    sget-object v2, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->ACTION_DOWN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    invoke-direct {p0, v2, p2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->handleMotionEvent(Lcom/taobao/weex/ui/view/gesture/WXGestureType;Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 241
    iget-object v2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->isPreventGesture()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 242
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v2

    iget-object v5, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v1, v6}, Lcom/taobao/weex/ui/WXRenderManager;->setScrollable(Ljava/lang/String;ZLjava/lang/String;)V

    .line 266
    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {v2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->hasStopPropagation(Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_8

    .line 270
    invoke-direct {p0, p2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->shouldBubbleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    xor-int/2addr v2, v4

    .line 273
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    .line 275
    :goto_2
    iget-object p1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 276
    iget-object p1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/taobao/weex/ui/component/WXVContainer;->requestDisallowInterceptTouchEvent(Z)V

    .line 278
    :cond_9
    iget-boolean p1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mIsTouchEventConsumed:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->component:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    const-string v2, "cancelTouchOnConsume"

    invoke-virtual {p1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 279
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->setAction(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    return v0

    :catch_0
    move-exception p1

    const-string p2, "Gesture RunTime Error "

    .line 284
    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public removeTouchListener(Landroid/view/View$OnTouchListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mTouchListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setPreventMoveEvent(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preventMoveEvent"
        }
    .end annotation

    .line 122
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->mIsPreventMoveEvent:Z

    return-void
.end method

.method public setRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestDisallowInterceptTouchEvent"
        }
    .end annotation

    .line 671
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/gesture/WXGesture;->requestDisallowInterceptTouchEvent:Z

    return-void
.end method
