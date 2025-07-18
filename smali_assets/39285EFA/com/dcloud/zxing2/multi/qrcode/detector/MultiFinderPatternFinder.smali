.class final Lcom/dcloud/zxing2/multi/qrcode/detector/MultiFinderPatternFinder;
.super Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/zxing2/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;
    }
.end annotation


# static fields
.field private static final DIFF_MODSIZE_CUTOFF:F = 0.5f

.field private static final DIFF_MODSIZE_CUTOFF_PERCENT:F = 0.05f

.field private static final EMPTY_RESULT_ARRAY:[Lcom/dcloud/zxing2/qrcode/detector/FinderPatternInfo;

.field private static final MAX_MODULE_COUNT_PER_EDGE:F = 180.0f

.field private static final MIN_MODULE_COUNT_PER_EDGE:F = 9.0f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/dcloud/zxing2/qrcode/detector/FinderPatternInfo;

    .line 1
    sput-object v0, Lcom/dcloud/zxing2/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/dcloud/zxing2/qrcode/detector/FinderPatternInfo;

    return-void
.end method

.method constructor <init>(Lcom/dcloud/zxing2/common/BitMatrix;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;-><init>(Lcom/dcloud/zxing2/common/BitMatrix;)V

    return-void
.end method

.method constructor <init>(Lcom/dcloud/zxing2/common/BitMatrix;Lcom/dcloud/zxing2/ResultPointCallback;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;-><init>(Lcom/dcloud/zxing2/common/BitMatrix;Lcom/dcloud/zxing2/ResultPointCallback;)V

    return-void
.end method

.method private selectMutipleBestPatterns()[[Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->getPossibleCenters()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_e

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v2, :cond_0

    new-array v1, v5, [[Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    new-array v2, v2, [Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    .line 15
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    aput-object v6, v2, v4

    .line 16
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    aput-object v6, v2, v5

    .line 17
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    aput-object v0, v2, v3

    aput-object v2, v1, v4

    return-object v1

    .line 23
    :cond_0
    new-instance v6, Lcom/dcloud/zxing2/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/dcloud/zxing2/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;-><init>(Lcom/dcloud/zxing2/multi/qrcode/detector/MultiFinderPatternFinder$1;)V

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 40
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_0
    add-int/lit8 v8, v1, -0x2

    if-ge v7, v8, :cond_c

    .line 43
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    if-nez v8, :cond_2

    :cond_1
    :goto_1
    const/4 v15, 0x2

    goto/16 :goto_7

    :cond_2
    add-int/lit8 v9, v7, 0x1

    :goto_2
    add-int/lit8 v10, v1, -0x1

    if-ge v9, v10, :cond_1

    .line 49
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    if-nez v10, :cond_4

    :cond_3
    :goto_3
    const/4 v15, 0x2

    goto/16 :goto_6

    .line 55
    :cond_4
    invoke-virtual {v8}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v11

    invoke-virtual {v10}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v12

    sub-float/2addr v11, v12

    .line 56
    invoke-virtual {v8}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v12

    invoke-virtual {v10}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    div-float/2addr v11, v12

    .line 57
    invoke-virtual {v8}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v12

    invoke-virtual {v10}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v13

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const v13, 0x3d4ccccd    # 0.05f

    const/high16 v14, 0x3f000000    # 0.5f

    cmpl-float v12, v12, v14

    if-lez v12, :cond_5

    cmpl-float v11, v11, v13

    if-ltz v11, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v11, v9, 0x1

    :goto_4
    if-ge v11, v1, :cond_3

    .line 65
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    if-nez v12, :cond_6

    const/4 v15, 0x2

    goto/16 :goto_5

    .line 71
    :cond_6
    invoke-virtual {v10}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v15

    invoke-virtual {v12}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v16

    sub-float v15, v15, v16

    .line 72
    invoke-virtual {v10}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v3

    invoke-virtual {v12}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v15, v3

    .line 73
    invoke-virtual {v10}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v3

    invoke-virtual {v12}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v5

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v14

    if-lez v3, :cond_7

    cmpl-float v3, v15, v13

    if-ltz v3, :cond_7

    goto :goto_3

    :cond_7
    new-array v3, v2, [Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    aput-object v8, v3, v4

    const/4 v5, 0x1

    aput-object v10, v3, v5

    const/4 v15, 0x2

    aput-object v12, v3, v15

    .line 81
    invoke-static {v3}, Lcom/dcloud/zxing2/ResultPoint;->orderBestPatterns([Lcom/dcloud/zxing2/ResultPoint;)V

    .line 84
    new-instance v12, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternInfo;

    invoke-direct {v12, v3}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternInfo;-><init>([Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;)V

    .line 85
    invoke-virtual {v12}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    move-result-object v2

    invoke-virtual {v12}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/dcloud/zxing2/ResultPoint;->distance(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)F

    move-result v2

    .line 86
    invoke-virtual {v12}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    move-result-object v4

    invoke-virtual {v12}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/dcloud/zxing2/ResultPoint;->distance(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)F

    move-result v4

    .line 87
    invoke-virtual {v12}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    move-result-object v5

    invoke-virtual {v12}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/dcloud/zxing2/ResultPoint;->distance(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)F

    move-result v5

    add-float v12, v2, v5

    .line 90
    invoke-virtual {v8}, Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    mul-float v17, v17, v18

    div-float v12, v12, v17

    const/high16 v17, 0x43340000    # 180.0f

    cmpl-float v17, v12, v17

    if-gtz v17, :cond_b

    const/high16 v17, 0x41100000    # 9.0f

    cmpg-float v12, v12, v17

    if-gez v12, :cond_8

    goto :goto_5

    :cond_8
    sub-float v12, v2, v5

    .line 97
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v17

    div-float v12, v12, v17

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const v17, 0x3dcccccd    # 0.1f

    cmpl-float v12, v12, v17

    if-ltz v12, :cond_9

    goto :goto_5

    :cond_9
    mul-float v2, v2, v2

    mul-float v5, v5, v5

    add-float/2addr v2, v5

    float-to-double v13, v2

    .line 103
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v2, v13

    sub-float v13, v4, v2

    .line 105
    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v13, v2

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v17

    if-ltz v2, :cond_a

    goto :goto_5

    .line 112
    :cond_a
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_5
    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v13, 0x3d4ccccd    # 0.05f

    const/high16 v14, 0x3f000000    # 0.5f

    goto/16 :goto_4

    :goto_6
    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_2

    :goto_7
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 117
    :cond_c
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 118
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    return-object v0

    .line 122
    :cond_d
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object v0

    throw v0

    .line 123
    :cond_e
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object v0

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method


# virtual methods
.method public findMulti(Ljava/util/Map;)[Lcom/dcloud/zxing2/qrcode/detector/FinderPatternInfo;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/DecodeHintType;",
            "*>;)[",
            "Lcom/dcloud/zxing2/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1
    sget-object v2, Lcom/dcloud/zxing2/DecodeHintType;->TRY_HARDER:Lcom/dcloud/zxing2/DecodeHintType;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    sget-object v3, Lcom/dcloud/zxing2/DecodeHintType;->PURE_BARCODE:Lcom/dcloud/zxing2/DecodeHintType;

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 3
    :goto_1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->getImage()Lcom/dcloud/zxing2/common/BitMatrix;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v4

    .line 5
    invoke-virtual {v3}, Lcom/dcloud/zxing2/common/BitMatrix;->getWidth()I

    move-result v5

    int-to-float v6, v4

    const/high16 v7, 0x43640000    # 228.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x40400000    # 3.0f

    mul-float v6, v6, v7

    float-to-int v6, v6

    const/4 v7, 0x3

    if-lt v6, v7, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v6, 0x3

    :cond_3
    const/4 v2, 0x5

    new-array v2, v2, [I

    add-int/lit8 v8, v6, -0x1

    :goto_2
    if-ge v8, v4, :cond_b

    aput v1, v2, v1

    aput v1, v2, v0

    const/4 v9, 0x2

    aput v1, v2, v9

    aput v1, v2, v7

    const/4 v10, 0x4

    aput v1, v2, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_3
    if-ge v11, v5, :cond_9

    .line 28
    invoke-virtual {v3, v11, v8}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v13

    if-eqz v13, :cond_5

    and-int/lit8 v13, v12, 0x1

    if-ne v13, v0, :cond_4

    add-int/lit8 v12, v12, 0x1

    .line 33
    :cond_4
    aget v13, v2, v12

    add-int/2addr v13, v0

    aput v13, v2, v12

    goto :goto_4

    :cond_5
    and-int/lit8 v13, v12, 0x1

    if-nez v13, :cond_8

    if-ne v12, v10, :cond_7

    .line 37
    invoke-static {v2}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {p0, v2, v8, v11, p1}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([IIIZ)Z

    move-result v12

    if-eqz v12, :cond_6

    aput v1, v2, v1

    aput v1, v2, v0

    aput v1, v2, v9

    aput v1, v2, v7

    aput v1, v2, v10

    const/4 v12, 0x0

    goto :goto_4

    .line 46
    :cond_6
    aget v12, v2, v9

    aput v12, v2, v1

    .line 47
    aget v12, v2, v7

    aput v12, v2, v0

    .line 48
    aget v12, v2, v10

    aput v12, v2, v9

    aput v0, v2, v7

    aput v1, v2, v10

    const/4 v12, 0x3

    goto :goto_4

    :cond_7
    add-int/lit8 v12, v12, 0x1

    .line 54
    aget v13, v2, v12

    add-int/2addr v13, v0

    aput v13, v2, v12

    goto :goto_4

    .line 57
    :cond_8
    aget v13, v2, v12

    add-int/2addr v13, v0

    aput v13, v2, v12

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 62
    :cond_9
    invoke-static {v2}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 63
    invoke-virtual {p0, v2, v8, v5, p1}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([IIIZ)Z

    :cond_a
    add-int/2addr v8, v6

    goto :goto_2

    .line 66
    :cond_b
    invoke-direct {p0}, Lcom/dcloud/zxing2/multi/qrcode/detector/MultiFinderPatternFinder;->selectMutipleBestPatterns()[[Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;

    move-result-object p1

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    array-length v2, p1

    :goto_5
    if-ge v1, v2, :cond_c

    aget-object v3, p1, v1

    .line 69
    invoke-static {v3}, Lcom/dcloud/zxing2/ResultPoint;->orderBestPatterns([Lcom/dcloud/zxing2/ResultPoint;)V

    .line 70
    new-instance v4, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternInfo;

    invoke-direct {v4, v3}, Lcom/dcloud/zxing2/qrcode/detector/FinderPatternInfo;-><init>([Lcom/dcloud/zxing2/qrcode/detector/FinderPattern;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 73
    :cond_c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 74
    sget-object p1, Lcom/dcloud/zxing2/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/dcloud/zxing2/qrcode/detector/FinderPatternInfo;

    return-object p1

    .line 76
    :cond_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/dcloud/zxing2/qrcode/detector/FinderPatternInfo;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/dcloud/zxing2/qrcode/detector/FinderPatternInfo;

    return-object p1
.end method
