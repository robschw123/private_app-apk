.class public Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyInflater;
.super Ljava/lang/Object;
.source "DCGenericDraweeHierarchyInflater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "gdhAttrs",
            "attrId"
        }
    .end annotation

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getRoundingParams(Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->getRoundingParams()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v0}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->setRoundingParams(Lcom/facebook/drawee/generic/RoundingParams;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;

    .line 89
    :cond_0
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->getRoundingParams()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object p0

    return-object p0
.end method

.method private static getScaleTypeFromXml(Landroid/content/res/TypedArray;I)Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gdhAttrs",
            "attrId"
        }
    .end annotation

    const/4 v0, -0x2

    .line 109
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 132
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "XML attribute not specified!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 129
    :pswitch_0
    sget-object p0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_BOTTOM_START:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0

    .line 127
    :pswitch_1
    sget-object p0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FOCUS_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0

    .line 125
    :pswitch_2
    sget-object p0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_CROP:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0

    .line 123
    :pswitch_3
    sget-object p0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_INSIDE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0

    .line 121
    :pswitch_4
    sget-object p0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0

    .line 119
    :pswitch_5
    sget-object p0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_END:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0

    .line 117
    :pswitch_6
    sget-object p0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_CENTER:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0

    .line 115
    :pswitch_7
    sget-object p0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_START:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0

    .line 113
    :pswitch_8
    sget-object p0, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->FIT_XY:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object p0

    :pswitch_9
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
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
.end method

.method public static inflateBuilder(Landroid/content/Context;Landroid/util/AttributeSet;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 31
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GenericDraweeHierarchyBuilder#inflateBuilder"

    .line 32
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->beginSection(Ljava/lang/String;)V

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 35
    new-instance v1, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;

    invoke-direct {v1, v0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;-><init>(Landroid/content/res/Resources;)V

    .line 36
    invoke-static {v1, p0, p1}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyInflater;->updateBuilder(Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;Landroid/content/Context;Landroid/util/AttributeSet;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;

    move-result-object p0

    .line 37
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 38
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/FrescoSystrace;->endSection()V

    :cond_1
    return-object p0
.end method

.method public static inflateHierarchy(Landroid/content/Context;Landroid/util/AttributeSet;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 22
    invoke-static {p0, p1}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyInflater;->inflateBuilder(Landroid/content/Context;Landroid/util/AttributeSet;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->build()Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchy;

    move-result-object p0

    return-object p0
.end method

.method public static updateBuilder(Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;Landroid/content/Context;Landroid/util/AttributeSet;)Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "builder",
            "context",
            "attrs"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/Fresco/DCGenericDraweeHierarchyBuilder;->getProgressBarImage()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p0
.end method
