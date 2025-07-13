.class final Lcom/taobao/weex/wson/Wson$Parser;
.super Ljava/lang/Object;
.source "Wson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/wson/Wson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Parser"
.end annotation


# instance fields
.field private buffer:[B

.field private charsBuffer:[C

.field private position:I


# direct methods
.method private constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 128
    iput v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    .line 133
    iput-object p1, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    .line 134
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$600()Ljava/lang/ThreadLocal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    iput-object p1, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    if-eqz p1, :cond_0

    .line 136
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$600()Ljava/lang/ThreadLocal;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x200

    new-array p1, p1, [C

    .line 138
    iput-object p1, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    :goto_0
    return-void
.end method

.method synthetic constructor <init>([BLcom/taobao/weex/wson/Wson$1;)V
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Parser;-><init>([B)V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/wson/Wson$Parser;)Ljava/lang/Object;
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->parse()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/wson/Wson$Parser;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->close()V

    return-void
.end method

.method private final close()V
    .locals 3

    const/4 v0, 0x0

    .line 148
    iput v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    .line 150
    iget-object v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    if-eqz v1, :cond_0

    .line 151
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$600()Ljava/lang/ThreadLocal;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 153
    :cond_0
    iput-object v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    return-void
.end method

.method private final parse()Ljava/lang/Object;
    .locals 1

    .line 144
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final readArray()Ljava/lang/Object;
    .locals 4

    .line 203
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUInt()I

    move-result v0

    .line 204
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private final readDouble()Ljava/lang/Object;
    .locals 9

    .line 331
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    double-to-long v2, v0

    long-to-double v4, v2

    .line 335
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v4, v0, v4

    const-wide/high16 v6, 0x10000000000000L

    cmpg-double v8, v4, v6

    if-gez v8, :cond_0

    .line 336
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 339
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private readFloat()Ljava/lang/Object;
    .locals 4

    .line 343
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v2, v1, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/2addr v2, v0

    add-int/lit8 v1, v1, 0x4

    .line 347
    iput v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    .line 348
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method private final readLong()J
    .locals 10

    .line 318
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v2, v1, 0x7

    aget-byte v2, v0, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-int/lit8 v6, v1, 0x6

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    add-long/2addr v2, v6

    add-int/lit8 v6, v1, 0x5

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v9, 0x10

    shl-long/2addr v6, v9

    add-long/2addr v2, v6

    add-int/lit8 v6, v1, 0x4

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v9, 0x18

    shl-long/2addr v6, v9

    add-long/2addr v2, v6

    add-int/lit8 v6, v1, 0x3

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v9, 0x20

    shl-long/2addr v6, v9

    add-long/2addr v2, v6

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v9, 0x28

    shl-long/2addr v6, v9

    add-long/2addr v2, v6

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v4, v6

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    aget-byte v0, v0, v1

    int-to-long v4, v0

    const/16 v0, 0x38

    shl-long/2addr v4, v0

    add-long/2addr v2, v4

    add-int/2addr v1, v8

    .line 326
    iput v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    return-wide v2
.end method

.method private final readMap()Ljava/lang/Object;
    .locals 5

    .line 192
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUInt()I

    move-result v0

    .line 193
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readMapKeyUTF16()Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 197
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private final readMapKeyUTF16()Ljava/lang/String;
    .locals 8

    .line 219
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUInt()I

    move-result v0

    .line 220
    div-int/lit8 v0, v0, 0x2

    .line 221
    iget-object v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    array-length v1, v1

    if-ge v1, v0, :cond_0

    .line 222
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    :cond_0
    const/16 v1, 0x1505

    .line 225
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$700()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 227
    iget-object v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v5, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    aget-byte v6, v4, v5

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v5, 0x1

    aget-byte v4, v4, v7

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v6, v4

    int-to-char v4, v6

    .line 229
    iget-object v6, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    aput-char v4, v6, v2

    shl-int/lit8 v6, v1, 0x5

    add-int/2addr v6, v1

    add-int v1, v6, v4

    add-int/lit8 v5, v5, 0x2

    .line 231
    iput v5, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 235
    iget-object v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v5, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v6, v5, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v6, v4

    int-to-char v4, v6

    .line 237
    iget-object v6, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    aput-char v4, v6, v2

    shl-int/lit8 v6, v1, 0x5

    add-int/2addr v6, v1

    add-int v1, v6, v4

    add-int/lit8 v5, v5, 0x2

    .line 239
    iput v5, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 242
    :cond_2
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$800()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    and-int/2addr v1, v2

    .line 243
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$800()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_5

    .line 245
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v0, :cond_5

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_4

    .line 248
    iget-object v6, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    aget-char v6, v6, v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    return-object v2

    .line 257
    :cond_5
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    invoke-direct {v2, v4, v3, v0}, Ljava/lang/String;-><init>([CII)V

    const/16 v3, 0x40

    if-ge v0, v3, :cond_6

    .line 259
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$800()[Ljava/lang/String;

    move-result-object v0

    aput-object v2, v0, v1

    :cond_6
    return-object v2
.end method

.method private final readObject()Ljava/lang/Object;
    .locals 4

    .line 157
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readType()B

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_7

    const/16 v1, 0x46

    if-eq v0, v1, :cond_6

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_5

    const/16 v1, 0x69

    if-eq v0, v1, :cond_4

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_2

    const/16 v1, 0x73

    if-eq v0, v1, :cond_1

    const/16 v1, 0x74

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 184
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wson unhandled type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " length "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :pswitch_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUTF16String()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 178
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 176
    :pswitch_2
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUTF16String()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 170
    :pswitch_3
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readDouble()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 180
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 160
    :cond_1
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUTF16String()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 166
    :cond_2
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readMap()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 172
    :cond_3
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 162
    :cond_4
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readVarInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 168
    :cond_5
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readArray()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 164
    :cond_6
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readFloat()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final readType()B
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    aget-byte v0, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 213
    iput v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    return v0
.end method

.method private final readUInt()I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 305
    :goto_0
    iget-object v2, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    aget-byte v2, v2, v3

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_1

    and-int/lit8 v2, v2, 0x7f

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x7

    add-int/lit8 v3, v3, 0x1

    .line 308
    iput v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    const/16 v2, 0x23

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable length quantity is too long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 313
    iput v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    shl-int v1, v2, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private final readUTF16String()Ljava/lang/String;
    .locals 7

    .line 265
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUInt()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 266
    iget-object v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    array-length v1, v1

    if-ge v1, v0, :cond_0

    .line 267
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    .line 269
    :cond_0
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$700()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 271
    iget-object v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    aget-byte v5, v3, v4

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v4, 0x1

    aget-byte v3, v3, v6

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v5, v3

    int-to-char v3, v5

    .line 273
    iget-object v5, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    aput-char v3, v5, v1

    add-int/lit8 v4, v4, 0x2

    .line 274
    iput v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 278
    iget-object v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->buffer:[B

    iget v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v5, v3

    int-to-char v3, v5

    .line 280
    iget-object v5, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    aput-char v3, v5, v1

    add-int/lit8 v4, v4, 0x2

    .line 281
    iput v4, p0, Lcom/taobao/weex/wson/Wson$Parser;->position:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 284
    :cond_2
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/weex/wson/Wson$Parser;->charsBuffer:[C

    invoke-direct {v1, v3, v2, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method private final readVarInt()I
    .locals 3

    .line 292
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Parser;->readUInt()I

    move-result v0

    shl-int/lit8 v1, v0, 0x1f

    shr-int/lit8 v1, v1, 0x1f

    xor-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x1

    const/high16 v2, -0x80000000

    and-int/2addr v0, v2

    xor-int/2addr v0, v1

    return v0
.end method
