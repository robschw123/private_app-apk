.class public final Lcom/dcloud/zxing2/client/result/AddressBookAUResultParser;
.super Lcom/dcloud/zxing2/client/result/ResultParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static matchMultipleValuePrefix(Ljava/lang/String;ILjava/lang/String;Z)[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-gt v0, p1, :cond_2

    .line 1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xd

    invoke-static {v3, p2, v4, p3}, Lcom/dcloud/zxing2/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    return-object v1

    .line 13
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public parse(Lcom/dcloud/zxing2/Result;)Lcom/dcloud/zxing2/client/result/AddressBookParsedResult;
    .locals 23

    .line 2
    invoke-static/range {p1 .. p1}, Lcom/dcloud/zxing2/client/result/ResultParser;->getMassagedText(Lcom/dcloud/zxing2/Result;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEMORY"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "NAME1:"

    const/16 v3, 0xd

    const/4 v4, 0x1

    .line 10
    invoke-static {v1, v0, v3, v4}, Lcom/dcloud/zxing2/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v1

    const-string v5, "NAME2:"

    .line 11
    invoke-static {v5, v0, v3, v4}, Lcom/dcloud/zxing2/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v9

    const-string v5, "TEL"

    const/4 v6, 0x3

    .line 13
    invoke-static {v5, v6, v0, v4}, Lcom/dcloud/zxing2/client/result/AddressBookAUResultParser;->matchMultipleValuePrefix(Ljava/lang/String;ILjava/lang/String;Z)[Ljava/lang/String;

    move-result-object v10

    const-string v5, "MAIL"

    .line 14
    invoke-static {v5, v6, v0, v4}, Lcom/dcloud/zxing2/client/result/AddressBookAUResultParser;->matchMultipleValuePrefix(Ljava/lang/String;ILjava/lang/String;Z)[Ljava/lang/String;

    move-result-object v12

    const-string v5, "MEMORY:"

    const/4 v6, 0x0

    .line 15
    invoke-static {v5, v0, v3, v6}, Lcom/dcloud/zxing2/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v15

    const-string v5, "ADD:"

    .line 16
    invoke-static {v5, v0, v3, v4}, Lcom/dcloud/zxing2/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v6

    :goto_0
    move-object/from16 v16, v2

    .line 18
    new-instance v0, Lcom/dcloud/zxing2/client/result/AddressBookParsedResult;

    move-object v6, v0

    invoke-static {v1}, Lcom/dcloud/zxing2/client/result/ResultParser;->maybeWrap(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v6 .. v22}, Lcom/dcloud/zxing2/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0

    :cond_2
    :goto_1
    return-object v2
.end method

.method public bridge synthetic parse(Lcom/dcloud/zxing2/Result;)Lcom/dcloud/zxing2/client/result/ParsedResult;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/client/result/AddressBookAUResultParser;->parse(Lcom/dcloud/zxing2/Result;)Lcom/dcloud/zxing2/client/result/AddressBookParsedResult;

    move-result-object p1

    return-object p1
.end method
