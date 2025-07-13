.class public Lcom/taobao/weex/ui/action/GraphicActionAnimation;
.super Lcom/taobao/weex/ui/action/BasicGraphicAction;
.source "GraphicActionAnimation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GraphicActionAnimation"


# instance fields
.field private final callback:Ljava/lang/String;

.field private mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

.field private final styleNeedInit:Z


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Lcom/taobao/weex/ui/animation/WXAnimationBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "ref",
            "animationBean"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->styleNeedInit:Z

    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->callback:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Lcom/taobao/weex/ui/animation/WXAnimationBean;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x10
        }
        names = {
            "instance",
            "ref",
            "animationBean",
            "callBack"
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 95
    iput-boolean p1, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->styleNeedInit:Z

    .line 96
    iput-object p3, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    .line 97
    iput-object p4, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->callback:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x10
        }
        names = {
            "instance",
            "ref",
            "animation",
            "callBack"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/action/BasicGraphicAction;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->styleNeedInit:Z

    .line 87
    iput-object p4, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->callback:Ljava/lang/String;

    .line 88
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 89
    const-class p1, Lcom/taobao/weex/ui/animation/WXAnimationBean;

    invoke-static {p3, p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/animation/WXAnimationBean;

    iput-object p1, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    :cond_0
    return-void
.end method

.method private createAnimator(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "target",
            "viewPortWidth"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    iget-object v1, v1, Lcom/taobao/weex/ui/animation/WXAnimationBean;->styles:Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;

    if-eqz v1, :cond_7

    .line 186
    invoke-virtual {v1}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->getHolders()Ljava/util/List;

    move-result-object v0

    .line 187
    iget-object v2, v1, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->backgroundColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-nez v2, :cond_2

    .line 189
    invoke-static {p1}, Lcom/taobao/weex/utils/WXViewUtils;->getBorderDrawable(Landroid/view/View;)Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 190
    new-instance v6, Lcom/taobao/weex/ui/animation/BackgroundColorProperty;

    invoke-direct {v6}, Lcom/taobao/weex/ui/animation/BackgroundColorProperty;-><init>()V

    new-instance v7, Landroid/animation/ArgbEvaluator;

    invoke-direct {v7}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v8, v5, [Ljava/lang/Integer;

    .line 192
    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v4

    iget-object v2, v1, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->backgroundColor:Ljava/lang/String;

    .line 193
    invoke-static {v2}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v3

    .line 190
    invoke-static {v6, v7, v8}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_2

    .line 195
    new-instance v2, Lcom/taobao/weex/ui/animation/BackgroundColorProperty;

    invoke-direct {v2}, Lcom/taobao/weex/ui/animation/BackgroundColorProperty;-><init>()V

    new-instance v6, Landroid/animation/ArgbEvaluator;

    invoke-direct {v6}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v7, v5, [Ljava/lang/Integer;

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v8, v1, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->backgroundColor:Ljava/lang/String;

    .line 198
    invoke-static {v8}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    .line 195
    invoke-static {v2, v6, v7}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->width:Ljava/lang/String;

    .line 203
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->height:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 204
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 205
    iget-object v6, v1, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->width:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 206
    new-instance v6, Lcom/taobao/weex/ui/animation/WidthProperty;

    invoke-direct {v6}, Lcom/taobao/weex/ui/animation/WidthProperty;-><init>()V

    new-array v7, v5, [I

    iget v8, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    aput v8, v7, v4

    iget-object v8, v1, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->width:Ljava/lang/String;

    .line 207
    invoke-static {v8}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result v8

    invoke-static {v8, p2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v8

    float-to-int v8, v8

    aput v8, v7, v3

    .line 206
    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_4
    iget-object v6, v1, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->height:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 210
    new-instance v6, Lcom/taobao/weex/ui/animation/HeightProperty;

    invoke-direct {v6}, Lcom/taobao/weex/ui/animation/HeightProperty;-><init>()V

    new-array v5, v5, [I

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    aput v2, v5, v4

    iget-object v2, v1, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->height:Ljava/lang/String;

    .line 211
    invoke-static {v2}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result v2

    invoke-static {v2, p2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p2

    float-to-int p2, p2

    aput p2, v5, v3

    .line 210
    invoke-static {v6, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_5
    invoke-virtual {v1}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->getPivot()Landroid/util/Pair;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 216
    invoke-virtual {v1}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->getPivot()Landroid/util/Pair;

    move-result-object p2

    .line 217
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 218
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    .line 221
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Landroid/animation/PropertyValuesHolder;

    invoke-interface {v0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/animation/PropertyValuesHolder;

    .line 220
    invoke-static {p1, p2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 222
    iget-object p2, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    iget-wide v0, p2, Lcom/taobao/weex/ui/animation/WXAnimationBean;->delay:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    return-object p1

    :cond_7
    return-object v0
.end method

.method private createAnimatorListener(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "instance",
            "callBack"
        }
    .end annotation

    .line 232
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicActionAnimation$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/weex/ui/action/GraphicActionAnimation$1;-><init>(Lcom/taobao/weex/ui/action/GraphicActionAnimation;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private createTimeInterpolator()Landroid/view/animation/Interpolator;
    .locals 8

    .line 253
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    iget-object v0, v0, Lcom/taobao/weex/ui/animation/WXAnimationBean;->timingFunction:Ljava/lang/String;

    .line 254
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    .line 255
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "ease-in-out"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "ease-out"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "linear"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v3, "ease-in"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 267
    :try_start_0
    new-instance v0, Lcom/taobao/weex/utils/SingleFunctionParser;

    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    iget-object v1, v1, Lcom/taobao/weex/ui/animation/WXAnimationBean;->timingFunction:Ljava/lang/String;

    new-instance v3, Lcom/taobao/weex/ui/action/GraphicActionAnimation$2;

    invoke-direct {v3, p0}, Lcom/taobao/weex/ui/action/GraphicActionAnimation$2;-><init>(Lcom/taobao/weex/ui/action/GraphicActionAnimation;)V

    invoke-direct {v0, v1, v3}, Lcom/taobao/weex/utils/SingleFunctionParser;-><init>(Ljava/lang/String;Lcom/taobao/weex/utils/SingleFunctionParser$FlatMapper;)V

    const-string v1, "cubic-bezier"

    .line 275
    invoke-virtual {v0, v1}, Lcom/taobao/weex/utils/SingleFunctionParser;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 276
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_4

    .line 278
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 277
    invoke-static {v1, v3, v5, v0}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_4
    return-object v2

    .line 261
    :pswitch_0
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-object v0

    .line 259
    :pswitch_1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-object v0

    .line 263
    :pswitch_2
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    return-object v0

    .line 257
    :pswitch_3
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    return-object v0

    :cond_5
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x75215c9c -> :sswitch_3
        -0x41b970db -> :sswitch_2
        -0x2f0a1f11 -> :sswitch_1
        -0x15938a9b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startAnimation(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "component"
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 143
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    if-eqz v0, :cond_0

    .line 144
    iget-boolean v0, v0, Lcom/taobao/weex/ui/animation/WXAnimationBean;->needLayout:Z

    invoke-virtual {p2, v0}, Lcom/taobao/weex/ui/component/WXComponent;->setNeedLayoutOnAnimation(Z)V

    .line 146
    :cond_0
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 147
    new-instance p1, Lcom/taobao/weex/ui/animation/WXAnimationModule$AnimationHolder;

    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->callback:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lcom/taobao/weex/ui/animation/WXAnimationModule$AnimationHolder;-><init>(Lcom/taobao/weex/ui/animation/WXAnimationBean;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/component/WXComponent;->postAnimation(Lio/dcloud/feature/uniapp/ui/AbsAnimationHolder;)V

    goto :goto_0

    .line 151
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    .line 152
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    .line 151
    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->createAnimator(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 154
    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->callback:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->createAnimatorListener(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    .line 155
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_2

    .line 156
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->isLayerTypeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 159
    :cond_2
    invoke-direct {p0}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->createTimeInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    if-eqz p1, :cond_3

    .line 161
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    if-eqz v1, :cond_4

    .line 164
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 166
    :cond_4
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    iget-object p2, p2, Lcom/taobao/weex/ui/animation/WXAnimationBean;->styles:Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->getCameraDistance()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setCameraDistance(F)V

    .line 167
    iget-object p1, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    iget-wide p1, p1, Lcom/taobao/weex/ui/animation/WXAnimationBean;->duration:J

    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 168
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 171
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GraphicActionAnimation"

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public executeAction()V
    .locals 10

    .line 102
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/ui/component/list/template/TemplateDom;->isVirtualDomRef(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 111
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/list/template/TemplateDom;->findVirtualComponentByVRef(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 117
    :cond_2
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/ui/WXRenderManager;->getWXSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 122
    :cond_3
    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    iget-object v2, v2, Lcom/taobao/weex/ui/animation/WXAnimationBean;->styles:Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;

    if-eqz v2, :cond_6

    .line 123
    iget-boolean v2, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->styleNeedInit:Z

    if-eqz v2, :cond_5

    .line 126
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v2

    const-string v3, "transformOrigin"

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 127
    iget-object v3, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    iget-object v3, v3, Lcom/taobao/weex/ui/animation/WXAnimationBean;->styles:Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;

    iget-object v3, v3, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->transformOrigin:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 128
    iget-object v3, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    iget-object v3, v3, Lcom/taobao/weex/ui/animation/WXAnimationBean;->styles:Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;

    iput-object v2, v3, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->transformOrigin:Ljava/lang/String;

    .line 130
    :cond_4
    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    iget-object v3, v2, Lcom/taobao/weex/ui/animation/WXAnimationBean;->styles:Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;

    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    iget-object v2, v2, Lcom/taobao/weex/ui/animation/WXAnimationBean;->styles:Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;

    iget-object v4, v2, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->transformOrigin:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->mAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    iget-object v2, v2, Lcom/taobao/weex/ui/animation/WXAnimationBean;->styles:Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;

    iget-object v5, v2, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->transform:Ljava/lang/String;

    .line 131
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v2

    float-to-int v6, v2

    .line 132
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v2

    float-to-int v7, v2

    .line 133
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v8

    move-object v9, v1

    .line 130
    invoke-virtual/range {v3 .. v9}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->init(Ljava/lang/String;Ljava/lang/String;IIFLcom/taobao/weex/WXSDKInstance;)V

    .line 135
    :cond_5
    invoke-direct {p0, v1, v0}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->startAnimation(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_6
    return-void
.end method
