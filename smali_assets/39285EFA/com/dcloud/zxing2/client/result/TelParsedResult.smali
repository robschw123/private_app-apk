.class public final Lcom/dcloud/zxing2/client/result/TelParsedResult;
.super Lcom/dcloud/zxing2/client/result/ParsedResult;


# instance fields
.field private final number:Ljava/lang/String;

.field private final telURI:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/client/result/ParsedResultType;->TEL:Lcom/dcloud/zxing2/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/client/result/ParsedResult;-><init>(Lcom/dcloud/zxing2/client/result/ParsedResultType;)V

    .line 2
    iput-object p1, p0, Lcom/dcloud/zxing2/client/result/TelParsedResult;->number:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/dcloud/zxing2/client/result/TelParsedResult;->telURI:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/dcloud/zxing2/client/result/TelParsedResult;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDisplayResult()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    iget-object v1, p0, Lcom/dcloud/zxing2/client/result/TelParsedResult;->number:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/dcloud/zxing2/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 3
    iget-object v1, p0, Lcom/dcloud/zxing2/client/result/TelParsedResult;->title:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/dcloud/zxing2/client/result/ParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/client/result/TelParsedResult;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getTelURI()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/client/result/TelParsedResult;->telURI:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/client/result/TelParsedResult;->title:Ljava/lang/String;

    return-object v0
.end method
