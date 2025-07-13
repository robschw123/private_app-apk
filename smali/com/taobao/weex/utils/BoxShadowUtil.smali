.class public Lcom/taobao/weex/utils/BoxShadowUtil;
.super Ljava/lang/Object;
.source "BoxShadowUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;,
        Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;,
        Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BoxShadowUtil"

.field private static sBoxShadowEnabled:Z = true

.field private static sColorPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;Ljava/util/List;F[F)V
    .locals 0

    .line 67
    invoke-static {p0, p1, p2, p3}, Lcom/taobao/weex/utils/BoxShadowUtil;->setNormalBoxShadow(Landroid/view/View;Ljava/util/List;F[F)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/View;Ljava/util/List;F[F)V
    .locals 0

    .line 67
    invoke-static {p0, p1, p2, p3}, Lcom/taobao/weex/utils/BoxShadowUtil;->setInsetBoxShadow(Landroid/view/View;Ljava/util/List;F[F)V

    return-void
.end method

.method private static drawShadow(Landroid/graphics/Canvas;Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "options"
        }
    .end annotation

    .line 145
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewWidth:I

    int-to-float v1, v1

    iget v2, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewHeight:I

    int-to-float v2, v2

    iget v4, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    mul-float v4, v4, v3

    add-float/2addr v2, v4

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 150
    iget-object v1, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 154
    :cond_0
    iget v1, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    .line 155
    iget v2, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    .line 156
    iget v5, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_1

    .line 157
    iget v5, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    mul-float v5, v5, v3

    add-float/2addr v1, v5

    .line 159
    :cond_1
    iget v5, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_2

    .line 160
    iget v5, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    mul-float v5, v5, v3

    add-float/2addr v2, v5

    .line 162
    :cond_2
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 164
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    .line 165
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 166
    iget v2, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->color:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 169
    iget v2, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    .line 170
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    iget v3, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v3, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 173
    :cond_3
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v5, 0x0

    .line 175
    :goto_0
    iget-object v6, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    array-length v6, v6

    if-ge v5, v6, :cond_5

    .line 176
    iget-object v6, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    aget v6, v6, v5

    cmpl-float v6, v6, v4

    if-nez v6, :cond_4

    .line 178
    aput v4, v3, v5

    goto :goto_1

    .line 180
    :cond_4
    iget-object v6, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    aget v6, v6, v5

    iget v7, p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    add-float/2addr v6, v7

    aput v6, v3, v5

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 183
    :cond_5
    sget-object p1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v0, v3, p1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 184
    invoke-virtual {p0, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static isBoxShadowEnabled()Z
    .locals 1

    .line 79
    sget-boolean v0, Lcom/taobao/weex/utils/BoxShadowUtil;->sBoxShadowEnabled:Z

    return v0
.end method

.method private static parseBoxShadow(Ljava/lang/String;F)Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "boxShadow",
            "viewport"
        }
    .end annotation

    .line 327
    new-instance v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;-><init>(FLcom/taobao/weex/utils/BoxShadowUtil$1;)V

    .line 328
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    const-string v2, "\\s*,\\s+"

    const-string v3, ","

    .line 335
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "inset"

    .line 338
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 339
    iput-boolean v4, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->isInset:Z

    const-string v3, ""

    .line 340
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 343
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 344
    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "\\s+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 347
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 348
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "#"

    .line 349
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "rgb"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p0}, Lcom/taobao/weex/utils/WXResourceUtils;->isNamedColor(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/high16 v3, -0x1000000

    .line 350
    invoke-static {p0, v3}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->color:I

    .line 351
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-interface {v2, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 356
    :cond_3
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v3, 0x2

    if-ge p0, v3, :cond_4

    return-object v1

    :cond_4
    const/4 p0, 0x0

    .line 360
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v5, 0x0

    if-nez v1, :cond_5

    .line 361
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 362
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p0

    iput p0, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    .line 365
    :cond_5
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 366
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 367
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result p0

    iput p0, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    .line 370
    :cond_6
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-ge v3, p0, :cond_7

    add-int/lit8 p0, v3, -0x2

    .line 372
    invoke-static {v0}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->access$500(Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$IParser;

    .line 373
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$IParser;->parse(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 377
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    return-object v0
.end method

.method public static parseBoxShadows(Ljava/lang/String;F)[Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "boxShadowStyle",
            "viewport"
        }
    .end annotation

    .line 303
    sget-object v0, Lcom/taobao/weex/utils/BoxShadowUtil;->sColorPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    const-string v0, "([rR][gG][bB][aA]?)\\((\\d+\\s*),\\s*(\\d+\\s*),\\s*(\\d+\\s*)(?:,\\s*(\\d+(?:\\.\\d+)?))?\\)"

    .line 304
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/taobao/weex/utils/BoxShadowUtil;->sColorPattern:Ljava/util/regex/Pattern;

    .line 307
    :cond_0
    sget-object v0, Lcom/taobao/weex/utils/BoxShadowUtil;->sColorPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 310
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 311
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/high16 v5, -0x1000000

    invoke-static {v1, v5}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v2, "%8s"

    invoke-static {v2, v4}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\s"

    const-string v5, "0"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string v0, ","

    .line 315
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 316
    array-length v0, p0

    if-lez v0, :cond_3

    .line 317
    array-length v0, p0

    new-array v0, v0, [Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    .line 318
    :goto_1
    array-length v1, p0

    if-ge v2, v1, :cond_2

    .line 319
    aget-object v1, p0, v2

    invoke-static {v1, p1}, Lcom/taobao/weex/utils/BoxShadowUtil;->parseBoxShadow(Ljava/lang/String;F)Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setBoxShadow(Landroid/view/View;Ljava/lang/String;[FFF)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10,
            0x0,
            0x10
        }
        names = {
            "target",
            "style",
            "radii",
            "viewPort",
            "quality"
        }
    .end annotation

    .line 83
    sget-boolean v0, Lcom/taobao/weex/utils/BoxShadowUtil;->sBoxShadowEnabled:Z

    const-string v1, "BoxShadowUtil"

    if-nez v0, :cond_0

    const-string p0, "box-shadow was disabled by config"

    .line 84
    invoke-static {v1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "Target view is null!"

    .line 89
    invoke-static {v1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 93
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_2

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewOverlay;->clear()V

    const-string p0, "Remove all box-shadow"

    .line 95
    invoke-static {v1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 99
    :cond_2
    invoke-static {p1, p3}, Lcom/taobao/weex/utils/BoxShadowUtil;->parseBoxShadows(Ljava/lang/String;F)[Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 100
    array-length v2, v0

    if-nez v2, :cond_3

    goto :goto_4

    .line 105
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 106
    array-length p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_6

    aget-object v4, v0, v3

    if-eqz v4, :cond_5

    .line 108
    iget-boolean v6, v4, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->isInset:Z

    if-eqz v6, :cond_4

    .line 109
    invoke-interface {v8, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 111
    :cond_4
    invoke-interface {v5, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_8

    .line 117
    array-length p1, p2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_7

    const-string p1, "Length of radii must be 8"

    .line 118
    invoke-static {v1, p1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 120
    :cond_7
    :goto_2
    array-length p1, p2

    if-ge v2, p1, :cond_8

    .line 121
    aget p1, p2, v2

    invoke-static {p1, p3}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p1

    .line 122
    aput p1, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 127
    :cond_8
    :goto_3
    new-instance p1, Lcom/taobao/weex/utils/BoxShadowUtil$1;

    move-object v3, p1

    move-object v4, p0

    move v6, p4

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/taobao/weex/utils/BoxShadowUtil$1;-><init>(Landroid/view/View;Ljava/util/List;F[FLjava/util/List;)V

    invoke-static {p1}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 101
    :cond_9
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to parse box-shadow: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setBoxShadowEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 74
    sput-boolean p0, Lcom/taobao/weex/utils/BoxShadowUtil;->sBoxShadowEnabled:Z

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Switch box-shadow status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BoxShadowUtil"

    invoke-static {v0, p0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setInsetBoxShadow(Landroid/view/View;Ljava/util/List;F[F)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "options",
            "quality",
            "radii"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;",
            ">;F[F)V"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "BoxShadowUtil"

    if-eqz p0, :cond_5

    if-nez v0, :cond_0

    goto :goto_3

    .line 277
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 282
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_3

    .line 283
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    .line 284
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 285
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    .line 286
    new-instance v14, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v7, v3, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    iget v8, v3, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    iget v9, v3, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    iget v10, v3, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    iget v11, v3, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->color:I

    const/4 v13, 0x0

    move-object v4, v14

    move-object/from16 v12, p3

    invoke-direct/range {v4 .. v13}, Lcom/taobao/weex/utils/BoxShadowUtil$InsetShadowDrawable;-><init>(IIFFFFI[FLcom/taobao/weex/utils/BoxShadowUtil$1;)V

    .line 290
    aput-object v14, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 293
    :cond_2
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 294
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 295
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_3
    const-string v0, "Call setInsetBoxShadow() requires API level 18 or higher."

    .line 297
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_4
    :goto_2
    const-string v0, "Target view is invisible, ignore set shadow."

    .line 278
    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_3
    const-string v0, "Illegal arguments"

    .line 273
    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setNormalBoxShadow(Landroid/view/View;Ljava/util/List;F[F)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "options",
            "quality",
            "radii"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;",
            ">;F[F)V"
        }
    .end annotation

    move/from16 v0, p2

    .line 196
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 197
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 199
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    const-string v3, "BoxShadowUtil"

    if-eqz v1, :cond_8

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 206
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_6

    .line 208
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    .line 209
    iput v2, v8, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewWidth:I

    .line 210
    iput v1, v8, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewHeight:I

    move-object/from16 v14, p3

    .line 211
    iput-object v14, v8, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    .line 213
    invoke-virtual {v8}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->getTargetCanvasRect()Landroid/graphics/Rect;

    move-result-object v8

    .line 214
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-ge v6, v9, :cond_2

    .line 215
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 218
    :cond_2
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-ge v7, v9, :cond_1

    .line 219
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v7

    goto :goto_0

    :cond_3
    move-object/from16 v14, p3

    int-to-float v4, v6

    mul-float v4, v4, v0

    float-to-int v4, v4

    int-to-float v8, v7

    mul-float v8, v8, v0

    float-to-int v8, v8

    .line 225
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 226
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-lt v4, v8, :cond_4

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Allocation memory for box-shadow: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v8

    div-int/lit16 v8, v8, 0x400

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " KB"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_4
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 240
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    .line 241
    invoke-virtual {v8}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->getTargetCanvasRect()Landroid/graphics/Rect;

    move-result-object v9

    .line 242
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v10

    sub-int v10, v6, v10

    int-to-float v10, v10

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v10, v12

    .line 243
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int v9, v7, v9

    int-to-float v9, v9

    div-float/2addr v9, v12

    .line 244
    new-instance v12, Landroid/graphics/PointF;

    invoke-direct {v12, v10, v9}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v12, v8, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    .line 246
    invoke-virtual {v8, v0}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->scale(F)Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    move-result-object v8

    .line 247
    invoke-static {v3, v8}, Lcom/taobao/weex/utils/BoxShadowUtil;->drawShadow(Landroid/graphics/Canvas;Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)V

    goto :goto_1

    :cond_5
    sub-int/2addr v6, v2

    .line 251
    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v7, v1

    .line 252
    div-int/lit8 v7, v7, 0x2

    .line 253
    new-instance v0, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13, v5, v5, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v15, 0x0

    move-object v9, v0

    move-object/from16 v14, p3

    invoke-direct/range {v9 .. v15}, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Point;Landroid/graphics/Rect;[FLcom/taobao/weex/utils/BoxShadowUtil$1;)V

    .line 256
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 258
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 260
    invoke-interface {v1}, Landroid/view/ViewParent;->requestLayout()V

    .line 261
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_7

    .line 262
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/taobao/weex/utils/BoxShadowUtil$OverflowBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_6
    const-string v0, "Call setNormalBoxShadow() requires API level 18 or higher."

    .line 267
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return-void

    :cond_8
    :goto_3
    const-string v0, "Target view is invisible, ignore set shadow."

    .line 202
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
