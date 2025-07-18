.class public final Ldc/squareup/okio/Options;
.super Ljava/util/AbstractList;

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ldc/squareup/okio/ByteString;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final byteStrings:[Ldc/squareup/okio/ByteString;

.field final trie:[I


# direct methods
.method private constructor <init>([Ldc/squareup/okio/ByteString;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Ldc/squareup/okio/Options;->byteStrings:[Ldc/squareup/okio/ByteString;

    .line 3
    iput-object p2, p0, Ldc/squareup/okio/Options;->trie:[I

    return-void
.end method

.method private static buildTrieRecursive(JLdc/squareup/okio/Buffer;ILjava/util/List;IILjava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ldc/squareup/okio/Buffer;",
            "I",
            "Ljava/util/List<",
            "Ldc/squareup/okio/ByteString;",
            ">;II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v10, p4

    move/from16 v2, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    if-ge v2, v11, :cond_11

    move v3, v2

    :goto_0
    if-ge v3, v11, :cond_1

    .line 1
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldc/squareup/okio/ByteString;

    invoke-virtual {v4}, Ldc/squareup/okio/ByteString;->size()I

    move-result v4

    if-lt v4, v1, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4
    :cond_1
    invoke-interface/range {p4 .. p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldc/squareup/okio/ByteString;

    add-int/lit8 v4, v11, -0x1

    .line 5
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldc/squareup/okio/ByteString;

    const/4 v5, -0x1

    .line 9
    invoke-virtual {v3}, Ldc/squareup/okio/ByteString;->size()I

    move-result v6

    if-ne v1, v6, :cond_2

    .line 10
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v2, v2, 0x1

    .line 12
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldc/squareup/okio/ByteString;

    :cond_2
    move v6, v2

    .line 15
    invoke-virtual {v3, v1}, Ldc/squareup/okio/ByteString;->getByte(I)B

    move-result v2

    invoke-virtual {v4, v1}, Ldc/squareup/okio/ByteString;->getByte(I)B

    move-result v7

    const-wide/16 v8, 0x2

    if-eq v2, v7, :cond_c

    add-int/lit8 v2, v6, 0x1

    const/4 v3, 0x1

    :goto_1
    if-ge v2, v11, :cond_4

    add-int/lit8 v4, v2, -0x1

    .line 19
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldc/squareup/okio/ByteString;

    invoke-virtual {v4, v1}, Ldc/squareup/okio/ByteString;->getByte(I)B

    move-result v4

    .line 20
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldc/squareup/okio/ByteString;

    invoke-virtual {v7, v1}, Ldc/squareup/okio/ByteString;->getByte(I)B

    move-result v7

    if-eq v4, v7, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 26
    :cond_4
    invoke-static/range {p2 .. p2}, Ldc/squareup/okio/Options;->intCount(Ldc/squareup/okio/Buffer;)I

    move-result v2

    int-to-long v13, v2

    add-long v13, p0, v13

    add-long/2addr v13, v8

    mul-int/lit8 v2, v3, 0x2

    int-to-long v7, v2

    add-long/2addr v13, v7

    .line 28
    invoke-virtual {v0, v3}, Ldc/squareup/okio/Buffer;->writeInt(I)Ldc/squareup/okio/Buffer;

    .line 29
    invoke-virtual {v0, v5}, Ldc/squareup/okio/Buffer;->writeInt(I)Ldc/squareup/okio/Buffer;

    move v2, v6

    :goto_2
    if-ge v2, v11, :cond_7

    .line 32
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldc/squareup/okio/ByteString;

    invoke-virtual {v3, v1}, Ldc/squareup/okio/ByteString;->getByte(I)B

    move-result v3

    if-eq v2, v6, :cond_5

    add-int/lit8 v4, v2, -0x1

    .line 33
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldc/squareup/okio/ByteString;

    invoke-virtual {v4, v1}, Ldc/squareup/okio/ByteString;->getByte(I)B

    move-result v4

    if-eq v3, v4, :cond_6

    :cond_5
    and-int/lit16 v3, v3, 0xff

    .line 34
    invoke-virtual {v0, v3}, Ldc/squareup/okio/Buffer;->writeInt(I)Ldc/squareup/okio/Buffer;

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 38
    :cond_7
    new-instance v9, Ldc/squareup/okio/Buffer;

    invoke-direct {v9}, Ldc/squareup/okio/Buffer;-><init>()V

    move v7, v6

    :goto_3
    if-ge v7, v11, :cond_b

    .line 41
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldc/squareup/okio/ByteString;

    invoke-virtual {v2, v1}, Ldc/squareup/okio/ByteString;->getByte(I)B

    move-result v2

    add-int/lit8 v3, v7, 0x1

    move v4, v3

    :goto_4
    if-ge v4, v11, :cond_9

    .line 44
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldc/squareup/okio/ByteString;

    invoke-virtual {v5, v1}, Ldc/squareup/okio/ByteString;->getByte(I)B

    move-result v5

    if-eq v2, v5, :cond_8

    move v8, v4

    goto :goto_5

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    move v8, v11

    :goto_5
    if-ne v3, v8, :cond_a

    add-int/lit8 v2, v1, 0x1

    .line 51
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldc/squareup/okio/ByteString;

    invoke-virtual {v3}, Ldc/squareup/okio/ByteString;->size()I

    move-result v3

    if-ne v2, v3, :cond_a

    .line 53
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ldc/squareup/okio/Buffer;->writeInt(I)Ldc/squareup/okio/Buffer;

    move/from16 v16, v8

    move-object/from16 p0, v9

    goto :goto_6

    .line 56
    :cond_a
    invoke-static {v9}, Ldc/squareup/okio/Options;->intCount(Ldc/squareup/okio/Buffer;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v13

    const-wide/16 v4, -0x1

    mul-long v2, v2, v4

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Ldc/squareup/okio/Buffer;->writeInt(I)Ldc/squareup/okio/Buffer;

    add-int/lit8 v5, v1, 0x1

    move-wide v2, v13

    move-object v4, v9

    move-object/from16 v6, p4

    move/from16 v16, v8

    move-object/from16 p0, v9

    move-object/from16 v9, p7

    .line 57
    invoke-static/range {v2 .. v9}, Ldc/squareup/okio/Options;->buildTrieRecursive(JLdc/squareup/okio/Buffer;ILjava/util/List;IILjava/util/List;)V

    :goto_6
    move-object/from16 v9, p0

    move/from16 v7, v16

    goto :goto_3

    :cond_b
    move-object/from16 p0, v9

    .line 70
    invoke-virtual/range {p0 .. p0}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v1

    move-object/from16 v3, p0

    invoke-virtual {v0, v3, v1, v2}, Ldc/squareup/okio/Buffer;->write(Ldc/squareup/okio/Buffer;J)V

    goto/16 :goto_9

    :cond_c
    const/4 v2, 0x0

    .line 75
    invoke-virtual {v3}, Ldc/squareup/okio/ByteString;->size()I

    move-result v7

    invoke-virtual {v4}, Ldc/squareup/okio/ByteString;->size()I

    move-result v13

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v13, v1

    :goto_7
    if-ge v13, v7, :cond_d

    .line 76
    invoke-virtual {v3, v13}, Ldc/squareup/okio/ByteString;->getByte(I)B

    move-result v14

    invoke-virtual {v4, v13}, Ldc/squareup/okio/ByteString;->getByte(I)B

    move-result v15

    if-ne v14, v15, :cond_d

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 84
    :cond_d
    invoke-static/range {p2 .. p2}, Ldc/squareup/okio/Options;->intCount(Ldc/squareup/okio/Buffer;)I

    move-result v4

    int-to-long v13, v4

    add-long v13, p0, v13

    add-long/2addr v13, v8

    int-to-long v7, v2

    add-long/2addr v13, v7

    const-wide/16 v7, 0x1

    add-long/2addr v7, v13

    neg-int v4, v2

    .line 86
    invoke-virtual {v0, v4}, Ldc/squareup/okio/Buffer;->writeInt(I)Ldc/squareup/okio/Buffer;

    .line 87
    invoke-virtual {v0, v5}, Ldc/squareup/okio/Buffer;->writeInt(I)Ldc/squareup/okio/Buffer;

    move v4, v1

    :goto_8
    add-int v5, v1, v2

    if-ge v4, v5, :cond_e

    .line 90
    invoke-virtual {v3, v4}, Ldc/squareup/okio/ByteString;->getByte(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v0, v5}, Ldc/squareup/okio/Buffer;->writeInt(I)Ldc/squareup/okio/Buffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_e
    add-int/lit8 v1, v6, 0x1

    if-ne v1, v11, :cond_10

    .line 95
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldc/squareup/okio/ByteString;

    invoke-virtual {v1}, Ldc/squareup/okio/ByteString;->size()I

    move-result v1

    if-ne v5, v1, :cond_f

    .line 98
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ldc/squareup/okio/Buffer;->writeInt(I)Ldc/squareup/okio/Buffer;

    goto :goto_9

    .line 99
    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 104
    :cond_10
    new-instance v9, Ldc/squareup/okio/Buffer;

    invoke-direct {v9}, Ldc/squareup/okio/Buffer;-><init>()V

    .line 105
    invoke-static {v9}, Ldc/squareup/okio/Options;->intCount(Ldc/squareup/okio/Buffer;)I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v1, v7

    const-wide/16 v3, -0x1

    mul-long v1, v1, v3

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Ldc/squareup/okio/Buffer;->writeInt(I)Ldc/squareup/okio/Buffer;

    move-wide v1, v7

    move-object v3, v9

    move v4, v5

    move-object/from16 v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 106
    invoke-static/range {v1 .. v8}, Ldc/squareup/okio/Options;->buildTrieRecursive(JLdc/squareup/okio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 114
    invoke-virtual {v9}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v1

    invoke-virtual {v0, v9, v1, v2}, Ldc/squareup/okio/Buffer;->write(Ldc/squareup/okio/Buffer;J)V

    :goto_9
    return-void

    .line 115
    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method

.method private static intCount(Ldc/squareup/okio/Buffer;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public static varargs of([Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/Options;
    .locals 10

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    new-instance p0, Ldc/squareup/okio/Options;

    new-array v0, v1, [Ldc/squareup/okio/ByteString;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, v0, v1}, Ldc/squareup/okio/Options;-><init>([Ldc/squareup/okio/ByteString;[I)V

    return-object p0

    .line 8
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 10
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    const/4 v2, -0x1

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 14
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 15
    aget-object v2, p0, v0

    invoke-static {v6, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v2

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 18
    :cond_2
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldc/squareup/okio/ByteString;

    invoke-virtual {v0}, Ldc/squareup/okio/ByteString;->size()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 25
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 26
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldc/squareup/okio/ByteString;

    add-int/lit8 v3, v0, 0x1

    move v4, v3

    .line 27
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 28
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldc/squareup/okio/ByteString;

    .line 29
    invoke-virtual {v5, v2}, Ldc/squareup/okio/ByteString;->startsWith(Ldc/squareup/okio/ByteString;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_4

    .line 30
    :cond_3
    invoke-virtual {v5}, Ldc/squareup/okio/ByteString;->size()I

    move-result v7

    invoke-virtual {v2}, Ldc/squareup/okio/ByteString;->size()I

    move-result v8

    if-eq v7, v8, :cond_5

    .line 33
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v5, v7, :cond_4

    .line 34
    invoke-interface {v6, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 35
    invoke-interface {v9, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 36
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duplicate option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_4
    move v0, v3

    goto :goto_2

    .line 47
    :cond_7
    new-instance v0, Ldc/squareup/okio/Buffer;

    invoke-direct {v0}, Ldc/squareup/okio/Buffer;-><init>()V

    .line 48
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v0

    invoke-static/range {v2 .. v9}, Ldc/squareup/okio/Options;->buildTrieRecursive(JLdc/squareup/okio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 50
    invoke-static {v0}, Ldc/squareup/okio/Options;->intCount(Ldc/squareup/okio/Buffer;)I

    move-result v2

    new-array v3, v2, [I

    :goto_5
    if-ge v1, v2, :cond_8

    .line 52
    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->readInt()I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 54
    :cond_8
    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 58
    new-instance v0, Ldc/squareup/okio/Options;

    invoke-virtual {p0}, [Ldc/squareup/okio/ByteString;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ldc/squareup/okio/ByteString;

    invoke-direct {v0, p0, v3}, Ldc/squareup/okio/Options;-><init>([Ldc/squareup/okio/ByteString;[I)V

    return-object v0

    .line 59
    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 60
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "the empty byte string is not a supported option"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6

    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data
.end method


# virtual methods
.method public get(I)Ldc/squareup/okio/ByteString;
    .locals 1

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/Options;->byteStrings:[Ldc/squareup/okio/ByteString;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ldc/squareup/okio/Options;->get(I)Ldc/squareup/okio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/Options;->byteStrings:[Ldc/squareup/okio/ByteString;

    array-length v0, v0

    return v0
.end method
