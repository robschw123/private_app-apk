.class public final Ldc/squareup/okio/Buffer$UnsafeCursor;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okio/Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsafeCursor"
.end annotation


# instance fields
.field public buffer:Ldc/squareup/okio/Buffer;

.field public data:[B

.field public end:I

.field public offset:J

.field public readWrite:Z

.field private segment:Ldc/squareup/okio/Segment;

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->offset:J

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->start:I

    .line 9
    iput v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->end:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->buffer:Ldc/squareup/okio/Buffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->buffer:Ldc/squareup/okio/Buffer;

    .line 6
    iput-object v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->segment:Ldc/squareup/okio/Segment;

    const-wide/16 v1, -0x1

    .line 7
    iput-wide v1, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->offset:J

    .line 8
    iput-object v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->data:[B

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->start:I

    .line 10
    iput v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->end:I

    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final expandBuffer(I)J
    .locals 9

    if-lez p1, :cond_3

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_2

    .line 1
    iget-object v1, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->buffer:Ldc/squareup/okio/Buffer;

    if-eqz v1, :cond_1

    .line 4
    iget-boolean v2, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v2, :cond_0

    .line 8
    iget-wide v2, v1, Ldc/squareup/okio/Buffer;->size:J

    .line 9
    invoke-virtual {v1, p1}, Ldc/squareup/okio/Buffer;->writableSegment(I)Ldc/squareup/okio/Segment;

    move-result-object p1

    .line 10
    iget v1, p1, Ldc/squareup/okio/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    .line 11
    iput v0, p1, Ldc/squareup/okio/Segment;->limit:I

    .line 12
    iget-object v4, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->buffer:Ldc/squareup/okio/Buffer;

    int-to-long v5, v1

    add-long v7, v2, v5

    iput-wide v7, v4, Ldc/squareup/okio/Buffer;->size:J

    .line 15
    iput-object p1, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->segment:Ldc/squareup/okio/Segment;

    .line 16
    iput-wide v2, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->offset:J

    .line 17
    iget-object p1, p1, Ldc/squareup/okio/Segment;->data:[B

    iput-object p1, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->data:[B

    rsub-int p1, v1, 0x2000

    .line 18
    iput p1, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->start:I

    .line 19
    iput v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->end:I

    return-wide v5

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "expandBuffer() only permitted for read/write buffers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not attached to a buffer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minByteCount > Segment.SIZE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minByteCount <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final next()I
    .locals 5

    .line 1
    iget-wide v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->offset:J

    iget-object v2, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->buffer:Ldc/squareup/okio/Buffer;

    iget-wide v2, v2, Ldc/squareup/okio/Buffer;->size:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Ldc/squareup/okio/Buffer$UnsafeCursor;->seek(J)I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget v2, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->end:I

    iget v3, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ldc/squareup/okio/Buffer$UnsafeCursor;->seek(J)I

    move-result v0

    return v0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final resizeBuffer(J)J
    .locals 13

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->buffer:Ldc/squareup/okio/Buffer;

    if-eqz v0, :cond_7

    .line 4
    iget-boolean v1, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v1, :cond_6

    .line 8
    iget-wide v0, v0, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v0

    if-gtz v4, :cond_3

    cmp-long v4, p1, v2

    if-ltz v4, :cond_2

    sub-long v4, v0, p1

    :goto_0
    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    .line 15
    iget-object v6, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->buffer:Ldc/squareup/okio/Buffer;

    iget-object v7, v6, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    iget-object v7, v7, Ldc/squareup/okio/Segment;->prev:Ldc/squareup/okio/Segment;

    .line 16
    iget v8, v7, Ldc/squareup/okio/Segment;->limit:I

    iget v9, v7, Ldc/squareup/okio/Segment;->pos:I

    sub-int v9, v8, v9

    int-to-long v9, v9

    cmp-long v11, v9, v4

    if-gtz v11, :cond_0

    .line 18
    invoke-virtual {v7}, Ldc/squareup/okio/Segment;->pop()Ldc/squareup/okio/Segment;

    move-result-object v8

    iput-object v8, v6, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 19
    invoke-static {v7}, Ldc/squareup/okio/SegmentPool;->recycle(Ldc/squareup/okio/Segment;)V

    sub-long/2addr v4, v9

    goto :goto_0

    :cond_0
    int-to-long v2, v8

    sub-long/2addr v2, v4

    long-to-int v3, v2

    .line 22
    iput v3, v7, Ldc/squareup/okio/Segment;->limit:I

    :cond_1
    const/4 v2, 0x0

    .line 27
    iput-object v2, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->segment:Ldc/squareup/okio/Segment;

    .line 28
    iput-wide p1, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->offset:J

    .line 29
    iput-object v2, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->data:[B

    const/4 v2, -0x1

    .line 30
    iput v2, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->start:I

    .line 31
    iput v2, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->end:I

    goto :goto_2

    .line 32
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newSize < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-lez v4, :cond_5

    sub-long v4, p1, v0

    const/4 v6, 0x1

    const/4 v7, 0x1

    :cond_4
    :goto_1
    cmp-long v8, v4, v2

    if-lez v8, :cond_5

    .line 57
    iget-object v8, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v8, v6}, Ldc/squareup/okio/Buffer;->writableSegment(I)Ldc/squareup/okio/Segment;

    move-result-object v8

    .line 58
    iget v9, v8, Ldc/squareup/okio/Segment;->limit:I

    rsub-int v9, v9, 0x2000

    int-to-long v9, v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v10, v9

    .line 59
    iget v9, v8, Ldc/squareup/okio/Segment;->limit:I

    add-int/2addr v9, v10

    iput v9, v8, Ldc/squareup/okio/Segment;->limit:I

    int-to-long v11, v10

    sub-long/2addr v4, v11

    if-eqz v7, :cond_4

    .line 64
    iput-object v8, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->segment:Ldc/squareup/okio/Segment;

    .line 65
    iput-wide v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->offset:J

    .line 66
    iget-object v7, v8, Ldc/squareup/okio/Segment;->data:[B

    iput-object v7, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->data:[B

    sub-int v7, v9, v10

    .line 67
    iput v7, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->start:I

    .line 68
    iput v9, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->end:I

    const/4 v7, 0x0

    goto :goto_1

    .line 74
    :cond_5
    :goto_2
    iget-object v2, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->buffer:Ldc/squareup/okio/Buffer;

    iput-wide p1, v2, Ldc/squareup/okio/Buffer;->size:J

    return-wide v0

    .line 75
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "resizeBuffer() only permitted for read/write buffers"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not attached to a buffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final seek(J)I
    .locals 12

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_9

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->buffer:Ldc/squareup/okio/Buffer;

    iget-wide v3, v0, Ldc/squareup/okio/Buffer;->size:J

    cmp-long v1, p1, v3

    if-gtz v1, :cond_9

    if-eqz v2, :cond_8

    cmp-long v1, p1, v3

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-wide/16 v1, 0x0

    .line 18
    iget-object v0, v0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 20
    iget-object v5, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->segment:Ldc/squareup/okio/Segment;

    if-eqz v5, :cond_2

    .line 21
    iget-wide v6, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->offset:J

    iget v8, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->start:I

    iget v9, v5, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    sub-long/2addr v6, v8

    cmp-long v8, v6, p1

    if-lez v8, :cond_1

    move-wide v3, v6

    move-object v11, v5

    move-object v5, v0

    move-object v0, v11

    goto :goto_0

    :cond_1
    move-wide v1, v6

    goto :goto_0

    :cond_2
    move-object v5, v0

    :goto_0
    sub-long v6, v3, p1

    sub-long v8, p1, v1

    cmp-long v10, v6, v8

    if-lez v10, :cond_3

    .line 39
    :goto_1
    iget v0, v5, Ldc/squareup/okio/Segment;->limit:I

    iget v3, v5, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v0, v3

    int-to-long v3, v0

    add-long/2addr v3, v1

    cmp-long v0, p1, v3

    if-ltz v0, :cond_5

    .line 41
    iget-object v5, v5, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    move-wide v1, v3

    goto :goto_1

    :cond_3
    :goto_2
    cmp-long v1, v3, p1

    if-lez v1, :cond_4

    .line 48
    iget-object v0, v0, Ldc/squareup/okio/Segment;->prev:Ldc/squareup/okio/Segment;

    .line 49
    iget v1, v0, Ldc/squareup/okio/Segment;->limit:I

    iget v2, v0, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    sub-long/2addr v3, v1

    goto :goto_2

    :cond_4
    move-object v5, v0

    move-wide v1, v3

    .line 54
    :cond_5
    iget-boolean v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v0, :cond_7

    iget-boolean v0, v5, Ldc/squareup/okio/Segment;->shared:Z

    if-eqz v0, :cond_7

    .line 55
    invoke-virtual {v5}, Ldc/squareup/okio/Segment;->unsharedCopy()Ldc/squareup/okio/Segment;

    move-result-object v0

    .line 56
    iget-object v3, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->buffer:Ldc/squareup/okio/Buffer;

    iget-object v4, v3, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    if-ne v4, v5, :cond_6

    .line 57
    iput-object v0, v3, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 59
    :cond_6
    invoke-virtual {v5, v0}, Ldc/squareup/okio/Segment;->push(Ldc/squareup/okio/Segment;)Ldc/squareup/okio/Segment;

    move-result-object v5

    .line 60
    iget-object v0, v5, Ldc/squareup/okio/Segment;->prev:Ldc/squareup/okio/Segment;

    invoke-virtual {v0}, Ldc/squareup/okio/Segment;->pop()Ldc/squareup/okio/Segment;

    .line 64
    :cond_7
    iput-object v5, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->segment:Ldc/squareup/okio/Segment;

    .line 65
    iput-wide p1, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->offset:J

    .line 66
    iget-object v0, v5, Ldc/squareup/okio/Segment;->data:[B

    iput-object v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->data:[B

    .line 67
    iget v0, v5, Ldc/squareup/okio/Segment;->pos:I

    sub-long/2addr p1, v1

    long-to-int p2, p1

    add-int/2addr v0, p2

    iput v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->start:I

    .line 68
    iget p1, v5, Ldc/squareup/okio/Segment;->limit:I

    iput p1, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->end:I

    sub-int/2addr p1, v0

    return p1

    :cond_8
    :goto_3
    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->segment:Ldc/squareup/okio/Segment;

    .line 70
    iput-wide p1, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->offset:J

    .line 71
    iput-object v0, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->data:[B

    const/4 p1, -0x1

    .line 72
    iput p1, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->start:I

    .line 73
    iput p1, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->end:I

    return p1

    .line 74
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 75
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    iget-object p1, p0, Ldc/squareup/okio/Buffer$UnsafeCursor;->buffer:Ldc/squareup/okio/Buffer;

    iget-wide p1, p1, Ldc/squareup/okio/Buffer;->size:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "offset=%s > size=%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
