.class final Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;
.super Ljava/lang/Object;


# instance fields
.field private final coefficients:[I

.field private final field:Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;


# direct methods
.method constructor <init>(Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;[I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p2

    if-eqz v0, :cond_3

    .line 5
    iput-object p1, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->field:Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;

    .line 6
    array-length p1, p2

    const/4 v0, 0x1

    if-le p1, v0, :cond_2

    const/4 v1, 0x0

    .line 7
    aget v2, p2, v1

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    if-ge v2, p1, :cond_0

    .line 10
    aget v3, p2, v2

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ne v2, p1, :cond_1

    new-array p1, v0, [I

    aput v1, p1, v1

    .line 14
    iput-object p1, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    goto :goto_1

    :cond_1
    sub-int/2addr p1, v2

    .line 16
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    .line 17
    invoke-static {p2, v2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 24
    :cond_2
    iput-object p2, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    :goto_1
    return-void

    .line 25
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method add(Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;)Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->field:Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;

    iget-object v1, p1, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->field:Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    .line 12
    iget-object p1, p1, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    .line 13
    array-length v1, v0

    array-length v2, p1

    if-le v1, v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    .line 18
    :goto_0
    array-length v1, v0

    new-array v1, v1, [I

    .line 19
    array-length v2, v0

    array-length v3, p1

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    .line 21
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v2

    .line 23
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 24
    iget-object v4, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->field:Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;

    sub-int v5, v3, v2

    aget v5, p1, v5

    aget v6, v0, v3

    invoke-virtual {v4, v5, v6}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;->add(II)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 27
    :cond_3
    new-instance p1, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;

    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->field:Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;

    invoke-direct {p1, v0, v1}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;[I)V

    return-object p1

    .line 28
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ModulusPolys do not have same ModulusGF field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method divide(Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;)[Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->field:Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;

    iget-object v1, p1, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->field:Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->field:Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;->getZero()Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v1

    .line 12
    iget-object v2, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->field:Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v2, v1}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v1

    move-object v2, p0

    .line 14
    :goto_0
    invoke-virtual {v2}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v3

    invoke-virtual {p1}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v4

    if-lt v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v3

    if-nez v3, :cond_0

    .line 15
    invoke-virtual {v2}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v3

    invoke-virtual {p1}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v4

    sub-int/2addr v3, v4

    .line 16
    iget-object v4, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->field:Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v2}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v5

    invoke-virtual {v4, v5, v1}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v4

    .line 17
    invoke-virtual {p1, v3, v4}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->multiplyByMonomial(II)Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;

    move-result-object v5

    .line 18
    iget-object v6, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->field:Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v6, v3, v4}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;->buildMonomial(II)Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;

    move-result-object v3

    .line 19
    invoke-virtual {v0, v3}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->add(Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;)Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;

    move-result-object v0

    .line 20
    invoke-virtual {v2, v5}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->subtract(Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;)Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/4 v0, 0x1

    aput-object v2, p1, v0

    return-object p1

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Divide by 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ModulusPolys do not have same ModulusGF field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method evaluateAt(I)I
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0, v0}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v2, v1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 7
    array-length p1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget v3, v1, v0

    .line 8
    iget-object v4, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->field:Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v4, v2, v3}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;->add(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 12
    :cond_2
    aget v0, v1, v0

    :goto_1
    if-ge v3, v2, :cond_3

    .line 14
    iget-object v1, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->field:Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v1, p1, v0}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v0

    iget-object v4, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    aget v4, v4, v3

    invoke-virtual {v1, v0, v4}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;->add(II)I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method getCoefficient(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget p1, v0, v1

    return p1
.end method

.method getCoefficients()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    return-object v0
.end method

.method getDegree()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method isZero()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method multiply(I)Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;
    .locals 5

    if-nez p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->field:Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {p1}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;->getZero()Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return-object p0

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v0, v0

    .line 27
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 29
    iget-object v3, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->field:Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;

    iget-object v4, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4, p1}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    :cond_2
    new-instance p1, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;

    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->field:Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;

    invoke-direct {p1, v0, v1}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;[I)V

    return-object p1
.end method

.method multiply(Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;)Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->field:Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;

    iget-object v1, p1, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->field:Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    .line 8
    array-length v1, v0

    .line 9
    iget-object p1, p1, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    .line 10
    array-length v2, p1

    add-int v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    .line 11
    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_2

    .line 13
    aget v6, v0, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v2, :cond_1

    add-int v8, v5, v7

    .line 15
    iget-object v9, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->field:Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;

    aget v10, v3, v8

    aget v11, p1, v7

    invoke-virtual {v9, v6, v11}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;->add(II)I

    move-result v9

    aput v9, v3, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 18
    :cond_2
    new-instance p1, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;

    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->field:Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;

    invoke-direct {p1, v0, v3}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;[I)V

    return-object p1

    .line 19
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->field:Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {p1}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;->getZero()Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;

    move-result-object p1

    return-object p1

    .line 20
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ModulusPolys do not have same ModulusGF field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method multiplyByMonomial(II)Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;
    .locals 4

    if-ltz p1, :cond_2

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->field:Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {p1}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;->getZero()Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v0, v0

    add-int/2addr p1, v0

    .line 4
    new-array p1, p1, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    iget-object v2, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->field:Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;

    iget-object v3, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3, p2}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p2, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;

    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->field:Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;

    invoke-direct {p2, v0, p1}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;[I)V

    return-object p2

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method negative()Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v0, v0

    .line 2
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 4
    iget-object v4, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->field:Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;

    iget-object v5, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    aget v5, v5, v3

    invoke-virtual {v4, v2, v5}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;->subtract(II)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;

    iget-object v2, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->field:Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;

    invoke-direct {v0, v2, v1}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;[I)V

    return-object v0
.end method

.method subtract(Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;)Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->field:Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;

    iget-object v1, p1, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->field:Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->negative()Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->add(Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;)Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ModulusPolys do not have same ModulusGF field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    invoke-virtual {p0}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v1

    :goto_0
    if-ltz v1, :cond_6

    .line 3
    invoke-virtual {p0, v1}, Lcom/dcloud/zxing2/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v2

    if-eqz v2, :cond_5

    if-gez v2, :cond_0

    const-string v3, " - "

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v2, v2

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, " + "

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v2, v3, :cond_3

    .line 14
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz v1, :cond_5

    if-ne v1, v3, :cond_4

    const/16 v2, 0x78

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string/jumbo v2, "x^"

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 26
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
