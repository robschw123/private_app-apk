.class public final Lcom/alibaba/fastjson/parser/JSONReaderScanner;
.super Lcom/alibaba/fastjson/parser/JSONLexerBase;
.source "JSONReaderScanner.java"


# static fields
.field private static final BUF_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field


# instance fields
.field private buf:[C

.field private bufLength:I

.field private reader:Ljava/io/Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->BUF_LOCAL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 55
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 1

    .line 59
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;-><init>(I)V

    .line 60
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->reader:Ljava/io/Reader;

    .line 62
    sget-object p2, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->BUF_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 67
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    if-nez p2, :cond_1

    const/16 p2, 0x4000

    new-array p2, p2, [C

    .line 68
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    .line 72
    :cond_1
    :try_start_0
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-virtual {p1, p2}, Ljava/io/Reader;->read([C)I

    move-result p1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, -0x1

    .line 77
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->next()C

    .line 80
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->ch:C

    const p2, 0xfeff

    if-ne p1, p2, :cond_2

    .line 81
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->next()C

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 74
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 43
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 47
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1

    .line 51
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>([CII)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2

    .line 86
    new-instance v0, Ljava/io/CharArrayReader;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/io/CharArrayReader;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;-><init>(Ljava/io/Reader;I)V

    return-void
.end method


# virtual methods
.method public final addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final arrayCopy(I[CII)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-static {v0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public bytesValue()[B
    .locals 3

    .line 221
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->token:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/IOUtils;->decodeBase64([CII)[B

    move-result-object v0

    return-object v0

    .line 222
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "TODO"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final charArrayCompare([C)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 211
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 212
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->charAt(I)C

    move-result v2

    aget-char v3, p1, v1

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final charAt(I)C
    .locals 7

    .line 90
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-lt p1, v0, :cond_6

    const/16 v1, 0x1a

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 92
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    if-ge p1, v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    aget-char p1, v0, p1

    return p1

    :cond_0
    return v1

    .line 98
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [C

    .line 100
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    invoke-static {v0, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    sub-int/2addr v1, v0

    .line 104
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->reader:Ljava/io/Reader;

    invoke-virtual {v3, v2, v0, v1}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 105
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    .line 106
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 111
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    sub-int/2addr v0, v4

    if-lez v0, :cond_3

    .line 113
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-static {v4, v5, v6, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->reader:Ljava/io/Reader;

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v6, v5

    sub-int/2addr v6, v0

    invoke-virtual {v4, v5, v0, v6}, Ljava/io/Reader;->read([CII)I

    move-result v4

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_5

    if-ne v4, v2, :cond_4

    return v1

    :cond_4
    add-int/2addr v4, v0

    .line 130
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    .line 131
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    sub-int/2addr p1, v0

    .line 132
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    .line 133
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    goto :goto_0

    .line 123
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "illegal state, textLength is zero"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 119
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 137
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    aget-char p1, v0, p1

    return p1
.end method

.method public close()V
    .locals 3

    .line 308
    invoke-super {p0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    .line 310
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v1, v0

    const/high16 v2, 0x10000

    if-gt v1, v2, :cond_0

    .line 311
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->BUF_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 313
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    .line 315
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->reader:Ljava/io/Reader;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->close(Ljava/io/Closeable;)V

    return-void
.end method

.method protected final copyTo(II[C)V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    const/4 v1, 0x0

    invoke-static {v0, p1, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final decimalValue()Ljava/math/BigDecimal;
    .locals 5

    .line 289
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 293
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->charAt(I)C

    move-result v1

    .line 295
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    const/16 v3, 0x4c

    if-eq v1, v3, :cond_1

    const/16 v3, 0x53

    if-eq v1, v3, :cond_1

    const/16 v3, 0x42

    if-eq v1, v3, :cond_1

    const/16 v3, 0x46

    if-eq v1, v3, :cond_1

    const/16 v3, 0x44

    if-ne v1, v3, :cond_2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    :cond_2
    const v1, 0xffff

    if-gt v2, v1, :cond_3

    .line 304
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    sget-object v4, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    invoke-direct {v1, v3, v0, v2, v4}, Ljava/math/BigDecimal;-><init>([CIILjava/math/MathContext;)V

    return-object v1

    .line 301
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "decimal overflow"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final indexOf(CI)I
    .locals 2

    .line 141
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    sub-int/2addr p2, v0

    .line 143
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    add-int/2addr v0, p2

    .line 144
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->charAt(I)C

    move-result v0

    if-ne p1, v0, :cond_0

    .line 146
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    add-int/2addr p2, p1

    return p2

    :cond_0
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public final isBlankInput()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 325
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    aget-char v2, v2, v1

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_0

    const/16 v0, 0x14

    .line 327
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->token:I

    const/4 v0, 0x1

    return v0

    .line 331
    :cond_0
    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isEOF()Z
    .locals 3

    .line 320
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v2, v2

    if-eq v0, v2, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->ch:C

    const/16 v2, 0x1a

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v2, v2

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final next()C
    .locals 8

    .line 159
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    .line 161
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    if-lt v0, v1, :cond_6

    const/16 v0, 0x1a

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return v0

    .line 166
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    const/4 v3, 0x0

    if-lez v1, :cond_2

    .line 168
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    sub-int/2addr v1, v4

    .line 169
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->ch:C

    const/16 v5, 0x22

    if-ne v4, v5, :cond_1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 172
    :cond_1
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    invoke-static {v4, v1, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    :cond_2
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    .line 176
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    .line 179
    :try_start_0
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    .line 180
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v6, v5

    sub-int/2addr v6, v4

    if-nez v6, :cond_3

    .line 182
    array-length v6, v5

    mul-int/lit8 v6, v6, 0x2

    new-array v6, v6, [C

    .line 183
    array-length v7, v5

    invoke-static {v5, v3, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    iput-object v6, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    .line 185
    array-length v3, v6

    sub-int v6, v3, v4

    .line 187
    :cond_3
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->reader:Ljava/io/Reader;

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/Reader;->read([CII)I

    move-result v3

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_5

    if-ne v3, v2, :cond_4

    .line 197
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->ch:C

    return v0

    .line 200
    :cond_4
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bp:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->bufLength:I

    move v0, v1

    goto :goto_0

    .line 193
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "illegal stat, textLength is zero"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 189
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 203
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    aget-char v0, v1, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->ch:C

    return v0
.end method

.method public final numberString()Ljava/lang/String;
    .locals 4

    .line 273
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 277
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->charAt(I)C

    move-result v1

    .line 279
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    const/16 v3, 0x4c

    if-eq v1, v3, :cond_1

    const/16 v3, 0x53

    if-eq v1, v3, :cond_1

    const/16 v3, 0x42

    if-eq v1, v3, :cond_1

    const/16 v3, 0x46

    if-eq v1, v3, :cond_1

    const/16 v3, 0x44

    if-ne v1, v3, :cond_2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 284
    :cond_2
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-direct {v1, v3, v0, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method public final stringVal()Ljava/lang/String;
    .locals 4

    .line 236
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->hasSpecial:Z

    if-nez v0, :cond_2

    .line 237
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->np:I

    add-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_1

    .line 241
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    array-length v1, v1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 244
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 239
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 247
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sbuf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->sp:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public final subString(II)Ljava/lang/String;
    .locals 2

    if-ltz p2, :cond_0

    .line 255
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 253
    :cond_0
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p1
.end method

.method public final sub_chars(II)[C
    .locals 3

    if-ltz p2, :cond_1

    if-nez p1, :cond_0

    .line 265
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    return-object p1

    .line 267
    :cond_0
    new-array v0, p2, [C

    .line 268
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONReaderScanner;->buf:[C

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 261
    :cond_1
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p1
.end method
