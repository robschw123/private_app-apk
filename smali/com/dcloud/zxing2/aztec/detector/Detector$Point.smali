.class final Lcom/dcloud/zxing2/aztec/detector/Detector$Point;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/zxing2/aztec/detector/Detector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Point"
.end annotation


# instance fields
.field private final x:I

.field private final y:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/dcloud/zxing2/aztec/detector/Detector$Point;->x:I

    .line 3
    iput p2, p0, Lcom/dcloud/zxing2/aztec/detector/Detector$Point;->y:I

    return-void
.end method


# virtual methods
.method getX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/aztec/detector/Detector$Point;->x:I

    return v0
.end method

.method getY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/aztec/detector/Detector$Point;->y:I

    return v0
.end method

.method toResultPoint()Lcom/dcloud/zxing2/ResultPoint;
    .locals 3

    .line 1
    new-instance v0, Lcom/dcloud/zxing2/ResultPoint;

    invoke-virtual {p0}, Lcom/dcloud/zxing2/aztec/detector/Detector$Point;->getX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/dcloud/zxing2/aztec/detector/Detector$Point;->getY()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dcloud/zxing2/aztec/detector/Detector$Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dcloud/zxing2/aztec/detector/Detector$Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
