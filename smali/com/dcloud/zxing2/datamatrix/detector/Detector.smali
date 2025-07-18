.class public final Lcom/dcloud/zxing2/datamatrix/detector/Detector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;,
        Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;
    }
.end annotation


# instance fields
.field private final image:Lcom/dcloud/zxing2/common/BitMatrix;

.field private final rectangleDetector:Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;


# direct methods
.method public constructor <init>(Lcom/dcloud/zxing2/common/BitMatrix;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    .line 3
    new-instance v0, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;

    invoke-direct {v0, p1}, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;-><init>(Lcom/dcloud/zxing2/common/BitMatrix;)V

    iput-object v0, p0, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->rectangleDetector:Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;

    return-void
.end method

.method private correctTopRight(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;I)Lcom/dcloud/zxing2/ResultPoint;
    .locals 5

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->distance(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)I

    move-result v0

    int-to-float v0, v0

    int-to-float p5, p5

    div-float/2addr v0, p5

    .line 2
    invoke-static {p3, p4}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->distance(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)I

    move-result v1

    .line 3
    invoke-virtual {p4}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v2

    invoke-virtual {p3}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 4
    invoke-virtual {p4}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v3

    invoke-virtual {p3}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    .line 6
    new-instance v1, Lcom/dcloud/zxing2/ResultPoint;

    invoke-virtual {p4}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v4

    mul-float v2, v2, v0

    add-float/2addr v4, v2

    invoke-virtual {p4}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v2

    mul-float v0, v0, v3

    add-float/2addr v2, v0

    invoke-direct {v1, v4, v2}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    .line 8
    invoke-static {p1, p3}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->distance(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p5

    .line 9
    invoke-static {p2, p4}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->distance(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)I

    move-result p5

    .line 10
    invoke-virtual {p4}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v0

    invoke-virtual {p2}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    int-to-float p5, p5

    div-float/2addr v0, p5

    .line 11
    invoke-virtual {p4}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v2

    invoke-virtual {p2}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, p5

    .line 13
    new-instance p5, Lcom/dcloud/zxing2/ResultPoint;

    invoke-virtual {p4}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v3

    mul-float v0, v0, p1

    add-float/2addr v3, v0

    invoke-virtual {p4}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result p4

    mul-float p1, p1, v2

    add-float/2addr p4, p1

    invoke-direct {p5, v3, p4}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    .line 15
    invoke-direct {p0, v1}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->isValid(Lcom/dcloud/zxing2/ResultPoint;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 16
    invoke-direct {p0, p5}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->isValid(Lcom/dcloud/zxing2/ResultPoint;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p5

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 21
    :cond_1
    invoke-direct {p0, p5}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->isValid(Lcom/dcloud/zxing2/ResultPoint;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v1

    .line 25
    :cond_2
    invoke-direct {p0, p3, v1}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->transitionsBetween(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result p1

    .line 26
    invoke-direct {p0, p2, v1}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->transitionsBetween(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object p4

    invoke-virtual {p4}, Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result p4

    sub-int/2addr p1, p4

    .line 27
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 29
    invoke-direct {p0, p3, p5}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->transitionsBetween(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object p3

    invoke-virtual {p3}, Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result p3

    .line 30
    invoke-direct {p0, p2, p5}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->transitionsBetween(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result p2

    sub-int/2addr p3, p2

    .line 31
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-gt p1, p2, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, p5

    :goto_0
    return-object v1
.end method

.method private correctTopRightRectangular(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;II)Lcom/dcloud/zxing2/ResultPoint;
    .locals 5

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->distance(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p5

    div-float/2addr v0, v1

    .line 2
    invoke-static {p3, p4}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->distance(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)I

    move-result v1

    .line 3
    invoke-virtual {p4}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v2

    invoke-virtual {p3}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 4
    invoke-virtual {p4}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v3

    invoke-virtual {p3}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    .line 6
    new-instance v1, Lcom/dcloud/zxing2/ResultPoint;

    invoke-virtual {p4}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v4

    mul-float v2, v2, v0

    add-float/2addr v4, v2

    invoke-virtual {p4}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v2

    mul-float v0, v0, v3

    add-float/2addr v2, v0

    invoke-direct {v1, v4, v2}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    .line 8
    invoke-static {p1, p3}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->distance(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)I

    move-result p1

    int-to-float p1, p1

    int-to-float v0, p6

    div-float/2addr p1, v0

    .line 9
    invoke-static {p2, p4}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->distance(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)I

    move-result v0

    .line 10
    invoke-virtual {p4}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v2

    invoke-virtual {p2}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 11
    invoke-virtual {p4}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v3

    invoke-virtual {p2}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v0

    .line 13
    new-instance v0, Lcom/dcloud/zxing2/ResultPoint;

    invoke-virtual {p4}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v4

    mul-float v2, v2, p1

    add-float/2addr v4, v2

    invoke-virtual {p4}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result p4

    mul-float p1, p1, v3

    add-float/2addr p4, p1

    invoke-direct {v0, v4, p4}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    .line 15
    invoke-direct {p0, v1}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->isValid(Lcom/dcloud/zxing2/ResultPoint;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 16
    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->isValid(Lcom/dcloud/zxing2/ResultPoint;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 21
    :cond_1
    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->isValid(Lcom/dcloud/zxing2/ResultPoint;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v1

    .line 25
    :cond_2
    invoke-direct {p0, p3, v1}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->transitionsBetween(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result p1

    sub-int p1, p5, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 26
    invoke-direct {p0, p2, v1}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->transitionsBetween(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object p4

    invoke-virtual {p4}, Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result p4

    sub-int p4, p6, p4

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    add-int/2addr p1, p4

    .line 27
    invoke-direct {p0, p3, v0}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->transitionsBetween(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object p3

    invoke-virtual {p3}, Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 28
    invoke-direct {p0, p2, v0}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->transitionsBetween(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result p2

    sub-int/2addr p6, p2

    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result p2

    add-int/2addr p3, p2

    if-gt p1, p3, :cond_3

    return-object v1

    :cond_3
    return-object v0
.end method

.method private static distance(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/dcloud/zxing2/ResultPoint;->distance(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)F

    move-result p0

    invoke-static {p0}, Lcom/dcloud/zxing2/common/detector/MathUtils;->round(F)I

    move-result p0

    return p0
.end method

.method private static increment(Ljava/util/Map;Lcom/dcloud/zxing2/ResultPoint;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/ResultPoint;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/dcloud/zxing2/ResultPoint;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v1, v0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isValid(Lcom/dcloud/zxing2/ResultPoint;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v2}, Lcom/dcloud/zxing2/common/BitMatrix;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static sampleGrid(Lcom/dcloud/zxing2/common/BitMatrix;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;II)Lcom/dcloud/zxing2/common/BitMatrix;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    .line 1
    invoke-static {}, Lcom/dcloud/zxing2/common/GridSampler;->getInstance()Lcom/dcloud/zxing2/common/GridSampler;

    move-result-object v0

    move/from16 v4, p5

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float v6, v4, v5

    move v8, v6

    move/from16 v4, p6

    int-to-float v4, v4

    sub-float v11, v4, v5

    move v9, v11

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v12

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v13

    .line 16
    invoke-virtual/range {p4 .. p4}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v14

    .line 17
    invoke-virtual/range {p4 .. p4}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v15

    .line 18
    invoke-virtual/range {p3 .. p3}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v16

    .line 19
    invoke-virtual/range {p3 .. p3}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v17

    .line 20
    invoke-virtual/range {p2 .. p2}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v18

    .line 21
    invoke-virtual/range {p2 .. p2}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v19

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f000000    # 0.5f

    .line 22
    invoke-virtual/range {v0 .. v19}, Lcom/dcloud/zxing2/common/GridSampler;->sampleGrid(Lcom/dcloud/zxing2/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/dcloud/zxing2/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method private transitionsBetween(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 3
    invoke-virtual/range {p2 .. p2}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 4
    invoke-virtual/range {p2 .. p2}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int v5, v4, v2

    .line 5
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int v6, v3, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-le v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v16, v2

    move v2, v1

    move/from16 v1, v16

    move/from16 v17, v4

    move v4, v3

    move/from16 v3, v17

    :goto_1
    sub-int v6, v4, v2

    .line 15
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int v9, v3, v1

    .line 16
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    neg-int v10, v6

    .line 17
    div-int/lit8 v10, v10, 0x2

    const/4 v11, -0x1

    if-ge v1, v3, :cond_2

    const/4 v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, -0x1

    :goto_2
    if-ge v2, v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v8, -0x1

    .line 21
    :goto_3
    iget-object v11, v0, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    if-eqz v5, :cond_4

    move v13, v1

    goto :goto_4

    :cond_4
    move v13, v2

    :goto_4
    if-eqz v5, :cond_5

    move v14, v2

    goto :goto_5

    :cond_5
    move v14, v1

    :goto_5
    invoke-virtual {v11, v13, v14}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v11

    :goto_6
    if-eq v2, v4, :cond_b

    .line 23
    iget-object v13, v0, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    if-eqz v5, :cond_6

    move v14, v1

    goto :goto_7

    :cond_6
    move v14, v2

    :goto_7
    if-eqz v5, :cond_7

    move v15, v2

    goto :goto_8

    :cond_7
    move v15, v1

    :goto_8
    invoke-virtual {v13, v14, v15}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v13

    if-eq v13, v11, :cond_8

    add-int/lit8 v7, v7, 0x1

    move v11, v13

    :cond_8
    add-int/2addr v10, v9

    if-lez v10, :cond_a

    if-ne v1, v3, :cond_9

    goto :goto_9

    :cond_9
    add-int/2addr v1, v12

    sub-int/2addr v10, v6

    :cond_a
    add-int/2addr v2, v8

    goto :goto_6

    .line 37
    :cond_b
    :goto_9
    new-instance v1, Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;

    const/4 v2, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct {v1, v3, v4, v7, v2}, Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;-><init>(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;ILcom/dcloud/zxing2/datamatrix/detector/Detector$1;)V

    return-object v1
.end method


# virtual methods
.method public detect()Lcom/dcloud/zxing2/common/DetectorResult;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    move-object/from16 v7, p0

    .line 1
    iget-object v0, v7, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->rectangleDetector:Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/common/detector/WhiteRectangleDetector;->detect()[Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v0

    const/4 v8, 0x0

    .line 2
    aget-object v1, v0, v8

    const/4 v9, 0x1

    .line 3
    aget-object v2, v0, v9

    const/4 v10, 0x2

    .line 4
    aget-object v3, v0, v10

    const/4 v11, 0x3

    .line 5
    aget-object v0, v0, v11

    .line 10
    new-instance v4, Ljava/util/ArrayList;

    const/4 v12, 0x4

    invoke-direct {v4, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-direct {v7, v1, v2}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->transitionsBetween(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-direct {v7, v1, v3}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->transitionsBetween(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-direct {v7, v2, v0}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->transitionsBetween(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-direct {v7, v3, v0}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->transitionsBetween(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v5, Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;-><init>(Lcom/dcloud/zxing2/datamatrix/detector/Detector$1;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 19
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;

    .line 20
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;

    .line 24
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 25
    invoke-virtual {v5}, Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;->getFrom()Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->increment(Ljava/util/Map;Lcom/dcloud/zxing2/ResultPoint;)V

    .line 26
    invoke-virtual {v5}, Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTo()Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->increment(Ljava/util/Map;Lcom/dcloud/zxing2/ResultPoint;)V

    .line 27
    invoke-virtual {v4}, Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;->getFrom()Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->increment(Ljava/util/Map;Lcom/dcloud/zxing2/ResultPoint;)V

    .line 28
    invoke-virtual {v4}, Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTo()Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->increment(Ljava/util/Map;Lcom/dcloud/zxing2/ResultPoint;)V

    .line 33
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v6

    move-object v14, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 34
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/dcloud/zxing2/ResultPoint;

    .line 35
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 36
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v15, v10, :cond_0

    move-object/from16 v5, v16

    goto :goto_0

    :cond_0
    if-nez v6, :cond_1

    move-object/from16 v6, v16

    goto :goto_0

    :cond_1
    move-object/from16 v14, v16

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_f

    if-eqz v5, :cond_f

    if-eqz v14, :cond_f

    new-array v4, v11, [Lcom/dcloud/zxing2/ResultPoint;

    aput-object v6, v4, v8

    aput-object v5, v4, v9

    aput-object v14, v4, v10

    .line 55
    invoke-static {v4}, Lcom/dcloud/zxing2/ResultPoint;->orderBestPatterns([Lcom/dcloud/zxing2/ResultPoint;)V

    .line 58
    aget-object v14, v4, v8

    .line 59
    aget-object v22, v4, v9

    .line 60
    aget-object v6, v4, v10

    .line 64
    invoke-interface {v13, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object v13, v1

    goto :goto_1

    .line 66
    :cond_3
    invoke-interface {v13, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    move-object v13, v2

    goto :goto_1

    .line 68
    :cond_4
    invoke-interface {v13, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    move-object v13, v3

    goto :goto_1

    :cond_5
    move-object v13, v0

    .line 83
    :goto_1
    invoke-direct {v7, v6, v13}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->transitionsBetween(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v0

    .line 84
    invoke-direct {v7, v14, v13}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->transitionsBetween(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v1

    and-int/lit8 v2, v0, 0x1

    if-ne v2, v9, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    add-int/lit8 v5, v0, 0x2

    and-int/lit8 v0, v1, 0x1

    if-ne v0, v9, :cond_7

    add-int/lit8 v1, v1, 0x1

    :cond_7
    add-int/lit8 v15, v1, 0x2

    mul-int/lit8 v0, v5, 0x4

    mul-int/lit8 v1, v15, 0x7

    if-ge v0, v1, :cond_b

    mul-int/lit8 v0, v15, 0x4

    mul-int/lit8 v1, v5, 0x7

    if-lt v0, v1, :cond_8

    goto :goto_3

    .line 131
    :cond_8
    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object v2, v14

    move-object v3, v6

    move-object v4, v13

    .line 133
    invoke-direct/range {v0 .. v5}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->correctTopRight(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;I)Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_2

    :cond_9
    move-object v13, v0

    .line 139
    :goto_2
    invoke-direct {v7, v6, v13}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->transitionsBetween(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v0

    .line 140
    invoke-direct {v7, v14, v13}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->transitionsBetween(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v1

    .line 141
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v9

    and-int/lit8 v1, v0, 0x1

    if-ne v1, v9, :cond_a

    add-int/lit8 v0, v0, 0x1

    :cond_a
    move/from16 v21, v0

    .line 148
    iget-object v15, v7, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    move-object/from16 v16, v6

    move-object/from16 v17, v22

    move-object/from16 v18, v14

    move-object/from16 v19, v13

    move/from16 v20, v21

    invoke-static/range {v15 .. v21}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->sampleGrid(Lcom/dcloud/zxing2/common/BitMatrix;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;II)Lcom/dcloud/zxing2/common/BitMatrix;

    move-result-object v0

    move-object v11, v6

    goto :goto_5

    :cond_b
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object v2, v14

    move-object v3, v6

    move-object v4, v13

    move-object v11, v6

    move v6, v15

    .line 149
    invoke-direct/range {v0 .. v6}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->correctTopRightRectangular(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;II)Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_4

    :cond_c
    move-object v13, v0

    .line 154
    :goto_4
    invoke-direct {v7, v11, v13}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->transitionsBetween(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v0

    .line 155
    invoke-direct {v7, v14, v13}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->transitionsBetween(Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dcloud/zxing2/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v1

    and-int/lit8 v2, v0, 0x1

    if-ne v2, v9, :cond_d

    add-int/lit8 v0, v0, 0x1

    :cond_d
    move/from16 v20, v0

    and-int/lit8 v0, v1, 0x1

    if-ne v0, v9, :cond_e

    add-int/lit8 v1, v1, 0x1

    :cond_e
    move/from16 v21, v1

    .line 167
    iget-object v15, v7, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    move-object/from16 v16, v11

    move-object/from16 v17, v22

    move-object/from16 v18, v14

    move-object/from16 v19, v13

    invoke-static/range {v15 .. v21}, Lcom/dcloud/zxing2/datamatrix/detector/Detector;->sampleGrid(Lcom/dcloud/zxing2/common/BitMatrix;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;II)Lcom/dcloud/zxing2/common/BitMatrix;

    move-result-object v0

    .line 196
    :goto_5
    new-instance v1, Lcom/dcloud/zxing2/common/DetectorResult;

    new-array v2, v12, [Lcom/dcloud/zxing2/ResultPoint;

    aput-object v11, v2, v8

    aput-object v22, v2, v9

    aput-object v14, v2, v10

    const/4 v3, 0x3

    aput-object v13, v2, v3

    invoke-direct {v1, v0, v2}, Lcom/dcloud/zxing2/common/DetectorResult;-><init>(Lcom/dcloud/zxing2/common/BitMatrix;[Lcom/dcloud/zxing2/ResultPoint;)V

    return-object v1

    .line 197
    :cond_f
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object v0

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method
