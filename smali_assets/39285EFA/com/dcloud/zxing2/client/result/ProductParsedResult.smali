.class public final Lcom/dcloud/zxing2/client/result/ProductParsedResult;
.super Lcom/dcloud/zxing2/client/result/ParsedResult;


# instance fields
.field private final normalizedProductID:Ljava/lang/String;

.field private final productID:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p1}, Lcom/dcloud/zxing2/client/result/ProductParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/dcloud/zxing2/client/result/ParsedResultType;->PRODUCT:Lcom/dcloud/zxing2/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/client/result/ParsedResult;-><init>(Lcom/dcloud/zxing2/client/result/ParsedResultType;)V

    .line 3
    iput-object p1, p0, Lcom/dcloud/zxing2/client/result/ProductParsedResult;->productID:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/dcloud/zxing2/client/result/ProductParsedResult;->normalizedProductID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDisplayResult()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/client/result/ProductParsedResult;->productID:Ljava/lang/String;

    return-object v0
.end method

.method public getNormalizedProductID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/client/result/ProductParsedResult;->normalizedProductID:Ljava/lang/String;

    return-object v0
.end method

.method public getProductID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/client/result/ProductParsedResult;->productID:Ljava/lang/String;

    return-object v0
.end method
