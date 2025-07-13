.class Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BoxShadowUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/BoxShadowUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InsetShadowDrawable"
.end annotation


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
.method private constructor <init>(IIFFFFI[F)V
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

    .line 448
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/Shader;

    .line 443
    iput-object v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shades:[Landroid/graphics/Shader;

    new-array v0, v0, [Landroid/graphics/Path;

    .line 444
    iput-object v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paths:[Landroid/graphics/Path;

    .line 449
    iput p5, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->blurRadius:F

    .line 450
    iput p7, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowColor:I

    int-to-float p5, p1

    const/high16 p7, 0x40000000    # 2.0f

    mul-float v0, p3, p7

    add-float/2addr p5, v0

    .line 452
    iput p5, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->width:F

    int-to-float p5, p2

    mul-float p7, p7, p4

    add-float/2addr p5, p7

    .line 453
    iput p5, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->height:F

    add-float/2addr p3, p6

    .line 455
    iput p3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowXSize:F

    add-float/2addr p4, p6

    .line 456
    iput p4, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowYSize:F

    .line 458
    iput-object p8, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->radii:[F

    const/4 p3, 0x0

    .line 460
    invoke-virtual {p0, p3, p3, p1, p2}, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->setBounds(IIII)V

    .line 461
    invoke-direct {p0}, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->prepare()V

    return-void
.end method

.method synthetic constructor <init>(IIFFFFI[FLcom/taobao/weex/utils/BoxShadowUtil$1;)V
    .locals 0

    .line 428
    invoke-direct/range {p0 .. p8}, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;-><init>(IIFFFFI[F)V

    return-void
.end method

.method private prepare()V
    .locals 35

    move-object/from16 v0, p0

    .line 475
    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 476
    new-instance v3, Landroid/graphics/PointF;

    iget v4, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->width:F

    invoke-direct {v3, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 477
    new-instance v2, Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->height:F

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 478
    new-instance v4, Landroid/graphics/PointF;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 480
    new-instance v5, Landroid/graphics/PointF;

    iget v6, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowXSize:F

    iget v7, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowYSize:F

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 481
    new-instance v6, Landroid/graphics/PointF;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget v8, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowXSize:F

    sub-float/2addr v7, v8

    iget v8, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 482
    new-instance v7, Landroid/graphics/PointF;

    iget v8, v6, Landroid/graphics/PointF;->x:F

    iget v9, v2, Landroid/graphics/PointF;->y:F

    iget v10, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowYSize:F

    sub-float/2addr v9, v10

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 483
    new-instance v8, Landroid/graphics/PointF;

    iget v9, v5, Landroid/graphics/PointF;->x:F

    iget v10, v7, Landroid/graphics/PointF;->y:F

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 485
    new-instance v9, Landroid/graphics/LinearGradient;

    iget v10, v5, Landroid/graphics/PointF;->x:F

    iget v11, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->blurRadius:F

    sub-float v12, v10, v11

    iget v13, v5, Landroid/graphics/PointF;->y:F

    iget v14, v5, Landroid/graphics/PointF;->x:F

    iget v15, v5, Landroid/graphics/PointF;->y:F

    iget v10, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowColor:I

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v17, 0x0

    move-object v11, v9

    move/from16 v16, v10

    invoke-direct/range {v11 .. v18}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 486
    new-instance v10, Landroid/graphics/LinearGradient;

    iget v11, v5, Landroid/graphics/PointF;->x:F

    iget v12, v5, Landroid/graphics/PointF;->y:F

    iget v13, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->blurRadius:F

    sub-float v21, v12, v13

    iget v12, v5, Landroid/graphics/PointF;->x:F

    iget v13, v5, Landroid/graphics/PointF;->y:F

    iget v14, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowColor:I

    sget-object v26, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v25, 0x0

    move-object/from16 v19, v10

    move/from16 v20, v11

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v14

    invoke-direct/range {v19 .. v26}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 487
    new-instance v11, Landroid/graphics/LinearGradient;

    iget v12, v7, Landroid/graphics/PointF;->x:F

    iget v13, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->blurRadius:F

    add-float v28, v12, v13

    iget v12, v7, Landroid/graphics/PointF;->y:F

    iget v13, v7, Landroid/graphics/PointF;->x:F

    iget v14, v7, Landroid/graphics/PointF;->y:F

    iget v15, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowColor:I

    sget-object v34, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v33, 0x0

    move-object/from16 v27, v11

    move/from16 v29, v12

    move/from16 v30, v13

    move/from16 v31, v14

    move/from16 v32, v15

    invoke-direct/range {v27 .. v34}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 488
    new-instance v12, Landroid/graphics/LinearGradient;

    iget v13, v7, Landroid/graphics/PointF;->x:F

    iget v14, v7, Landroid/graphics/PointF;->y:F

    iget v15, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->blurRadius:F

    add-float v18, v14, v15

    iget v14, v7, Landroid/graphics/PointF;->x:F

    iget v15, v7, Landroid/graphics/PointF;->y:F

    move-object/from16 v24, v7

    iget v7, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowColor:I

    sget-object v23, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v22, 0x0

    move-object/from16 v16, v12

    move/from16 v17, v13

    move/from16 v19, v14

    move/from16 v20, v15

    move/from16 v21, v7

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 490
    iget-object v7, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shades:[Landroid/graphics/Shader;

    const/4 v13, 0x0

    aput-object v9, v7, v13

    const/4 v9, 0x1

    .line 491
    aput-object v10, v7, v9

    const/4 v10, 0x2

    .line 492
    aput-object v11, v7, v10

    const/4 v11, 0x3

    .line 493
    aput-object v12, v7, v11

    .line 495
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 496
    iget v12, v1, Landroid/graphics/PointF;->x:F

    iget v14, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v12, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 497
    iget v12, v5, Landroid/graphics/PointF;->x:F

    iget v14, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v12, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 498
    iget v12, v8, Landroid/graphics/PointF;->x:F

    iget v14, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v12, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 499
    iget v12, v4, Landroid/graphics/PointF;->x:F

    iget v14, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v12, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 500
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 502
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 503
    iget v14, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v14, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 504
    iget v1, v3, Landroid/graphics/PointF;->x:F

    iget v14, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v1, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 505
    iget v1, v6, Landroid/graphics/PointF;->x:F

    iget v14, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v1, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 506
    iget v1, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v12, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 507
    invoke-virtual {v12}, Landroid/graphics/Path;->close()V

    .line 509
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 510
    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 511
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v3, v24

    .line 512
    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v14, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v5, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 513
    iget v5, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 514
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 516
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 517
    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 518
    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 519
    iget v2, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 520
    iget v2, v8, Landroid/graphics/PointF;->x:F

    iget v3, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 521
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 523
    iget-object v2, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paths:[Landroid/graphics/Path;

    aput-object v7, v2, v13

    .line 524
    aput-object v12, v2, v9

    .line 525
    aput-object v1, v2, v10

    .line 526
    aput-object v5, v2, v11

    .line 528
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paint:Landroid/graphics/Paint;

    .line 529
    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 530
    iget-object v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 531
    iget-object v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shadowColor:I

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

    .line 536
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 537
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 538
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 539
    iget-object v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->radii:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 540
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 544
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 547
    iget-object v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->shades:[Landroid/graphics/Shader;

    aget-object v1, v1, v0

    .line 548
    iget-object v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paths:[Landroid/graphics/Path;

    aget-object v2, v2, v0

    .line 549
    iget-object v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 550
    iget-object v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;->paint:Landroid/graphics/Paint;

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
