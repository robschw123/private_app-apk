.class public final Lcom/dcloud/zxing2/InvertedLuminanceSource;
.super Lcom/dcloud/zxing2/LuminanceSource;


# instance fields
.field private final delegate:Lcom/dcloud/zxing2/LuminanceSource;


# direct methods
.method public constructor <init>(Lcom/dcloud/zxing2/LuminanceSource;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/dcloud/zxing2/LuminanceSource;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/dcloud/zxing2/LuminanceSource;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dcloud/zxing2/LuminanceSource;-><init>(II)V

    .line 2
    iput-object p1, p0, Lcom/dcloud/zxing2/InvertedLuminanceSource;->delegate:Lcom/dcloud/zxing2/LuminanceSource;

    return-void
.end method


# virtual methods
.method public crop(IIII)Lcom/dcloud/zxing2/LuminanceSource;
    .locals 2

    .line 1
    new-instance v0, Lcom/dcloud/zxing2/InvertedLuminanceSource;

    iget-object v1, p0, Lcom/dcloud/zxing2/InvertedLuminanceSource;->delegate:Lcom/dcloud/zxing2/LuminanceSource;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/dcloud/zxing2/LuminanceSource;->crop(IIII)Lcom/dcloud/zxing2/LuminanceSource;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/dcloud/zxing2/InvertedLuminanceSource;-><init>(Lcom/dcloud/zxing2/LuminanceSource;)V

    return-object v0
.end method

.method public getMatrix()[B
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/InvertedLuminanceSource;->delegate:Lcom/dcloud/zxing2/LuminanceSource;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/LuminanceSource;->getMatrix()[B

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/dcloud/zxing2/LuminanceSource;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/dcloud/zxing2/LuminanceSource;->getHeight()I

    move-result v2

    mul-int v1, v1, v2

    .line 3
    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 5
    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    rsub-int v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getRow(I[B)[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/InvertedLuminanceSource;->delegate:Lcom/dcloud/zxing2/LuminanceSource;

    invoke-virtual {v0, p1, p2}, Lcom/dcloud/zxing2/LuminanceSource;->getRow(I[B)[B

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/dcloud/zxing2/LuminanceSource;->getWidth()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 4
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    rsub-int v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public invert()Lcom/dcloud/zxing2/LuminanceSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/InvertedLuminanceSource;->delegate:Lcom/dcloud/zxing2/LuminanceSource;

    return-object v0
.end method

.method public isCropSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/InvertedLuminanceSource;->delegate:Lcom/dcloud/zxing2/LuminanceSource;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/LuminanceSource;->isCropSupported()Z

    move-result v0

    return v0
.end method

.method public isRotateSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/InvertedLuminanceSource;->delegate:Lcom/dcloud/zxing2/LuminanceSource;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/LuminanceSource;->isRotateSupported()Z

    move-result v0

    return v0
.end method

.method public rotateCounterClockwise()Lcom/dcloud/zxing2/LuminanceSource;
    .locals 2

    .line 1
    new-instance v0, Lcom/dcloud/zxing2/InvertedLuminanceSource;

    iget-object v1, p0, Lcom/dcloud/zxing2/InvertedLuminanceSource;->delegate:Lcom/dcloud/zxing2/LuminanceSource;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/LuminanceSource;->rotateCounterClockwise()Lcom/dcloud/zxing2/LuminanceSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dcloud/zxing2/InvertedLuminanceSource;-><init>(Lcom/dcloud/zxing2/LuminanceSource;)V

    return-object v0
.end method

.method public rotateCounterClockwise45()Lcom/dcloud/zxing2/LuminanceSource;
    .locals 2

    .line 1
    new-instance v0, Lcom/dcloud/zxing2/InvertedLuminanceSource;

    iget-object v1, p0, Lcom/dcloud/zxing2/InvertedLuminanceSource;->delegate:Lcom/dcloud/zxing2/LuminanceSource;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/LuminanceSource;->rotateCounterClockwise45()Lcom/dcloud/zxing2/LuminanceSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dcloud/zxing2/InvertedLuminanceSource;-><init>(Lcom/dcloud/zxing2/LuminanceSource;)V

    return-object v0
.end method
