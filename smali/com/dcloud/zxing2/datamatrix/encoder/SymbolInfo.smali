.class public Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;
.super Ljava/lang/Object;


# static fields
.field static final PROD_SYMBOLS:[Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

.field private static symbols:[Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;


# instance fields
.field private final dataCapacity:I

.field private final dataRegions:I

.field private final errorCodewords:I

.field public final matrixHeight:I

.field public final matrixWidth:I

.field private final rectangular:Z

.field private final rsBlockData:I

.field private final rsBlockError:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    .line 1
    new-instance v8, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x5

    const/16 v5, 0x8

    const/16 v6, 0x8

    const/4 v7, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    const/4 v1, 0x0

    aput-object v8, v0, v1

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    const/4 v10, 0x0

    const/4 v11, 0x5

    const/4 v12, 0x7

    const/16 v13, 0xa

    const/16 v14, 0xa

    const/4 v15, 0x1

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/4 v6, 0x7

    const/16 v7, 0x10

    const/4 v8, 0x6

    const/4 v9, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/16 v6, 0xa

    const/16 v7, 0xc

    const/16 v8, 0xc

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    const/4 v4, 0x1

    const/16 v5, 0xa

    const/16 v6, 0xb

    const/16 v7, 0xe

    const/4 v8, 0x6

    const/4 v9, 0x2

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/16 v6, 0xc

    const/16 v8, 0xe

    const/4 v9, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    const/4 v4, 0x1

    const/16 v5, 0x10

    const/16 v6, 0xe

    const/16 v7, 0x18

    const/16 v8, 0xa

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    const/4 v4, 0x0

    const/16 v5, 0x12

    const/16 v7, 0x10

    const/16 v8, 0x10

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    const/16 v5, 0x16

    const/16 v6, 0x12

    const/16 v7, 0x12

    const/16 v8, 0x12

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    const/4 v4, 0x1

    const/16 v7, 0x10

    const/16 v8, 0xa

    const/4 v9, 0x2

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    const/4 v4, 0x0

    const/16 v5, 0x1e

    const/16 v6, 0x14

    const/16 v7, 0x14

    const/16 v8, 0x14

    const/4 v9, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    const/4 v4, 0x1

    const/16 v5, 0x20

    const/16 v6, 0x18

    const/16 v7, 0x10

    const/16 v8, 0xe

    const/4 v9, 0x2

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    const/4 v4, 0x0

    const/16 v5, 0x24

    const/16 v7, 0x16

    const/16 v8, 0x16

    const/4 v9, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    const/16 v5, 0x2c

    const/16 v6, 0x1c

    const/16 v7, 0x18

    const/16 v8, 0x18

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    const/4 v4, 0x1

    const/16 v5, 0x31

    const/16 v7, 0x16

    const/16 v8, 0xe

    const/4 v9, 0x2

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    const/4 v4, 0x0

    const/16 v5, 0x3e

    const/16 v6, 0x24

    const/16 v7, 0xe

    const/4 v9, 0x4

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    const/16 v5, 0x56

    const/16 v6, 0x2a

    const/16 v7, 0x10

    const/16 v8, 0x10

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    const/16 v5, 0x72

    const/16 v6, 0x30

    const/16 v7, 0x12

    const/16 v8, 0x12

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    const/16 v5, 0x90

    const/16 v6, 0x38

    const/16 v7, 0x14

    const/16 v8, 0x14

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    const/16 v5, 0xae

    const/16 v6, 0x44

    const/16 v7, 0x16

    const/16 v8, 0x16

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    const/16 v5, 0xcc

    const/16 v6, 0x54

    const/16 v7, 0x18

    const/16 v8, 0x18

    const/16 v10, 0x66

    const/16 v11, 0x2a

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    const/16 v5, 0x118

    const/16 v6, 0x70

    const/16 v7, 0xe

    const/16 v8, 0xe

    const/16 v9, 0x10

    const/16 v10, 0x8c

    const/16 v11, 0x38

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    const/16 v5, 0x170

    const/16 v6, 0x90

    const/16 v7, 0x10

    const/16 v8, 0x10

    const/16 v10, 0x5c

    const/16 v11, 0x24

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    const/16 v5, 0x1c8

    const/16 v6, 0xc0

    const/16 v7, 0x12

    const/16 v8, 0x12

    const/16 v10, 0x72

    const/16 v11, 0x30

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    const/16 v5, 0x240

    const/16 v6, 0xe0

    const/16 v7, 0x14

    const/16 v8, 0x14

    const/16 v10, 0x90

    const/16 v11, 0x38

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    const/16 v5, 0x2b8

    const/16 v6, 0x110

    const/16 v7, 0x16

    const/16 v8, 0x16

    const/16 v10, 0xae

    const/16 v11, 0x44

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    const/16 v5, 0x330

    const/16 v6, 0x150

    const/16 v7, 0x18

    const/16 v8, 0x18

    const/16 v10, 0x88

    const/16 v11, 0x38

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    const/16 v5, 0x41a

    const/16 v6, 0x198

    const/16 v7, 0x12

    const/16 v8, 0x12

    const/16 v9, 0x24

    const/16 v10, 0xaf

    const/16 v11, 0x44

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    const/16 v5, 0x518

    const/16 v6, 0x1f0

    const/16 v7, 0x14

    const/16 v8, 0x14

    const/16 v10, 0xa3

    const/16 v11, 0x3e

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Lcom/dcloud/zxing2/datamatrix/encoder/DataMatrixSymbolInfo144;

    invoke-direct {v1}, Lcom/dcloud/zxing2/datamatrix/encoder/DataMatrixSymbolInfo144;-><init>()V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sput-object v0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->PROD_SYMBOLS:[Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    .line 37
    sput-object v0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->symbols:[Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    return-void
.end method

.method public constructor <init>(ZIIIII)V
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p2

    move v8, p3

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    return-void
.end method

.method constructor <init>(ZIIIIIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->rectangular:Z

    .line 4
    iput p2, p0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    .line 5
    iput p3, p0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->errorCodewords:I

    .line 6
    iput p4, p0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    .line 7
    iput p5, p0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    .line 8
    iput p6, p0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->dataRegions:I

    .line 9
    iput p7, p0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->rsBlockData:I

    .line 10
    iput p8, p0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->rsBlockError:I

    return-void
.end method

.method public static lookup(I)Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;
    .locals 2

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->lookup(ILcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;Z)Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    move-result-object p0

    return-object p0
.end method

.method public static lookup(ILcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;)Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p1, v0}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->lookup(ILcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;Z)Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    move-result-object p0

    return-object p0
.end method

.method public static lookup(ILcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;Lcom/dcloud/zxing2/Dimension;Lcom/dcloud/zxing2/Dimension;Z)Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;
    .locals 6

    .line 6
    sget-object v0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->symbols:[Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 7
    sget-object v4, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;->FORCE_SQUARE:Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;

    if-ne p1, v4, :cond_0

    iget-boolean v4, v3, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->rectangular:Z

    if-eqz v4, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    sget-object v4, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;->FORCE_RECTANGLE:Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;

    if-ne p1, v4, :cond_1

    iget-boolean v4, v3, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->rectangular:Z

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 14
    invoke-virtual {v3}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v4

    invoke-virtual {p2}, Lcom/dcloud/zxing2/Dimension;->getWidth()I

    move-result v5

    if-lt v4, v5, :cond_4

    .line 15
    invoke-virtual {v3}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->getSymbolHeight()I

    move-result v4

    invoke-virtual {p2}, Lcom/dcloud/zxing2/Dimension;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    .line 19
    invoke-virtual {v3}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v4

    invoke-virtual {p3}, Lcom/dcloud/zxing2/Dimension;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_4

    .line 20
    invoke-virtual {v3}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->getSymbolHeight()I

    move-result v4

    invoke-virtual {p3}, Lcom/dcloud/zxing2/Dimension;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_3

    goto :goto_1

    .line 23
    :cond_3
    iget v4, v3, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    if-gt p0, v4, :cond_4

    return-object v3

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-nez p4, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 28
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can\'t find a symbol arrangement that matches the message. Data codewords: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private static lookup(ILcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;Z)Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, p1, v0, v0, p2}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->lookup(ILcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;Lcom/dcloud/zxing2/Dimension;Lcom/dcloud/zxing2/Dimension;Z)Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    move-result-object p0

    return-object p0
.end method

.method public static lookup(IZZ)Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;->FORCE_SQUARE:Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;

    .line 4
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->lookup(ILcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;Z)Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    move-result-object p0

    return-object p0
.end method

.method public static overrideSymbolSet([Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->symbols:[Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    return-void
.end method


# virtual methods
.method public getCodewordCount()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    iget v1, p0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->errorCodewords:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final getDataCapacity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    return v0
.end method

.method public getDataLengthForInterleavedBlock(I)I
    .locals 0

    .line 1
    iget p1, p0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->rsBlockData:I

    return p1
.end method

.method public final getErrorCodewords()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->errorCodewords:I

    return v0
.end method

.method public final getErrorLengthForInterleavedBlock(I)I
    .locals 0

    .line 1
    iget p1, p0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->rsBlockError:I

    return p1
.end method

.method final getHorizontalDataRegions()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->dataRegions:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    return v0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot handle this number of data regions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public getInterleavedBlockCount()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    iget v1, p0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->rsBlockData:I

    div-int/2addr v0, v1

    return v0
.end method

.method public final getSymbolDataHeight()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    move-result v0

    iget v1, p0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    mul-int v0, v0, v1

    return v0
.end method

.method public final getSymbolDataWidth()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->getHorizontalDataRegions()I

    move-result v0

    iget v1, p0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    mul-int v0, v0, v1

    return v0
.end method

.method public final getSymbolHeight()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->getSymbolDataHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public final getSymbolWidth()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->getSymbolDataWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->getHorizontalDataRegions()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method final getVerticalDataRegions()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->dataRegions:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v2, 0x10

    if-eq v0, v2, :cond_1

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    return v0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot handle this number of data regions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v1

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-boolean v1, p0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->rectangular:Z

    if-eqz v1, :cond_0

    const-string v1, "Rectangular Symbol:"

    goto :goto_0

    :cond_0
    const-string v1, "Square Symbol:"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " data region "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", symbol size "

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->getSymbolHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", symbol data size "

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->getSymbolDataWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->getSymbolDataHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", codewords "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->errorCodewords:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
