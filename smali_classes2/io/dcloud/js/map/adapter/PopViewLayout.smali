.class Lio/dcloud/js/map/adapter/PopViewLayout;
.super Landroid/view/View;
.source "PopViewLayout.java"


# static fields
.field static final font_height:I

.field static final max_icon_width_height:I

.field static final space_w:I


# instance fields
.field bg0:Landroid/graphics/Bitmap;

.field bg1:Landroid/graphics/Bitmap;

.field didOnLayout:Z

.field mBottomHeight:I

.field private mBubbleIcon:Landroid/graphics/drawable/Drawable;

.field mBubbleIconHeight:I

.field mBubbleIconWidth:I

.field private mLabel:Ljava/lang/String;

.field mTitleHeight:I

.field mTitleWidth:I

.field paint:Landroid/graphics/Paint;

.field patchs:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    .line 81
    invoke-static {v0}, Lio/dcloud/common/adapter/util/CanvasHelper;->getViablePx(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lio/dcloud/js/map/adapter/PopViewLayout;->space_w:I

    const/16 v0, 0x32

    .line 83
    invoke-static {v0}, Lio/dcloud/common/adapter/util/CanvasHelper;->getViablePx(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lio/dcloud/js/map/adapter/PopViewLayout;->max_icon_width_height:I

    const/16 v0, 0xf

    .line 85
    invoke-static {v0}, Lio/dcloud/common/adapter/util/CanvasHelper;->getViablePx(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lio/dcloud/js/map/adapter/PopViewLayout;->font_height:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mBubbleIcon:Landroid/graphics/drawable/Drawable;

    .line 18
    iput-object v0, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mLabel:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->bg0:Landroid/graphics/Bitmap;

    .line 20
    iput-object v0, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->bg1:Landroid/graphics/Bitmap;

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 21
    fill-array-data v1, :array_0

    iput-object v1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->patchs:[I

    const/4 v1, 0x0

    .line 23
    iput v1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mBottomHeight:I

    .line 25
    iput v1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mBubbleIconWidth:I

    .line 27
    iput v1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mBubbleIconHeight:I

    .line 39
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->paint:Landroid/graphics/Paint;

    .line 40
    iput v1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mTitleWidth:I

    .line 41
    iput v1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mTitleHeight:I

    .line 86
    iput-boolean v1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->didOnLayout:Z

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "res/bubble_background.png"

    .line 32
    invoke-static {v2}, Lio/dcloud/common/adapter/util/PlatformUtil;->getResInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 31
    invoke-static {v1, v0, v2, v0, v0}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->bg0:Landroid/graphics/Bitmap;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "res/arrow.png"

    .line 35
    invoke-static {v1}, Lio/dcloud/common/adapter/util/PlatformUtil;->getResInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 34
    invoke-static {p1, v0, v1, v0, v0}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->bg1:Landroid/graphics/Bitmap;

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mBottomHeight:I

    return-void

    nop

    :array_0
    .array-data 4
        0x15
        0x15
        0x15
        0x15
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/PopViewLayout;->getLeft()I

    move-result v3

    .line 46
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/PopViewLayout;->getTop()I

    move-result v7

    .line 47
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/PopViewLayout;->getWidth()I

    move-result v8

    .line 48
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/PopViewLayout;->getHeight()I

    move-result v9

    .line 50
    iget-object v1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->bg0:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->patchs:[I

    iget v0, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mBottomHeight:I

    sub-int v6, v9, v0

    move-object v0, p1

    move v4, v7

    move v5, v8

    invoke-static/range {v0 .. v6}, Lio/dcloud/common/adapter/util/CanvasHelper;->drawNinePatchs(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;[IIIII)V

    .line 52
    iget-object v0, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->bg1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int v0, v8, v0

    .line 53
    div-int/lit8 v0, v0, 0x2

    .line 54
    iget v1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mBottomHeight:I

    sub-int v1, v9, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 56
    iget-object v3, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->bg1:Landroid/graphics/Bitmap;

    int-to-float v0, v0

    int-to-float v1, v1

    iget-object v4, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 58
    invoke-virtual {p0}, Lio/dcloud/js/map/adapter/PopViewLayout;->getLeft()I

    move-result v0

    .line 59
    iget-object v1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mBubbleIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 60
    sget v3, Lio/dcloud/js/map/adapter/PopViewLayout;->space_w:I

    add-int/2addr v0, v3

    .line 61
    iget v3, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mBottomHeight:I

    sub-int v3, v9, v3

    iget v4, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mBubbleIconHeight:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v7

    .line 62
    iget v5, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mBubbleIconWidth:I

    add-int/2addr v5, v0

    add-int/2addr v4, v3

    invoke-virtual {v1, v0, v3, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 64
    iget-object v1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mBubbleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 68
    :cond_0
    iget-object v1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->paint:Landroid/graphics/Paint;

    const v3, -0x77eeeeef

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget v1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mBubbleIconWidth:I

    add-int v3, v0, v1

    sub-int/2addr v8, v0

    sub-int/2addr v8, v1

    iget v0, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mTitleWidth:I

    sub-int/2addr v8, v0

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v3, v8

    .line 71
    iget v0, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mBottomHeight:I

    sub-int/2addr v9, v0

    iget-object v0, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->paint:Landroid/graphics/Paint;

    .line 72
    invoke-static {v0}, Lio/dcloud/common/adapter/util/CanvasHelper;->getFontHeight(Landroid/graphics/Paint;)I

    move-result v0

    sub-int/2addr v9, v0

    div-int/lit8 v9, v9, 0x2

    add-int v4, v7, v9

    .line 74
    iget-object v0, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    iget-object v1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mLabel:Ljava/lang/String;

    const/16 v5, 0x10

    iget-object v6, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/adapter/util/CanvasHelper;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;IIILandroid/graphics/Paint;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "change",
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    .line 90
    iget-object p1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mBubbleIcon:Landroid/graphics/drawable/Drawable;

    const/4 p4, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 91
    :goto_0
    iget v0, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mTitleWidth:I

    sget v1, Lio/dcloud/js/map/adapter/PopViewLayout;->space_w:I

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    :goto_1
    mul-int v3, v3, v1

    add-int/2addr v0, v3

    .line 92
    iget v3, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mTitleHeight:I

    if-eqz p1, :cond_2

    .line 94
    iget p1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mBubbleIconWidth:I

    sget v4, Lio/dcloud/js/map/adapter/PopViewLayout;->max_icon_width_height:I

    .line 95
    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mBubbleIconWidth:I

    .line 96
    iget p1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mBubbleIconHeight:I

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mBubbleIconHeight:I

    .line 98
    iget v4, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mBubbleIconWidth:I

    add-int/2addr v0, v4

    .line 99
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 101
    :cond_2
    iget p1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mBottomHeight:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    add-int/2addr v3, p1

    .line 103
    iget-boolean p1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->didOnLayout:Z

    if-nez p1, :cond_3

    .line 104
    iput-boolean p4, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->didOnLayout:Z

    add-int/2addr v0, p2

    add-int/2addr p5, v3

    .line 105
    invoke-super {p0, p2, p3, v0, p5}, Landroid/view/View;->layout(IIII)V

    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const-string v0, "PopViewLayout"

    const-string v1, "onTouchEvent"

    .line 126
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method setBubbleIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mBubbleIcon:Landroid/graphics/drawable/Drawable;

    .line 120
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mBubbleIconWidth:I

    .line 121
    iget-object p1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mBubbleIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mBubbleIconHeight:I

    return-void
.end method

.method setBubbleLabel(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 110
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mLabel:Ljava/lang/String;

    .line 111
    iget-object p1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->paint:Landroid/graphics/Paint;

    sget v0, Lio/dcloud/js/map/adapter/PopViewLayout;->font_height:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 112
    iget-object p1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    .line 113
    iput p1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mTitleWidth:I

    .line 114
    iget-object p1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget-object v0, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->paint:Landroid/graphics/Paint;

    .line 115
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lio/dcloud/js/map/adapter/PopViewLayout;->mTitleHeight:I

    return-void
.end method
