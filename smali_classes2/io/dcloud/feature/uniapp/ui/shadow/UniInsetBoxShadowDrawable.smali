.class public Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "UniInsetBoxShadowDrawable.java"


# static fields
.field private static final BOTTOM_TO_TOP:I = 0x3

.field private static final LEFT_TO_RIGHT:I = 0x0

.field private static final RIGHT_TO_LEFT:I = 0x2

.field private static final TOP_TO_BOTTOM:I = 0x1


# instance fields
.field private blurRadius:F

.field private height:F

.field private paint:Landroid/graphics/Paint;

.field private paths:[Landroid/graphics/Path;

.field private radii:[F

.field private shades:[Landroid/graphics/Shader;

.field private shadowColor:I

.field private shadowXSize:F

.field private shadowYSize:F

.field private width:F


# direct methods
.method public constructor <init>(IIFFFFI[F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "viewWidth",
            "viewHeight",
            "dx",
            "dy",
            "blurRadius",
            "spread",
            "shadowColor",
            "radii"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/Shader;

    .line 52
    iput-object v1, p0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->shades:[Landroid/graphics/Shader;

    new-array v0, v0, [Landroid/graphics/Path;

    .line 53
    iput-object v0, p0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->paths:[Landroid/graphics/Path;

    .line 58
    iput p5, p0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->blurRadius:F

    .line 59
    iput p7, p0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->shadowColor:I

    int-to-float p5, p1

    const/high16 p7, 0x40000000    # 2.0f

    mul-float v0, p3, p7

    add-float/2addr p5, v0

    .line 61
    iput p5, p0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->width:F

    int-to-float p5, p2

    mul-float p7, p7, p4

    add-float/2addr p5, p7

    .line 62
    iput p5, p0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->height:F

    add-float/2addr p3, p6

    .line 64
    iput p3, p0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->shadowXSize:F

    add-float/2addr p4, p6

    .line 65
    iput p4, p0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->shadowYSize:F

    .line 67
    iput-object p8, p0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->radii:[F

    const/4 p3, 0x0

    .line 69
    invoke-virtual {p0, p3, p3, p1, p2}, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->setBounds(IIII)V

    .line 70
    invoke-direct {p0}, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->prepare()V

    return-void
.end method

.method private prepare()V
    .locals 35

    move-object/from16 v0, p0

    .line 84
    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 85
    new-instance v3, Landroid/graphics/PointF;

    iget v4, v0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->width:F

    invoke-direct {v3, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 86
    new-instance v2, Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->height:F

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 87
    new-instance v4, Landroid/graphics/PointF;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 89
    new-instance v5, Landroid/graphics/PointF;

    iget v6, v0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->shadowXSize:F

    iget v7, v0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->shadowYSize:F

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 90
    new-instance v6, Landroid/graphics/PointF;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget v8, v0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->shadowXSize:F

    sub-float/2addr v7, v8

    iget v8, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 91
    new-instance v7, Landroid/graphics/PointF;

    iget v8, v6, Landroid/graphics/PointF;->x:F

    iget v9, v2, Landroid/graphics/PointF;->y:F

    iget v10, v0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->shadowYSize:F

    sub-float/2addr v9, v10

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 92
    new-instance v8, Landroid/graphics/PointF;

    iget v9, v5, Landroid/graphics/PointF;->x:F

    iget v10, v7, Landroid/graphics/PointF;->y:F

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 94
    new-instance v9, Landroid/graphics/LinearGradient;

    iget v10, v5, Landroid/graphics/PointF;->x:F

    iget v11, v0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->blurRadius:F

    sub-float v12, v10, v11

    iget v13, v5, Landroid/graphics/PointF;->y:F

    iget v14, v5, Landroid/graphics/PointF;->x:F

    iget v15, v5, Landroid/graphics/PointF;->y:F

    iget v10, v0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->shadowColor:I

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v17, 0x0

    move-object v11, v9

    move/from16 v16, v10

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 95
    new-instance v10, Landroid/graphics/LinearGradient;

    iget v11, v5, Landroid/graphics/PointF;->x:F

    iget v12, v5, Landroid/graphics/PointF;->y:F

    iget v13, v0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->blurRadius:F

    sub-float v21, v12, v13

    iget v12, v5, Landroid/graphics/PointF;->x:F

    iget v13, v5, Landroid/graphics/PointF;->y:F

    iget v14, v0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->shadowColor:I

    sget-object v26, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v25, 0x0

    move-object/from16 v19, v10

    move/from16 v20, v11

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v14

    invoke-direct/range {v19 .. v26}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 96
    new-instance v11, Landroid/graphics/LinearGradient;

    iget v12, v7, Landroid/graphics/PointF;->x:F

    iget v13, v0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->blurRadius:F

    add-float v28, v12, v13

    iget v12, v7, Landroid/graphics/PointF;->y:F

    iget v13, v7, Landroid/graphics/PointF;->x:F

    iget v14, v7, Landroid/graphics/PointF;->y:F

    iget v15, v0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->shadowColor:I

    sget-object v34, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v33, 0x0

    move-object/from16 v27, v11

    move/from16 v29, v12

    move/from16 v30, v13

    move/from16 v31, v14

    move/from16 v32, v15

    invoke-direct/range {v27 .. v34}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 97
    new-instance v12, Landroid/graphics/LinearGradient;

    iget v13, v7, Landroid/graphics/PointF;->x:F

    iget v14, v7, Landroid/graphics/PointF;->y:F

    iget v15, v0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->blurRadius:F

    add-float v18, v14, v15

    iget v14, v7, Landroid/graphics/PointF;->x:F

    iget v15, v7, Landroid/graphics/PointF;->y:F

    move-object/from16 v24, v7

    iget v7, v0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->shadowColor:I

    sget-object v23, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v22, 0x0

    move-object/from16 v16, v12

    move/from16 v17, v13

    move/from16 v19, v14

    move/from16 v20, v15

    move/from16 v21, v7

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 99
    iget-object v7, v0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->shades:[Landroid/graphics/Shader;

    const/4 v13, 0x0

    aput-object v9, v7, v13

    const/4 v9, 0x1

    .line 100
    aput-object v10, v7, v9

    const/4 v10, 0x2

    .line 101
    aput-object v11, v7, v10

    const/4 v11, 0x3

    .line 102
    aput-object v12, v7, v11

    .line 104
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 105
    iget v12, v1, Landroid/graphics/PointF;->x:F

    iget v14, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v12, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 106
    iget v12, v5, Landroid/graphics/PointF;->x:F

    iget v14, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v12, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 107
    iget v12, v8, Landroid/graphics/PointF;->x:F

    iget v14, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v12, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 108
    iget v12, v4, Landroid/graphics/PointF;->x:F

    iget v14, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v12, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 109
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 111
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 112
    iget v14, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v14, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 113
    iget v1, v3, Landroid/graphics/PointF;->x:F

    iget v14, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v1, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 114
    iget v1, v6, Landroid/graphics/PointF;->x:F

    iget v14, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v1, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 115
    iget v1, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 116
    invoke-virtual {v12}, Landroid/graphics/Path;->close()V

    .line 118
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 119
    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 120
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v3, v24

    .line 121
    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v14, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v5, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 122
    iget v5, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 123
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 125
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 126
    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 127
    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 128
    iget v2, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 129
    iget v2, v8, Landroid/graphics/PointF;->x:F

    iget v3, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 130
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 132
    iget-object v2, v0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->paths:[Landroid/graphics/Path;

    aput-object v7, v2, v13

    .line 133
    aput-object v12, v2, v9

    .line 134
    aput-object v1, v2, v10

    .line 135
    aput-object v5, v2, v11

    .line 137
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->paint:Landroid/graphics/Paint;

    .line 138
    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    iget-object v1, v0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    iget-object v1, v0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->paint:Landroid/graphics/Paint;

    iget v2, v0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->shadowColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 145
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 146
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 147
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 148
    iget-object v3, p0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->radii:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 149
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 153
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 156
    iget-object v1, p0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->shades:[Landroid/graphics/Shader;

    aget-object v1, v1, v0

    .line 157
    iget-object v2, p0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->paths:[Landroid/graphics/Path;

    aget-object v2, v2, v0

    .line 158
    iget-object v3, p0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 159
    iget-object v1, p0, Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorFilter"
        }
    .end annotation

    return-void
.end method
