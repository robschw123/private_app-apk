.class Lio/dcloud/common/util/ExifInterface$ExifAttribute;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/util/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifAttribute"
.end annotation


# static fields
.field public static final BYTES_OFFSET_UNKNOWN:J = -0x1L


# instance fields
.field public final bytes:[B

.field public final bytesOffset:J

.field public final format:I

.field public final numberOfComponents:I


# direct methods
.method constructor <init>(IIJ[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->format:I

    .line 4
    iput p2, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->numberOfComponents:I

    .line 5
    iput-wide p3, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->bytesOffset:J

    .line 6
    iput-object p5, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->bytes:[B

    return-void
.end method

.method constructor <init>(II[B)V
    .locals 6

    const-wide/16 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    return-void
.end method

.method public static createByte(Ljava/lang/String;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x31

    if-gt v2, v4, :cond_0

    new-array v2, v1, [B

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    sub-int/2addr p0, v3

    int-to-byte p0, p0

    aput-byte p0, v2, v0

    .line 3
    new-instance p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    invoke-direct {p0, v1, v1, v2}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p0

    .line 5
    :cond_0
    sget-object v0, Lio/dcloud/common/util/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 6
    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    array-length v2, p0

    invoke-direct {v0, v1, v2, p0}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v0
.end method

.method public static createDouble(DLjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    .line 8
    invoke-static {v0, p2}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createDouble([DLjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;
    .locals 5

    .line 1
    sget-object v0, Lio/dcloud/common/util/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-wide v3, p0, v2

    .line 5
    invoke-virtual {v0, v3, v4}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static createSLong(ILjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    .line 8
    invoke-static {v0, p1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createSLong([ILjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;
    .locals 4

    .line 1
    sget-object v0, Lio/dcloud/common/util/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget v3, p0, v2

    .line 5
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static createSRational(Lio/dcloud/common/util/ExifInterface$Rational;Ljava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lio/dcloud/common/util/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 9
    invoke-static {v0, p1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createSRational([Lio/dcloud/common/util/ExifInterface$Rational;Ljava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createSRational([Lio/dcloud/common/util/ExifInterface$Rational;Ljava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;
    .locals 6

    .line 1
    sget-object v0, Lio/dcloud/common/util/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v1, 0xa

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object v3, p0, v2

    .line 5
    iget-wide v4, v3, Lio/dcloud/common/util/ExifInterface$Rational;->numerator:J

    long-to-int v5, v4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6
    iget-wide v3, v3, Lio/dcloud/common/util/ExifInterface$Rational;->denominator:J

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static createString(Ljava/lang/String;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lio/dcloud/common/util/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 2
    new-instance v0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    array-length v1, p0

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1, p0}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v0
.end method

.method public static createULong(JLjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    .line 8
    invoke-static {v0, p2}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createULong([JLjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;
    .locals 5

    .line 1
    sget-object v0, Lio/dcloud/common/util/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-wide v3, p0, v2

    long-to-int v4, v3

    .line 5
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static createURational(Lio/dcloud/common/util/ExifInterface$Rational;Ljava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lio/dcloud/common/util/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 9
    invoke-static {v0, p1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createURational([Lio/dcloud/common/util/ExifInterface$Rational;Ljava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createURational([Lio/dcloud/common/util/ExifInterface$Rational;Ljava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;
    .locals 6

    .line 1
    sget-object v0, Lio/dcloud/common/util/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object v3, p0, v2

    .line 5
    iget-wide v4, v3, Lio/dcloud/common/util/ExifInterface$Rational;->numerator:J

    long-to-int v5, v4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6
    iget-wide v3, v3, Lio/dcloud/common/util/ExifInterface$Rational;->denominator:J

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static createUShort(ILjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    .line 8
    invoke-static {v0, p1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createUShort([ILjava/nio/ByteOrder;)Lio/dcloud/common/util/ExifInterface$ExifAttribute;
    .locals 4

    .line 1
    sget-object v0, Lio/dcloud/common/util/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget v3, p0, v2

    int-to-short v3, v3

    .line 5
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lio/dcloud/common/util/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method


# virtual methods
.method public getDoubleValue(Ljava/nio/ByteOrder;)D
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 5
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    .line 8
    :cond_0
    instance-of v0, p1, [J

    const/4 v1, 0x0

    const-string v2, "There are more than one component"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 9
    check-cast p1, [J

    .line 10
    array-length v0, p1

    if-ne v0, v3, :cond_1

    .line 11
    aget-wide v0, p1, v1

    long-to-double v0, v0

    return-wide v0

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_2
    instance-of v0, p1, [I

    if-eqz v0, :cond_4

    .line 16
    check-cast p1, [I

    .line 17
    array-length v0, p1

    if-ne v0, v3, :cond_3

    .line 18
    aget p1, p1, v1

    int-to-double v0, p1

    return-wide v0

    .line 20
    :cond_3
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_4
    instance-of v0, p1, [D

    if-eqz v0, :cond_6

    .line 23
    check-cast p1, [D

    .line 24
    array-length v0, p1

    if-ne v0, v3, :cond_5

    .line 25
    aget-wide v0, p1, v1

    return-wide v0

    .line 27
    :cond_5
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_6
    instance-of v0, p1, [Lio/dcloud/common/util/ExifInterface$Rational;

    if-eqz v0, :cond_8

    .line 30
    check-cast p1, [Lio/dcloud/common/util/ExifInterface$Rational;

    .line 31
    array-length v0, p1

    if-ne v0, v3, :cond_7

    .line 32
    aget-object p1, p1, v1

    invoke-virtual {p1}, Lio/dcloud/common/util/ExifInterface$Rational;->calculate()D

    move-result-wide v0

    return-wide v0

    .line 34
    :cond_7
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_8
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "Couldn\'t find a double value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_9
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "NULL can\'t be converted to a double value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getIntValue(Ljava/nio/ByteOrder;)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 5
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 8
    :cond_0
    instance-of v0, p1, [J

    const/4 v1, 0x0

    const-string v2, "There are more than one component"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 9
    check-cast p1, [J

    .line 10
    array-length v0, p1

    if-ne v0, v3, :cond_1

    .line 11
    aget-wide v0, p1, v1

    long-to-int p1, v0

    return p1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_2
    instance-of v0, p1, [I

    if-eqz v0, :cond_4

    .line 16
    check-cast p1, [I

    .line 17
    array-length v0, p1

    if-ne v0, v3, :cond_3

    .line 18
    aget p1, p1, v1

    return p1

    .line 20
    :cond_3
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_4
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "Couldn\'t find a integer value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_5
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "NULL can\'t be converted to a integer value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 5
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 6
    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 9
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    instance-of v2, p1, [J

    const-string v3, ","

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 11
    check-cast p1, [J

    .line 12
    :cond_2
    :goto_0
    array-length v0, p1

    if-ge v4, v0, :cond_3

    .line 13
    aget-wide v5, p1, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 14
    array-length v0, p1

    if-eq v4, v0, :cond_2

    .line 15
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 20
    :cond_4
    instance-of v2, p1, [I

    if-eqz v2, :cond_7

    .line 21
    check-cast p1, [I

    .line 22
    :cond_5
    :goto_1
    array-length v0, p1

    if-ge v4, v0, :cond_6

    .line 23
    aget v0, p1, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 24
    array-length v0, p1

    if-eq v4, v0, :cond_5

    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 28
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 30
    :cond_7
    instance-of v2, p1, [D

    if-eqz v2, :cond_a

    .line 31
    check-cast p1, [D

    .line 32
    :cond_8
    :goto_2
    array-length v0, p1

    if-ge v4, v0, :cond_9

    .line 33
    aget-wide v5, p1, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 34
    array-length v0, p1

    if-eq v4, v0, :cond_8

    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 38
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 40
    :cond_a
    instance-of v2, p1, [Lio/dcloud/common/util/ExifInterface$Rational;

    if-eqz v2, :cond_d

    .line 41
    check-cast p1, [Lio/dcloud/common/util/ExifInterface$Rational;

    .line 42
    :cond_b
    :goto_3
    array-length v0, p1

    if-ge v4, v0, :cond_c

    .line 43
    aget-object v0, p1, v4

    iget-wide v5, v0, Lio/dcloud/common/util/ExifInterface$Rational;->numerator:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    aget-object v0, p1, v4

    iget-wide v5, v0, Lio/dcloud/common/util/ExifInterface$Rational;->denominator:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 46
    array-length v0, p1

    if-eq v4, v0, :cond_b

    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 50
    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d
    return-object v0
.end method

.method getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 10

    const-string v0, "IOException occurred while closing InputStream"

    const-string v1, "ExifInterface"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    new-instance v3, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;

    iget-object v4, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v3, v4}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    invoke-virtual {v3, p1}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3
    iget p1, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->format:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_18

    .line 97
    :pswitch_0
    iget p1, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [D

    .line 98
    :goto_0
    iget v4, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v4, :cond_0

    .line 99
    invoke-virtual {v3}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readDouble()D

    move-result-wide v6

    aput-wide v6, p1, v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 112
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 114
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object p1

    .line 115
    :pswitch_1
    :try_start_3
    iget p1, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [D

    .line 116
    :goto_2
    iget v4, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v4, :cond_1

    .line 117
    invoke-virtual {v3}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readFloat()F

    move-result v4

    float-to-double v6, v4

    aput-wide v6, p1, v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 137
    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    .line 139
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-object p1

    .line 140
    :pswitch_2
    :try_start_5
    iget p1, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [Lio/dcloud/common/util/ExifInterface$Rational;

    .line 141
    :goto_4
    iget v4, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v4, :cond_2

    .line 142
    invoke-virtual {v3}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v4

    int-to-long v6, v4

    .line 143
    invoke-virtual {v3}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v4

    int-to-long v8, v4

    .line 144
    new-instance v4, Lio/dcloud/common/util/ExifInterface$Rational;

    invoke-direct {v4, v6, v7, v8, v9}, Lio/dcloud/common/util/ExifInterface$Rational;-><init>(JJ)V

    aput-object v4, p1, v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 171
    :cond_2
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    :catch_2
    move-exception v2

    .line 173
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-object p1

    .line 174
    :pswitch_3
    :try_start_7
    iget p1, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [I

    .line 175
    :goto_6
    iget v4, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v4, :cond_3

    .line 176
    invoke-virtual {v3}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v4

    aput v4, p1, v5
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 212
    :cond_3
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_7

    :catch_3
    move-exception v2

    .line 214
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    return-object p1

    .line 215
    :pswitch_4
    :try_start_9
    iget p1, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [I

    .line 216
    :goto_8
    iget v4, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v4, :cond_4

    .line 217
    invoke-virtual {v3}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v4

    aput v4, p1, v5
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 260
    :cond_4
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_9

    :catch_4
    move-exception v2

    .line 262
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    return-object p1

    .line 263
    :pswitch_5
    :try_start_b
    iget p1, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [Lio/dcloud/common/util/ExifInterface$Rational;

    .line 264
    :goto_a
    iget v4, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v4, :cond_5

    .line 265
    invoke-virtual {v3}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v6

    .line 266
    invoke-virtual {v3}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v8

    .line 267
    new-instance v4, Lio/dcloud/common/util/ExifInterface$Rational;

    invoke-direct {v4, v6, v7, v8, v9}, Lio/dcloud/common/util/ExifInterface$Rational;-><init>(JJ)V

    aput-object v4, p1, v5
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 317
    :cond_5
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_b

    :catch_5
    move-exception v2

    .line 319
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    return-object p1

    .line 320
    :pswitch_6
    :try_start_d
    iget p1, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [J

    .line 321
    :goto_c
    iget v4, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v4, :cond_6

    .line 322
    invoke-virtual {v3}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v6

    aput-wide v6, p1, v5
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 381
    :cond_6
    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_d

    :catch_6
    move-exception v2

    .line 383
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    return-object p1

    .line 384
    :pswitch_7
    :try_start_f
    iget p1, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [I

    .line 385
    :goto_e
    iget v4, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v4, :cond_7

    .line 386
    invoke-virtual {v3}, Lio/dcloud/common/util/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v4

    aput v4, p1, v5
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 452
    :cond_7
    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    goto :goto_f

    :catch_7
    move-exception v2

    .line 454
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f
    return-object p1

    .line 455
    :pswitch_8
    :try_start_11
    iget p1, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->numberOfComponents:I

    sget-object v6, Lio/dcloud/common/util/ExifInterface;->EXIF_ASCII_PREFIX:[B

    array-length v6, v6

    if-lt p1, v6, :cond_a

    const/4 p1, 0x0

    .line 457
    :goto_10
    sget-object v6, Lio/dcloud/common/util/ExifInterface;->EXIF_ASCII_PREFIX:[B

    array-length v7, v6

    if-ge p1, v7, :cond_9

    .line 458
    iget-object v7, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v7, v7, p1

    aget-byte v8, v6, p1

    if-eq v7, v8, :cond_8

    const/4 v4, 0x0

    goto :goto_11

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_10

    :cond_9
    :goto_11
    if-eqz v4, :cond_a

    .line 464
    array-length v5, v6

    .line 468
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    :goto_12
    iget v4, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v4, :cond_d

    .line 470
    iget-object v4, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v4, v4, v5

    if-nez v4, :cond_b

    goto :goto_14

    :cond_b
    const/16 v6, 0x20

    if-lt v4, v6, :cond_c

    int-to-char v4, v4

    .line 475
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_13

    :cond_c
    const/16 v4, 0x3f

    .line 477
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 481
    :cond_d
    :goto_14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 552
    :try_start_12
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    goto :goto_15

    :catch_8
    move-exception v2

    .line 554
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    return-object p1

    .line 555
    :pswitch_9
    :try_start_13
    iget-object p1, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->bytes:[B

    array-length v6, p1

    if-ne v6, v4, :cond_e

    aget-byte v6, p1, v5

    if-ltz v6, :cond_e

    aget-byte p1, p1, v5

    if-gt p1, v4, :cond_e

    .line 556
    new-instance p1, Ljava/lang/String;

    new-array v4, v4, [C

    iget-object v6, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v6, v6, v5

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    aput-char v6, v4, v5

    invoke-direct {p1, v4}, Ljava/lang/String;-><init>([C)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 660
    :try_start_14
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_9

    goto :goto_16

    :catch_9
    move-exception v2

    .line 662
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    return-object p1

    .line 663
    :cond_e
    :try_start_15
    new-instance p1, Ljava/lang/String;

    iget-object v4, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->bytes:[B

    sget-object v5, Lio/dcloud/common/util/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p1, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 765
    :try_start_16
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a

    goto :goto_17

    :catch_a
    move-exception v2

    .line 767
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_17
    return-object p1

    .line 768
    :goto_18
    :try_start_17
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_b

    goto :goto_19

    :catch_b
    move-exception p1

    .line 770
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_19
    return-object v2

    :catch_c
    move-exception p1

    goto :goto_1a

    :catchall_0
    move-exception p1

    goto :goto_1c

    :catch_d
    move-exception p1

    move-object v3, v2

    :goto_1a
    :try_start_18
    const-string v4, "IOException occurred during reading a value"

    .line 771
    invoke-static {v1, v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    if-eqz v3, :cond_f

    .line 776
    :try_start_19
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_e

    goto :goto_1b

    :catch_e
    move-exception p1

    .line 778
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    :goto_1b
    return-object v2

    :catchall_1
    move-exception p1

    move-object v2, v3

    :goto_1c
    if-eqz v2, :cond_10

    .line 779
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_f

    goto :goto_1d

    :catch_f
    move-exception v2

    .line 781
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 784
    :cond_10
    :goto_1d
    goto :goto_1f

    :goto_1e
    throw p1

    :goto_1f
    goto :goto_1e

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public size()I
    .locals 2

    .line 1
    sget-object v0, Lio/dcloud/common/util/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    iget v1, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->format:I

    aget v0, v0, v1

    iget v1, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->numberOfComponents:I

    mul-int v0, v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lio/dcloud/common/util/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v2, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->format:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/common/util/ExifInterface$ExifAttribute;->bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
