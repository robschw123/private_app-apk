.class final Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;
.super Ljava/lang/Object;


# instance fields
.field private bottomLeft:Lcom/dcloud/zxing2/ResultPoint;

.field private bottomRight:Lcom/dcloud/zxing2/ResultPoint;

.field private image:Lcom/dcloud/zxing2/common/BitMatrix;

.field private maxX:I

.field private maxY:I

.field private minX:I

.field private minY:I

.field private topLeft:Lcom/dcloud/zxing2/ResultPoint;

.field private topRight:Lcom/dcloud/zxing2/ResultPoint;


# direct methods
.method constructor <init>(Lcom/dcloud/zxing2/common/BitMatrix;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    if-eqz p4, :cond_3

    :cond_0
    if-nez p3, :cond_1

    if-eqz p5, :cond_3

    :cond_1
    if-eqz p2, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    if-eqz p4, :cond_4

    if-eqz p5, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    .line 8
    :cond_4
    :goto_0
    invoke-direct/range {p0 .. p5}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->init(Lcom/dcloud/zxing2/common/BitMatrix;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)V

    return-void
.end method

.method constructor <init>(Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;)V
    .locals 6

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iget-object v1, p1, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    iget-object v2, p1, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->topLeft:Lcom/dcloud/zxing2/ResultPoint;

    iget-object v3, p1, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/dcloud/zxing2/ResultPoint;

    iget-object v4, p1, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->topRight:Lcom/dcloud/zxing2/ResultPoint;

    iget-object v5, p1, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->bottomRight:Lcom/dcloud/zxing2/ResultPoint;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->init(Lcom/dcloud/zxing2/common/BitMatrix;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)V

    return-void
.end method

.method private calculateMinMaxValues()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->topLeft:Lcom/dcloud/zxing2/ResultPoint;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/dcloud/zxing2/ResultPoint;

    iget-object v1, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->topRight:Lcom/dcloud/zxing2/ResultPoint;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    iput-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->topLeft:Lcom/dcloud/zxing2/ResultPoint;

    .line 3
    new-instance v0, Lcom/dcloud/zxing2/ResultPoint;

    iget-object v1, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->bottomRight:Lcom/dcloud/zxing2/ResultPoint;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    iput-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/dcloud/zxing2/ResultPoint;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->topRight:Lcom/dcloud/zxing2/ResultPoint;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/dcloud/zxing2/ResultPoint;

    iget-object v1, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitMatrix;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->topLeft:Lcom/dcloud/zxing2/ResultPoint;

    invoke-virtual {v2}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    iput-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->topRight:Lcom/dcloud/zxing2/ResultPoint;

    .line 6
    new-instance v0, Lcom/dcloud/zxing2/ResultPoint;

    iget-object v1, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitMatrix;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/dcloud/zxing2/ResultPoint;

    invoke-virtual {v2}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    iput-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->bottomRight:Lcom/dcloud/zxing2/ResultPoint;

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->topLeft:Lcom/dcloud/zxing2/ResultPoint;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/dcloud/zxing2/ResultPoint;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->minX:I

    .line 10
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->topRight:Lcom/dcloud/zxing2/ResultPoint;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->bottomRight:Lcom/dcloud/zxing2/ResultPoint;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->maxX:I

    .line 11
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->topLeft:Lcom/dcloud/zxing2/ResultPoint;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->topRight:Lcom/dcloud/zxing2/ResultPoint;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->minY:I

    .line 12
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/dcloud/zxing2/ResultPoint;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->bottomRight:Lcom/dcloud/zxing2/ResultPoint;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->maxY:I

    return-void
.end method

.method private init(Lcom/dcloud/zxing2/common/BitMatrix;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    .line 2
    iput-object p2, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->topLeft:Lcom/dcloud/zxing2/ResultPoint;

    .line 3
    iput-object p3, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/dcloud/zxing2/ResultPoint;

    .line 4
    iput-object p4, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->topRight:Lcom/dcloud/zxing2/ResultPoint;

    .line 5
    iput-object p5, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->bottomRight:Lcom/dcloud/zxing2/ResultPoint;

    .line 6
    invoke-direct {p0}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->calculateMinMaxValues()V

    return-void
.end method

.method static merge(Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;)Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 1
    :cond_1
    new-instance v6, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;

    iget-object v1, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    iget-object v2, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->topLeft:Lcom/dcloud/zxing2/ResultPoint;

    iget-object v3, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/dcloud/zxing2/ResultPoint;

    iget-object v4, p1, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->topRight:Lcom/dcloud/zxing2/ResultPoint;

    iget-object v5, p1, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->bottomRight:Lcom/dcloud/zxing2/ResultPoint;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;-><init>(Lcom/dcloud/zxing2/common/BitMatrix;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)V

    return-object v6
.end method


# virtual methods
.method addMissingRows(IIZ)Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->topLeft:Lcom/dcloud/zxing2/ResultPoint;

    .line 2
    iget-object v1, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/dcloud/zxing2/ResultPoint;

    .line 3
    iget-object v2, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->topRight:Lcom/dcloud/zxing2/ResultPoint;

    .line 4
    iget-object v3, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->bottomRight:Lcom/dcloud/zxing2/ResultPoint;

    if-lez p1, :cond_3

    if-eqz p3, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v2

    .line 8
    :goto_0
    invoke-virtual {v4}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v5, p1

    if-gez v5, :cond_1

    const/4 v5, 0x0

    .line 12
    :cond_1
    new-instance p1, Lcom/dcloud/zxing2/ResultPoint;

    invoke-virtual {v4}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v4

    int-to-float v5, v5

    invoke-direct {p1, v4, v5}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    if-eqz p3, :cond_2

    move-object v8, p1

    goto :goto_1

    :cond_2
    move-object v10, p1

    move-object v8, v0

    goto :goto_2

    :cond_3
    move-object v8, v0

    :goto_1
    move-object v10, v2

    :goto_2
    if-lez p2, :cond_7

    if-eqz p3, :cond_4

    .line 21
    iget-object p1, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/dcloud/zxing2/ResultPoint;

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->bottomRight:Lcom/dcloud/zxing2/ResultPoint;

    .line 22
    :goto_3
    invoke-virtual {p1}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v0, p2

    .line 23
    iget-object p2, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {p2}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result p2

    if-lt v0, p2, :cond_5

    .line 24
    iget-object p2, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {p2}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result p2

    add-int/lit8 v0, p2, -0x1

    .line 26
    :cond_5
    new-instance p2, Lcom/dcloud/zxing2/ResultPoint;

    invoke-virtual {p1}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result p1

    int-to-float v0, v0

    invoke-direct {p2, p1, v0}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    if-eqz p3, :cond_6

    move-object v9, p2

    goto :goto_4

    :cond_6
    move-object v11, p2

    move-object v9, v1

    goto :goto_5

    :cond_7
    move-object v9, v1

    :goto_4
    move-object v11, v3

    .line 34
    :goto_5
    invoke-direct {p0}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->calculateMinMaxValues()V

    .line 35
    new-instance p1, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;

    iget-object v7, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->image:Lcom/dcloud/zxing2/common/BitMatrix;

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;-><init>(Lcom/dcloud/zxing2/common/BitMatrix;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/ResultPoint;)V

    return-object p1
.end method

.method getBottomLeft()Lcom/dcloud/zxing2/ResultPoint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->bottomLeft:Lcom/dcloud/zxing2/ResultPoint;

    return-object v0
.end method

.method getBottomRight()Lcom/dcloud/zxing2/ResultPoint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->bottomRight:Lcom/dcloud/zxing2/ResultPoint;

    return-object v0
.end method

.method getMaxX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->maxX:I

    return v0
.end method

.method getMaxY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->maxY:I

    return v0
.end method

.method getMinX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->minX:I

    return v0
.end method

.method getMinY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->minY:I

    return v0
.end method

.method getTopLeft()Lcom/dcloud/zxing2/ResultPoint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->topLeft:Lcom/dcloud/zxing2/ResultPoint;

    return-object v0
.end method

.method getTopRight()Lcom/dcloud/zxing2/ResultPoint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->topRight:Lcom/dcloud/zxing2/ResultPoint;

    return-object v0
.end method
