.class public final enum Lcom/dcloud/zxing2/BarcodeFormat;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dcloud/zxing2/BarcodeFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dcloud/zxing2/BarcodeFormat;

.field public static final enum AZTEC:Lcom/dcloud/zxing2/BarcodeFormat;

.field public static final enum CODABAR:Lcom/dcloud/zxing2/BarcodeFormat;

.field public static final enum CODE_128:Lcom/dcloud/zxing2/BarcodeFormat;

.field public static final enum CODE_39:Lcom/dcloud/zxing2/BarcodeFormat;

.field public static final enum CODE_93:Lcom/dcloud/zxing2/BarcodeFormat;

.field public static final enum DATA_MATRIX:Lcom/dcloud/zxing2/BarcodeFormat;

.field public static final enum EAN_13:Lcom/dcloud/zxing2/BarcodeFormat;

.field public static final enum EAN_8:Lcom/dcloud/zxing2/BarcodeFormat;

.field public static final enum ITF:Lcom/dcloud/zxing2/BarcodeFormat;

.field public static final enum MAXICODE:Lcom/dcloud/zxing2/BarcodeFormat;

.field public static final enum PDF_417:Lcom/dcloud/zxing2/BarcodeFormat;

.field public static final enum QR_CODE:Lcom/dcloud/zxing2/BarcodeFormat;

.field public static final enum RSS_14:Lcom/dcloud/zxing2/BarcodeFormat;

.field public static final enum RSS_EXPANDED:Lcom/dcloud/zxing2/BarcodeFormat;

.field public static final enum UPC_A:Lcom/dcloud/zxing2/BarcodeFormat;

.field public static final enum UPC_E:Lcom/dcloud/zxing2/BarcodeFormat;

.field public static final enum UPC_EAN_EXTENSION:Lcom/dcloud/zxing2/BarcodeFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v0, Lcom/dcloud/zxing2/BarcodeFormat;

    const-string v1, "AZTEC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->AZTEC:Lcom/dcloud/zxing2/BarcodeFormat;

    .line 4
    new-instance v1, Lcom/dcloud/zxing2/BarcodeFormat;

    const-string v3, "CODABAR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dcloud/zxing2/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dcloud/zxing2/BarcodeFormat;->CODABAR:Lcom/dcloud/zxing2/BarcodeFormat;

    .line 7
    new-instance v3, Lcom/dcloud/zxing2/BarcodeFormat;

    const-string v5, "CODE_39"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dcloud/zxing2/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_39:Lcom/dcloud/zxing2/BarcodeFormat;

    .line 10
    new-instance v5, Lcom/dcloud/zxing2/BarcodeFormat;

    const-string v7, "CODE_93"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/dcloud/zxing2/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_93:Lcom/dcloud/zxing2/BarcodeFormat;

    .line 13
    new-instance v7, Lcom/dcloud/zxing2/BarcodeFormat;

    const-string v9, "CODE_128"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/dcloud/zxing2/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_128:Lcom/dcloud/zxing2/BarcodeFormat;

    .line 16
    new-instance v9, Lcom/dcloud/zxing2/BarcodeFormat;

    const-string v11, "DATA_MATRIX"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/dcloud/zxing2/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/dcloud/zxing2/BarcodeFormat;->DATA_MATRIX:Lcom/dcloud/zxing2/BarcodeFormat;

    .line 19
    new-instance v11, Lcom/dcloud/zxing2/BarcodeFormat;

    const-string v13, "EAN_8"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/dcloud/zxing2/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/dcloud/zxing2/BarcodeFormat;->EAN_8:Lcom/dcloud/zxing2/BarcodeFormat;

    .line 22
    new-instance v13, Lcom/dcloud/zxing2/BarcodeFormat;

    const-string v15, "EAN_13"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/dcloud/zxing2/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/dcloud/zxing2/BarcodeFormat;->EAN_13:Lcom/dcloud/zxing2/BarcodeFormat;

    .line 25
    new-instance v15, Lcom/dcloud/zxing2/BarcodeFormat;

    const-string v14, "ITF"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/dcloud/zxing2/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/dcloud/zxing2/BarcodeFormat;->ITF:Lcom/dcloud/zxing2/BarcodeFormat;

    .line 28
    new-instance v14, Lcom/dcloud/zxing2/BarcodeFormat;

    const-string v12, "MAXICODE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/dcloud/zxing2/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/dcloud/zxing2/BarcodeFormat;->MAXICODE:Lcom/dcloud/zxing2/BarcodeFormat;

    .line 31
    new-instance v12, Lcom/dcloud/zxing2/BarcodeFormat;

    const-string v10, "PDF_417"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/dcloud/zxing2/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/dcloud/zxing2/BarcodeFormat;->PDF_417:Lcom/dcloud/zxing2/BarcodeFormat;

    .line 34
    new-instance v10, Lcom/dcloud/zxing2/BarcodeFormat;

    const-string v8, "QR_CODE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/dcloud/zxing2/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/dcloud/zxing2/BarcodeFormat;->QR_CODE:Lcom/dcloud/zxing2/BarcodeFormat;

    .line 37
    new-instance v8, Lcom/dcloud/zxing2/BarcodeFormat;

    const-string v6, "RSS_14"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/dcloud/zxing2/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/dcloud/zxing2/BarcodeFormat;->RSS_14:Lcom/dcloud/zxing2/BarcodeFormat;

    .line 40
    new-instance v6, Lcom/dcloud/zxing2/BarcodeFormat;

    const-string v4, "RSS_EXPANDED"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/dcloud/zxing2/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/dcloud/zxing2/BarcodeFormat;->RSS_EXPANDED:Lcom/dcloud/zxing2/BarcodeFormat;

    .line 43
    new-instance v4, Lcom/dcloud/zxing2/BarcodeFormat;

    const-string v2, "UPC_A"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/dcloud/zxing2/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/dcloud/zxing2/BarcodeFormat;->UPC_A:Lcom/dcloud/zxing2/BarcodeFormat;

    .line 46
    new-instance v2, Lcom/dcloud/zxing2/BarcodeFormat;

    const-string v6, "UPC_E"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/dcloud/zxing2/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/dcloud/zxing2/BarcodeFormat;->UPC_E:Lcom/dcloud/zxing2/BarcodeFormat;

    .line 49
    new-instance v6, Lcom/dcloud/zxing2/BarcodeFormat;

    const-string v4, "UPC_EAN_EXTENSION"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/dcloud/zxing2/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/dcloud/zxing2/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/dcloud/zxing2/BarcodeFormat;

    const/16 v4, 0x11

    new-array v4, v4, [Lcom/dcloud/zxing2/BarcodeFormat;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    aput-object v6, v4, v2

    .line 50
    sput-object v4, Lcom/dcloud/zxing2/BarcodeFormat;->$VALUES:[Lcom/dcloud/zxing2/BarcodeFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dcloud/zxing2/BarcodeFormat;
    .locals 1

    .line 1
    const-class v0, Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dcloud/zxing2/BarcodeFormat;

    return-object p0
.end method

.method public static values()[Lcom/dcloud/zxing2/BarcodeFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->$VALUES:[Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-virtual {v0}, [Lcom/dcloud/zxing2/BarcodeFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dcloud/zxing2/BarcodeFormat;

    return-object v0
.end method
