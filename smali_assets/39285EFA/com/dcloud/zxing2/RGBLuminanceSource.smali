.class public final Lcom/dcloud/zxing2/RGBLuminanceSource;
.super Lcom/dcloud/zxing2/LuminanceSource;


# instance fields
.field private final dataHeight:I

.field private final dataWidth:I

.field private final left:I

.field private final luminances:[B

.field private final top:I


# direct methods
.method public constructor <init>(II[I)V
    .locals 9

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/zxing2/LuminanceSource;-><init>(II)V

    .line 3
    iput p1, p0, Lcom/dcloud/zxing2/RGBLuminanceSource;->dataWidth:I

    .line 4
    iput p2, p0, Lcom/dcloud/zxing2/RGBLuminanceSource;->dataHeight:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/dcloud/zxing2/RGBLuminanceSource;->left:I

    .line 6
    iput v0, p0, Lcom/dcloud/zxing2/RGBLuminanceSource;->top:I

    mul-int v1, p1, p2

    .line 10
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/dcloud/zxing2/RGBLuminanceSource;->luminances:[B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    mul-int v2, v1, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_1

    add-int v4, v2, v3

    .line 14
    aget v5, p3, v4

    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v7, v5, 0x8

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v5, v5, 0xff

    if-ne v6, v7, :cond_0

    if-ne v7, v5, :cond_0

    .line 20
    iget-object v5, p0, Lcom/dcloud/zxing2/RGBLuminanceSource;->luminances:[B

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    goto :goto_2

    .line 23
    :cond_0
    iget-object v8, p0, Lcom/dcloud/zxing2/RGBLuminanceSource;->luminances:[B

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int/2addr v6, v5

    div-int/lit8 v6, v6, 0x4

    int-to-byte v5, v6

    aput-byte v5, v8, v4

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private constructor <init>([BIIIIII)V
    .locals 0

    .line 24
    invoke-direct {p0, p6, p7}, Lcom/dcloud/zxing2/LuminanceSource;-><init>(II)V

    add-int/2addr p6, p4

    if-gt p6, p2, :cond_0

    add-int/2addr p7, p5

    if-gt p7, p3, :cond_0

    .line 28
    iput-object p1, p0, Lcom/dcloud/zxing2/RGBLuminanceSource;->luminances:[B

    .line 29
    iput p2, p0, Lcom/dcloud/zxing2/RGBLuminanceSource;->dataWidth:I

    .line 30
    iput p3, p0, Lcom/dcloud/zxing2/RGBLuminanceSource;->dataHeight:I

    .line 31
    iput p4, p0, Lcom/dcloud/zxing2/RGBLuminanceSource;->left:I

    .line 32
    iput p5, p0, Lcom/dcloud/zxing2/RGBLuminanceSource;->top:I

    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Crop rectangle does not fit within image data."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public crop(IIII)Lcom/dcloud/zxing2/LuminanceSource;
    .locals 9

    .line 1
    new-instance v8, Lcom/dcloud/zxing2/RGBLuminanceSource;

    iget-object v1, p0, Lcom/dcloud/zxing2/RGBLuminanceSource;->luminances:[B

    iget v2, p0, Lcom/dcloud/zxing2/RGBLuminanceSource;->dataWidth:I

    iget v3, p0, Lcom/dcloud/zxing2/RGBLuminanceSource;->dataHeight:I

    iget v0, p0, Lcom/dcloud/zxing2/RGBLuminanceSource;->left:I

    add-int v4, v0, p1

    iget p1, p0, Lcom/dcloud/zxing2/RGBLuminanceSource;->top:I

    add-int v5, p1, p2

    move-object v0, v8

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/dcloud/zxing2/RGBLuminanceSource;-><init>([BIIIIII)V

    return-object v8
.end method

.method public getMatrix()[B
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/LuminanceSource;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/dcloud/zxing2/LuminanceSource;->getHeight()I

    move-result v1

    .line 6
    iget v2, p0, Lcom/dcloud/zxing2/RGBLuminanceSource;->dataWidth:I

    if-ne v0, v2, :cond_0

    iget v3, p0, Lcom/dcloud/zxing2/RGBLuminanceSource;->dataHeight:I

    if-ne v1, v3, :cond_0

    .line 7
    iget-object v0, p0, Lcom/dcloud/zxing2/RGBLuminanceSource;->luminances:[B

    return-object v0

    :cond_0
    mul-int v3, v0, v1

    .line 11
    new-array v4, v3, [B

    .line 12
    iget v5, p0, Lcom/dcloud/zxing2/RGBLuminanceSource;->top:I

    mul-int v5, v5, v2

    iget v6, p0, Lcom/dcloud/zxing2/RGBLuminanceSource;->left:I

    add-int/2addr v5, v6

    const/4 v6, 0x0

    if-ne v0, v2, :cond_1

    .line 16
    iget-object v0, p0, Lcom/dcloud/zxing2/RGBLuminanceSource;->luminances:[B

    invoke-static {v0, v5, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    .line 21
    :cond_1
    iget-object v2, p0, Lcom/dcloud/zxing2/RGBLuminanceSource;->luminances:[B

    :goto_0
    if-ge v6, v1, :cond_2

    mul-int v3, v6, v0

    .line 24
    invoke-static {v2, v5, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    iget v3, p0, Lcom/dcloud/zxing2/RGBLuminanceSource;->dataWidth:I

    add-int/2addr v5, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method public getRow(I[B)[B
    .locals 3

    if-ltz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/LuminanceSource;->getHeight()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/dcloud/zxing2/LuminanceSource;->getWidth()I

    move-result v0

    if-eqz p2, :cond_0

    .line 5
    array-length v1, p2

    if-ge v1, v0, :cond_1

    .line 6
    :cond_0
    new-array p2, v0, [B

    .line 8
    :cond_1
    iget v1, p0, Lcom/dcloud/zxing2/RGBLuminanceSource;->top:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/dcloud/zxing2/RGBLuminanceSource;->dataWidth:I

    mul-int p1, p1, v1

    iget v1, p0, Lcom/dcloud/zxing2/RGBLuminanceSource;->left:I

    add-int/2addr p1, v1

    .line 9
    iget-object v1, p0, Lcom/dcloud/zxing2/RGBLuminanceSource;->luminances:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 10
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested row is outside the image: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public isCropSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
