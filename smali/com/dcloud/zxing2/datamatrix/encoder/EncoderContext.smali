.class final Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;
.super Ljava/lang/Object;


# instance fields
.field private final codewords:Ljava/lang/StringBuilder;

.field private maxSize:Lcom/dcloud/zxing2/Dimension;

.field private minSize:Lcom/dcloud/zxing2/Dimension;

.field private final msg:Ljava/lang/String;

.field private newEncoding:I

.field pos:I

.field private shape:Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;

.field private skipAtEnd:I

.field private symbolInfo:Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ISO-8859-1"

    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 6
    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    const/16 v5, 0x3f

    if-ne v4, v5, :cond_1

    .line 7
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message contains characters outside ISO-8859-1 encoding."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->msg:Ljava/lang/String;

    .line 13
    sget-object v0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;

    iput-object v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->shape:Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->codewords:Ljava/lang/StringBuilder;

    const/4 p1, -0x1

    .line 15
    iput p1, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->newEncoding:I

    return-void
.end method

.method private getTotalMessageCharCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->msg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->skipAtEnd:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getCodewordCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->codewords:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public getCodewords()Ljava/lang/StringBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->codewords:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public getCurrent()C
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->msg:Ljava/lang/String;

    iget v1, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getCurrentChar()C
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->msg:Ljava/lang/String;

    iget v1, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getNewEncoding()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->newEncoding:I

    return v0
.end method

.method public getRemainingCharacters()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getTotalMessageCharCount()I

    move-result v0

    iget v1, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSymbolInfo()Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->symbolInfo:Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    return-object v0
.end method

.method public hasMoreCharacters()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    invoke-direct {p0}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getTotalMessageCharCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resetEncoderSignal()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->newEncoding:I

    return-void
.end method

.method public resetSymbolInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->symbolInfo:Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    return-void
.end method

.method public setSizeConstraints(Lcom/dcloud/zxing2/Dimension;Lcom/dcloud/zxing2/Dimension;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->minSize:Lcom/dcloud/zxing2/Dimension;

    .line 2
    iput-object p2, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->maxSize:Lcom/dcloud/zxing2/Dimension;

    return-void
.end method

.method public setSkipAtEnd(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->skipAtEnd:I

    return-void
.end method

.method public setSymbolShape(Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->shape:Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;

    return-void
.end method

.method public signalEncoderChange(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->newEncoding:I

    return-void
.end method

.method public updateSymbolInfo()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    return-void
.end method

.method public updateSymbolInfo(I)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->symbolInfo:Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->shape:Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;

    iget-object v1, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->minSize:Lcom/dcloud/zxing2/Dimension;

    iget-object v2, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->maxSize:Lcom/dcloud/zxing2/Dimension;

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->lookup(ILcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;Lcom/dcloud/zxing2/Dimension;Lcom/dcloud/zxing2/Dimension;Z)Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->symbolInfo:Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    :cond_1
    return-void
.end method

.method public writeCodeword(C)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->codewords:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public writeCodewords(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->codewords:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
