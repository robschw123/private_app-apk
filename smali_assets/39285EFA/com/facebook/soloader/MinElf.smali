.class public final Lcom/facebook/soloader/MinElf;
.super Ljava/lang/Object;
.source "MinElf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/soloader/MinElf$ElfError;,
        Lcom/facebook/soloader/MinElf$ISA;
    }
.end annotation


# static fields
.field public static final DT_NEEDED:I = 0x1

.field public static final DT_NULL:I = 0x0

.field public static final DT_STRTAB:I = 0x5

.field public static final ELF_MAGIC:I = 0x464c457f

.field public static final PN_XNUM:I = 0xffff

.field public static final PT_DYNAMIC:I = 0x2

.field public static final PT_LOAD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MinElf"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extract_DT_NEEDED(Ljava/io/File;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 73
    :goto_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 75
    :try_start_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/soloader/MinElf;->extract_DT_NEEDED(Ljava/nio/channels/FileChannel;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v2

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x3

    if-gt v0, v3, :cond_0

    .line 87
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    const-string v3, "MinElf"

    const-string v4, "retrying extract_DT_NEEDED due to ClosedByInterruptException"

    .line 88
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 79
    :cond_0
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    :goto_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 91
    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static extract_DT_NEEDED(Ljava/nio/channels/FileChannel;)[Ljava/lang/String;
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x8

    .line 108
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 112
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x0

    .line 113
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    const-wide/32 v6, 0x464c457f

    cmp-long v8, v4, v6

    if-nez v8, :cond_24

    const-wide/16 v4, 0x4

    .line 118
    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->getu8(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)S

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    const-wide/16 v9, 0x5

    .line 119
    invoke-static {v0, v1, v9, v10}, Lcom/facebook/soloader/MinElf;->getu8(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)S

    move-result v6

    const/4 v11, 0x2

    if-ne v6, v11, :cond_1

    .line 120
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :cond_1
    const-wide/16 v11, 0x1c

    const-wide/16 v13, 0x20

    if-eqz v8, :cond_2

    .line 127
    invoke-static {v0, v1, v11, v12}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v15

    goto :goto_1

    :cond_2
    invoke-static {v0, v1, v13, v14}, Lcom/facebook/soloader/MinElf;->get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v15

    :goto_1
    const-wide/16 v9, 0x2c

    if-eqz v8, :cond_3

    .line 129
    invoke-static {v0, v1, v9, v10}, Lcom/facebook/soloader/MinElf;->getu16(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)I

    move-result v6

    int-to-long v4, v6

    goto :goto_2

    :cond_3
    const-wide/16 v4, 0x38

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->getu16(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)I

    move-result v4

    int-to-long v4, v4

    :goto_2
    if-eqz v8, :cond_4

    const-wide/16 v2, 0x2a

    goto :goto_3

    :cond_4
    const-wide/16 v2, 0x36

    .line 132
    :goto_3
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/soloader/MinElf;->getu16(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)I

    move-result v2

    const-wide/32 v23, 0xffff

    const-wide/16 v9, 0x28

    cmp-long v3, v4, v23

    if-nez v3, :cond_7

    if-eqz v8, :cond_5

    .line 136
    invoke-static {v0, v1, v13, v14}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v3

    goto :goto_4

    :cond_5
    invoke-static {v0, v1, v9, v10}, Lcom/facebook/soloader/MinElf;->get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v3

    :goto_4
    if-eqz v8, :cond_6

    add-long/2addr v3, v11

    .line 140
    invoke-static {v0, v1, v3, v4}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v3

    goto :goto_5

    :cond_6
    const-wide/16 v5, 0x2c

    add-long/2addr v3, v5

    .line 141
    invoke-static {v0, v1, v3, v4}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v3

    :goto_5
    move-wide v4, v3

    :cond_7
    move-wide v13, v15

    const-wide/16 v11, 0x0

    :goto_6
    const-wide/16 v23, 0x1

    const-wide/16 v25, 0x8

    cmp-long v3, v11, v4

    if-gez v3, :cond_b

    if-eqz v8, :cond_8

    const-wide/16 v21, 0x0

    add-long v9, v13, v21

    .line 152
    invoke-static {v0, v1, v9, v10}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v9

    goto :goto_7

    :cond_8
    const-wide/16 v21, 0x0

    add-long v9, v13, v21

    .line 153
    invoke-static {v0, v1, v9, v10}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v9

    :goto_7
    const-wide/16 v29, 0x2

    cmp-long v3, v9, v29

    if-nez v3, :cond_a

    if-eqz v8, :cond_9

    const-wide/16 v9, 0x4

    add-long/2addr v13, v9

    .line 158
    invoke-static {v0, v1, v13, v14}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v9

    goto :goto_8

    :cond_9
    add-long v13, v13, v25

    .line 159
    invoke-static {v0, v1, v13, v14}, Lcom/facebook/soloader/MinElf;->get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v9

    goto :goto_8

    :cond_a
    int-to-long v9, v2

    add-long/2addr v13, v9

    add-long v11, v11, v23

    const-wide/16 v9, 0x28

    goto :goto_6

    :cond_b
    const-wide/16 v9, 0x0

    :goto_8
    const-wide/16 v21, 0x0

    cmp-long v3, v9, v21

    if-eqz v3, :cond_23

    move-wide v13, v9

    move-wide/from16 v11, v21

    const/4 v3, 0x0

    :goto_9
    move/from16 v29, v8

    if-eqz v8, :cond_c

    add-long v7, v13, v21

    .line 182
    invoke-static {v0, v1, v7, v8}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v7

    goto :goto_a

    :cond_c
    add-long v7, v13, v21

    invoke-static {v0, v1, v7, v8}, Lcom/facebook/soloader/MinElf;->get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v7

    :goto_a
    const-string v6, "malformed DT_NEEDED section"

    cmp-long v31, v7, v23

    if-nez v31, :cond_e

    move-wide/from16 v31, v9

    const v9, 0x7fffffff

    if-eq v3, v9, :cond_d

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 186
    :cond_d
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    invoke-direct {v0, v6}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-wide/from16 v31, v9

    const-wide/16 v9, 0x5

    cmp-long v17, v7, v9

    if-nez v17, :cond_10

    if-eqz v29, :cond_f

    const-wide/16 v11, 0x4

    add-long v9, v13, v11

    .line 192
    invoke-static {v0, v1, v9, v10}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v9

    goto :goto_b

    :cond_f
    add-long v9, v13, v25

    invoke-static {v0, v1, v9, v10}, Lcom/facebook/soloader/MinElf;->get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v9

    :goto_b
    move-wide v11, v9

    :cond_10
    :goto_c
    const-wide/16 v9, 0x10

    if-eqz v29, :cond_11

    move-wide/from16 v33, v25

    goto :goto_d

    :cond_11
    move-wide/from16 v33, v9

    :goto_d
    add-long v13, v13, v33

    const-wide/16 v21, 0x0

    cmp-long v33, v7, v21

    if-nez v33, :cond_22

    cmp-long v7, v11, v21

    if-eqz v7, :cond_21

    const/4 v7, 0x0

    :goto_e
    int-to-long v13, v7

    cmp-long v8, v13, v4

    if-gez v8, :cond_18

    if-eqz v29, :cond_12

    add-long v13, v15, v21

    .line 210
    invoke-static {v0, v1, v13, v14}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v13

    goto :goto_f

    :cond_12
    add-long v13, v15, v21

    .line 211
    invoke-static {v0, v1, v13, v14}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v13

    :goto_f
    cmp-long v8, v13, v23

    if-nez v8, :cond_16

    if-eqz v29, :cond_13

    add-long v13, v15, v25

    .line 216
    invoke-static {v0, v1, v13, v14}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v13

    goto :goto_10

    :cond_13
    add-long v13, v15, v9

    .line 217
    invoke-static {v0, v1, v13, v14}, Lcom/facebook/soloader/MinElf;->get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v13

    :goto_10
    if-eqz v29, :cond_14

    const-wide/16 v17, 0x14

    add-long v9, v15, v17

    .line 221
    invoke-static {v0, v1, v9, v10}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v8

    move-wide/from16 v27, v4

    move-wide v4, v8

    const-wide/16 v8, 0x28

    goto :goto_11

    :cond_14
    move-wide/from16 v27, v4

    const-wide/16 v8, 0x28

    add-long v4, v15, v8

    .line 222
    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    :goto_11
    cmp-long v10, v13, v11

    if-gtz v10, :cond_17

    add-long/2addr v4, v13

    cmp-long v10, v11, v4

    if-gez v10, :cond_17

    if-eqz v29, :cond_15

    const-wide/16 v4, 0x4

    add-long v7, v15, v4

    .line 227
    invoke-static {v0, v1, v7, v8}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    goto :goto_12

    :cond_15
    add-long v4, v15, v25

    .line 228
    invoke-static {v0, v1, v4, v5}, Lcom/facebook/soloader/MinElf;->get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    :goto_12
    sub-long/2addr v11, v13

    add-long/2addr v4, v11

    goto :goto_13

    :cond_16
    move-wide/from16 v27, v4

    const-wide/16 v8, 0x28

    :cond_17
    int-to-long v4, v2

    add-long/2addr v15, v4

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v4, v27

    const-wide/16 v9, 0x10

    const-wide/16 v21, 0x0

    goto :goto_e

    :cond_18
    const-wide/16 v4, 0x0

    :goto_13
    const-wide/16 v7, 0x0

    cmp-long v2, v4, v7

    if-eqz v2, :cond_20

    .line 242
    new-array v2, v3, [Ljava/lang/String;

    const/4 v9, 0x0

    :goto_14
    add-long v10, v31, v7

    if-eqz v29, :cond_19

    .line 248
    invoke-static {v0, v1, v10, v11}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v10

    goto :goto_15

    :cond_19
    invoke-static {v0, v1, v10, v11}, Lcom/facebook/soloader/MinElf;->get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v10

    :goto_15
    cmp-long v7, v10, v23

    if-nez v7, :cond_1c

    if-eqz v29, :cond_1a

    const-wide/16 v19, 0x4

    add-long v7, v31, v19

    .line 252
    invoke-static {v0, v1, v7, v8}, Lcom/facebook/soloader/MinElf;->getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v7

    goto :goto_16

    :cond_1a
    const-wide/16 v19, 0x4

    add-long v7, v31, v25

    invoke-static {v0, v1, v7, v8}, Lcom/facebook/soloader/MinElf;->get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J

    move-result-wide v7

    :goto_16
    add-long/2addr v7, v4

    .line 254
    invoke-static {v0, v1, v7, v8}, Lcom/facebook/soloader/MinElf;->getSz(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v9

    const v7, 0x7fffffff

    if-eq v9, v7, :cond_1b

    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    .line 256
    :cond_1b
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    invoke-direct {v0, v6}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    const v7, 0x7fffffff

    const-wide/16 v19, 0x4

    :goto_17
    if-eqz v29, :cond_1d

    move-wide/from16 v12, v25

    goto :goto_18

    :cond_1d
    const-wide/16 v12, 0x10

    :goto_18
    add-long v31, v31, v12

    const-wide/16 v21, 0x0

    cmp-long v8, v10, v21

    if-nez v8, :cond_1f

    if-ne v9, v3, :cond_1e

    return-object v2

    .line 266
    :cond_1e
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    invoke-direct {v0, v6}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    move-wide/from16 v7, v21

    goto :goto_14

    .line 239
    :cond_20
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v1, "did not find file offset of DT_STRTAB table"

    invoke-direct {v0, v1}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_21
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v1, "Dynamic section string-table not found"

    invoke-direct {v0, v1}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    const-wide/16 v8, 0x28

    const-wide/16 v19, 0x4

    move/from16 v8, v29

    move-wide/from16 v9, v31

    goto/16 :goto_9

    .line 169
    :cond_23
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    const-string v1, "ELF file does not contain dynamic linking information"

    invoke-direct {v0, v1}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_24
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file is not ELF: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    goto :goto_1a

    :goto_19
    throw v0

    :goto_1a
    goto :goto_19
.end method

.method private static get64(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 302
    invoke-static {p0, p1, v0, p2, p3}, Lcom/facebook/soloader/MinElf;->read(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 303
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p0

    return-wide p0
.end method

.method private static getSz(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const-wide/16 v1, 0x1

    add-long/2addr v1, p2

    .line 275
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/soloader/MinElf;->getu8(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)S

    move-result p2

    if-eqz p2, :cond_0

    int-to-char p2, p2

    .line 276
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-wide p2, v1

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getu16(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 312
    invoke-static {p0, p1, v0, p2, p3}, Lcom/facebook/soloader/MinElf;->read(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 313
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    const p1, 0xffff

    and-int/2addr p0, p1

    return p0
.end method

.method private static getu32(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 307
    invoke-static {p0, p1, v0, p2, p3}, Lcom/facebook/soloader/MinElf;->read(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 308
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    int-to-long p0, p0

    const-wide p2, 0xffffffffL

    and-long/2addr p0, p2

    return-wide p0
.end method

.method private static getu8(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;J)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 317
    invoke-static {p0, p1, v0, p2, p3}, Lcom/facebook/soloader/MinElf;->read(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V

    .line 318
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method private static read(Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 283
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 284
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 286
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    if-lez p2, :cond_1

    .line 287
    invoke-virtual {p0, p1, p3, p4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    goto :goto_1

    :cond_0
    int-to-long v1, p2

    add-long/2addr p3, v1

    goto :goto_0

    .line 294
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    if-gtz p0, :cond_2

    .line 298
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 295
    :cond_2
    new-instance p0, Lcom/facebook/soloader/MinElf$ElfError;

    const-string p1, "ELF file truncated"

    invoke-direct {p0, p1}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method
