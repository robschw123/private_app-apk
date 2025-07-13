.class public final Lcom/alibaba/fastjson/util/RyuDouble;
.super Ljava/lang/Object;
.source "RyuDouble.java"


# static fields
.field private static final POW5_INV_SPLIT:[[I

.field private static final POW5_SPLIT:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 23
    const-class v0, I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    sput-object v2, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_SPLIT:[[I

    new-array v1, v1, [I

    .line 24
    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_INV_SPLIT:[[I

    .line 27
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 28
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x146

    if-ge v4, v5, :cond_5

    const-wide/16 v5, 0x5

    .line 30
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 31
    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    if-nez v4, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    int-to-long v7, v4

    const-wide/32 v9, 0x1624c50

    mul-long v7, v7, v9

    const-wide/32 v9, 0x989680

    add-long/2addr v7, v9

    const-wide/16 v11, 0x1

    sub-long/2addr v7, v11

    .line 32
    div-long/2addr v7, v9

    long-to-int v7, v7

    :goto_1
    if-ne v7, v6, :cond_4

    .line 36
    sget-object v7, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_SPLIT:[[I

    array-length v7, v7

    const/4 v8, 0x4

    if-ge v4, v7, :cond_1

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v8, :cond_1

    .line 38
    sget-object v9, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_SPLIT:[[I

    aget-object v9, v9, v4

    add-int/lit8 v10, v6, -0x79

    rsub-int/lit8 v11, v7, 0x3

    mul-int/lit8 v11, v11, 0x1f

    add-int/2addr v10, v11

    .line 39
    invoke-virtual {v5, v10}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v10

    .line 40
    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 41
    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    aput v10, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 45
    :cond_1
    sget-object v7, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_INV_SPLIT:[[I

    array-length v7, v7

    if-ge v4, v7, :cond_3

    add-int/lit8 v6, v6, 0x79

    .line 48
    sget-object v7, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 49
    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 50
    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 51
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v8, :cond_3

    if-nez v6, :cond_2

    .line 54
    sget-object v7, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_INV_SPLIT:[[I

    aget-object v7, v7, v4

    rsub-int/lit8 v9, v6, 0x3

    mul-int/lit8 v9, v9, 0x1f

    .line 55
    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v9

    .line 56
    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    aput v9, v7, v6

    goto :goto_4

    .line 58
    :cond_2
    sget-object v7, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_INV_SPLIT:[[I

    aget-object v7, v7, v4

    rsub-int/lit8 v9, v6, 0x3

    mul-int/lit8 v9, v9, 0x1f

    .line 59
    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v9

    .line 60
    invoke-virtual {v9, v2}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 61
    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    aput v9, v7, v6

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 34
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void

    :array_0
    .array-data 4
        0x146
        0x4
    .end array-data

    :array_1
    .array-data 4
        0x123
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(D[CI)I
    .locals 43

    .line 84
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x4e

    .line 85
    aput-char v1, p2, p3

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x61

    .line 86
    aput-char v2, p2, v0

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x4e

    .line 87
    aput-char v2, p2, v1

    :goto_0
    sub-int v0, v0, p3

    return v0

    :cond_0
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/16 v2, 0x69

    const/16 v3, 0x6e

    cmpl-double v4, p0, v0

    if-nez v4, :cond_1

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x49

    .line 92
    aput-char v1, p2, p3

    add-int/lit8 v1, v0, 0x1

    .line 93
    aput-char v3, p2, v0

    add-int/lit8 v0, v1, 0x1

    const/16 v4, 0x66

    .line 94
    aput-char v4, p2, v1

    add-int/lit8 v1, v0, 0x1

    .line 95
    aput-char v2, p2, v0

    add-int/lit8 v0, v1, 0x1

    .line 96
    aput-char v3, p2, v1

    add-int/lit8 v1, v0, 0x1

    .line 97
    aput-char v2, p2, v0

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x74

    .line 98
    aput-char v2, p2, v1

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x79

    .line 99
    aput-char v2, p2, v0

    :goto_1
    sub-int v1, v1, p3

    return v1

    :cond_1
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const/16 v4, 0x2d

    cmpl-double v5, p0, v0

    if-nez v5, :cond_2

    add-int/lit8 v0, p3, 0x1

    .line 104
    aput-char v4, p2, p3

    add-int/lit8 v1, v0, 0x1

    const/16 v4, 0x49

    .line 105
    aput-char v4, p2, v0

    add-int/lit8 v0, v1, 0x1

    .line 106
    aput-char v3, p2, v1

    add-int/lit8 v1, v0, 0x1

    const/16 v4, 0x66

    .line 107
    aput-char v4, p2, v0

    add-int/lit8 v0, v1, 0x1

    .line 108
    aput-char v2, p2, v1

    add-int/lit8 v1, v0, 0x1

    .line 109
    aput-char v3, p2, v0

    add-int/lit8 v0, v1, 0x1

    .line 110
    aput-char v2, p2, v1

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x74

    .line 111
    aput-char v2, p2, v0

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x79

    .line 112
    aput-char v2, p2, v1

    goto :goto_0

    .line 116
    :cond_2
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x2e

    const/16 v3, 0x30

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-nez v7, :cond_3

    add-int/lit8 v0, p3, 0x1

    .line 118
    aput-char v3, p2, p3

    add-int/lit8 v1, v0, 0x1

    .line 119
    aput-char v2, p2, v0

    add-int/lit8 v0, v1, 0x1

    .line 120
    aput-char v3, p2, v1

    goto/16 :goto_0

    :cond_3
    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v9, v0, v7

    if-nez v9, :cond_4

    add-int/lit8 v0, p3, 0x1

    .line 124
    aput-char v4, p2, p3

    add-int/lit8 v1, v0, 0x1

    .line 125
    aput-char v3, p2, v0

    add-int/lit8 v0, v1, 0x1

    .line 126
    aput-char v2, p2, v1

    add-int/lit8 v1, v0, 0x1

    .line 127
    aput-char v3, p2, v0

    goto :goto_1

    :cond_4
    const/16 v7, 0x34

    ushr-long v7, v0, v7

    const-wide/16 v9, 0x7ff

    and-long/2addr v7, v9

    long-to-int v8, v7

    const-wide v9, 0xfffffffffffffL

    and-long/2addr v9, v0

    if-nez v8, :cond_5

    const/16 v7, -0x432

    goto :goto_2

    :cond_5
    add-int/lit16 v7, v8, -0x3ff

    add-int/lit8 v7, v7, -0x34

    const-wide/high16 v11, 0x10000000000000L

    or-long/2addr v9, v11

    :goto_2
    const/4 v11, 0x0

    const/4 v12, 0x1

    cmp-long v13, v0, v5

    if-gez v13, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    const-wide/16 v13, 0x1

    and-long v15, v9, v13

    cmp-long v1, v15, v5

    if-nez v1, :cond_7

    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    const-wide/16 v15, 0x4

    mul-long v15, v15, v9

    const-wide/16 v17, 0x2

    add-long v17, v15, v17

    const-wide/high16 v19, 0x10000000000000L

    cmp-long v21, v9, v19

    if-nez v21, :cond_9

    if-gt v8, v12, :cond_8

    goto :goto_5

    :cond_8
    const/4 v8, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v8, 0x1

    :goto_6
    sub-long v9, v15, v13

    int-to-long v2, v8

    sub-long/2addr v9, v2

    add-int/lit8 v7, v7, -0x2

    const-wide/32 v19, 0x7fffffff

    const-wide/32 v21, 0x989680

    const/16 v23, 0x3

    const/16 v24, 0x2

    const/16 v25, 0x1f

    if-ltz v7, :cond_22

    int-to-long v4, v7

    const-wide/32 v26, 0x2deefb

    mul-long v4, v4, v26

    .line 163
    div-long v4, v4, v21

    long-to-int v5, v4

    sub-int/2addr v5, v12

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-nez v4, :cond_a

    const/4 v3, 0x1

    goto :goto_7

    :cond_a
    int-to-long v2, v4

    const-wide/32 v27, 0x1624c50

    mul-long v2, v2, v27

    add-long v2, v2, v21

    sub-long/2addr v2, v13

    .line 166
    div-long v2, v2, v21

    long-to-int v3, v2

    :goto_7
    add-int/lit8 v3, v3, 0x7a

    sub-int/2addr v3, v12

    neg-int v2, v7

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x5d

    const/16 v3, 0x15

    sub-int/2addr v2, v3

    if-ltz v2, :cond_21

    .line 174
    sget-object v3, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_INV_SPLIT:[[I

    aget-object v3, v3, v4

    ushr-long v7, v15, v25

    and-long v27, v15, v19

    .line 178
    aget v5, v3, v11

    int-to-long v13, v5

    mul-long v13, v13, v7

    .line 179
    aget v5, v3, v11

    move-wide/from16 v29, v7

    int-to-long v6, v5

    mul-long v6, v6, v27

    .line 180
    aget v5, v3, v12

    move/from16 v31, v0

    move/from16 v32, v1

    int-to-long v0, v5

    mul-long v0, v0, v29

    .line 181
    aget v5, v3, v12

    int-to-long v11, v5

    mul-long v11, v11, v27

    .line 182
    aget v5, v3, v24

    move v8, v4

    int-to-long v4, v5

    mul-long v4, v4, v29

    move-wide/from16 v34, v15

    .line 183
    aget v15, v3, v24

    move-wide/from16 v36, v9

    move v10, v8

    int-to-long v8, v15

    mul-long v8, v8, v27

    .line 184
    aget v15, v3, v23

    move-wide/from16 v38, v13

    int-to-long v13, v15

    mul-long v13, v13, v29

    .line 185
    aget v15, v3, v23

    move/from16 v16, v2

    move-object/from16 v29, v3

    int-to-long v2, v15

    mul-long v27, v27, v2

    ushr-long v2, v27, v25

    add-long/2addr v2, v8

    add-long/2addr v2, v13

    ushr-long v2, v2, v25

    add-long/2addr v2, v11

    add-long/2addr v2, v4

    ushr-long v2, v2, v25

    add-long/2addr v2, v6

    add-long/2addr v2, v0

    const/16 v0, 0x15

    ushr-long v1, v2, v0

    const/16 v0, 0xa

    shl-long v3, v38, v0

    add-long/2addr v1, v3

    ushr-long v0, v1, v16

    ushr-long v2, v17, v25

    and-long v6, v17, v19

    const/4 v4, 0x0

    .line 197
    aget v8, v29, v4

    int-to-long v8, v8

    mul-long v8, v8, v2

    .line 198
    aget v11, v29, v4

    int-to-long v11, v11

    mul-long v11, v11, v6

    const/4 v4, 0x1

    .line 199
    aget v13, v29, v4

    int-to-long v13, v13

    mul-long v13, v13, v2

    .line 200
    aget v15, v29, v4

    move-wide/from16 v27, v0

    int-to-long v0, v15

    mul-long v0, v0, v6

    .line 201
    aget v4, v29, v24

    move-wide/from16 v38, v6

    int-to-long v5, v4

    mul-long v5, v5, v2

    .line 202
    aget v4, v29, v24

    move-wide/from16 v40, v8

    int-to-long v7, v4

    mul-long v7, v7, v38

    .line 203
    aget v4, v29, v23

    move v15, v10

    int-to-long v9, v4

    mul-long v2, v2, v9

    .line 204
    aget v4, v29, v23

    int-to-long v9, v4

    mul-long v9, v9, v38

    ushr-long v9, v9, v25

    add-long/2addr v9, v7

    add-long/2addr v9, v2

    ushr-long v2, v9, v25

    add-long/2addr v2, v0

    add-long/2addr v2, v5

    ushr-long v0, v2, v25

    add-long/2addr v0, v11

    add-long/2addr v0, v13

    const/16 v2, 0x15

    ushr-long/2addr v0, v2

    const/16 v2, 0xa

    shl-long v3, v40, v2

    add-long/2addr v0, v3

    ushr-long v0, v0, v16

    ushr-long v2, v36, v25

    and-long v6, v36, v19

    const/4 v4, 0x0

    .line 215
    aget v8, v29, v4

    int-to-long v8, v8

    mul-long v8, v8, v2

    .line 216
    aget v10, v29, v4

    int-to-long v10, v10

    mul-long v10, v10, v6

    const/4 v4, 0x1

    .line 217
    aget v12, v29, v4

    int-to-long v12, v12

    mul-long v12, v12, v2

    .line 218
    aget v14, v29, v4

    int-to-long v4, v14

    mul-long v4, v4, v6

    .line 219
    aget v14, v29, v24

    move/from16 v30, v15

    int-to-long v14, v14

    mul-long v14, v14, v2

    move-wide/from16 v38, v0

    .line 220
    aget v0, v29, v24

    int-to-long v0, v0

    mul-long v0, v0, v6

    move-wide/from16 v19, v8

    .line 221
    aget v8, v29, v23

    int-to-long v8, v8

    mul-long v2, v2, v8

    .line 222
    aget v8, v29, v23

    int-to-long v8, v8

    mul-long v6, v6, v8

    ushr-long v6, v6, v25

    add-long/2addr v6, v0

    add-long/2addr v6, v2

    ushr-long v0, v6, v25

    add-long/2addr v0, v4

    add-long/2addr v0, v14

    ushr-long v0, v0, v25

    add-long/2addr v0, v10

    add-long/2addr v0, v12

    const/16 v2, 0x15

    ushr-long/2addr v0, v2

    const/16 v3, 0xa

    shl-long v4, v19, v3

    add-long/2addr v0, v4

    ushr-long v0, v0, v16

    move/from16 v3, v30

    if-gt v3, v2, :cond_20

    const-wide/16 v4, 0x5

    .line 234
    rem-long v15, v34, v4

    const-wide/16 v6, 0x271

    const-wide/16 v8, 0x0

    cmp-long v2, v15, v8

    if-nez v2, :cond_12

    cmp-long v2, v15, v8

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    goto :goto_9

    :cond_b
    const-wide/16 v10, 0x19

    .line 240
    rem-long v15, v34, v10

    cmp-long v2, v15, v8

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    goto :goto_9

    :cond_c
    const-wide/16 v10, 0x7d

    .line 242
    rem-long v15, v34, v10

    cmp-long v2, v15, v8

    if-eqz v2, :cond_d

    const/4 v2, 0x2

    goto :goto_9

    .line 244
    :cond_d
    rem-long v15, v34, v6

    cmp-long v2, v15, v8

    if-eqz v2, :cond_e

    const/4 v2, 0x3

    goto :goto_9

    .line 248
    :cond_e
    div-long v15, v34, v6

    const/4 v2, 0x4

    :goto_8
    cmp-long v6, v15, v8

    if-lez v6, :cond_10

    .line 250
    rem-long v6, v15, v4

    cmp-long v10, v6, v8

    if-eqz v10, :cond_f

    goto :goto_9

    .line 253
    :cond_f
    div-long/2addr v15, v4

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v8, 0x0

    goto :goto_8

    :cond_10
    :goto_9
    if-lt v2, v3, :cond_11

    const/4 v2, 0x1

    goto :goto_a

    :cond_11
    const/4 v2, 0x0

    :goto_a
    move v4, v2

    const/4 v2, 0x0

    goto/16 :goto_10

    :cond_12
    if-eqz v32, :cond_19

    .line 263
    rem-long v9, v36, v4

    const-wide/16 v11, 0x0

    cmp-long v2, v9, v11

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    goto :goto_c

    :cond_13
    const-wide/16 v8, 0x19

    .line 265
    rem-long v9, v36, v8

    cmp-long v2, v9, v11

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    goto :goto_c

    :cond_14
    const-wide/16 v8, 0x7d

    .line 267
    rem-long v9, v36, v8

    cmp-long v2, v9, v11

    if-eqz v2, :cond_15

    const/4 v2, 0x2

    goto :goto_c

    .line 269
    :cond_15
    rem-long v9, v36, v6

    cmp-long v2, v9, v11

    if-eqz v2, :cond_16

    const/4 v2, 0x3

    goto :goto_c

    .line 273
    :cond_16
    div-long v9, v36, v6

    const/4 v2, 0x4

    :goto_b
    cmp-long v6, v9, v11

    if-lez v6, :cond_18

    .line 275
    rem-long v6, v9, v4

    cmp-long v8, v6, v11

    if-eqz v8, :cond_17

    goto :goto_c

    .line 278
    :cond_17
    div-long/2addr v9, v4

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v11, 0x0

    goto :goto_b

    :cond_18
    :goto_c
    if-lt v2, v3, :cond_20

    const/4 v2, 0x1

    goto :goto_f

    .line 289
    :cond_19
    rem-long v8, v17, v4

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-eqz v2, :cond_1a

    const/4 v2, 0x0

    goto :goto_e

    :cond_1a
    const-wide/16 v8, 0x19

    .line 291
    rem-long v8, v17, v8

    cmp-long v2, v8, v10

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_e

    :cond_1b
    const-wide/16 v8, 0x7d

    .line 293
    rem-long v8, v17, v8

    cmp-long v2, v8, v10

    if-eqz v2, :cond_1c

    const/4 v2, 0x2

    goto :goto_e

    .line 295
    :cond_1c
    rem-long v8, v17, v6

    cmp-long v2, v8, v10

    if-eqz v2, :cond_1d

    const/4 v2, 0x3

    goto :goto_e

    .line 299
    :cond_1d
    div-long v17, v17, v6

    const/4 v2, 0x4

    :goto_d
    cmp-long v6, v17, v10

    if-lez v6, :cond_1f

    .line 301
    rem-long v6, v17, v4

    cmp-long v8, v6, v10

    if-eqz v8, :cond_1e

    goto :goto_e

    .line 304
    :cond_1e
    div-long v17, v17, v4

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v10, 0x0

    goto :goto_d

    :cond_1f
    :goto_e
    if-lt v2, v3, :cond_20

    const-wide/16 v4, 0x1

    sub-long v4, v38, v4

    move-wide/from16 v38, v4

    :cond_20
    const/4 v2, 0x0

    :goto_f
    const/4 v4, 0x0

    :goto_10
    move-wide/from16 v17, v27

    move/from16 v42, v4

    move v4, v3

    move/from16 v3, v42

    goto/16 :goto_15

    :cond_21
    move/from16 v16, v2

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    move/from16 v31, v0

    move/from16 v32, v1

    move-wide/from16 v36, v9

    move-wide/from16 v34, v15

    neg-int v0, v7

    int-to-long v1, v0

    const-wide/32 v3, 0x6aa784

    mul-long v1, v1, v3

    .line 316
    div-long v1, v1, v21

    long-to-int v2, v1

    const/4 v1, 0x1

    sub-int/2addr v2, v1

    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v0, v2

    if-nez v0, :cond_23

    const/4 v1, 0x1

    goto :goto_11

    :cond_23
    int-to-long v3, v0

    const-wide/32 v9, 0x1624c50

    mul-long v3, v3, v9

    add-long v3, v3, v21

    const-wide/16 v9, 0x1

    sub-long/2addr v3, v9

    .line 318
    div-long v3, v3, v21

    long-to-int v1, v3

    :goto_11
    add-int/lit8 v1, v1, -0x79

    sub-int v1, v2, v1

    add-int/lit8 v1, v1, -0x5d

    const/16 v3, 0x15

    sub-int/2addr v1, v3

    if-ltz v1, :cond_5d

    .line 325
    sget-object v3, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_SPLIT:[[I

    aget-object v0, v3, v0

    ushr-long v3, v34, v25

    and-long v9, v34, v19

    const/4 v6, 0x0

    .line 329
    aget v11, v0, v6

    int-to-long v11, v11

    mul-long v11, v11, v3

    .line 330
    aget v13, v0, v6

    int-to-long v13, v13

    mul-long v13, v13, v9

    const/4 v6, 0x1

    .line 331
    aget v15, v0, v6

    move/from16 v27, v7

    move/from16 v16, v8

    int-to-long v7, v15

    mul-long v7, v7, v3

    .line 332
    aget v15, v0, v6

    int-to-long v5, v15

    mul-long v5, v5, v9

    .line 333
    aget v15, v0, v24

    move/from16 v29, v1

    move/from16 v28, v2

    int-to-long v1, v15

    mul-long v1, v1, v3

    .line 334
    aget v15, v0, v24

    move-wide/from16 v38, v11

    int-to-long v11, v15

    mul-long v11, v11, v9

    .line 335
    aget v15, v0, v23

    move-wide/from16 v40, v7

    int-to-long v7, v15

    mul-long v3, v3, v7

    .line 336
    aget v7, v0, v23

    int-to-long v7, v7

    mul-long v9, v9, v7

    ushr-long v7, v9, v25

    add-long/2addr v7, v11

    add-long/2addr v7, v3

    ushr-long v3, v7, v25

    add-long/2addr v3, v5

    add-long/2addr v3, v1

    ushr-long v1, v3, v25

    add-long/2addr v1, v13

    add-long v1, v1, v40

    const/16 v3, 0x15

    ushr-long/2addr v1, v3

    const/16 v3, 0xa

    shl-long v6, v38, v3

    add-long/2addr v1, v6

    ushr-long v1, v1, v29

    ushr-long v3, v17, v25

    and-long v6, v17, v19

    const/4 v8, 0x0

    .line 347
    aget v9, v0, v8

    int-to-long v9, v9

    mul-long v9, v9, v3

    .line 348
    aget v11, v0, v8

    int-to-long v11, v11

    mul-long v11, v11, v6

    const/4 v8, 0x1

    .line 349
    aget v13, v0, v8

    int-to-long v13, v13

    mul-long v13, v13, v3

    .line 350
    aget v15, v0, v8

    move-wide/from16 v17, v1

    int-to-long v1, v15

    mul-long v1, v1, v6

    .line 351
    aget v8, v0, v24

    move-wide/from16 v38, v6

    int-to-long v5, v8

    mul-long v5, v5, v3

    .line 352
    aget v7, v0, v24

    int-to-long v7, v7

    mul-long v7, v7, v38

    .line 353
    aget v15, v0, v23

    move-wide/from16 v40, v9

    int-to-long v9, v15

    mul-long v3, v3, v9

    .line 354
    aget v9, v0, v23

    int-to-long v9, v9

    mul-long v9, v9, v38

    ushr-long v9, v9, v25

    add-long/2addr v9, v7

    add-long/2addr v9, v3

    ushr-long v3, v9, v25

    add-long/2addr v3, v1

    add-long/2addr v3, v5

    ushr-long v1, v3, v25

    add-long/2addr v1, v11

    add-long/2addr v1, v13

    const/16 v3, 0x15

    ushr-long/2addr v1, v3

    const/16 v3, 0xa

    shl-long v6, v40, v3

    add-long/2addr v1, v6

    ushr-long v38, v1, v29

    ushr-long v1, v36, v25

    and-long v3, v36, v19

    const/4 v7, 0x0

    .line 364
    aget v6, v0, v7

    int-to-long v8, v6

    mul-long v8, v8, v1

    .line 365
    aget v6, v0, v7

    int-to-long v10, v6

    mul-long v10, v10, v3

    const/4 v6, 0x1

    .line 366
    aget v12, v0, v6

    int-to-long v12, v12

    mul-long v12, v12, v1

    .line 367
    aget v14, v0, v6

    int-to-long v14, v14

    mul-long v14, v14, v3

    .line 368
    aget v6, v0, v24

    int-to-long v5, v6

    mul-long v5, v5, v1

    .line 369
    aget v7, v0, v24

    move-wide/from16 v19, v8

    int-to-long v7, v7

    mul-long v7, v7, v3

    .line 370
    aget v9, v0, v23

    move-wide/from16 v36, v12

    int-to-long v12, v9

    mul-long v1, v1, v12

    .line 371
    aget v0, v0, v23

    int-to-long v12, v0

    mul-long v3, v3, v12

    ushr-long v3, v3, v25

    add-long/2addr v3, v7

    add-long/2addr v3, v1

    ushr-long v0, v3, v25

    add-long/2addr v0, v14

    add-long/2addr v0, v5

    ushr-long v0, v0, v25

    add-long/2addr v0, v10

    add-long v0, v0, v36

    const/16 v2, 0x15

    ushr-long/2addr v0, v2

    const/16 v2, 0xa

    shl-long v3, v19, v2

    add-long/2addr v0, v3

    ushr-long v0, v0, v29

    add-int v4, v28, v27

    move/from16 v3, v28

    const/4 v2, 0x1

    if-gt v3, v2, :cond_26

    if-eqz v32, :cond_25

    move/from16 v12, v16

    if-ne v12, v2, :cond_24

    const/16 v33, 0x1

    goto :goto_12

    :cond_24
    const/16 v33, 0x0

    :goto_12
    move/from16 v2, v33

    goto :goto_13

    :cond_25
    const-wide/16 v5, 0x1

    sub-long v38, v38, v5

    const/4 v2, 0x0

    :goto_13
    const/4 v3, 0x1

    goto :goto_15

    :cond_26
    const-wide/16 v5, 0x1

    const/16 v7, 0x3f

    if-ge v3, v7, :cond_28

    sub-int/2addr v3, v2

    shl-long v2, v5, v3

    sub-long/2addr v2, v5

    and-long v2, v34, v2

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-nez v7, :cond_27

    const/4 v2, 0x1

    goto :goto_14

    :cond_27
    const/4 v2, 0x0

    :goto_14
    move v3, v2

    const/4 v2, 0x0

    goto :goto_15

    :cond_28
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_15
    const-wide v5, 0xde0b6b3a7640000L

    const/4 v7, 0x5

    const-wide/16 v8, 0x64

    const-wide/16 v10, 0xa

    cmp-long v12, v38, v5

    if-ltz v12, :cond_29

    const/16 v23, 0x13

    goto/16 :goto_16

    :cond_29
    const-wide v5, 0x16345785d8a0000L

    cmp-long v12, v38, v5

    if-ltz v12, :cond_2a

    const/16 v23, 0x12

    goto/16 :goto_16

    :cond_2a
    const-wide v5, 0x2386f26fc10000L

    cmp-long v12, v38, v5

    if-ltz v12, :cond_2b

    const/16 v23, 0x11

    goto/16 :goto_16

    :cond_2b
    const-wide v5, 0x38d7ea4c68000L

    cmp-long v12, v38, v5

    if-ltz v12, :cond_2c

    const/16 v23, 0x10

    goto/16 :goto_16

    :cond_2c
    const-wide v5, 0x5af3107a4000L

    cmp-long v12, v38, v5

    if-ltz v12, :cond_2d

    const/16 v23, 0xf

    goto/16 :goto_16

    :cond_2d
    const-wide v5, 0x9184e72a000L

    cmp-long v12, v38, v5

    if-ltz v12, :cond_2e

    const/16 v23, 0xe

    goto/16 :goto_16

    :cond_2e
    const-wide v5, 0xe8d4a51000L

    cmp-long v12, v38, v5

    if-ltz v12, :cond_2f

    const/16 v23, 0xd

    goto/16 :goto_16

    :cond_2f
    const-wide v5, 0x174876e800L

    cmp-long v12, v38, v5

    if-ltz v12, :cond_30

    const/16 v23, 0xc

    goto :goto_16

    :cond_30
    const-wide v5, 0x2540be400L

    cmp-long v12, v38, v5

    if-ltz v12, :cond_31

    const/16 v23, 0xb

    goto :goto_16

    :cond_31
    const-wide/32 v5, 0x3b9aca00

    cmp-long v12, v38, v5

    if-ltz v12, :cond_32

    const/16 v23, 0xa

    goto :goto_16

    :cond_32
    const-wide/32 v5, 0x5f5e100

    cmp-long v12, v38, v5

    if-ltz v12, :cond_33

    const/16 v23, 0x9

    goto :goto_16

    :cond_33
    cmp-long v5, v38, v21

    if-ltz v5, :cond_34

    const/16 v23, 0x8

    goto :goto_16

    :cond_34
    const-wide/32 v5, 0xf4240

    cmp-long v12, v38, v5

    if-ltz v12, :cond_35

    const/16 v23, 0x7

    goto :goto_16

    :cond_35
    const-wide/32 v5, 0x186a0

    cmp-long v12, v38, v5

    if-ltz v12, :cond_36

    const/16 v23, 0x6

    goto :goto_16

    :cond_36
    const-wide/16 v5, 0x2710

    cmp-long v12, v38, v5

    if-ltz v12, :cond_37

    const/16 v23, 0x5

    goto :goto_16

    :cond_37
    const-wide/16 v5, 0x3e8

    cmp-long v12, v38, v5

    if-ltz v12, :cond_38

    const/16 v23, 0x4

    goto :goto_16

    :cond_38
    cmp-long v5, v38, v8

    if-ltz v5, :cond_39

    goto :goto_16

    :cond_39
    cmp-long v5, v38, v10

    if-ltz v5, :cond_3a

    const/16 v23, 0x2

    goto :goto_16

    :cond_3a
    const/16 v23, 0x1

    :goto_16
    add-int v4, v4, v23

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v5, -0x3

    if-lt v4, v5, :cond_3c

    const/4 v5, 0x7

    if-lt v4, v5, :cond_3b

    goto :goto_17

    :cond_3b
    const/4 v5, 0x0

    goto :goto_18

    :cond_3c
    :goto_17
    const/4 v5, 0x1

    :goto_18
    if-nez v2, :cond_42

    if-eqz v3, :cond_3d

    goto :goto_1d

    :cond_3d
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 485
    :goto_19
    div-long v12, v38, v10

    div-long v14, v0, v10

    cmp-long v6, v12, v14

    if-lez v6, :cond_3f

    cmp-long v6, v38, v8

    if-gez v6, :cond_3e

    if-eqz v5, :cond_3e

    goto :goto_1a

    .line 490
    :cond_3e
    rem-long v0, v17, v10

    long-to-int v3, v0

    .line 492
    div-long v17, v17, v10

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v38, v12

    move-wide v0, v14

    goto :goto_19

    :cond_3f
    :goto_1a
    cmp-long v6, v17, v0

    if-eqz v6, :cond_41

    if-lt v3, v7, :cond_40

    goto :goto_1b

    :cond_40
    const/4 v0, 0x0

    goto :goto_1c

    :cond_41
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    int-to-long v0, v0

    add-long v17, v17, v0

    goto/16 :goto_26

    :cond_42
    :goto_1d
    const/4 v6, 0x0

    const/4 v12, 0x0

    .line 451
    :goto_1e
    div-long v13, v38, v10

    div-long v15, v0, v10

    cmp-long v19, v13, v15

    if-lez v19, :cond_46

    cmp-long v19, v38, v8

    if-gez v19, :cond_43

    if-eqz v5, :cond_43

    goto :goto_21

    .line 456
    :cond_43
    rem-long/2addr v0, v10

    const-wide/16 v19, 0x0

    cmp-long v21, v0, v19

    if-nez v21, :cond_44

    const/4 v0, 0x1

    goto :goto_1f

    :cond_44
    const/4 v0, 0x0

    :goto_1f
    and-int/2addr v2, v0

    if-nez v6, :cond_45

    const/4 v0, 0x1

    goto :goto_20

    :cond_45
    const/4 v0, 0x0

    :goto_20
    and-int/2addr v3, v0

    .line 458
    rem-long v0, v17, v10

    long-to-int v6, v0

    .line 460
    div-long v17, v17, v10

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v38, v13

    move-wide v0, v15

    goto :goto_1e

    :cond_46
    :goto_21
    if-eqz v2, :cond_49

    if-eqz v32, :cond_49

    .line 465
    :goto_22
    rem-long v13, v0, v10

    const-wide/16 v15, 0x0

    cmp-long v19, v13, v15

    if-nez v19, :cond_49

    cmp-long v13, v38, v8

    if-gez v13, :cond_47

    if-eqz v5, :cond_47

    goto :goto_24

    :cond_47
    if-nez v6, :cond_48

    const/4 v6, 0x1

    goto :goto_23

    :cond_48
    const/4 v6, 0x0

    :goto_23
    and-int/2addr v3, v6

    .line 471
    rem-long v13, v17, v10

    long-to-int v6, v13

    .line 472
    div-long v38, v38, v10

    .line 473
    div-long v17, v17, v10

    .line 474
    div-long/2addr v0, v10

    add-int/lit8 v12, v12, 0x1

    goto :goto_22

    :cond_49
    :goto_24
    if-eqz v3, :cond_4a

    if-ne v6, v7, :cond_4a

    const-wide/16 v8, 0x2

    .line 478
    rem-long v8, v17, v8

    const-wide/16 v13, 0x0

    cmp-long v3, v8, v13

    if-nez v3, :cond_4a

    const/4 v6, 0x4

    :cond_4a
    cmp-long v3, v17, v0

    if-nez v3, :cond_4b

    if-eqz v2, :cond_4c

    if-eqz v32, :cond_4c

    :cond_4b
    if-lt v6, v7, :cond_4d

    :cond_4c
    const/4 v0, 0x1

    goto :goto_25

    :cond_4d
    const/4 v0, 0x0

    :goto_25
    int-to-long v0, v0

    add-long v17, v17, v0

    move v2, v12

    :goto_26
    sub-int v0, v23, v2

    if-eqz v31, :cond_4e

    add-int/lit8 v1, p3, 0x1

    const/16 v2, 0x2d

    .line 503
    aput-char v2, p2, p3

    goto :goto_27

    :cond_4e
    move/from16 v1, p3

    :goto_27
    if-eqz v5, :cond_54

    const/4 v2, 0x0

    :goto_28
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_4f

    .line 510
    rem-long v7, v17, v10

    long-to-int v3, v7

    .line 511
    div-long v17, v17, v10

    add-int v5, v1, v0

    sub-int/2addr v5, v2

    const/16 v7, 0x30

    add-int/2addr v3, v7

    int-to-char v3, v3

    .line 512
    aput-char v3, p2, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_4f
    const-wide/16 v2, 0x30

    .line 514
    rem-long v17, v17, v10

    add-long v2, v17, v2

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p2, v1

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x2e

    .line 515
    aput-char v3, p2, v2

    add-int/lit8 v2, v0, 0x1

    add-int/2addr v1, v2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_50

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x30

    .line 518
    aput-char v2, p2, v1

    move v1, v0

    :cond_50
    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x45

    .line 522
    aput-char v2, p2, v1

    if-gez v4, :cond_51

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x2d

    .line 524
    aput-char v2, p2, v0

    neg-int v4, v4

    move v0, v1

    :cond_51
    const/16 v1, 0x64

    if-lt v4, v1, :cond_52

    add-int/lit8 v1, v0, 0x1

    .line 528
    div-int/lit8 v2, v4, 0x64

    const/16 v3, 0x30

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p2, v0

    .line 529
    rem-int/lit8 v4, v4, 0x64

    add-int/lit8 v0, v1, 0x1

    .line 530
    div-int/lit8 v2, v4, 0xa

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p2, v1

    goto :goto_29

    :cond_52
    const/16 v1, 0xa

    const/16 v3, 0x30

    if-lt v4, v1, :cond_53

    add-int/lit8 v1, v0, 0x1

    .line 532
    div-int/lit8 v2, v4, 0xa

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p2, v0

    move v0, v1

    :cond_53
    :goto_29
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    .line 534
    rem-int/2addr v4, v2

    add-int/2addr v4, v3

    int-to-char v2, v4

    aput-char v2, p2, v0

    goto/16 :goto_1

    :cond_54
    const/16 v3, 0x30

    if-gez v4, :cond_56

    add-int/lit8 v2, v1, 0x1

    .line 540
    aput-char v3, p2, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v5, 0x2e

    .line 541
    aput-char v5, p2, v2

    const/4 v2, -0x1

    :goto_2a
    if-le v2, v4, :cond_55

    add-int/lit8 v5, v1, 0x1

    .line 543
    aput-char v3, p2, v1

    add-int/lit8 v2, v2, -0x1

    move v1, v5

    const/16 v3, 0x30

    goto :goto_2a

    :cond_55
    move v3, v1

    const/4 v2, 0x0

    :goto_2b
    if-ge v2, v0, :cond_5c

    add-int v4, v1, v0

    sub-int/2addr v4, v2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const-wide/16 v5, 0x30

    .line 547
    rem-long v7, v17, v10

    add-long/2addr v7, v5

    long-to-int v5, v7

    int-to-char v5, v5

    aput-char v5, p2, v4

    .line 548
    div-long v17, v17, v10

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_56
    add-int/lit8 v2, v4, 0x1

    if-lt v2, v0, :cond_59

    const/4 v3, 0x0

    :goto_2c
    if-ge v3, v0, :cond_57

    add-int v4, v1, v0

    sub-int/2addr v4, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const-wide/16 v5, 0x30

    .line 554
    rem-long v7, v17, v10

    add-long/2addr v7, v5

    long-to-int v5, v7

    int-to-char v5, v5

    aput-char v5, p2, v4

    .line 555
    div-long v17, v17, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_57
    add-int/2addr v1, v0

    :goto_2d
    if-ge v0, v2, :cond_58

    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x30

    .line 559
    aput-char v4, p2, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_2d

    :cond_58
    const/16 v4, 0x30

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x2e

    .line 561
    aput-char v2, p2, v1

    add-int/lit8 v3, v0, 0x1

    .line 562
    aput-char v4, p2, v0

    goto :goto_30

    :cond_59
    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    :goto_2e
    if-ge v3, v0, :cond_5b

    sub-int v5, v0, v3

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ne v5, v4, :cond_5a

    add-int v5, v2, v0

    sub-int/2addr v5, v3

    sub-int/2addr v5, v6

    const/16 v7, 0x2e

    .line 568
    aput-char v7, p2, v5

    add-int/lit8 v2, v2, -0x1

    goto :goto_2f

    :cond_5a
    const/16 v7, 0x2e

    :goto_2f
    add-int v5, v2, v0

    sub-int/2addr v5, v3

    sub-int/2addr v5, v6

    const-wide/16 v8, 0x30

    .line 571
    rem-long v12, v17, v10

    add-long/2addr v12, v8

    long-to-int v8, v12

    int-to-char v8, v8

    aput-char v8, p2, v5

    .line 572
    div-long v17, v17, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_5b
    const/4 v6, 0x1

    add-int/2addr v0, v6

    add-int v3, v1, v0

    :cond_5c
    :goto_30
    sub-int v3, v3, p3

    return v3

    :cond_5d
    move/from16 v29, v1

    .line 323
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_32

    :goto_31
    throw v0

    :goto_32
    goto :goto_31
.end method

.method public static toString(D)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x18

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 70
    invoke-static {p0, p1, v0, v1}, Lcom/alibaba/fastjson/util/RyuDouble;->toString(D[CI)I

    move-result p0

    .line 71
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0}, Ljava/lang/String;-><init>([CII)V

    return-object p1
.end method
