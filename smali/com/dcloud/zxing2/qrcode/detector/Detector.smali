.class public Lcom/dcloud/zxing2/qrcode/detector/Detector;
.super Ljava/lang/Object;


# instance fields
.field private final image:Lcom/dcloud/zxing2/common/BitMatrix;

.field private resultPointCallback:Lcom/dcloud/zxing2/ResultPointCallback;


# direct methods
.method public constructor <init>(Lcom/dcloud/zxing2/common/BitMatrix;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dcloud/zxing2/qrcode/detector/Detector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    return-void
.end method

.method private calculateModuleSizeOneWay(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)F
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p1}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 3
    invoke-virtual {p2}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 4
    invoke-virtual {p2}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 5
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/dcloud/zxing2/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRunBothWays(IIII)F

    move-result v0

    .line 9
    invoke-virtual {p2}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 10
    invoke-virtual {p2}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 11
    invoke-virtual {p1}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 12
    invoke-virtual {p1}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 13
    invoke-direct {p0, v1, p2, v2, p1}, Lcom/dcloud/zxing2/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRunBothWays(IIII)F

    move-result p1

    .line 17
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    const/high16 v1, 0x40e00000    # 7.0f

    if-eqz p2, :cond_0

    div-float/2addr p1, v1

    return p1

    .line 20
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-eqz p2, :cond_1

    div-float/2addr v0, v1

    return v0

    :cond_1
    add-float/2addr v0, p1

    const/high16 p1, 0x41600000    # 14.0f

    div-float/2addr v0, p1

    return v0
.end method

.method private static computeDimension(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;F)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/dcloud/zxing2/ResultPoint;->distance(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)F

    move-result p1

    div-float/2addr p1, p3

    invoke-static {p1}, Lcom/dcloud/zxing2/common/detector/MathUtils;->round(F)I

    move-result p1

    .line 2
    invoke-static {p0, p2}, Lcom/dcloud/zxing2/ResultPoint;->distance(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)F

    move-result p0

    div-float/2addr p0, p3

    invoke-static {p0}, Lcom/dcloud/zxing2/common/detector/MathUtils;->round(F)I

    move-result p0

    add-int/2addr p1, p0

    const/4 p0, 0x2

    .line 3
    div-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x7

    and-int/lit8 p2, p1, 0x3

    if-eqz p2, :cond_2

    if-eq p2, p0, :cond_1

    const/4 p0, 0x3

    if-eq p2, p0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p0

    throw p0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    :goto_0
    return p1
.end method

.method private static createTransform(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;I)Lcom/dcloud/zxing2/common/PerspectiveTransform;
    .locals 18

    move/from16 v0, p4

    int-to-float v0, v0

    const/high16 v1, 0x40600000    # 3.5f

    sub-float v9, v0, v1

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual/range {p3 .. p3}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v0

    .line 2
    invoke-virtual/range {p3 .. p3}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    sub-float v2, v9, v2

    move v14, v0

    move v15, v1

    move v7, v2

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual/range {p2 .. p2}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v1

    add-float/2addr v0, v1

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v2

    add-float/2addr v1, v2

    move v14, v0

    move v15, v1

    move v7, v9

    .line 22
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v10

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v11

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v12

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v13

    .line 28
    invoke-virtual/range {p2 .. p2}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v16

    .line 29
    invoke-virtual/range {p2 .. p2}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v17

    const/high16 v2, 0x40600000    # 3.5f

    const/high16 v3, 0x40600000    # 3.5f

    const/high16 v5, 0x40600000    # 3.5f

    const/high16 v8, 0x40600000    # 3.5f

    move v4, v9

    move v6, v7

    .line 30
    invoke-static/range {v2 .. v17}, Lcom/dcloud/zxing2/common/PerspectiveTransform;->quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/dcloud/zxing2/common/PerspectiveTransform;

    move-result-object v0

    return-object v0
.end method

.method private static sampleGrid(Lcom/dcloud/zxing2/common/BitMatrix;Lcom/dcloud/zxing2/common/PerspectiveTransform;I)Lcom/dcloud/zxing2/common/BitMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/dcloud/zxing2/common/GridSampler;->getInstance()Lcom/dcloud/zxing2/common/GridSampler;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0, p2, p2, p1}, Lcom/dcloud/zxing2/common/GridSampler;->sampleGrid(Lcom/dcloud/zxing2/common/BitMatrix;IILcom/dcloud/zxing2/common/PerspectiveTransform;)Lcom/dcloud/zxing2/common/BitMatrix;

    move-result-object p0

    return-object p0
.end method

.method private sizeOfBlackWhiteBlackRun(IIII)F
    .locals 17

    sub-int v0, p4, p2

    .line 1
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v1, p3, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move/from16 v4, p1

    move/from16 v1, p2

    move/from16 v6, p3

    move/from16 v5, p4

    goto :goto_1

    :cond_1
    move/from16 v1, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    :goto_1
    sub-int v7, v5, v1

    .line 11
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int v8, v6, v4

    .line 12
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    neg-int v9, v7

    const/4 v10, 0x2

    .line 13
    div-int/2addr v9, v10

    const/4 v11, -0x1

    if-ge v1, v5, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, -0x1

    :goto_2
    if-ge v4, v6, :cond_3

    const/4 v11, 0x1

    :cond_3
    add-int/2addr v5, v12

    move v13, v1

    move v14, v4

    const/4 v15, 0x0

    :goto_3
    if-eq v13, v5, :cond_b

    if-eqz v0, :cond_4

    move v2, v14

    goto :goto_4

    :cond_4
    move v2, v13

    :goto_4
    if-eqz v0, :cond_5

    move v10, v13

    goto :goto_5

    :cond_5
    move v10, v14

    :goto_5
    if-ne v15, v3, :cond_6

    move-object/from16 v3, p0

    move/from16 v16, v0

    move/from16 p2, v5

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    move-object/from16 v3, p0

    move/from16 v16, v0

    move/from16 p2, v5

    const/4 v0, 0x0

    .line 28
    :goto_6
    iget-object v5, v3, Lcom/dcloud/zxing2/qrcode/detector/Detector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v5, v2, v10}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v2

    if-ne v0, v2, :cond_8

    const/4 v0, 0x2

    if-ne v15, v0, :cond_7

    .line 30
    invoke-static {v13, v14, v1, v4}, Lcom/dcloud/zxing2/common/detector/MathUtils;->distance(IIII)F

    move-result v0

    return v0

    :cond_7
    add-int/lit8 v15, v15, 0x1

    :cond_8
    add-int/2addr v9, v8

    if-lez v9, :cond_a

    if-ne v14, v6, :cond_9

    goto :goto_7

    :cond_9
    add-int/2addr v14, v11

    sub-int/2addr v9, v7

    :cond_a
    add-int/2addr v13, v12

    move/from16 v5, p2

    move/from16 v0, v16

    const/4 v3, 0x1

    const/4 v10, 0x2

    goto :goto_3

    :cond_b
    move-object/from16 v3, p0

    move/from16 p2, v5

    :goto_7
    const/4 v0, 0x2

    if-ne v15, v0, :cond_c

    move/from16 v5, p2

    .line 48
    invoke-static {v5, v6, v1, v4}, Lcom/dcloud/zxing2/common/detector/MathUtils;->distance(IIII)F

    move-result v0

    return v0

    :cond_c
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method private sizeOfBlackWhiteBlackRunBothWays(IIII)F
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dcloud/zxing2/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRun(IIII)F

    move-result v0

    sub-int/2addr p3, p1

    sub-int p3, p1, p3

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez p3, :cond_0

    int-to-float v3, p1

    sub-int p3, p1, p3

    int-to-float p3, p3

    div-float/2addr v3, p3

    const/4 p3, 0x0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v3, p0, Lcom/dcloud/zxing2/qrcode/detector/Detector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v3}, Lcom/dcloud/zxing2/common/BitMatrix;->getWidth()I

    move-result v3

    if-lt p3, v3, :cond_1

    .line 10
    iget-object v3, p0, Lcom/dcloud/zxing2/qrcode/detector/Detector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v3}, Lcom/dcloud/zxing2/common/BitMatrix;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, p1

    int-to-float v3, v3

    sub-int/2addr p3, p1

    int-to-float p3, p3

    div-float/2addr v3, p3

    .line 11
    iget-object p3, p0, Lcom/dcloud/zxing2/qrcode/detector/Detector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {p3}, Lcom/dcloud/zxing2/common/BitMatrix;->getWidth()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    int-to-float v4, p2

    sub-int/2addr p4, p2

    int-to-float p4, p4

    mul-float p4, p4, v3

    sub-float p4, v4, p4

    float-to-int p4, p4

    if-gez p4, :cond_2

    sub-int p4, p2, p4

    int-to-float p4, p4

    div-float/2addr v4, p4

    goto :goto_1

    .line 19
    :cond_2
    iget-object v1, p0, Lcom/dcloud/zxing2/qrcode/detector/Detector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v1

    if-lt p4, v1, :cond_3

    .line 20
    iget-object v1, p0, Lcom/dcloud/zxing2/qrcode/detector/Detector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p2

    int-to-float v1, v1

    sub-int/2addr p4, p2

    int-to-float p4, p4

    div-float v4, v1, p4

    .line 21
    iget-object p4, p0, Lcom/dcloud/zxing2/qrcode/detector/Detector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {p4}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result p4

    add-int/lit8 v1, p4, -0x1

    goto :goto_1

    :cond_3
    move v1, p4

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_1
    int-to-float p4, p1

    sub-int/2addr p3, p1

    int-to-float p3, p3

    mul-float p3, p3, v4

    add-float/2addr p4, p3

    float-to-int p3, p4

    .line 25
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/dcloud/zxing2/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRun(IIII)F

    move-result p1

    add-float/2addr v0, p1

    sub-float/2addr v0, v2

    return v0
.end method


# virtual methods
.method protected final calculateModuleSize(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)F
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/zxing2/qrcode/detector/Detector;->calculateModuleSizeOneWay(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)F

    move-result p2

    .line 2
    invoke-direct {p0, p1, p3}, Lcom/dcloud/zxing2/qrcode/detector/Detector;->calculateModuleSizeOneWay(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)F

    move-result p1

    add-float/2addr p2, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p2, p1

    return p2
.end method

.method public detect()Lcom/dcloud/zxing2/common/DetectorResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;,
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/dcloud/zxing2/qrcode/detector/Detector;->detect(Ljava/util/Map;)Lcom/dcloud/zxing2/common/DetectorResult;

    move-result-object v0

    return-object v0
.end method

.method public final detect(Ljava/util/Map;)Lcom/dcloud/zxing2/common/DetectorResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/DecodeHintType;",
            "*>;)",
            "Lcom/dcloud/zxing2/common/DetectorResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;,
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/dcloud/zxing2/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/dcloud/zxing2/DecodeHintType;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dcloud/zxing2/ResultPointCallback;

    :goto_0
    iput-object v0, p0, Lcom/dcloud/zxing2/qrcode/detector/Detector;->resultPointCallback:Lcom/dcloud/zxing2/ResultPointCallback;

    .line 4
    new-instance v1, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;

    iget-object v2, p0, Lcom/dcloud/zxing2/qrcode/detector/Detector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-direct {v1, v2, v0}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;-><init>(Lcom/dcloud/zxing2/common/BitMatrix;Lcom/dcloud/zxing2/ResultPointCallback;)V

    .line 5
    invoke-virtual {v1, p1}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->find(Ljava/util/Map;)Lcom/dcloud/zxing2/qrcode/detector/FinderPatternInfo;

    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/qrcode/detector/Detector;->processFinderPatternInfo(Lcom/dcloud/zxing2/qrcode/detector/FinderPatternInfo;)Lcom/dcloud/zxing2/common/DetectorResult;

    move-result-object p1

    return-object p1
.end method

.method protected final findAlignmentInRegion(FIIF)Lcom/dcloud/zxing2/qrcode/detector/AlignmentPattern;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    mul-float p4, p4, p1

    float-to-int p4, p4

    sub-int v0, p2, p4

    const/4 v1, 0x0

    .line 1
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/detector/Detector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/common/BitMatrix;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int/2addr p2, p4

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int v6, p2, v4

    int-to-float p2, v6

    const/high16 v0, 0x40400000    # 3.0f

    mul-float v0, v0, p1

    cmpg-float p2, p2, v0

    if-ltz p2, :cond_1

    sub-int p2, p3, p4

    .line 7
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 8
    iget-object p2, p0, Lcom/dcloud/zxing2/qrcode/detector/Detector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {p2}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    add-int/2addr p3, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int v7, p2, v5

    int-to-float p2, v7

    cmpg-float p2, p2, v0

    if-ltz p2, :cond_0

    .line 13
    new-instance p2, Lcom/dcloud/zxing2/qrcode/detector/AlignmentPatternFinder;

    iget-object v3, p0, Lcom/dcloud/zxing2/qrcode/detector/Detector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    iget-object v9, p0, Lcom/dcloud/zxing2/qrcode/detector/Detector;->resultPointCallback:Lcom/dcloud/zxing2/ResultPointCallback;

    move-object v2, p2

    move v8, p1

    invoke-direct/range {v2 .. v9}, Lcom/dcloud/zxing2/qrcode/detector/AlignmentPatternFinder;-><init>(Lcom/dcloud/zxing2/common/BitMatrix;IIIIFLcom/dcloud/zxing2/ResultPointCallback;)V

    .line 22
    invoke-virtual {p2}, Lcom/dcloud/zxing2/qrcode/detector/AlignmentPatternFinder;->find()Lcom/dcloud/zxing2/qrcode/detector/AlignmentPattern;

    move-result-object p1

    return-object p1

    .line 23
    :cond_0
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    .line 24
    :cond_1
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method protected final getImage()Lcom/dcloud/zxing2/common/BitMatrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/detector/Detector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    return-object v0
.end method

.method protected final getResultPointCallback()Lcom/dcloud/zxing2/ResultPointCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/detector/Detector;->resultPointCallback:Lcom/dcloud/zxing2/ResultPointCallback;

    return-object v0
.end method

.method protected final processFinderPatternInfo(Lcom/dcloud/zxing2/qrcode/detector/FinderPatternInfo;)Lcom/dcloud/zxing2/common/DetectorResult;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;,
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    move-result-object p1

    .line 5
    invoke-virtual {p0, v0, v1, p1}, Lcom/dcloud/zxing2/qrcode/detector/Detector;->calculateModuleSize(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, v2, v3

    if-ltz v4, :cond_2

    .line 9
    invoke-static {v0, v1, p1, v2}, Lcom/dcloud/zxing2/qrcode/detector/Detector;->computeDimension(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;F)I

    move-result v4

    .line 10
    invoke-static {v4}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->getProvisionalVersionForDimension(I)Lcom/dcloud/zxing2/qrcode/decoder/Version;

    move-result-object v5

    .line 11
    invoke-virtual {v5}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v6

    add-int/lit8 v6, v6, -0x7

    const/4 v7, 0x0

    .line 15
    invoke-virtual {v5}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->getAlignmentPatternCenters()[I

    move-result-object v5

    array-length v5, v5

    const/4 v8, 0x4

    if-lez v5, :cond_0

    .line 18
    invoke-virtual {v1}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v5

    invoke-virtual {v0}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v9

    sub-float/2addr v5, v9

    invoke-virtual {p1}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v9

    add-float/2addr v5, v9

    .line 19
    invoke-virtual {v1}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v9

    invoke-virtual {v0}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {p1}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v10

    add-float/2addr v9, v10

    int-to-float v6, v6

    const/high16 v10, 0x40400000    # 3.0f

    div-float/2addr v10, v6

    sub-float/2addr v3, v10

    .line 24
    invoke-virtual {v0}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v6

    invoke-virtual {v0}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v10

    sub-float/2addr v5, v10

    mul-float v5, v5, v3

    add-float/2addr v6, v5

    float-to-int v5, v6

    .line 25
    invoke-virtual {v0}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v6

    invoke-virtual {v0}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    mul-float v3, v3, v9

    add-float/2addr v6, v3

    float-to-int v3, v6

    const/4 v6, 0x4

    :goto_0
    const/16 v9, 0x10

    if-gt v6, v9, :cond_0

    int-to-float v9, v6

    .line 30
    :try_start_0
    invoke-virtual {p0, v2, v5, v3, v9}, Lcom/dcloud/zxing2/qrcode/detector/Detector;->findAlignmentInRegion(FIIF)Lcom/dcloud/zxing2/qrcode/detector/AlignmentPattern;

    move-result-object v7
    :try_end_0
    .catch Lcom/dcloud/zxing2/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    shl-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 42
    :cond_0
    :goto_1
    invoke-static {v0, v1, p1, v7, v4}, Lcom/dcloud/zxing2/qrcode/detector/Detector;->createTransform(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;I)Lcom/dcloud/zxing2/common/PerspectiveTransform;

    move-result-object v3

    .line 44
    iget-object v5, p0, Lcom/dcloud/zxing2/qrcode/detector/Detector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-static {v5, v3, v4}, Lcom/dcloud/zxing2/qrcode/detector/Detector;->sampleGrid(Lcom/dcloud/zxing2/common/BitMatrix;Lcom/dcloud/zxing2/common/PerspectiveTransform;I)Lcom/dcloud/zxing2/common/BitMatrix;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v9, 0x1

    if-nez v7, :cond_1

    new-array v4, v4, [Lcom/dcloud/zxing2/ResultPoint;

    aput-object p1, v4, v6

    aput-object v0, v4, v9

    aput-object v1, v4, v5

    goto :goto_2

    :cond_1
    new-array v8, v8, [Lcom/dcloud/zxing2/ResultPoint;

    aput-object p1, v8, v6

    aput-object v0, v8, v9

    aput-object v1, v8, v5

    aput-object v7, v8, v4

    move-object v4, v8

    .line 52
    :goto_2
    new-instance p1, Lcom/dcloud/zxing2/common/DetectorResult;

    invoke-direct {p1, v3, v4}, Lcom/dcloud/zxing2/common/DetectorResult;-><init>(Lcom/dcloud/zxing2/common/BitMatrix;[Lcom/dcloud/zxing2/ResultPoint;)V

    .line 53
    iput v2, p1, Lcom/dcloud/zxing2/common/DetectorResult;->moduleSize:F

    return-object p1

    .line 54
    :cond_2
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
