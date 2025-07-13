.class final Lcom/taobao/weex/wson/Wson$Builder;
.super Ljava/lang/Object;
.source "Wson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/wson/Wson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Builder"
.end annotation


# static fields
.field private static final bufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final refsLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buffer:[B

.field private position:I

.field private refs:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 360
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/taobao/weex/wson/Wson$Builder;->bufLocal:Ljava/lang/ThreadLocal;

    .line 361
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/taobao/weex/wson/Wson$Builder;->refsLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    sget-object v0, Lcom/taobao/weex/wson/Wson$Builder;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 368
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 370
    iput-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    .line 372
    :goto_0
    sget-object v0, Lcom/taobao/weex/wson/Wson$Builder;->refsLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 374
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 376
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/wson/Wson$1;)V
    .locals 0

    .line 355
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/taobao/weex/wson/Wson$Builder;Ljava/lang/Object;)[B
    .locals 0

    .line 355
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->toWson(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/taobao/weex/wson/Wson$Builder;)V
    .locals 0

    .line 355
    invoke-direct {p0}, Lcom/taobao/weex/wson/Wson$Builder;->close()V

    return-void
.end method

.method private final close()V
    .locals 3

    .line 389
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    array-length v1, v0

    const/16 v2, 0x4000

    if-gt v1, v2, :cond_0

    .line 390
    sget-object v1, Lcom/taobao/weex/wson/Wson$Builder;->bufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    sget-object v0, Lcom/taobao/weex/wson/Wson$Builder;->refsLocal:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    const/4 v0, 0x0

    .line 397
    iput-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    .line 398
    iput-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    const/4 v0, 0x0

    .line 399
    iput v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    return-void
.end method

.method private final ensureCapacity(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minCapacity"
        }
    .end annotation

    .line 736
    iget v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/2addr p1, v0

    .line 738
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    array-length v1, v0

    sub-int v1, p1, v1

    if-lez v1, :cond_2

    .line 739
    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    const/16 v2, 0x4000

    if-ge v1, v2, :cond_0

    const/16 v1, 0x4000

    :cond_0
    sub-int v2, v1, p1

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    .line 747
    :goto_0
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    :cond_2
    return-void
.end method

.method private final toMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 618
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 620
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 621
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 622
    invoke-static {v2, v1}, Lcom/taobao/weex/wson/Wson;->access$1000(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 623
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 624
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "get"

    .line 625
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    new-array v5, v7, [Ljava/lang/Object;

    .line 626
    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 628
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x3

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 629
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v6, v7, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 630
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v6, "is"

    .line 632
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-array v5, v7, [Ljava/lang/Object;

    .line 633
    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 635
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v6, v7, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 637
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 641
    :cond_2
    invoke-static {v2, v1}, Lcom/taobao/weex/wson/Wson;->access$1100(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 642
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 643
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 644
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 647
    :cond_3
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 651
    :cond_4
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    return-object v0

    :catch_0
    move-exception p1

    .line 654
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_6

    .line 655
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 657
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private final toWson(Ljava/lang/Object;)[B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 382
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    .line 383
    iget p1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    new-array v0, p1, [B

    .line 384
    iget-object v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private final writeAdapterObject(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 605
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$900()Landroidx/collection/LruCache;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 606
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    return-void

    .line 610
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->toMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeMap(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 612
    :catch_0
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$900()Landroidx/collection/LruCache;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final writeByte(B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 600
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 601
    iput v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    return-void
.end method

.method private final writeDouble(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 696
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/wson/Wson$Builder;->writeLong(J)V

    return-void
.end method

.method private final writeFloat(F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 700
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    .line 701
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v2, v1, 0x3

    int-to-byte v3, p1

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x2

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    .line 702
    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    .line 703
    aput-byte v3, v0, v2

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    .line 704
    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x4

    .line 705
    iput v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    return-void
.end method

.method private final writeLong(J)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 709
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v2, v1, 0x7

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x6

    const/16 v3, 0x8

    ushr-long v4, p1, v3

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 710
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x5

    const/16 v4, 0x10

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 711
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x4

    const/16 v4, 0x18

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 712
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x3

    const/16 v4, 0x20

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 713
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x2

    const/16 v4, 0x28

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 714
    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0x30

    ushr-long v4, p1, v4

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 715
    aput-byte v4, v0, v2

    const/16 v2, 0x38

    ushr-long/2addr p1, v2

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 716
    aput-byte p1, v0, v1

    add-int/2addr v1, v3

    .line 717
    iput v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    return-void
.end method

.method private final writeMap(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .line 577
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 579
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 580
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 585
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    const/16 v1, 0x7b

    .line 586
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 587
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeUInt(I)V

    .line 588
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 589
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 592
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeMapKeyUTF16(Ljava/lang/String;)V

    .line 593
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private final writeMapKeyUTF16(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 664
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeUTF16String(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final writeNumber(Ljava/lang/Number;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    const/16 v0, 0xc

    .line 512
    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 513
    instance-of v0, p1, Ljava/lang/Integer;

    const/16 v1, 0x69

    if-eqz v0, :cond_0

    .line 514
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 515
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeVarInt(I)V

    return-void

    .line 519
    :cond_0
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1

    const/16 v0, 0x46

    .line 520
    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 521
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeFloat(F)V

    return-void

    .line 524
    :cond_1
    instance-of v0, p1, Ljava/lang/Double;

    const/16 v2, 0x64

    if-eqz v0, :cond_2

    .line 525
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 526
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeDouble(D)V

    return-void

    .line 530
    :cond_2
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_3

    const/16 v0, 0x6c

    .line 531
    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 532
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeLong(J)V

    return-void

    .line 536
    :cond_3
    instance-of v0, p1, Ljava/lang/Short;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_4

    goto :goto_1

    .line 543
    :cond_4
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_5

    const/16 v0, 0x67

    .line 544
    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 545
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeUTF16String(Ljava/lang/CharSequence;)V

    return-void

    .line 549
    :cond_5
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_7

    .line 550
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    .line 552
    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 553
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 554
    invoke-direct {p0, v3, v4}, Lcom/taobao/weex/wson/Wson$Builder;->writeDouble(D)V

    goto :goto_0

    :cond_6
    const/16 p1, 0x65

    .line 556
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 557
    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeUTF16String(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_7
    const/16 v0, 0x73

    .line 561
    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 562
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeUTF16String(Ljava/lang/CharSequence;)V

    return-void

    .line 538
    :cond_8
    :goto_1
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 539
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeVarInt(I)V

    return-void
.end method

.method private final writeObject(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 403
    instance-of v0, p1, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 404
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    const/16 v0, 0x73

    .line 405
    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 406
    check-cast p1, Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeUTF16String(Ljava/lang/CharSequence;)V

    return-void

    .line 408
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    const/16 v2, 0x30

    if-eqz v0, :cond_2

    .line 409
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 411
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    return-void

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    check-cast p1, Ljava/util/Map;

    .line 416
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeMap(Ljava/util/Map;)V

    .line 417
    iget-object p1, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    .line 419
    :cond_2
    instance-of v0, p1, Ljava/util/List;

    const/16 v3, 0x5b

    const/16 v4, 0x8

    if-eqz v0, :cond_5

    .line 420
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 421
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 422
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    return-void

    .line 425
    :cond_3
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-direct {p0, v4}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 427
    check-cast p1, Ljava/util/List;

    .line 428
    invoke-direct {p0, v3}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 429
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeUInt(I)V

    .line 430
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 431
    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 433
    :cond_4
    iget-object p1, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    .line 435
    :cond_5
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_6

    .line 436
    check-cast p1, Ljava/lang/Number;

    .line 437
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeNumber(Ljava/lang/Number;)V

    return-void

    .line 439
    :cond_6
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 440
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 441
    check-cast p1, Ljava/lang/Boolean;

    .line 442
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x74

    .line 443
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    goto :goto_1

    :cond_7
    const/16 p1, 0x66

    .line 445
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    :goto_1
    return-void

    :cond_8
    if-nez p1, :cond_9

    .line 449
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 450
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    return-void

    .line 452
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 453
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 454
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 455
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    return-void

    .line 458
    :cond_a
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    invoke-direct {p0, v4}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 460
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 461
    invoke-direct {p0, v3}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 462
    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeUInt(I)V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_b

    .line 464
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 465
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 467
    :cond_b
    iget-object p1, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    .line 469
    :cond_c
    instance-of v0, p1, Ljava/util/Date;

    const/16 v5, 0x64

    const/16 v6, 0xa

    if-eqz v0, :cond_d

    .line 470
    invoke-direct {p0, v6}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 471
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    long-to-double v0, v0

    .line 472
    invoke-direct {p0, v5}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 473
    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeDouble(D)V

    goto :goto_4

    .line 474
    :cond_d
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_e

    .line 475
    invoke-direct {p0, v6}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 476
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    long-to-double v0, v0

    .line 477
    invoke-direct {p0, v5}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 478
    invoke-direct {p0, v0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeDouble(D)V

    goto :goto_4

    .line 479
    :cond_e
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_11

    .line 480
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 481
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 482
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    return-void

    .line 485
    :cond_f
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-direct {p0, v4}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 487
    check-cast p1, Ljava/util/Collection;

    .line 488
    invoke-direct {p0, v3}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    .line 489
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeUInt(I)V

    .line 490
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 491
    invoke-direct {p0, v0}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    goto :goto_3

    .line 493
    :cond_10
    iget-object p1, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_4
    return-void

    .line 495
    :cond_11
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 496
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 497
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->writeByte(B)V

    goto :goto_6

    .line 499
    :cond_12
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 501
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeObject(Ljava/lang/Object;)V

    goto :goto_5

    .line 503
    :cond_13
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeAdapterObject(Ljava/lang/Object;)V

    .line 505
    :goto_5
    iget-object p1, p0, Lcom/taobao/weex/wson/Wson$Builder;->refs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_6
    return-void
.end method

.method private final writeUInt(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 727
    iput v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    and-int/lit8 p1, p1, 0x7f

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 731
    iput v1, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    return-void
.end method

.method private final writeUTF16String(Ljava/lang/CharSequence;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 674
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x8

    .line 675
    invoke-direct {p0, v2}, Lcom/taobao/weex/wson/Wson$Builder;->ensureCapacity(I)V

    .line 676
    invoke-direct {p0, v1}, Lcom/taobao/weex/wson/Wson$Builder;->writeUInt(I)V

    .line 677
    invoke-static {}, Lcom/taobao/weex/wson/Wson;->access$700()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 679
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 680
    iget-object v3, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v4, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    int-to-byte v5, v1

    aput-byte v5, v3, v4

    add-int/lit8 v5, v4, 0x1

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    .line 681
    aput-byte v1, v3, v5

    add-int/lit8 v4, v4, 0x2

    .line 682
    iput v4, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v0, :cond_1

    .line 686
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 687
    iget-object v3, p0, Lcom/taobao/weex/wson/Wson$Builder;->buffer:[B

    iget v4, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v5, v4, 0x1

    int-to-byte v6, v1

    aput-byte v6, v3, v5

    ushr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    .line 688
    aput-byte v1, v3, v4

    add-int/lit8 v4, v4, 0x2

    .line 689
    iput v4, p0, Lcom/taobao/weex/wson/Wson$Builder;->position:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private final writeVarInt(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    shl-int/lit8 v0, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, v0

    .line 721
    invoke-direct {p0, p1}, Lcom/taobao/weex/wson/Wson$Builder;->writeUInt(I)V

    return-void
.end method
