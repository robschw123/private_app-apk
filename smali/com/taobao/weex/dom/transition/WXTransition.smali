.class public Lcom/taobao/weex/dom/transition/WXTransition;
.super Ljava/lang/Object;
.source "WXTransition.java"


# static fields
.field private static final LAYOUT_PROPERTIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_SPLIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final TRANSFORM_PROPERTIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSITION_DELAY:Ljava/lang/String; = "transitionDelay"

.field public static final TRANSITION_DURATION:Ljava/lang/String; = "transitionDuration"

.field public static final TRANSITION_PROPERTY:Ljava/lang/String; = "transitionProperty"

.field public static final TRANSITION_TIMING_FUNCTION:Ljava/lang/String; = "transitionTimingFunction"


# instance fields
.field private animationRunnable:Ljava/lang/Runnable;

.field private delay:J

.field private duration:J

.field private handler:Landroid/os/Handler;

.field private interpolator:Landroid/view/animation/Interpolator;

.field private layoutPendingUpdates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private layoutValueAnimator:Landroid/animation/ValueAnimator;

.field private volatile lockToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

.field private properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private targetStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private transformAnimationRunnable:Ljava/lang/Runnable;

.field private transformAnimator:Landroid/animation/ObjectAnimator;

.field private transformPendingUpdates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private transitionEndEvent:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "\\||,"

    .line 81
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/dom/transition/WXTransition;->PROPERTY_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/taobao/weex/dom/transition/WXTransition;->LAYOUT_PROPERTIES:Ljava/util/Set;

    const-string/jumbo v1, "width"

    .line 89
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "height"

    .line 90
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "marginTop"

    .line 91
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "marginBottom"

    .line 92
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "marginLeft"

    .line 93
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "marginRight"

    .line 94
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "left"

    .line 95
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "right"

    .line 96
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "top"

    .line 97
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "bottom"

    .line 98
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "paddingLeft"

    .line 99
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "paddingRight"

    .line 100
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "paddingTop"

    .line 101
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "paddingBottom"

    .line 102
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/taobao/weex/dom/transition/WXTransition;->TRANSFORM_PROPERTIES:Ljava/util/Set;

    const-string v1, "opacity"

    .line 110
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "backgroundColor"

    .line 111
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "transform"

    .line 112
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->lockToken:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->handler:Landroid/os/Handler;

    .line 136
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutPendingUpdates:Ljava/util/Map;

    .line 137
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformPendingUpdates:Ljava/util/Map;

    .line 138
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/dom/transition/WXTransition;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->lockToken:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/weex/dom/transition/WXTransition;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/taobao/weex/dom/transition/WXTransition;->doTransitionAnimation(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/taobao/weex/dom/transition/WXTransition;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->animationRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$302(Lcom/taobao/weex/dom/transition/WXTransition;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transitionEndEvent:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/taobao/weex/dom/transition/WXTransition;)J
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->duration:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/taobao/weex/dom/transition/WXTransition;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    return-object p0
.end method

.method static synthetic access$600(Lcom/taobao/weex/dom/transition/WXTransition;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/taobao/weex/dom/transition/WXTransition;->doPendingTransformAnimation(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/taobao/weex/dom/transition/WXTransition;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/taobao/weex/dom/transition/WXTransition;->onTransitionAnimationEnd()V

    return-void
.end method

.method public static asynchronouslyUpdateLayout(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "component",
            "propertyName",
            "propertyValue"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 565
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 568
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    .line 569
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object p0

    .line 570
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 574
    :cond_1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getWXBridgeManager()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    new-instance v2, Lcom/taobao/weex/dom/transition/WXTransition$7;

    invoke-direct {v2, p1, p0, v0, p2}, Lcom/taobao/weex/dom/transition/WXTransition$7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private createLayoutPropertyValueHolder(Ljava/lang/String;Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "property",
            "value"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 443
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "marginLeft"

    const-string v5, "marginRight"

    const-string v6, "paddingRight"

    const-string v7, "paddingBottom"

    const-string/jumbo v8, "width"

    const-string v9, "right"

    const-string v10, "paddingTop"

    const-string v11, "left"

    const-string v12, "top"

    const-string v13, "marginBottom"

    const-string v14, "marginTop"

    const-string v15, "height"

    const-string v2, "bottom"

    const-string v0, "paddingLeft"

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v18, v0

    const/4 v0, 0x2

    const/16 v19, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    move-object/from16 v3, v18

    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v19, 0xd

    goto :goto_0

    :sswitch_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v19, 0xc

    goto :goto_0

    :sswitch_2
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v19, 0xb

    goto :goto_0

    :sswitch_3
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/16 v19, 0xa

    goto :goto_0

    :sswitch_4
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/16 v19, 0x9

    goto :goto_0

    :sswitch_5
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/16 v19, 0x8

    goto :goto_0

    :sswitch_6
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    const/16 v19, 0x7

    goto :goto_0

    :sswitch_7
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    const/16 v19, 0x6

    goto :goto_0

    :sswitch_8
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_8
    const/16 v19, 0x5

    goto :goto_0

    :sswitch_9
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_0

    :cond_9
    const/16 v19, 0x4

    goto :goto_0

    :sswitch_a
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_0

    :cond_a
    const/16 v19, 0x3

    goto :goto_0

    :sswitch_b
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_0

    :cond_b
    move-object/from16 v3, v18

    const/16 v19, 0x2

    goto :goto_1

    :sswitch_c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto/16 :goto_0

    :cond_c
    move-object/from16 v3, v18

    const/16 v19, 0x1

    goto :goto_1

    :sswitch_d
    move-object/from16 v3, v18

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_d

    goto :goto_1

    :cond_d
    const/16 v19, 0x0

    :goto_1
    const/16 v18, 0x0

    packed-switch v19, :pswitch_data_0

    const/4 v2, 0x0

    move-object/from16 v3, p0

    goto/16 :goto_2

    :pswitch_0
    new-array v2, v0, [F

    move-object/from16 v3, p0

    .line 460
    iget-object v5, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v5

    sget-object v6, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v5, v6}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v5

    aput v5, v2, v17

    iget-object v5, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 461
    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v5

    move-object/from16 v15, p2

    invoke-static {v15, v5}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;F)F

    move-result v5

    iget-object v6, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v6

    invoke-static {v5, v6}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v5

    aput v5, v2, v16

    .line 460
    invoke-static {v4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    goto/16 :goto_2

    :pswitch_1
    move-object/from16 v3, p0

    move-object/from16 v15, p2

    new-array v2, v0, [F

    .line 465
    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v4

    sget-object v6, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v6}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v4

    aput v4, v2, v17

    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 466
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v4

    invoke-static {v15, v4}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;F)F

    move-result v4

    iget-object v6, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v6

    invoke-static {v4, v6}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v4

    aput v4, v2, v16

    .line 465
    invoke-static {v5, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    goto/16 :goto_2

    :pswitch_2
    move-object/from16 v3, p0

    move-object/from16 v15, p2

    new-array v2, v0, [F

    .line 510
    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v4

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v4

    aput v4, v2, v17

    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 511
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v4

    invoke-static {v15, v4}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;F)F

    move-result v4

    iget-object v5, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v4

    aput v4, v2, v16

    .line 510
    invoke-static {v6, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    goto/16 :goto_2

    :pswitch_3
    move-object/from16 v3, p0

    move-object/from16 v15, p2

    new-array v2, v0, [F

    .line 500
    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v4

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v4

    aput v4, v2, v17

    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 501
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v4

    invoke-static {v15, v4}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;F)F

    move-result v4

    iget-object v5, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v4

    aput v4, v2, v16

    .line 500
    invoke-static {v7, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    goto/16 :goto_2

    :pswitch_4
    move-object/from16 v3, p0

    move-object/from16 v15, p2

    new-array v2, v0, [F

    .line 445
    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v4

    aput v4, v2, v17

    .line 446
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v15, v4}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v4

    aput v4, v2, v16

    .line 445
    invoke-static {v8, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    goto/16 :goto_2

    :pswitch_5
    move-object/from16 v3, p0

    move-object/from16 v15, p2

    new-array v2, v0, [F

    .line 480
    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/ui/action/GraphicPosition;->getRight()F

    move-result v4

    aput v4, v2, v17

    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 481
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v4

    invoke-static {v15, v4}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;F)F

    move-result v4

    iget-object v5, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v4

    aput v4, v2, v16

    .line 480
    invoke-static {v9, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    goto/16 :goto_2

    :pswitch_6
    move-object/from16 v3, p0

    move-object/from16 v15, p2

    new-array v2, v0, [F

    .line 495
    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v4

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v4

    aput v4, v2, v17

    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 496
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v4

    invoke-static {v15, v4}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;F)F

    move-result v4

    iget-object v5, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v4

    aput v4, v2, v16

    .line 495
    invoke-static {v10, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    goto/16 :goto_2

    :pswitch_7
    move-object/from16 v3, p0

    move-object/from16 v15, p2

    new-array v2, v0, [F

    .line 475
    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/ui/action/GraphicPosition;->getLeft()F

    move-result v4

    aput v4, v2, v17

    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 476
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v4

    invoke-static {v15, v4}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;F)F

    move-result v4

    iget-object v5, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v4

    aput v4, v2, v16

    .line 475
    invoke-static {v11, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    goto/16 :goto_2

    :pswitch_8
    move-object/from16 v3, p0

    move-object/from16 v15, p2

    new-array v2, v0, [F

    .line 490
    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/ui/action/GraphicPosition;->getTop()F

    move-result v4

    aput v4, v2, v17

    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 491
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v4

    invoke-static {v15, v4}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;F)F

    move-result v4

    iget-object v5, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v4

    aput v4, v2, v16

    .line 490
    invoke-static {v12, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    goto/16 :goto_2

    :pswitch_9
    move-object/from16 v3, p0

    move-object/from16 v15, p2

    new-array v2, v0, [F

    .line 470
    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v4

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v4

    aput v4, v2, v17

    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 471
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v4

    invoke-static {v15, v4}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;F)F

    move-result v4

    iget-object v5, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v4

    aput v4, v2, v16

    .line 470
    invoke-static {v13, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    goto/16 :goto_2

    :pswitch_a
    move-object/from16 v3, p0

    move-object/from16 v15, p2

    new-array v2, v0, [F

    .line 455
    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v4

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v4

    aput v4, v2, v17

    iget-object v4, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 456
    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v4

    invoke-static {v15, v4}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;F)F

    move-result v4

    iget-object v5, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v4

    aput v4, v2, v16

    .line 455
    invoke-static {v14, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    goto/16 :goto_2

    :pswitch_b
    move-object/from16 v3, p0

    move-object/from16 v2, p2

    new-array v4, v0, [F

    .line 450
    iget-object v5, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v5

    aput v5, v4, v17

    .line 451
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v5, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v5

    invoke-static {v2, v5}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v2

    aput v2, v4, v16

    .line 450
    invoke-static {v15, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    goto :goto_2

    :pswitch_c
    move-object/from16 v3, p0

    move-object v4, v2

    move-object/from16 v2, p2

    new-array v5, v0, [F

    .line 485
    iget-object v6, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/weex/ui/action/GraphicPosition;->getBottom()F

    move-result v6

    aput v6, v5, v17

    iget-object v6, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 486
    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v6

    invoke-static {v2, v6}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;F)F

    move-result v2

    iget-object v6, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v6

    invoke-static {v2, v6}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v2

    aput v2, v5, v16

    .line 485
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    goto :goto_2

    :pswitch_d
    move-object/from16 v2, p2

    move-object v4, v3

    move-object/from16 v3, p0

    new-array v5, v0, [F

    .line 505
    iget-object v6, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v6

    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v6, v7}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v6

    aput v6, v5, v17

    iget-object v6, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    .line 506
    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v6

    invoke-static {v2, v6}, Lcom/taobao/weex/utils/WXUtils;->getFloatByViewport(Ljava/lang/Object;F)F

    move-result v2

    iget-object v6, v3, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v6

    invoke-static {v2, v6}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v2

    aput v2, v5, v16

    .line 505
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_e

    new-array v0, v0, [F

    .line 518
    fill-array-data v0, :array_0

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    :cond_e
    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x597a2048 -> :sswitch_d
        -0x527265d5 -> :sswitch_c
        -0x48c76ed9 -> :sswitch_b
        -0x3e464339 -> :sswitch_a
        -0x113c6e87 -> :sswitch_9
        0x1c155 -> :sswitch_8
        0x32a007 -> :sswitch_7
        0x55f4784 -> :sswitch_6
        0x677c21c -> :sswitch_5
        0x6be2dc6 -> :sswitch_4
        0xc0fb19c -> :sswitch_3
        0x2a8c788b -> :sswitch_2
        0x3a1ea90e -> :sswitch_1
        0x757a12d5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static createTimeInterpolator(Ljava/lang/String;)Landroid/view/animation/Interpolator;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interpolator"
        }
    .end annotation

    .line 700
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_5

    .line 701
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "ease"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string v4, "ease-in-out"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v4, "ease-out"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "linear"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v4, "ease-in"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    const v4, 0x3f147ae1    # 0.58f

    const v10, 0x3ed70a3d    # 0.42f

    const/4 v11, 0x0

    packed-switch v0, :pswitch_data_0

    .line 715
    :try_start_0
    new-instance v0, Lcom/taobao/weex/utils/SingleFunctionParser;

    new-instance v4, Lcom/taobao/weex/dom/transition/WXTransition$8;

    invoke-direct {v4}, Lcom/taobao/weex/dom/transition/WXTransition$8;-><init>()V

    invoke-direct {v0, p0, v4}, Lcom/taobao/weex/utils/SingleFunctionParser;-><init>(Ljava/lang/String;Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;)V

    const-string p0, "cubic-bezier"

    .line 723
    invoke-virtual {v0, p0}, Lcom/taobao/weex/utils/SingleFunctionParser;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 724
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 726
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 725
    invoke-static {v0, v4, v5, p0}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 729
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "WXTransition"

    .line 730
    invoke-static {v0, p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 709
    :pswitch_0
    invoke-static {v2, v1, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0

    .line 707
    :pswitch_1
    invoke-static {v10, v11, v4, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0

    .line 705
    :pswitch_2
    invoke-static {v11, v11, v4, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0

    .line 711
    :pswitch_3
    invoke-static {v11, v11, v3, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0

    .line 703
    :pswitch_4
    invoke-static {v10, v11, v3, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0

    .line 735
    :cond_5
    :goto_1
    invoke-static {v2, v1, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x75215c9c -> :sswitch_4
        -0x41b970db -> :sswitch_3
        -0x2f0a1f11 -> :sswitch_2
        -0x15938a9b -> :sswitch_1
        0x2f63ee -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doLayoutPropertyValuesHolderAnimation([Landroid/animation/PropertyValuesHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holders"
        }
    .end annotation

    .line 524
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    .line 525
    new-instance v0, Lcom/taobao/weex/dom/transition/WXTransition$5;

    invoke-direct {v0, p0}, Lcom/taobao/weex/dom/transition/WXTransition$5;-><init>(Lcom/taobao/weex/dom/transition/WXTransition;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 537
    iget-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/taobao/weex/dom/transition/WXTransition$6;

    invoke-direct {v0, p0}, Lcom/taobao/weex/dom/transition/WXTransition$6;-><init>(Lcom/taobao/weex/dom/transition/WXTransition;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 555
    iget-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->interpolator:Landroid/view/animation/Interpolator;

    if-eqz p1, :cond_0

    .line 556
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 558
    :cond_0
    iget-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    iget-wide v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->delay:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 559
    iget-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    iget-wide v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 560
    iget-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private doPendingTransformAnimation(I)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 323
    iput-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimator:Landroid/animation/ObjectAnimator;

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformPendingUpdates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 328
    :cond_1
    invoke-direct {p0}, Lcom/taobao/weex/dom/transition/WXTransition;->getTargetView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 332
    :cond_2
    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    if-nez v2, :cond_3

    return-void

    .line 335
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 336
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformPendingUpdates:Ljava/util/Map;

    const-string v4, "transform"

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 337
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_5

    .line 338
    iget-object v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v7}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v8}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v8

    invoke-static {v4, v3, v6, v7, v8}, Lcom/taobao/weex/ui/animation/TransformParser;->parseTransForm(Ljava/lang/String;Ljava/lang/String;IIF)Ljava/util/Map;

    move-result-object v4

    .line 339
    invoke-static {v4}, Lcom/taobao/weex/ui/animation/TransformParser;->toHolders(Ljava/util/Map;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 340
    array-length v6, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_4

    aget-object v8, v4, v7

    .line 341
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 343
    :cond_4
    iget-object v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    monitor-enter v4

    .line 344
    :try_start_0
    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    const-string v7, "transform"

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 348
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 349
    sget-object v6, Lcom/taobao/weex/dom/transition/WXTransition;->TRANSFORM_PROPERTIES:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_2

    .line 352
    :cond_6
    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformPendingUpdates:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_2

    .line 355
    :cond_7
    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformPendingUpdates:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 356
    iget-object v7, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    monitor-enter v7

    .line 357
    :try_start_1
    iget-object v8, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    invoke-interface {v8, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 359
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const-string v7, "opacity"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-nez v7, :cond_b

    const-string v7, "backgroundColor"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_2

    .line 366
    :cond_8
    iget-object v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/dom/WXStyle;->getBackgroundColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result v4

    .line 367
    invoke-static {v6, v1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result v6

    .line 368
    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->getBorderDrawable(Landroid/view/View;)Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 369
    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->getBorderDrawable(Landroid/view/View;)Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getColor()I

    move-result v4

    goto :goto_3

    .line 370
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    instance-of v7, v7, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v7, :cond_a

    .line 371
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v4

    .line 373
    :cond_a
    :goto_3
    new-instance v7, Lcom/taobao/weex/ui/animation/BackgroundColorProperty;

    invoke-direct {v7}, Lcom/taobao/weex/ui/animation/BackgroundColorProperty;-><init>()V

    new-instance v10, Landroid/animation/ArgbEvaluator;

    invoke-direct {v10}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v8, v8, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-static {v7, v10, v8}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 361
    :cond_b
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v8, [F

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v8

    aput v8, v7, v5

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v7, v9

    invoke-static {v4, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    invoke-virtual {v0, v9, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_2

    :catchall_1
    move-exception p1

    .line 358
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 380
    :cond_c
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->lockToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne p1, v1, :cond_d

    .line 381
    iget-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformPendingUpdates:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 383
    :cond_d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/animation/PropertyValuesHolder;

    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/animation/PropertyValuesHolder;

    invoke-static {v0, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimator:Landroid/animation/ObjectAnimator;

    .line 384
    iget-wide v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 385
    iget-wide v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->delay:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_e

    .line 386
    iget-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 388
    :cond_e
    iget-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->interpolator:Landroid/view/animation/Interpolator;

    if-eqz p1, :cond_f

    .line 389
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 391
    :cond_f
    iget-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/taobao/weex/dom/transition/WXTransition$4;

    invoke-direct {v0, p0}, Lcom/taobao/weex/dom/transition/WXTransition$4;-><init>(Lcom/taobao/weex/dom/transition/WXTransition;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 408
    iget-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private doTransitionAnimation(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "token"
        }
    .end annotation

    .line 250
    invoke-direct {p0}, Lcom/taobao/weex/dom/transition/WXTransition;->getTargetView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 255
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 256
    sget-object v3, Lcom/taobao/weex/dom/transition/WXTransition;->LAYOUT_PROPERTIES:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/taobao/weex/dom/transition/WXTransition;->TRANSFORM_PROPERTIES:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 259
    :cond_1
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutPendingUpdates:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 262
    :cond_2
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformPendingUpdates:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 265
    :cond_3
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    monitor-enter v3

    .line 266
    :try_start_0
    iget-object v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 268
    iget-object v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 269
    iget-object v5, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Lcom/taobao/weex/dom/WXStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_4
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 282
    :cond_5
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transitionEndEvent:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 283
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 285
    :cond_6
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transitionEndEvent:Ljava/lang/Runnable;

    if-nez v1, :cond_7

    iget-wide v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->duration:J

    long-to-float v1, v1

    const/high16 v2, 0x800000

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    .line 286
    new-instance v1, Lcom/taobao/weex/dom/transition/WXTransition$2;

    invoke-direct {v1, p0}, Lcom/taobao/weex/dom/transition/WXTransition$2;-><init>(Lcom/taobao/weex/dom/transition/WXTransition;)V

    iput-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transitionEndEvent:Ljava/lang/Runnable;

    .line 299
    :cond_7
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    .line 300
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 302
    :cond_8
    new-instance v1, Lcom/taobao/weex/dom/transition/WXTransition$3;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/dom/transition/WXTransition$3;-><init>(Lcom/taobao/weex/dom/transition/WXTransition;I)V

    iput-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformAnimationRunnable:Ljava/lang/Runnable;

    .line 312
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 313
    invoke-virtual {p0}, Lcom/taobao/weex/dom/transition/WXTransition;->doPendingLayoutAnimation()V

    return-void
.end method

.method public static fromMap(Ljava/util/Map;Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/dom/transition/WXTransition;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "style",
            "component"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ")",
            "Lcom/taobao/weex/dom/transition/WXTransition;"
        }
    .end annotation

    const-string v0, "transitionProperty"

    .line 145
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 148
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    .line 152
    :cond_1
    new-instance v1, Lcom/taobao/weex/dom/transition/WXTransition;

    invoke-direct {v1}, Lcom/taobao/weex/dom/transition/WXTransition;-><init>()V

    .line 153
    invoke-static {v1, v0}, Lcom/taobao/weex/dom/transition/WXTransition;->updateTransitionProperties(Lcom/taobao/weex/dom/transition/WXTransition;Ljava/lang/String;)V

    .line 154
    iget-object v0, v1, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v2

    :cond_2
    const-string v0, "transitionDuration"

    const-wide/16 v3, 0x0

    .line 157
    invoke-static {p0, v0, v3, v4}, Lcom/taobao/weex/dom/transition/WXTransition;->parseTimeMillis(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/taobao/weex/dom/transition/WXTransition;->duration:J

    const-string v0, "transitionDelay"

    .line 158
    invoke-static {p0, v0, v3, v4}, Lcom/taobao/weex/dom/transition/WXTransition;->parseTimeMillis(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/taobao/weex/dom/transition/WXTransition;->delay:J

    const-string v0, "transitionTimingFunction"

    .line 159
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/dom/transition/WXTransition;->createTimeInterpolator(Ljava/lang/String;)Landroid/view/animation/Interpolator;

    move-result-object p0

    iput-object p0, v1, Lcom/taobao/weex/dom/transition/WXTransition;->interpolator:Landroid/view/animation/Interpolator;

    .line 160
    iput-object p1, v1, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    return-object v1
.end method

.method private getTargetView()Landroid/view/View;
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private declared-synchronized onTransitionAnimationEnd()V
    .locals 5

    monitor-enter p0

    .line 642
    :try_start_0
    iget-wide v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 643
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transitionEndEvent:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 644
    invoke-direct {p0}, Lcom/taobao/weex/dom/transition/WXTransition;->getTargetView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 645
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transitionEndEvent:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 646
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    .line 648
    iput-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transitionEndEvent:Ljava/lang/Runnable;

    .line 651
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 652
    :try_start_1
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 653
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 654
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 655
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 656
    iget-object v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/taobao/weex/dom/WXStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 659
    :cond_3
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 661
    :cond_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 662
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 661
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private static parseTimeMillis(Ljava/util/Map;Ljava/lang/String;J)J
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "style",
            "key",
            "defaultValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "J)J"
        }
    .end annotation

    .line 673
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    if-eqz p0, :cond_0

    const-string v0, "ms"

    .line 675
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    if-eqz p0, :cond_2

    .line 678
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    const-string v1, "px"

    if-eqz v0, :cond_1

    .line 679
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transition Duration Unit Only Support ms, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not ms Unit"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    .line 683
    :cond_1
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 685
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-wide p2

    .line 689
    :cond_3
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    float-to-long p0, p0

    return-wide p0

    :catch_0
    return-wide p2
.end method

.method private static updateTransitionProperties(Lcom/taobao/weex/dom/transition/WXTransition;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "transition",
            "transtionProperty"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 743
    sget-object v0, Lcom/taobao/weex/dom/transition/WXTransition;->PROPERTY_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 744
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 745
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 746
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 749
    :cond_1
    sget-object v4, Lcom/taobao/weex/dom/transition/WXTransition;->LAYOUT_PROPERTIES:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/taobao/weex/dom/transition/WXTransition;->TRANSFORM_PROPERTIES:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 750
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 751
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WXTransition Property Not Supported"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 755
    :cond_2
    iget-object v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public doPendingLayoutAnimation()V
    .locals 7

    .line 413
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 415
    iput-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutValueAnimator:Landroid/animation/ValueAnimator;

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutPendingUpdates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutPendingUpdates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    .line 422
    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 423
    :cond_2
    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 424
    sget-object v4, Lcom/taobao/weex/dom/transition/WXTransition;->LAYOUT_PROPERTIES:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 427
    :cond_4
    iget-object v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutPendingUpdates:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 428
    iget-object v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutPendingUpdates:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 429
    iget-object v5, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    monitor-enter v5

    .line 430
    :try_start_0
    iget-object v6, p0, Lcom/taobao/weex/dom/transition/WXTransition;->targetStyles:Ljava/util/Map;

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    invoke-direct {p0, v3, v4}, Lcom/taobao/weex/dom/transition/WXTransition;->createLayoutPropertyValueHolder(Ljava/lang/String;Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 431
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 436
    :cond_5
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutPendingUpdates:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 437
    invoke-direct {p0, v0}, Lcom/taobao/weex/dom/transition/WXTransition;->doLayoutPropertyValuesHolderAnimation([Landroid/animation/PropertyValuesHolder;)V

    return-void
.end method

.method public getProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 760
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    return-object v0
.end method

.method public hasTransitionProperty(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "styles"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 169
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public startTransition(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updates"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->lockToken:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v0

    .line 204
    :try_start_0
    invoke-direct {p0}, Lcom/taobao/weex/dom/transition/WXTransition;->getTargetView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 206
    monitor-exit v0

    return-void

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->lockToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 209
    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition;->properties:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 210
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 211
    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 212
    sget-object v5, Lcom/taobao/weex/dom/transition/WXTransition;->LAYOUT_PROPERTIES:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 213
    iget-object v5, p0, Lcom/taobao/weex/dom/transition/WXTransition;->layoutPendingUpdates:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 214
    :cond_2
    sget-object v5, Lcom/taobao/weex/dom/transition/WXTransition;->TRANSFORM_PROPERTIES:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 215
    iget-object v5, p0, Lcom/taobao/weex/dom/transition/WXTransition;->transformPendingUpdates:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 220
    :cond_3
    iget-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p1

    const-string v2, "actionDelay"

    invoke-virtual {p1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/16 v2, 0x10

    invoke-static {p1, v2}, Lcom/taobao/weex/utils/WXUtils;->getNumberInt(Ljava/lang/Object;I)I

    move-result p1

    int-to-long v2, p1

    .line 221
    iget-wide v4, p0, Lcom/taobao/weex/dom/transition/WXTransition;->duration:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_4

    long-to-int p1, v4

    .line 224
    :cond_4
    iget-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition;->animationRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_5

    .line 225
    iget-object v3, p0, Lcom/taobao/weex/dom/transition/WXTransition;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    :cond_5
    new-instance v2, Lcom/taobao/weex/dom/transition/WXTransition$1;

    invoke-direct {v2, p0, v1}, Lcom/taobao/weex/dom/transition/WXTransition$1;-><init>(Lcom/taobao/weex/dom/transition/WXTransition;I)V

    iput-object v2, p0, Lcom/taobao/weex/dom/transition/WXTransition;->animationRunnable:Ljava/lang/Runnable;

    if-lez p1, :cond_6

    .line 237
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->handler:Landroid/os/Handler;

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 239
    :cond_6
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 241
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public updateTranstionParams(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updates"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "transitionDelay"

    .line 177
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/taobao/weex/dom/WXStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-static {v1, v0, v2, v3}, Lcom/taobao/weex/dom/transition/WXTransition;->parseTimeMillis(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->delay:J

    :cond_0
    const-string v0, "transitionTimingFunction"

    .line 182
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/taobao/weex/dom/WXStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/dom/transition/WXTransition;->createTimeInterpolator(Ljava/lang/String;)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->interpolator:Landroid/view/animation/Interpolator;

    :cond_1
    const-string v0, "transitionDuration"

    .line 187
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 188
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/taobao/weex/dom/WXStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-static {v1, v0, v2, v3}, Lcom/taobao/weex/dom/transition/WXTransition;->parseTimeMillis(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/weex/dom/transition/WXTransition;->duration:J

    :cond_2
    const-string v0, "transitionProperty"

    .line 192
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 193
    iget-object v1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/taobao/weex/dom/WXStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object p1, p0, Lcom/taobao/weex/dom/transition/WXTransition;->mWXComponent:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/taobao/weex/dom/transition/WXTransition;->updateTransitionProperties(Lcom/taobao/weex/dom/transition/WXTransition;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
