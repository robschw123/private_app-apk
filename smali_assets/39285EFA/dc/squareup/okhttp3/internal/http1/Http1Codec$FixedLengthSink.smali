.class final Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;
.super Ljava/lang/Object;

# interfaces
.implements Ldc/squareup/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/http1/Http1Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FixedLengthSink"
.end annotation


# instance fields
.field private bytesRemaining:J

.field private closed:Z

.field final synthetic this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

.field private final timeout:Ldc/squareup/okio/ForwardingTimeout;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/internal/http1/Http1Codec;J)V
    .locals 1

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ldc/squareup/okio/ForwardingTimeout;

    iget-object p1, p1, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {p1}, Ldc/squareup/okio/Sink;->timeout()Ldc/squareup/okio/Timeout;

    move-result-object p1

    invoke-direct {v0, p1}, Ldc/squareup/okio/ForwardingTimeout;-><init>(Ldc/squareup/okio/Timeout;)V

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->timeout:Ldc/squareup/okio/ForwardingTimeout;

    .line 7
    iput-wide p2, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z

    .line 3
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 4
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->timeout:Ldc/squareup/okio/ForwardingTimeout;

    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->detachTimeout(Ldc/squareup/okio/ForwardingTimeout;)V

    .line 5
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    const/4 v1, 0x3

    iput v1, v0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->state:I

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {v0}, Ldc/squareup/okio/BufferedSink;->flush()V

    return-void
.end method

.method public timeout()Ldc/squareup/okio/Timeout;
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->timeout:Ldc/squareup/okio/ForwardingTimeout;

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
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->closed:Z

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Ldc/squareup/okhttp3/internal/Util;->checkOffsetAndCount(JJJ)V

    .line 3
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    .line 7
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->this$0:Ldc/squareup/okhttp3/internal/http1/Http1Codec;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/http1/Http1Codec;->sink:Ldc/squareup/okio/BufferedSink;

    invoke-interface {v0, p1, p2, p3}, Ldc/squareup/okio/Sink;->write(Ldc/squareup/okio/Buffer;J)V

    .line 8
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldc/squareup/okhttp3/internal/http1/Http1Codec$FixedLengthSink;->bytesRemaining:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes but received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
