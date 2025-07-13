.class public final Lcom/dcloud/zxing2/client/result/ExpandedProductResultParser;
.super Lcom/dcloud/zxing2/client/result/ResultParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static findAIvalue(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x28

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 7
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 11
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_1

    .line 13
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v3, 0x30

    if-lt v2, v3, :cond_2

    const/16 v3, 0x39

    if-gt v2, v3, :cond_2

    .line 15
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    .line 20
    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static findValue(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_0

    .line 9
    invoke-static {p1, p0}, Lcom/dcloud/zxing2/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public parse(Lcom/dcloud/zxing2/Result;)Lcom/dcloud/zxing2/client/result/ExpandedProductParsedResult;
    .locals 24

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/zxing2/Result;->getBarcodeFormat()Lcom/dcloud/zxing2/BarcodeFormat;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/dcloud/zxing2/BarcodeFormat;->RSS_EXPANDED:Lcom/dcloud/zxing2/BarcodeFormat;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    .line 7
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/dcloud/zxing2/client/result/ResultParser;->getMassagedText(Lcom/dcloud/zxing2/Result;)Ljava/lang/String;

    move-result-object v4

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v5, v2

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    const/4 v3, 0x0

    .line 26
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v3, v1, :cond_2d

    .line 27
    invoke-static {v3, v4}, Lcom/dcloud/zxing2/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    .line 33
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    add-int v3, v3, v18

    .line 34
    invoke-static {v3, v4}, Lcom/dcloud/zxing2/client/result/ExpandedProductResultParser;->findValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v20

    add-int v3, v3, v20

    const/16 v20, -0x1

    move/from16 v21, v3

    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    move-object/from16 v22, v15

    const/16 v15, 0x600

    move-object/from16 v23, v14

    const/4 v14, 0x3

    if-eq v3, v15, :cond_29

    const/16 v15, 0x601

    if-eq v3, v15, :cond_27

    const/16 v15, 0x61f

    if-eq v3, v15, :cond_26

    const/16 v15, 0x620

    if-eq v3, v15, :cond_24

    const/16 v15, 0x622

    if-eq v3, v15, :cond_22

    const/16 v15, 0x624

    if-eq v3, v15, :cond_20

    const/16 v15, 0x626

    if-eq v3, v15, :cond_1e

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    packed-switch v3, :pswitch_data_3

    goto/16 :goto_2

    :pswitch_0
    const-string v3, "3933"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_2

    :cond_2
    const/16 v19, 0x22

    goto/16 :goto_1

    :pswitch_1
    const-string v3, "3932"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_2

    :cond_3
    const/16 v19, 0x21

    goto/16 :goto_1

    :pswitch_2
    const-string v3, "3931"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_2

    :cond_4
    const/16 v19, 0x20

    goto/16 :goto_1

    :pswitch_3
    const-string v3, "3930"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_2

    :cond_5
    const/16 v19, 0x1f

    goto/16 :goto_1

    :pswitch_4
    const-string v3, "3923"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_2

    :cond_6
    const/16 v19, 0x1e

    goto/16 :goto_1

    :pswitch_5
    const-string v3, "3922"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_2

    :cond_7
    const/16 v19, 0x1d

    goto/16 :goto_1

    :pswitch_6
    const-string v3, "3921"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto/16 :goto_2

    :cond_8
    const/16 v19, 0x1c

    goto/16 :goto_1

    :pswitch_7
    const-string v3, "3920"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_2

    :cond_9
    const/16 v19, 0x1b

    goto/16 :goto_1

    :pswitch_8
    const-string v3, "3209"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_2

    :cond_a
    const/16 v19, 0x1a

    goto/16 :goto_1

    :pswitch_9
    const-string v3, "3208"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_2

    :cond_b
    const/16 v19, 0x19

    goto/16 :goto_1

    :pswitch_a
    const-string v3, "3207"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto/16 :goto_2

    :cond_c
    const/16 v19, 0x18

    goto/16 :goto_1

    :pswitch_b
    const-string v3, "3206"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto/16 :goto_2

    :cond_d
    const/16 v19, 0x17

    goto/16 :goto_1

    :pswitch_c
    const-string v3, "3205"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto/16 :goto_2

    :cond_e
    const/16 v19, 0x16

    goto/16 :goto_1

    :pswitch_d
    const-string v3, "3204"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_2

    :cond_f
    const/16 v19, 0x15

    goto/16 :goto_1

    :pswitch_e
    const-string v3, "3203"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto/16 :goto_2

    :cond_10
    const/16 v19, 0x14

    goto/16 :goto_1

    :pswitch_f
    const-string v3, "3202"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_2

    :cond_11
    const/16 v19, 0x13

    goto/16 :goto_1

    :pswitch_10
    const-string v3, "3201"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto/16 :goto_2

    :cond_12
    const/16 v19, 0x12

    goto/16 :goto_1

    :pswitch_11
    const-string v3, "3200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto/16 :goto_2

    :cond_13
    const/16 v19, 0x11

    goto/16 :goto_1

    :pswitch_12
    const-string v3, "3109"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto/16 :goto_2

    :cond_14
    const/16 v19, 0x10

    goto/16 :goto_1

    :pswitch_13
    const-string v3, "3108"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    goto/16 :goto_2

    :cond_15
    const/16 v19, 0xf

    goto/16 :goto_1

    :pswitch_14
    const-string v3, "3107"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto/16 :goto_2

    :cond_16
    const/16 v19, 0xe

    goto/16 :goto_1

    :pswitch_15
    const-string v3, "3106"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto/16 :goto_2

    :cond_17
    const/16 v19, 0xd

    goto/16 :goto_1

    :pswitch_16
    const-string v3, "3105"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto/16 :goto_2

    :cond_18
    const/16 v19, 0xc

    goto/16 :goto_1

    :pswitch_17
    const-string v3, "3104"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto/16 :goto_2

    :cond_19
    const/16 v19, 0xb

    goto/16 :goto_1

    :pswitch_18
    const-string v3, "3103"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto/16 :goto_2

    :cond_1a
    const/16 v19, 0xa

    goto/16 :goto_1

    :pswitch_19
    const-string v3, "3102"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto/16 :goto_2

    :cond_1b
    const/16 v19, 0x9

    goto/16 :goto_1

    :pswitch_1a
    const-string v3, "3101"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto/16 :goto_2

    :cond_1c
    const/16 v19, 0x8

    goto/16 :goto_1

    :pswitch_1b
    const-string v3, "3100"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_2

    :cond_1d
    const/16 v19, 0x7

    goto :goto_1

    :cond_1e
    const-string v3, "17"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_2

    :cond_1f
    const/16 v19, 0x6

    goto :goto_1

    :cond_20
    const-string v3, "15"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    goto :goto_2

    :cond_21
    const/16 v19, 0x5

    goto :goto_1

    :cond_22
    const-string v3, "13"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    goto :goto_2

    :cond_23
    const/16 v19, 0x4

    goto :goto_1

    :cond_24
    const-string v3, "11"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_2

    :cond_25
    const/16 v19, 0x3

    goto :goto_1

    :cond_26
    const-string v3, "10"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto :goto_2

    :cond_27
    const-string v3, "01"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    goto :goto_2

    :cond_28
    const/16 v19, 0x1

    goto :goto_1

    :cond_29
    const-string v3, "00"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_2

    :cond_2a
    const/16 v19, 0x0

    :cond_2b
    :goto_1
    move/from16 v20, v19

    :goto_2
    packed-switch v20, :pswitch_data_4

    const/4 v3, 0x0

    .line 110
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 111
    :pswitch_1c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v15, 0x4

    if-ge v3, v15, :cond_2c

    const/4 v3, 0x0

    return-object v3

    :cond_2c
    const/4 v3, 0x0

    .line 117
    invoke-virtual {v2, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    const/4 v3, 0x0

    .line 118
    invoke-virtual {v2, v3, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-virtual {v1, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    goto :goto_5

    :pswitch_1d
    const/4 v3, 0x0

    .line 120
    invoke-virtual {v1, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    move-object v15, v2

    goto :goto_5

    :pswitch_1e
    const/4 v3, 0x0

    .line 121
    invoke-virtual {v1, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v12, "LB"

    goto :goto_3

    :pswitch_1f
    const/4 v3, 0x0

    .line 122
    invoke-virtual {v1, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v12, "KG"

    :goto_3
    move-object v14, v1

    move-object v13, v12

    move-object/from16 v15, v22

    move-object v12, v2

    goto :goto_6

    :pswitch_20
    const/4 v3, 0x0

    move-object v11, v2

    goto :goto_4

    :pswitch_21
    const/4 v3, 0x0

    move-object v10, v2

    goto :goto_4

    :pswitch_22
    const/4 v3, 0x0

    move-object v9, v2

    goto :goto_4

    :pswitch_23
    const/4 v3, 0x0

    move-object v8, v2

    goto :goto_4

    :pswitch_24
    const/4 v3, 0x0

    move-object v7, v2

    goto :goto_4

    :pswitch_25
    const/4 v3, 0x0

    move-object v5, v2

    :goto_4
    move-object/from16 v15, v22

    :goto_5
    move-object/from16 v14, v23

    goto :goto_6

    :pswitch_26
    const/4 v3, 0x0

    move-object v6, v2

    goto :goto_4

    :goto_6
    move/from16 v3, v21

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_2d
    move-object/from16 v23, v14

    move-object/from16 v22, v15

    .line 166
    new-instance v1, Lcom/dcloud/zxing2/client/result/ExpandedProductParsedResult;

    move-object v3, v1

    move-object/from16 v18, v0

    invoke-direct/range {v3 .. v18}, Lcom/dcloud/zxing2/client/result/ExpandedProductParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x17ecde
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x17f09f
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x180b24
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x180b43
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public bridge synthetic parse(Lcom/dcloud/zxing2/Result;)Lcom/dcloud/zxing2/client/result/ParsedResult;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/client/result/ExpandedProductResultParser;->parse(Lcom/dcloud/zxing2/Result;)Lcom/dcloud/zxing2/client/result/ExpandedProductParsedResult;

    move-result-object p1

    return-object p1
.end method
