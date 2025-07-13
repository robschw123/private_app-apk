.class Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;
.super Lio/dcloud/nineoldandroids/animation/KeyframeSet;


# instance fields
.field private deltaValue:F

.field private firstTime:Z

.field private firstValue:F

.field private lastValue:F


# direct methods
.method public varargs constructor <init>([Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/nineoldandroids/animation/KeyframeSet;-><init>([Lio/dcloud/nineoldandroids/animation/Keyframe;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;->firstTime:Z

    return-void
.end method


# virtual methods
.method public clone()Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;
    .locals 5

    .line 2
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4
    new-array v2, v1, [Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_0

    .line 8
    new-instance v0, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;

    invoke-direct {v0, v2}, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;-><init>([Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;)V

    return-object v0

    .line 9
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/nineoldandroids/animation/Keyframe;

    invoke-virtual {v4}, Lio/dcloud/nineoldandroids/animation/Keyframe;->clone()Lio/dcloud/nineoldandroids/animation/Keyframe;

    move-result-object v4

    check-cast v4, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public bridge synthetic clone()Lio/dcloud/nineoldandroids/animation/KeyframeSet;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;->clone()Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public getFloatValue(F)F
    .locals 5

    .line 1
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mNumKeyframes:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    .line 2
    iget-boolean v0, p0, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;->firstTime:Z

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v2, p0, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;->firstTime:Z

    .line 4
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;

    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v0

    iput v0, p0, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;->firstValue:F

    .line 5
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;

    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v0

    iput v0, p0, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;->lastValue:F

    .line 6
    iget v1, p0, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;->firstValue:F

    sub-float/2addr v0, v1

    iput v0, p0, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;->deltaValue:F

    .line 8
    :cond_0
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 11
    :cond_1
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    if-nez v0, :cond_2

    .line 12
    iget v0, p0, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;->firstValue:F

    iget v1, p0, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;->deltaValue:F

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    return v0

    .line 14
    :cond_2
    iget v1, p0, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;->firstValue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;->lastValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lio/dcloud/nineoldandroids/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    return p1

    :cond_3
    const/4 v4, 0x0

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_6

    .line 18
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;

    .line 19
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;

    .line 20
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v2

    .line 21
    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v3

    .line 22
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getFraction()F

    move-result v0

    .line 23
    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getFraction()F

    move-result v4

    .line 24
    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 26
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_4
    sub-float/2addr p1, v0

    sub-float/2addr v4, v0

    div-float/2addr p1, v4

    .line 29
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    if-nez v0, :cond_5

    sub-float/2addr v3, v2

    mul-float p1, p1, v3

    add-float/2addr v2, p1

    goto :goto_0

    .line 31
    :cond_5
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lio/dcloud/nineoldandroids/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 32
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v2

    :goto_0
    return v2

    :cond_6
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_9

    .line 34
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;

    .line 35
    iget-object v1, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget v2, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mNumKeyframes:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;

    .line 36
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v2

    .line 37
    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v3

    .line 38
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getFraction()F

    move-result v0

    .line 39
    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getFraction()F

    move-result v4

    .line 40
    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 42
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_7
    sub-float/2addr p1, v0

    sub-float/2addr v4, v0

    div-float/2addr p1, v4

    .line 45
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    if-nez v0, :cond_8

    sub-float/2addr v3, v2

    mul-float p1, p1, v3

    add-float/2addr v2, p1

    goto :goto_1

    .line 47
    :cond_8
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lio/dcloud/nineoldandroids/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 48
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v2

    :goto_1
    return v2

    .line 50
    :cond_9
    iget-object v0, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;

    const/4 v1, 0x1

    .line 51
    :goto_2
    iget v2, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mNumKeyframes:I

    if-lt v1, v2, :cond_a

    .line 70
    iget-object p1, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/nineoldandroids/animation/Keyframe;

    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    return p1

    .line 71
    :cond_a
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;

    .line 72
    invoke-virtual {v2}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getFraction()F

    move-result v4

    cmpg-float v4, p1, v4

    if-gez v4, :cond_d

    .line 73
    invoke-virtual {v2}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 75
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 77
    :cond_b
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getFraction()F

    move-result v1

    sub-float/2addr p1, v1

    .line 78
    invoke-virtual {v2}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getFraction()F

    move-result v1

    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/Keyframe;->getFraction()F

    move-result v3

    sub-float/2addr v1, v3

    div-float/2addr p1, v1

    .line 79
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v0

    .line 80
    invoke-virtual {v2}, Lio/dcloud/nineoldandroids/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v1

    .line 81
    iget-object v2, p0, Lio/dcloud/nineoldandroids/animation/KeyframeSet;->mEvaluator:Lio/dcloud/nineoldandroids/animation/TypeEvaluator;

    if-nez v2, :cond_c

    sub-float/2addr v1, v0

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    goto :goto_3

    .line 83
    :cond_c
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v2, p1, v0, v1}, Lio/dcloud/nineoldandroids/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 84
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    :goto_3
    return v0

    :cond_d
    add-int/lit8 v1, v1, 0x1

    move-object v0, v2

    goto :goto_2
.end method

.method public getValue(F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/animation/FloatKeyframeSet;->getFloatValue(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
