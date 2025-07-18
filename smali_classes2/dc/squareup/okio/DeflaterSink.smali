.class public final Ldc/squareup/okio/DeflaterSink;
.super Ljava/lang/Object;

# interfaces
.implements Ldc/squareup/okio/Sink;


# instance fields
.field private closed:Z

.field private final deflater:Ljava/util/zip/Deflater;

.field private final sink:Ldc/squareup/okio/BufferedSink;


# direct methods
.method constructor <init>(Ldc/squareup/okio/BufferedSink;Ljava/util/zip/Deflater;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 5
    iput-object p1, p0, Ldc/squareup/okio/DeflaterSink;->sink:Ldc/squareup/okio/BufferedSink;

    .line 6
    iput-object p2, p0, Ldc/squareup/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inflater == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ldc/squareup/okio/Sink;Ljava/util/zip/Deflater;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Sink;)Ldc/squareup/okio/BufferedSink;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ldc/squareup/okio/DeflaterSink;-><init>(Ldc/squareup/okio/BufferedSink;Ljava/util/zip/Deflater;)V

    return-void
.end method

.method private deflate(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/DeflaterSink;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {v0}, Ldc/squareup/okio/BufferedSink;->buffer()Ldc/squareup/okio/Buffer;

    move-result-object v0

    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ldc/squareup/okio/Buffer;->writableSegment(I)Ldc/squareup/okio/Segment;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 10
    iget-object v2, p0, Ldc/squareup/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v3, v1, Ldc/squareup/okio/Segment;->data:[B

    iget v4, v1, Ldc/squareup/okio/Segment;->limit:I

    rsub-int v5, v4, 0x2000

    const/4 v6, 0x2

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v2

    goto :goto_1

    .line 11
    :cond_1
    iget-object v2, p0, Ldc/squareup/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v3, v1, Ldc/squareup/okio/Segment;->data:[B

    iget v4, v1, Ldc/squareup/okio/Segment;->limit:I

    rsub-int v5, v4, 0x2000

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v2

    :goto_1
    if-lez v2, :cond_2

    .line 14
    iget v3, v1, Ldc/squareup/okio/Segment;->limit:I

    add-int/2addr v3, v2

    iput v3, v1, Ldc/squareup/okio/Segment;->limit:I

    .line 15
    iget-wide v3, v0, Ldc/squareup/okio/Buffer;->size:J

    int-to-long v1, v2

    add-long/2addr v3, v1

    iput-wide v3, v0, Ldc/squareup/okio/Buffer;->size:J

    .line 16
    iget-object v1, p0, Ldc/squareup/okio/DeflaterSink;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {v1}, Ldc/squareup/okio/BufferedSink;->emitCompleteSegments()Ldc/squareup/okio/BufferedSink;

    goto :goto_0

    .line 17
    :cond_2
    iget-object v2, p0, Ldc/squareup/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    iget p1, v1, Ldc/squareup/okio/Segment;->pos:I

    iget v2, v1, Ldc/squareup/okio/Segment;->limit:I

    if-ne p1, v2, :cond_3

    .line 20
    invoke-virtual {v1}, Ldc/squareup/okio/Segment;->pop()Ldc/squareup/okio/Segment;

    move-result-object p1

    iput-object p1, v0, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 21
    invoke-static {v1}, Ldc/squareup/okio/SegmentPool;->recycle(Ldc/squareup/okio/Segment;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okio/DeflaterSink;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Ldc/squareup/okio/DeflaterSink;->finishDeflate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 13
    :goto_0
    :try_start_1
    iget-object v1, p0, Ldc/squareup/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_1

    move-object v0, v1

    .line 19
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Ldc/squareup/okio/DeflaterSink;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {v1}, Ldc/squareup/okio/Sink;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_2
    const/4 v1, 0x1

    .line 23
    iput-boolean v1, p0, Ldc/squareup/okio/DeflaterSink;->closed:Z

    if-eqz v0, :cond_3

    .line 25
    invoke-static {v0}, Ldc/squareup/okio/Util;->sneakyRethrow(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method finishDeflate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Ldc/squareup/okio/DeflaterSink;->deflate(Z)V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Ldc/squareup/okio/DeflaterSink;->deflate(Z)V

    .line 2
    iget-object v0, p0, Ldc/squareup/okio/DeflaterSink;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {v0}, Ldc/squareup/okio/BufferedSink;->flush()V

    return-void
.end method

.method public timeout()Ldc/squareup/okio/Timeout;
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/DeflaterSink;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {v0}, Ldc/squareup/okio/Sink;->timeout()Ldc/squareup/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeflaterSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldc/squareup/okio/DeflaterSink;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ldc/squareup/okio/Buffer;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p1, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Ldc/squareup/okio/Util;->checkOffsetAndCount(JJJ)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 4
    iget-object v0, p1, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 5
    iget v1, v0, Ldc/squareup/okio/Segment;->limit:I

    iget v2, v0, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 6
    iget-object v1, p0, Ldc/squareup/okio/DeflaterSink;->deflater:Ljava/util/zip/Deflater;

    iget-object v3, v0, Ldc/squareup/okio/Segment;->data:[B

    iget v4, v0, Ldc/squareup/okio/Segment;->pos:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/zip/Deflater;->setInput([BII)V

    const/4 v1, 0x0

    .line 9
    invoke-direct {p0, v1}, Ldc/squareup/okio/DeflaterSink;->deflate(Z)V

    .line 12
    iget-wide v3, p1, Ldc/squareup/okio/Buffer;->size:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p1, Ldc/squareup/okio/Buffer;->size:J

    .line 13
    iget v1, v0, Ldc/squareup/okio/Segment;->pos:I

    add-int/2addr v1, v2

    iput v1, v0, Ldc/squareup/okio/Segment;->pos:I

    .line 14
    iget v2, v0, Ldc/squareup/okio/Segment;->limit:I

    if-ne v1, v2, :cond_0

    .line 15
    invoke-virtual {v0}, Ldc/squareup/okio/Segment;->pop()Ldc/squareup/okio/Segment;

    move-result-object v1

    iput-object v1, p1, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    .line 16
    invoke-static {v0}, Ldc/squareup/okio/SegmentPool;->recycle(Ldc/squareup/okio/Segment;)V

    :cond_0
    sub-long/2addr p2, v5

    goto :goto_0

    :cond_1
    return-void
.end method
