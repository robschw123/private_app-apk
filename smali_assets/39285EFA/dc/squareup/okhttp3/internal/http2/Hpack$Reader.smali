.class final Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/http2/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

.field dynamicTableByteCount:I

.field headerCount:I

.field private final headerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation
.end field

.field private final headerTableSizeSetting:I

.field private maxDynamicTableByteCount:I

.field nextHeaderIndex:I

.field private final source:Ldc/squareup/okio/BufferedSource;


# direct methods
.method constructor <init>(IILdc/squareup/okio/Source;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    const/16 v0, 0x8

    new-array v0, v0, [Ldc/squareup/okhttp3/internal/http2/Header;

    .line 10
    iput-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    const/4 v0, 0x7

    .line 12
    iput v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    .line 14
    iput v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    .line 21
    iput p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerTableSizeSetting:I

    .line 22
    iput p2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    .line 23
    invoke-static {p3}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Source;)Ldc/squareup/okio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->source:Ldc/squareup/okio/BufferedSource;

    return-void
.end method

.method constructor <init>(ILdc/squareup/okio/Source;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p1, p2}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;-><init>(IILdc/squareup/okio/Source;)V

    return-void
.end method

.method private adjustDynamicTableByteCount()V
    .locals 2

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    iget v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    if-ge v0, v1, :cond_1

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->clearDynamicTable()V

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v0

    .line 5
    invoke-direct {p0, v1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->evictToRecoverBytes(I)I

    :cond_1
    :goto_0
    return-void
.end method

.method private clearDynamicTable()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    .line 4
    iput v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    return-void
.end method

.method private dynamicTableIndex(I)I
    .locals 1

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private evictToRecoverBytes(I)I
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 1
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    .line 2
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    aget-object v3, v2, v1

    iget v3, v3, Ldc/squareup/okhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr p1, v3

    .line 3
    iget v3, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    aget-object v2, v2, v1

    iget v2, v2, Ldc/squareup/okhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr v3, v2

    iput v3, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    .line 4
    iget v2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    add-int/lit8 v2, v2, 0x1

    add-int v1, v2, v0

    iget v3, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    invoke-static {p1, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    add-int/2addr p1, v0

    iput p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    :cond_1
    return v0
.end method

.method private getName(I)Ldc/squareup/okio/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->isStaticHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Ldc/squareup/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Ldc/squareup/okhttp3/internal/http2/Header;

    aget-object p1, v0, p1

    iget-object p1, p1, Ldc/squareup/okhttp3/internal/http2/Header;->name:Ldc/squareup/okio/ByteString;

    return-object p1

    .line 4
    :cond_0
    sget-object v0, Ldc/squareup/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Ldc/squareup/okhttp3/internal/http2/Header;

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 5
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 9
    aget-object p1, v1, v0

    iget-object p1, p1, Ldc/squareup/okhttp3/internal/http2/Header;->name:Ldc/squareup/okio/ByteString;

    return-object p1

    .line 10
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Header index too large "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private insertIntoDynamicTable(ILdc/squareup/okhttp3/internal/http2/Header;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget v0, p2, Ldc/squareup/okhttp3/internal/http2/Header;->hpackSize:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 5
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Ldc/squareup/okhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr v0, v2

    .line 9
    :cond_0
    iget v2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    if-le v0, v2, :cond_1

    .line 10
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->clearDynamicTable()V

    return-void

    .line 15
    :cond_1
    iget v3, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    .line 16
    invoke-direct {p0, v3}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->evictToRecoverBytes(I)I

    move-result v2

    if-ne p1, v1, :cond_3

    .line 19
    iget p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    array-length v2, v1

    if-le p1, v2, :cond_2

    .line 20
    array-length p1, v1

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Ldc/squareup/okhttp3/internal/http2/Header;

    .line 21
    array-length v2, v1

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 23
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    .line 25
    :cond_2
    iget p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->nextHeaderIndex:I

    .line 26
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    aput-object p2, v1, p1

    .line 27
    iget p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerCount:I

    goto :goto_0

    .line 29
    :cond_3
    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 30
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    aput-object p2, v1, p1

    .line 32
    :goto_0
    iget p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    add-int/2addr p1, v0

    iput p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTableByteCount:I

    return-void
.end method

.method private isStaticHeader(I)Z
    .locals 2

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    .line 1
    sget-object v1, Ldc/squareup/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Ldc/squareup/okhttp3/internal/http2/Header;

    array-length v1, v1

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private readByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v0}, Ldc/squareup/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private readIndexedHeader(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->isStaticHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Ldc/squareup/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Ldc/squareup/okhttp3/internal/http2/Header;

    aget-object p1, v0, p1

    .line 3
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Ldc/squareup/okhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Ldc/squareup/okhttp3/internal/http2/Header;

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTableIndex(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 6
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->dynamicTable:[Ldc/squareup/okhttp3/internal/http2/Header;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 9
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    aget-object v0, v1, v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 10
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Header index too large "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readLiteralHeaderWithIncrementalIndexingIndexedName(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->getName(I)Ldc/squareup/okio/ByteString;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readByteString()Ldc/squareup/okio/ByteString;

    move-result-object v0

    .line 3
    new-instance v1, Ldc/squareup/okhttp3/internal/http2/Header;

    invoke-direct {v1, p1, v0}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ldc/squareup/okio/ByteString;Ldc/squareup/okio/ByteString;)V

    const/4 p1, -0x1

    invoke-direct {p0, p1, v1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->insertIntoDynamicTable(ILdc/squareup/okhttp3/internal/http2/Header;)V

    return-void
.end method

.method private readLiteralHeaderWithIncrementalIndexingNewName()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readByteString()Ldc/squareup/okio/ByteString;

    move-result-object v0

    invoke-static {v0}, Ldc/squareup/okhttp3/internal/http2/Hpack;->checkLowercase(Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/ByteString;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readByteString()Ldc/squareup/okio/ByteString;

    move-result-object v1

    .line 3
    new-instance v2, Ldc/squareup/okhttp3/internal/http2/Header;

    invoke-direct {v2, v0, v1}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ldc/squareup/okio/ByteString;Ldc/squareup/okio/ByteString;)V

    const/4 v0, -0x1

    invoke-direct {p0, v0, v2}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->insertIntoDynamicTable(ILdc/squareup/okhttp3/internal/http2/Header;)V

    return-void
.end method

.method private readLiteralHeaderWithoutIndexingIndexedName(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->getName(I)Ldc/squareup/okio/ByteString;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readByteString()Ldc/squareup/okio/ByteString;

    move-result-object v0

    .line 3
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    new-instance v2, Ldc/squareup/okhttp3/internal/http2/Header;

    invoke-direct {v2, p1, v0}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ldc/squareup/okio/ByteString;Ldc/squareup/okio/ByteString;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readLiteralHeaderWithoutIndexingNewName()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readByteString()Ldc/squareup/okio/ByteString;

    move-result-object v0

    invoke-static {v0}, Ldc/squareup/okhttp3/internal/http2/Hpack;->checkLowercase(Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/ByteString;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readByteString()Ldc/squareup/okio/ByteString;

    move-result-object v1

    .line 3
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    new-instance v3, Ldc/squareup/okhttp3/internal/http2/Header;

    invoke-direct {v3, v0, v1}, Ldc/squareup/okhttp3/internal/http2/Header;-><init>(Ldc/squareup/okio/ByteString;Ldc/squareup/okio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getAndResetHeaderList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-object v0
.end method

.method maxDynamicTableByteCount()I
    .locals 1

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    return v0
.end method

.method readByteString()Ldc/squareup/okio/ByteString;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readByte()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x7f

    .line 3
    invoke-virtual {p0, v0, v2}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v0

    if-eqz v1, :cond_1

    .line 6
    invoke-static {}, Ldc/squareup/okhttp3/internal/http2/Huffman;->get()Ldc/squareup/okhttp3/internal/http2/Huffman;

    move-result-object v1

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->source:Ldc/squareup/okio/BufferedSource;

    int-to-long v3, v0

    invoke-interface {v2, v3, v4}, Ldc/squareup/okio/BufferedSource;->readByteArray(J)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ldc/squareup/okhttp3/internal/http2/Huffman;->decode([B)[B

    move-result-object v0

    invoke-static {v0}, Ldc/squareup/okio/ByteString;->of([B)Ldc/squareup/okio/ByteString;

    move-result-object v0

    return-object v0

    .line 8
    :cond_1
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->source:Ldc/squareup/okio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Ldc/squareup/okio/BufferedSource;->readByteString(J)Ldc/squareup/okio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method readHeaders()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v0}, Ldc/squareup/okio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v0}, Ldc/squareup/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x80

    if-eq v0, v1, :cond_7

    and-int/lit16 v2, v0, 0x80

    if-ne v2, v1, :cond_0

    const/16 v1, 0x7f

    .line 6
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 7
    invoke-direct {p0, v0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readIndexedHeader(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    .line 9
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingNewName()V

    goto :goto_0

    :cond_1
    and-int/lit8 v2, v0, 0x40

    if-ne v2, v1, :cond_2

    const/16 v1, 0x3f

    .line 11
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 12
    invoke-direct {p0, v0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithIncrementalIndexingIndexedName(I)V

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4

    const/16 v1, 0x1f

    .line 14
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v0

    iput v0, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    if-ltz v0, :cond_3

    .line 15
    iget v1, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->headerTableSizeSetting:I

    if-gt v0, v1, :cond_3

    .line 19
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->adjustDynamicTableByteCount()V

    goto :goto_0

    .line 20
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dynamic table size update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->maxDynamicTableByteCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/16 v1, 0x10

    if-eq v0, v1, :cond_6

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/16 v1, 0xf

    .line 26
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readInt(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 27
    invoke-direct {p0, v0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithoutIndexingIndexedName(I)V

    goto :goto_0

    .line 28
    :cond_6
    :goto_1
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readLiteralHeaderWithoutIndexingNewName()V

    goto/16 :goto_0

    .line 29
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "index == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    return-void
.end method

.method readInt(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/2addr p1, p2

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readByte()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, 0x7f

    shl-int/2addr v0, p1

    add-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    shl-int p1, v0, p1

    add-int/2addr p2, p1

    return p2
.end method
