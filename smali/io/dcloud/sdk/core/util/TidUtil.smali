.class public Lio/dcloud/sdk/core/util/TidUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTid(Ljava/lang/String;I)Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v3, "sgm"

    const/4 v5, 0x5

    const-string v6, "pg"

    const-string v7, "hw"

    const-string v8, "gg"

    const-string v9, "bd"

    const/4 v10, 0x7

    const/4 v11, 0x4

    const-string v12, "gdt"

    const-string v13, "csj"

    const-string v14, "ks"

    const/4 v15, 0x3

    const/16 v16, 0x2

    const-string v2, "gm"

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_27

    if-eq v1, v11, :cond_1e

    if-eq v1, v10, :cond_19

    const/16 v4, 0xf

    if-eq v1, v4, :cond_10

    const/16 v4, 0x9

    if-eq v1, v4, :cond_5

    const/16 v3, 0xa

    if-eq v1, v3, :cond_0

    goto/16 :goto_c

    .line 1
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 v15, -0x1

    goto :goto_1

    :sswitch_0
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v15, 0x2

    goto :goto_1

    :sswitch_2
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v15, 0x1

    goto :goto_1

    :sswitch_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v15, 0x0

    :cond_4
    :goto_1
    packed-switch v15, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    const-string v0, "103"

    return-object v0

    :pswitch_1
    const-string v0, "104"

    return-object v0

    :pswitch_2
    const-string v0, "105"

    return-object v0

    :pswitch_3
    const-string v0, "106"

    return-object v0

    .line 2
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    :goto_2
    const/4 v2, -0x1

    goto/16 :goto_3

    :sswitch_4
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    const/16 v2, 0x9

    goto/16 :goto_3

    :sswitch_5
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    const/16 v2, 0x8

    goto :goto_3

    :sswitch_6
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    const/4 v2, 0x7

    goto :goto_3

    :sswitch_7
    const-string/jumbo v1, "wm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2

    :cond_9
    const/4 v2, 0x6

    goto :goto_3

    :sswitch_8
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    const/4 v2, 0x5

    goto :goto_3

    :sswitch_9
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2

    :cond_b
    const/4 v2, 0x4

    goto :goto_3

    :sswitch_a
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_2

    :cond_c
    const/4 v2, 0x3

    goto :goto_3

    :sswitch_b
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_2

    :cond_d
    const/4 v2, 0x2

    goto :goto_3

    :sswitch_c
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_2

    :cond_e
    const/4 v2, 0x1

    goto :goto_3

    :sswitch_d
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_2

    :cond_f
    const/4 v2, 0x0

    :goto_3
    packed-switch v2, :pswitch_data_1

    goto/16 :goto_c

    :pswitch_4
    const-string v0, "86"

    return-object v0

    :pswitch_5
    const-string v0, "83"

    return-object v0

    :pswitch_6
    const-string v0, "84"

    return-object v0

    :pswitch_7
    const-string v0, "140"

    return-object v0

    :pswitch_8
    const-string v0, "211"

    return-object v0

    :pswitch_9
    const-string v0, "85"

    return-object v0

    :pswitch_a
    const-string v0, "87"

    return-object v0

    :pswitch_b
    const-string v0, "89"

    return-object v0

    :pswitch_c
    const-string v0, "210"

    return-object v0

    :pswitch_d
    const-string v0, "88"

    return-object v0

    .line 63
    :cond_10
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2

    :goto_4
    const/4 v4, -0x1

    goto :goto_5

    :sswitch_e
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_4

    :cond_11
    const/4 v4, 0x7

    goto :goto_5

    :sswitch_f
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_4

    :cond_12
    const/4 v4, 0x6

    goto :goto_5

    :sswitch_10
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_4

    :cond_13
    const/4 v4, 0x5

    goto :goto_5

    :sswitch_11
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_4

    :cond_14
    const/4 v4, 0x4

    goto :goto_5

    :sswitch_12
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_4

    :cond_15
    const/4 v4, 0x3

    goto :goto_5

    :sswitch_13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_4

    :cond_16
    const/4 v4, 0x2

    goto :goto_5

    :sswitch_14
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_4

    :cond_17
    const/4 v4, 0x1

    goto :goto_5

    :sswitch_15
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_4

    :cond_18
    const/4 v4, 0x0

    :goto_5
    packed-switch v4, :pswitch_data_2

    goto/16 :goto_c

    :pswitch_e
    const-string v0, "123"

    return-object v0

    :pswitch_f
    const-string v0, "124"

    return-object v0

    :pswitch_10
    const-string v0, "231"

    return-object v0

    :pswitch_11
    const-string v0, "125"

    return-object v0

    :pswitch_12
    const-string v0, "126"

    return-object v0

    :pswitch_13
    const-string v0, "128"

    return-object v0

    :pswitch_14
    const-string v0, "230"

    return-object v0

    :pswitch_15
    const-string v0, "127"

    return-object v0

    .line 64
    :cond_19
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3

    :goto_6
    const/4 v15, -0x1

    goto :goto_7

    :sswitch_16
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_6

    :sswitch_17
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_6

    :cond_1a
    const/4 v15, 0x2

    goto :goto_7

    :sswitch_18
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_6

    :cond_1b
    const/4 v15, 0x1

    goto :goto_7

    :sswitch_19
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_6

    :cond_1c
    const/4 v15, 0x0

    :cond_1d
    :goto_7
    packed-switch v15, :pswitch_data_3

    goto/16 :goto_c

    :pswitch_16
    const-string v0, "93"

    return-object v0

    :pswitch_17
    const-string v0, "94"

    return-object v0

    :pswitch_18
    const-string v0, "95"

    return-object v0

    :pswitch_19
    const-string v0, "96"

    return-object v0

    .line 65
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_4

    :goto_8
    const/4 v4, -0x1

    goto :goto_9

    :sswitch_1a
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_8

    :cond_1f
    const/4 v4, 0x7

    goto :goto_9

    :sswitch_1b
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_8

    :cond_20
    const/4 v4, 0x6

    goto :goto_9

    :sswitch_1c
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_8

    :cond_21
    const/4 v4, 0x5

    goto :goto_9

    :sswitch_1d
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_8

    :cond_22
    const/4 v4, 0x4

    goto :goto_9

    :sswitch_1e
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_8

    :cond_23
    const/4 v4, 0x3

    goto :goto_9

    :sswitch_1f
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_8

    :cond_24
    const/4 v4, 0x2

    goto :goto_9

    :sswitch_20
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_8

    :cond_25
    const/4 v4, 0x1

    goto :goto_9

    :sswitch_21
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_8

    :cond_26
    const/4 v4, 0x0

    :goto_9
    packed-switch v4, :pswitch_data_4

    goto/16 :goto_c

    :pswitch_1a
    const-string v0, "72"

    return-object v0

    :pswitch_1b
    const-string v0, "73"

    return-object v0

    :pswitch_1c
    const-string v0, "201"

    return-object v0

    :pswitch_1d
    const-string v0, "76"

    return-object v0

    :pswitch_1e
    const-string v0, "77"

    return-object v0

    :pswitch_1f
    const-string v0, "79"

    return-object v0

    :pswitch_20
    const-string v0, "200"

    return-object v0

    :pswitch_21
    const-string v0, "78"

    return-object v0

    .line 111
    :cond_27
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_5

    :goto_a
    const/4 v2, -0x1

    goto :goto_b

    :sswitch_22
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_a

    :cond_28
    const/16 v2, 0x8

    goto :goto_b

    :sswitch_23
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_a

    :cond_29
    const/4 v2, 0x7

    goto :goto_b

    :sswitch_24
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_a

    :cond_2a
    const/4 v2, 0x6

    goto :goto_b

    :sswitch_25
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_a

    :cond_2b
    const/4 v2, 0x5

    goto :goto_b

    :sswitch_26
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_a

    :cond_2c
    const/4 v2, 0x4

    goto :goto_b

    :sswitch_27
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_a

    :cond_2d
    const/4 v2, 0x3

    goto :goto_b

    :sswitch_28
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_a

    :cond_2e
    const/4 v2, 0x2

    goto :goto_b

    :sswitch_29
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_a

    :cond_2f
    const/4 v2, 0x1

    goto :goto_b

    :sswitch_2a
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_a

    :cond_30
    const/4 v2, 0x0

    :goto_b
    packed-switch v2, :pswitch_data_5

    :goto_c
    const-string v0, ""

    return-object v0

    :pswitch_22
    const-string v0, "110"

    return-object v0

    :pswitch_23
    const-string v0, "67"

    return-object v0

    :pswitch_24
    const-string v0, "68"

    return-object v0

    :pswitch_25
    const-string v0, "221"

    return-object v0

    :pswitch_26
    const-string v0, "75"

    return-object v0

    :pswitch_27
    const-string v0, "130"

    return-object v0

    :pswitch_28
    const-string v0, "132"

    return-object v0

    :pswitch_29
    const-string v0, "220"

    return-object v0

    :pswitch_2a
    const-string v0, "131"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0xce6 -> :sswitch_3
        0xd68 -> :sswitch_2
        0x181fa -> :sswitch_1
        0x18f37 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0xc42 -> :sswitch_d
        0xce0 -> :sswitch_c
        0xce6 -> :sswitch_b
        0xd0f -> :sswitch_a
        0xd68 -> :sswitch_9
        0xdf7 -> :sswitch_8
        0xed6 -> :sswitch_7
        0x181fa -> :sswitch_6
        0x18f37 -> :sswitch_5
        0x1bc99 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0xc42 -> :sswitch_15
        0xce0 -> :sswitch_14
        0xce6 -> :sswitch_13
        0xd0f -> :sswitch_12
        0xd68 -> :sswitch_11
        0xdf7 -> :sswitch_10
        0x181fa -> :sswitch_f
        0x18f37 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        0xce6 -> :sswitch_19
        0xd68 -> :sswitch_18
        0x181fa -> :sswitch_17
        0x18f37 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        0xc42 -> :sswitch_21
        0xce0 -> :sswitch_20
        0xce6 -> :sswitch_1f
        0xd0f -> :sswitch_1e
        0xd68 -> :sswitch_1d
        0xdf7 -> :sswitch_1c
        0x181fa -> :sswitch_1b
        0x18f37 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :sswitch_data_5
    .sparse-switch
        0xc42 -> :sswitch_2a
        0xce0 -> :sswitch_29
        0xce6 -> :sswitch_28
        0xd0f -> :sswitch_27
        0xd68 -> :sswitch_26
        0xdf7 -> :sswitch_25
        0x181fa -> :sswitch_24
        0x18f37 -> :sswitch_23
        0x1bc99 -> :sswitch_22
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch
.end method
