.class final enum Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

.field public static final enum ANSIX12_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

.field public static final enum ASCII_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

.field public static final enum BASE256_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

.field public static final enum C40_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

.field public static final enum EDIFACT_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

.field public static final enum PAD_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

.field public static final enum TEXT_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    const-string v1, "PAD_ENCODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->PAD_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 2
    new-instance v1, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    const-string v3, "ASCII_ENCODE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->ASCII_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 3
    new-instance v3, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    const-string v5, "C40_ENCODE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->C40_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 4
    new-instance v5, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    const-string v7, "TEXT_ENCODE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->TEXT_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 5
    new-instance v7, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    const-string v9, "ANSIX12_ENCODE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->ANSIX12_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 6
    new-instance v9, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    const-string v11, "EDIFACT_ENCODE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->EDIFACT_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    .line 7
    new-instance v11, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    const-string v13, "BASE256_ENCODE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->BASE256_ENCODE:Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->$VALUES:[Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;
    .locals 1

    .line 1
    const-class v0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object p0
.end method

.method public static values()[Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;
    .locals 1

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->$VALUES:[Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v0}, [Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dcloud/zxing2/datamatrix/decoder/DecodedBitStreamParser$Mode;

    return-object v0
.end method
