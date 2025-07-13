.class public Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
.super Ljava/lang/Object;
.source "BoxShadowUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/BoxShadowUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoxShadowOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$IParser;
    }
.end annotation


# instance fields
.field public blur:F

.field public color:I

.field public hShadow:F

.field public isInset:Z

.field private optionParamParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$IParser;",
            ">;"
        }
    .end annotation
.end field

.field public radii:[F

.field public spread:F

.field public topLeft:Landroid/graphics/PointF;

.field public vShadow:F

.field public viewHeight:I

.field public viewWidth:I

.field private viewport:F


# direct methods
.method private constructor <init>(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vp"
        }
    .end annotation

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x443b8000    # 750.0f

    .line 572
    iput v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewport:F

    const/4 v1, 0x0

    .line 576
    iput v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    .line 577
    iput v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    const/16 v2, 0x8

    new-array v2, v2, [F

    .line 578
    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    const/high16 v2, -0x1000000

    .line 579
    iput v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->color:I

    const/4 v2, 0x0

    .line 580
    iput-boolean v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->isInset:Z

    .line 582
    iput v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewWidth:I

    .line 583
    iput v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewHeight:I

    const/4 v2, 0x0

    .line 584
    iput-object v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 588
    iput p1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewport:F

    .line 590
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->optionParamParsers:Ljava/util/List;

    .line 592
    new-instance p1, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$1;

    invoke-direct {p1, p0}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$1;-><init>(Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)V

    .line 603
    new-instance v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions$2;-><init>(Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)V

    .line 613
    iget-object v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->optionParamParsers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->optionParamParsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method synthetic constructor <init>(FLcom/taobao/weex/utils/BoxShadowUtil$1;)V
    .locals 0

    .line 570
    invoke-direct {p0, p1}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;-><init>(F)V

    return-void
.end method

.method static synthetic access$500(Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)Ljava/util/List;
    .locals 0

    .line 570
    iget-object p0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->optionParamParsers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;)F
    .locals 0

    .line 570
    iget p0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewport:F

    return p0
.end method


# virtual methods
.method public getTargetCanvasRect()Landroid/graphics/Rect;
    .locals 4

    .line 645
    iget v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewWidth:I

    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 646
    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewHeight:I

    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    iget v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 647
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method public scale(F)Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    .line 619
    new-instance v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;

    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewport:F

    invoke-direct {v0, v1}, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;-><init>(F)V

    .line 620
    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    mul-float v1, v1, p1

    iput v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    .line 621
    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    mul-float v1, v1, p1

    iput v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    .line 622
    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    mul-float v1, v1, p1

    iput v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    .line 623
    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    mul-float v1, v1, p1

    iput v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    const/4 v1, 0x0

    .line 624
    :goto_0
    iget-object v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 625
    iget-object v3, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    aget v2, v2, v1

    mul-float v2, v2, p1

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 627
    :cond_0
    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewHeight:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    iput v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewHeight:I

    .line 628
    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewWidth:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    iput v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->viewWidth:I

    .line 630
    iget-object v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    if-eqz v1, :cond_1

    .line 631
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    .line 632
    iget-object v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, p1

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 633
    iget-object v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->topLeft:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, p1

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 636
    :cond_1
    iget v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->color:I

    iput v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->color:I

    .line 637
    iget-boolean v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->isInset:Z

    iput-boolean v1, v0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->isInset:Z

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scaled BoxShadowOptions: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BoxShadowUtil"

    invoke-static {v1, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->radii:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 655
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "BoxShadowOptions{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "h-shadow="

    .line 656
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->hShadow:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v2, ", v-shadow="

    .line 657
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->vShadow:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v2, ", blur="

    .line 658
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->blur:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v2, ", spread="

    .line 659
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->spread:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v2, ", corner-radius="

    .line 660
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ", color=#"

    .line 661
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->color:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ", inset="

    .line 662
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$BoxShadowOptions;->isInset:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const/16 v0, 0x7d

    .line 663
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 664
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
