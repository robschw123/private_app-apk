.class public Lcom/taobao/weex/ui/view/border/BorderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BorderDrawable.java"


# static fields
.field public static final BORDER_BOTTOM_LEFT_RADIUS:I = 0x3

.field public static final BORDER_BOTTOM_RIGHT_RADIUS:I = 0x2

.field public static final BORDER_RADIUS_ALL:I = 0x5

.field public static final BORDER_TOP_LEFT_RADIUS:I = 0x0

.field public static final BORDER_TOP_RIGHT_RADIUS:I = 0x1

.field static final DEFAULT_BORDER_COLOR:I = -0x1000000

.field private static final DEFAULT_BORDER_STYLE:Lcom/taobao/weex/ui/view/border/BorderStyle;

.field static final DEFAULT_BORDER_WIDTH:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "Border"

.field private static sBorderStyle:[Lcom/taobao/weex/ui/view/border/BorderStyle;


# instance fields
.field private mAlpha:I

.field private mBorderColor:Landroid/util/SparseIntArray;

.field private final mBorderEdge:Lcom/taobao/weex/ui/view/border/BorderEdge;

.field private mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/dom/CSSShorthand<",
            "Lcom/taobao/weex/dom/CSSShorthand$CORNER;",
            ">;"
        }
    .end annotation
.end field

.field private mBorderStyle:Landroid/util/SparseIntArray;

.field private mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/dom/CSSShorthand<",
            "Lcom/taobao/weex/dom/CSSShorthand$EDGE;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomLeftCorner:Lcom/taobao/weex/ui/view/border/BottomLeftCorner;

.field private mBottomRightCorner:Lcom/taobao/weex/ui/view/border/BottomRightCorner;

.field mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

.field private mColor:I

.field private mNeedUpdatePath:Z

.field private mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/dom/CSSShorthand<",
            "Lcom/taobao/weex/dom/CSSShorthand$CORNER;",
            ">;"
        }
    .end annotation
.end field

.field private final mPaint:Landroid/graphics/Paint;

.field private mPathForBorderOutline:Landroid/graphics/Path;

.field private mRectBounds:Landroid/graphics/RectF;

.field private mShader:Landroid/graphics/Shader;

.field private mTopLeftCorner:Lcom/taobao/weex/ui/view/border/TopLeftCorner;

.field private mTopRightCorner:Lcom/taobao/weex/ui/view/border/TopRightCorner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    sget-object v0, Lcom/taobao/weex/ui/view/border/BorderStyle;->SOLID:Lcom/taobao/weex/ui/view/border/BorderStyle;

    sput-object v0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->DEFAULT_BORDER_STYLE:Lcom/taobao/weex/ui/view/border/BorderStyle;

    .line 78
    invoke-static {}, Lcom/taobao/weex/ui/view/border/BorderStyle;->values()[Lcom/taobao/weex/ui/view/border/BorderStyle;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->sBorderStyle:[Lcom/taobao/weex/ui/view/border/BorderStyle;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 116
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 77
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mNeedUpdatePath:Z

    .line 100
    iput v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mColor:I

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mShader:Landroid/graphics/Shader;

    const/16 v1, 0xff

    .line 105
    iput v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mAlpha:I

    .line 112
    new-instance v1, Lcom/taobao/weex/ui/view/border/BorderEdge;

    invoke-direct {v1}, Lcom/taobao/weex/ui/view/border/BorderEdge;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderEdge:Lcom/taobao/weex/ui/view/border/BorderEdge;

    .line 165
    iput-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    return-void
.end method

.method private drawBorders(Landroid/graphics/Canvas;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mRectBounds:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mRectBounds:Landroid/graphics/RectF;

    goto :goto_0

    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 458
    :goto_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 459
    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalTop()I

    move-result v0

    if-lez v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalTop()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 462
    :goto_1
    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    invoke-virtual {v2}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalLeft()I

    move-result v2

    if-lez v2, :cond_2

    .line 463
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    invoke-virtual {v1}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalLeft()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 465
    :cond_2
    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mRectBounds:Landroid/graphics/RectF;

    int-to-float v3, v1

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 467
    :goto_2
    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    if-nez v2, :cond_4

    return-void

    .line 470
    :cond_4
    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    .line 471
    iget-object v3, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v3

    .line 472
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v10

    .line 473
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v11

    .line 475
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopLeftCorner:Lcom/taobao/weex/ui/view/border/TopLeftCorner;

    if-nez v4, :cond_5

    .line 476
    new-instance v4, Lcom/taobao/weex/ui/view/border/TopLeftCorner;

    invoke-direct {v4}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;-><init>()V

    iput-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopLeftCorner:Lcom/taobao/weex/ui/view/border/TopLeftCorner;

    .line 478
    :cond_5
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopLeftCorner:Lcom/taobao/weex/ui/view/border/TopLeftCorner;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-direct {p0, v5}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v5

    iget-object v6, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mRectBounds:Landroid/graphics/RectF;

    invoke-virtual {v4, v5, v2, v3, v6}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->set(FFFLandroid/graphics/RectF;)V

    .line 479
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopRightCorner:Lcom/taobao/weex/ui/view/border/TopRightCorner;

    if-nez v4, :cond_6

    .line 480
    new-instance v4, Lcom/taobao/weex/ui/view/border/TopRightCorner;

    invoke-direct {v4}, Lcom/taobao/weex/ui/view/border/TopRightCorner;-><init>()V

    iput-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopRightCorner:Lcom/taobao/weex/ui/view/border/TopRightCorner;

    .line 482
    :cond_6
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopRightCorner:Lcom/taobao/weex/ui/view/border/TopRightCorner;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-direct {p0, v5}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v5

    iget-object v6, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mRectBounds:Landroid/graphics/RectF;

    invoke-virtual {v4, v5, v3, v11, v6}, Lcom/taobao/weex/ui/view/border/TopRightCorner;->set(FFFLandroid/graphics/RectF;)V

    .line 483
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomRightCorner:Lcom/taobao/weex/ui/view/border/BottomRightCorner;

    if-nez v4, :cond_7

    .line 484
    new-instance v4, Lcom/taobao/weex/ui/view/border/BottomRightCorner;

    invoke-direct {v4}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;-><init>()V

    iput-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomRightCorner:Lcom/taobao/weex/ui/view/border/BottomRightCorner;

    .line 486
    :cond_7
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomRightCorner:Lcom/taobao/weex/ui/view/border/BottomRightCorner;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-direct {p0, v5}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v5

    iget-object v6, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mRectBounds:Landroid/graphics/RectF;

    invoke-virtual {v4, v5, v11, v10, v6}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->set(FFFLandroid/graphics/RectF;)V

    .line 487
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomLeftCorner:Lcom/taobao/weex/ui/view/border/BottomLeftCorner;

    if-nez v4, :cond_8

    .line 488
    new-instance v4, Lcom/taobao/weex/ui/view/border/BottomLeftCorner;

    invoke-direct {v4}, Lcom/taobao/weex/ui/view/border/BottomLeftCorner;-><init>()V

    iput-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomLeftCorner:Lcom/taobao/weex/ui/view/border/BottomLeftCorner;

    .line 490
    :cond_8
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomLeftCorner:Lcom/taobao/weex/ui/view/border/BottomLeftCorner;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-direct {p0, v5}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F

    move-result v5

    iget-object v6, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mRectBounds:Landroid/graphics/RectF;

    invoke-virtual {v4, v5, v10, v2, v6}, Lcom/taobao/weex/ui/view/border/BottomLeftCorner;->set(FFFLandroid/graphics/RectF;)V

    move-object v4, p0

    move-object v5, p1

    move v6, v2

    move v7, v3

    move v8, v10

    move v9, v11

    .line 492
    invoke-direct/range {v4 .. v9}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->isDefAllDrawRoundRect(Landroid/graphics/Canvas;FFFF)Z

    move-result v4

    if-nez v4, :cond_9

    int-to-float v1, v1

    int-to-float v0, v0

    .line 493
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 494
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderEdge:Lcom/taobao/weex/ui/view/border/BorderEdge;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopLeftCorner:Lcom/taobao/weex/ui/view/border/TopLeftCorner;

    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopRightCorner:Lcom/taobao/weex/ui/view/border/TopRightCorner;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v1, v4, v3, v5}, Lcom/taobao/weex/ui/view/border/BorderEdge;->set(Lcom/taobao/weex/ui/view/border/BorderCorner;Lcom/taobao/weex/ui/view/border/BorderCorner;FLcom/taobao/weex/dom/CSSShorthand$EDGE;)Lcom/taobao/weex/ui/view/border/BorderEdge;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->drawOneSide(Landroid/graphics/Canvas;Lcom/taobao/weex/ui/view/border/BorderEdge;)V

    .line 495
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderEdge:Lcom/taobao/weex/ui/view/border/BorderEdge;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopRightCorner:Lcom/taobao/weex/ui/view/border/TopRightCorner;

    iget-object v3, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomRightCorner:Lcom/taobao/weex/ui/view/border/BottomRightCorner;

    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v1, v3, v11, v4}, Lcom/taobao/weex/ui/view/border/BorderEdge;->set(Lcom/taobao/weex/ui/view/border/BorderCorner;Lcom/taobao/weex/ui/view/border/BorderCorner;FLcom/taobao/weex/dom/CSSShorthand$EDGE;)Lcom/taobao/weex/ui/view/border/BorderEdge;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->drawOneSide(Landroid/graphics/Canvas;Lcom/taobao/weex/ui/view/border/BorderEdge;)V

    .line 496
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderEdge:Lcom/taobao/weex/ui/view/border/BorderEdge;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomRightCorner:Lcom/taobao/weex/ui/view/border/BottomRightCorner;

    iget-object v3, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomLeftCorner:Lcom/taobao/weex/ui/view/border/BottomLeftCorner;

    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v1, v3, v10, v4}, Lcom/taobao/weex/ui/view/border/BorderEdge;->set(Lcom/taobao/weex/ui/view/border/BorderCorner;Lcom/taobao/weex/ui/view/border/BorderCorner;FLcom/taobao/weex/dom/CSSShorthand$EDGE;)Lcom/taobao/weex/ui/view/border/BorderEdge;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->drawOneSide(Landroid/graphics/Canvas;Lcom/taobao/weex/ui/view/border/BorderEdge;)V

    .line 497
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderEdge:Lcom/taobao/weex/ui/view/border/BorderEdge;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomLeftCorner:Lcom/taobao/weex/ui/view/border/BottomLeftCorner;

    iget-object v3, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopLeftCorner:Lcom/taobao/weex/ui/view/border/TopLeftCorner;

    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/taobao/weex/ui/view/border/BorderEdge;->set(Lcom/taobao/weex/ui/view/border/BorderCorner;Lcom/taobao/weex/ui/view/border/BorderCorner;FLcom/taobao/weex/dom/CSSShorthand$EDGE;)Lcom/taobao/weex/ui/view/border/BorderEdge;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->drawOneSide(Landroid/graphics/Canvas;Lcom/taobao/weex/ui/view/border/BorderEdge;)V

    :cond_9
    return-void
.end method

.method private drawOneSide(Landroid/graphics/Canvas;Lcom/taobao/weex/ui/view/border/BorderEdge;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "borderEdge"
        }
    .end annotation

    .line 551
    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/border/BorderEdge;->getBorderWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/border/BorderEdge;->getEdge()Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->preparePaint(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)V

    .line 553
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0}, Lcom/taobao/weex/ui/view/border/BorderEdge;->drawEdge(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private getBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getScaleFactor(Landroid/graphics/RectF;)F
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "borderBox"
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 424
    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    add-float/2addr v0, v1

    .line 425
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 426
    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    add-float/2addr v1, v2

    .line 427
    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    iget-object v3, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 428
    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v3

    add-float/2addr v2, v3

    .line 429
    iget-object v3, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v3

    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 430
    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v4

    add-float/2addr v3, v4

    .line 431
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 432
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-direct {p0, v4, v5, v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->updateFactor(Ljava/util/List;FF)V

    .line 433
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-direct {p0, v4, v0, v1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->updateFactor(Ljava/util/List;FF)V

    .line 434
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-direct {p0, v4, v0, v2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->updateFactor(Ljava/util/List;FF)V

    .line 435
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-direct {p0, v4, p1, v3}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->updateFactor(Ljava/util/List;FF)V

    .line 437
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    goto :goto_0

    .line 440
    :cond_0
    invoke-static {v4}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_0
    return p1
.end method

.method private isDefAllDrawRoundRect(Landroid/graphics/Canvas;FFFF)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "leftBorderWidth",
            "topBorderWidth",
            "bottomBorderWidth",
            "rightBorderWidth"
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopLeftCorner:Lcom/taobao/weex/ui/view/border/TopLeftCorner;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/border/TopLeftCorner;->getOuterCornerRadius()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 514
    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopRightCorner:Lcom/taobao/weex/ui/view/border/TopRightCorner;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/border/TopRightCorner;->getOuterCornerRadius()F

    move-result v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomLeftCorner:Lcom/taobao/weex/ui/view/border/BottomLeftCorner;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/border/BottomLeftCorner;->getOuterCornerRadius()F

    move-result v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBottomRightCorner:Lcom/taobao/weex/ui/view/border/BottomRightCorner;

    .line 515
    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/border/BottomRightCorner;->getOuterCornerRadius()F

    move-result v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    cmpl-float v1, p2, p3

    if-nez v1, :cond_0

    cmpl-float p4, p2, p4

    if-nez p4, :cond_0

    cmpl-float p4, p2, p5

    if-nez p4, :cond_0

    .line 518
    sget-object p4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p0, p4}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)I

    move-result p4

    iget p5, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mAlpha:I

    invoke-static {p4, p5}, Lcom/taobao/weex/utils/WXViewUtils;->multiplyColorAlpha(II)I

    move-result p4

    .line 519
    sget-object p5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p0, p5}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)I

    move-result p5

    iget v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mAlpha:I

    invoke-static {p5, v1}, Lcom/taobao/weex/utils/WXViewUtils;->multiplyColorAlpha(II)I

    move-result p5

    .line 520
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)I

    move-result v1

    iget v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mAlpha:I

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->multiplyColorAlpha(II)I

    move-result v1

    .line 521
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)I

    move-result v2

    iget v3, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mAlpha:I

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXViewUtils;->multiplyColorAlpha(II)I

    move-result v2

    if-ne p4, p5, :cond_0

    if-ne p4, v1, :cond_0

    if-ne p4, v2, :cond_0

    .line 524
    iget-object p4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderEdge:Lcom/taobao/weex/ui/view/border/BorderEdge;

    iget-object p5, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopLeftCorner:Lcom/taobao/weex/ui/view/border/TopLeftCorner;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mTopRightCorner:Lcom/taobao/weex/ui/view/border/TopRightCorner;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p4, p5, v1, p3, v2}, Lcom/taobao/weex/ui/view/border/BorderEdge;->set(Lcom/taobao/weex/ui/view/border/BorderCorner;Lcom/taobao/weex/ui/view/border/BorderCorner;FLcom/taobao/weex/dom/CSSShorthand$EDGE;)Lcom/taobao/weex/ui/view/border/BorderEdge;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/ui/view/border/BorderEdge;->getEdge()Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->preparePaint(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)V

    .line 525
    iget-object p3, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 526
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p2, p4

    .line 529
    iget-object p4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mRectBounds:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->top:F

    add-float/2addr p4, p2

    iput p4, p3, Landroid/graphics/RectF;->top:F

    .line 530
    iget-object p4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mRectBounds:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p4, p2

    iput p4, p3, Landroid/graphics/RectF;->bottom:F

    .line 531
    iget-object p4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mRectBounds:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->left:F

    add-float/2addr p4, p2

    iput p4, p3, Landroid/graphics/RectF;->left:F

    .line 532
    iget-object p4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mRectBounds:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->right:F

    sub-float/2addr p4, p2

    iput p4, p3, Landroid/graphics/RectF;->right:F

    .line 534
    iget-object p2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private prepareBorderPath(IIIILandroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "topPadding",
            "rightPadding",
            "bottomPadding",
            "leftPadding",
            "rectF",
            "path"
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 356
    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalTop()I

    move-result v0

    if-lez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalTop()I

    move-result v0

    div-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 359
    :goto_0
    iget-object v3, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    invoke-virtual {v3}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalLeft()I

    move-result v3

    if-lez v3, :cond_1

    .line 360
    iget-object v3, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    invoke-virtual {v3}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalLeft()I

    move-result v3

    div-int/2addr v3, v1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    int-to-float v3, v3

    int-to-float v0, v0

    .line 362
    invoke-virtual {p5, v3, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 364
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    if-eqz v0, :cond_4

    .line 365
    invoke-direct {p0, p5}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->prepareBorderRadius(Landroid/graphics/RectF;)V

    .line 366
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    if-nez v0, :cond_3

    .line 367
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    .line 369
    :cond_3
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v0, v3}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    .line 370
    iget-object v3, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v3

    .line 371
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v4

    .line 372
    iget-object v5, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v6, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v5, v6}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v5

    const/16 v6, 0x8

    new-array v6, v6, [F

    int-to-float p4, p4

    sub-float v7, v0, p4

    aput v7, v6, v2

    const/4 v2, 0x1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    aput v0, v6, v2

    int-to-float p2, p2

    sub-float v0, v3, p2

    aput v0, v6, v1

    const/4 v0, 0x3

    sub-float/2addr v3, p1

    aput v3, v6, v0

    const/4 p1, 0x4

    sub-float p2, v4, p2

    aput p2, v6, p1

    const/4 p1, 0x5

    int-to-float p2, p3

    sub-float/2addr v4, p2

    aput v4, v6, p1

    const/4 p1, 0x6

    sub-float p3, v5, p4

    aput p3, v6, p1

    const/4 p1, 0x7

    sub-float/2addr v5, p2

    aput v5, v6, p1

    .line 373
    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p6, p5, v6, p1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_2

    .line 387
    :cond_4
    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p6, p5, p1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    :goto_2
    return-void
.end method

.method private prepareBorderRadius(Landroid/graphics/RectF;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "borderBox"
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    if-eqz v0, :cond_2

    .line 396
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getScaleFactor(Landroid/graphics/RectF;)F

    move-result p1

    .line 397
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    .line 400
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 402
    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    mul-float v2, v2, p1

    .line 401
    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/dom/CSSShorthand;->set(Ljava/lang/Enum;F)V

    .line 403
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 404
    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    mul-float v2, v2, p1

    .line 403
    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/dom/CSSShorthand;->set(Ljava/lang/Enum;F)V

    .line 405
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 406
    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    mul-float v2, v2, p1

    .line 405
    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/dom/CSSShorthand;->set(Ljava/lang/Enum;F)V

    .line 407
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 408
    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    mul-float v2, v2, p1

    .line 407
    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/dom/CSSShorthand;->set(Ljava/lang/Enum;F)V

    goto :goto_0

    .line 410
    :cond_1
    iget-object p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 411
    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    .line 410
    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->set(Ljava/lang/Enum;F)V

    .line 412
    iget-object p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 413
    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    .line 412
    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->set(Ljava/lang/Enum;F)V

    .line 414
    iget-object p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 415
    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    .line 414
    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->set(Ljava/lang/Enum;F)V

    .line 416
    iget-object p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 417
    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    .line 416
    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->set(Ljava/lang/Enum;F)V

    :cond_2
    :goto_0
    return-void
.end method

.method private preparePaint(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "edge"
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    .line 559
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)I

    move-result v1

    iget v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mAlpha:I

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->multiplyColorAlpha(II)I

    move-result v1

    .line 560
    sget-object v2, Lcom/taobao/weex/ui/view/border/BorderDrawable;->sBorderStyle:[Lcom/taobao/weex/ui/view/border/BorderStyle;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)I

    move-result v3

    aget-object v2, v2, v3

    .line 561
    invoke-virtual {v2, v0, v1, p1}, Lcom/taobao/weex/ui/view/border/BorderStyle;->getLineShader(FILcom/taobao/weex/dom/CSSShorthand$EDGE;)Landroid/graphics/Shader;

    move-result-object p1

    .line 562
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 563
    iget-object p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 564
    iget-object p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private updateBorderOutline()V
    .locals 8

    .line 338
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mNeedUpdatePath:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 339
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mNeedUpdatePath:Z

    .line 340
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPathForBorderOutline:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPathForBorderOutline:Landroid/graphics/Path;

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPathForBorderOutline:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 344
    new-instance v6, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPathForBorderOutline:Landroid/graphics/Path;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->prepareBorderPath(IIIILandroid/graphics/RectF;Landroid/graphics/Path;)V

    :cond_1
    return-void
.end method

.method private updateFactor(Ljava/util/List;FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "list",
            "numerator",
            "denominator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;FF)V"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_0

    div-float/2addr p2, p3

    .line 447
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 122
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->updateBorderOutline()V

    .line 124
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 125
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPathForBorderOutline:Landroid/graphics/Path;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 126
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mColor:I

    iget v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mAlpha:I

    invoke-static {v0, v2}, Lcom/taobao/weex/utils/WXViewUtils;->multiplyColorAlpha(II)I

    move-result v0

    .line 127
    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mShader:Landroid/graphics/Shader;

    if-eqz v2, :cond_0

    .line 128
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 129
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPathForBorderOutline:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 131
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    :cond_0
    ushr-int/lit8 v2, v0, 0x18

    if-eqz v2, :cond_1

    .line 133
    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 135
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPathForBorderOutline:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 136
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 139
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 141
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->drawBorders(Landroid/graphics/Canvas;)V

    .line 142
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mAlpha:I

    return v0
.end method

.method getBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "edge"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderColor:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result p1

    const/high16 v1, -0x1000000

    invoke-static {v0, p1, v1}, Lcom/taobao/weex/ui/view/border/BorderUtil;->fetchFromSparseArray(Landroid/util/SparseIntArray;II)I

    move-result p1

    return p1
.end method

.method public getBorderInnerRadius(Landroid/graphics/RectF;)[F
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "borderBox"
        }
    .end annotation

    .line 248
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->prepareBorderRadius(Landroid/graphics/RectF;)V

    .line 249
    iget-object p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    if-nez p1, :cond_0

    .line 250
    new-instance p1, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {p1}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    .line 252
    :cond_0
    iget-object p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {p1, v0}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result p1

    .line 253
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    .line 254
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    .line 255
    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    .line 256
    iget-object v3, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    if-eqz v3, :cond_1

    .line 257
    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v3

    sub-float/2addr p1, v3

    const/4 v3, 0x0

    invoke-static {p1, v3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 258
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v4

    sub-float/2addr v0, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 259
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v4

    sub-float/2addr v1, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 260
    iget-object v4, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v4

    sub-float/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_1
    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    aput p1, v3, v4

    const/4 p1, 0x2

    aput v0, v3, p1

    const/4 p1, 0x3

    aput v0, v3, p1

    const/4 p1, 0x4

    aput v1, v3, p1

    const/4 p1, 0x5

    aput v1, v3, p1

    const/4 p1, 0x6

    aput v2, v3, p1

    const/4 p1, 0x7

    aput v2, v3, p1

    return-object v3
.end method

.method public getBorderRadius(Landroid/graphics/RectF;)[F
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "borderBox"
        }
    .end annotation

    .line 231
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->prepareBorderRadius(Landroid/graphics/RectF;)V

    .line 232
    iget-object p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    if-nez p1, :cond_0

    .line 233
    new-instance p1, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {p1}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    .line 235
    :cond_0
    iget-object p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {p1, v0}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result p1

    .line 236
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    .line 237
    iget-object v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    .line 238
    iget-object v2, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mOverlappingBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {v2, v3}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    aput p1, v3, v4

    const/4 p1, 0x2

    aput v0, v3, p1

    const/4 p1, 0x3

    aput v0, v3, p1

    const/4 p1, 0x4

    aput v1, v3, p1

    const/4 p1, 0x5

    aput v1, v3, p1

    const/4 p1, 0x6

    aput v2, v3, p1

    const/4 p1, 0x7

    aput v2, v3, p1

    return-object v3
.end method

.method getBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "edge"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderStyle:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result p1

    sget-object v1, Lcom/taobao/weex/ui/view/border/BorderStyle;->SOLID:Lcom/taobao/weex/ui/view/border/BorderStyle;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/border/BorderStyle;->ordinal()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/taobao/weex/ui/view/border/BorderUtil;->fetchFromSparseArray(Landroid/util/SparseIntArray;II)I

    move-result p1

    return p1
.end method

.method getBorderWidth(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "edge"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result p1

    return p1
.end method

.method public getColor()I
    .locals 1

    .line 304
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mColor:I

    return v0
.end method

.method public getContentPath(Landroid/graphics/RectF;)Landroid/graphics/Path;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "borderBox"
        }
    .end annotation

    .line 332
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    move-object v6, v7

    .line 333
    invoke-direct/range {v0 .. v6}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->prepareBorderPath(IIIILandroid/graphics/RectF;Landroid/graphics/Path;)V

    return-object v7
.end method

.method public getOpacity()I
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mShader:Landroid/graphics/Shader;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 181
    :cond_0
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mColor:I

    iget v1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mAlpha:I

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->multiplyColorAlpha(II)I

    move-result v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->getOpacityFromColor(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outline"
        }
    .end annotation

    .line 188
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 189
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPathForBorderOutline:Landroid/graphics/Path;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mNeedUpdatePath:Z

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->updateBorderOutline()V

    .line 193
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mPathForBorderOutline:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    :cond_1
    return-void
.end method

.method public hasImage()Z
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mShader:Landroid/graphics/Shader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRounded()Z
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 323
    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 324
    invoke-virtual {v0, v2}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 325
    invoke-virtual {v0, v2}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 326
    invoke-virtual {v0, v2}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounds"
        }
    .end annotation

    .line 148
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 149
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mNeedUpdatePath:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 154
    iget v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mAlpha:I

    if-eq p1, v0, :cond_0

    .line 155
    iput p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mAlpha:I

    .line 156
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "edge",
            "color"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderColor:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderColor:Landroid/util/SparseIntArray;

    .line 271
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v1}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result v1

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 273
    :cond_0
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 274
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderColor:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result p1

    invoke-static {v0, p1, p2}, Lcom/taobao/weex/ui/view/border/BorderUtil;->updateSparseArray(Landroid/util/SparseIntArray;II)V

    .line 275
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "radius"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->ALL:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 218
    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 219
    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 220
    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    .line 221
    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_2

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderRadius:Lcom/taobao/weex/dom/CSSShorthand;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/dom/CSSShorthand;->set(Ljava/lang/Enum;F)V

    const/4 p1, 0x1

    .line 223
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mNeedUpdatePath:Z

    .line 224
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public setBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "edge",
            "style"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderStyle:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderStyle:Landroid/util/SparseIntArray;

    .line 286
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v1}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result v1

    sget-object v2, Lcom/taobao/weex/ui/view/border/BorderDrawable;->DEFAULT_BORDER_STYLE:Lcom/taobao/weex/ui/view/border/BorderStyle;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/border/BorderStyle;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 289
    :cond_0
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/taobao/weex/ui/view/border/BorderStyle;->valueOf(Ljava/lang/String;)Lcom/taobao/weex/ui/view/border/BorderStyle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/border/BorderStyle;->ordinal()I

    move-result p2

    .line 290
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 291
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderStyle:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result p1

    invoke-static {v0, p1, p2}, Lcom/taobao/weex/ui/view/border/BorderUtil;->updateSparseArray(Landroid/util/SparseIntArray;II)V

    .line 292
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->invalidateSelf()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 295
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Border"

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBorderWidth(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "edge",
            "width"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v0}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBorderWidth:Lcom/taobao/weex/dom/CSSShorthand;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/dom/CSSShorthand;->set(Ljava/lang/Enum;F)V

    const/4 p1, 0x1

    .line 203
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mNeedUpdatePath:Z

    .line 204
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 308
    iput p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mColor:I

    .line 309
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cf"
        }
    .end annotation

    return-void
.end method

.method public setImage(Landroid/graphics/Shader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shader"
        }
    .end annotation

    .line 313
    iput-object p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mShader:Landroid/graphics/Shader;

    .line 314
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->invalidateSelf()V

    return-void
.end method

.method public updateBoxShadowData(Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    .line 168
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->invalidateSelf()V

    return-void
.end method
