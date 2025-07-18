.class Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;
.super Ljava/lang/Object;

# interfaces
.implements Ldc/squareup/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/cache2/Relay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RelaySource"
.end annotation


# instance fields
.field private fileOperator:Ldc/squareup/okhttp3/internal/cache2/FileOperator;

.field private sourcePos:J

.field final synthetic this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

.field private final timeout:Ldc/squareup/okio/Timeout;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/internal/cache2/Relay;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ldc/squareup/okio/Timeout;

    invoke-direct {v0}, Ldc/squareup/okio/Timeout;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->timeout:Ldc/squareup/okio/Timeout;

    .line 5
    new-instance v0, Ldc/squareup/okhttp3/internal/cache2/FileOperator;

    iget-object p1, p1, Ldc/squareup/okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-direct {v0, p1}, Ldc/squareup/okhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Ldc/squareup/okhttp3/internal/cache2/FileOperator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Ldc/squareup/okhttp3/internal/cache2/FileOperator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Ldc/squareup/okhttp3/internal/cache2/FileOperator;

    .line 5
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    iget v3, v2, Ldc/squareup/okhttp3/internal/cache2/Relay;->sourceCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Ldc/squareup/okhttp3/internal/cache2/Relay;->sourceCount:I

    if-nez v3, :cond_1

    .line 8
    iget-object v3, v2, Ldc/squareup/okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 9
    iput-object v0, v2, Ldc/squareup/okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    move-object v0, v3

    .line 11
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 14
    invoke-static {v0}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public read(Ldc/squareup/okio/Buffer;J)J
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    .line 1
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Ldc/squareup/okhttp3/internal/cache2/FileOperator;

    if-eqz v0, :cond_7

    .line 7
    iget-object v4, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    monitor-enter v4

    .line 9
    :goto_0
    :try_start_0
    iget-wide v5, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    iget-object v0, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    iget-wide v7, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstreamPos:J

    const/4 v9, 0x2

    const-wide/16 v10, -0x1

    cmp-long v12, v5, v7

    if-nez v12, :cond_2

    .line 11
    iget-boolean v5, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->complete:Z

    if-eqz v5, :cond_0

    monitor-exit v4

    return-wide v10

    .line 14
    :cond_0
    iget-object v5, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    if-eqz v5, :cond_1

    .line 15
    iget-object v5, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->timeout:Ldc/squareup/okio/Timeout;

    invoke-virtual {v5, v0}, Ldc/squareup/okio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_0

    .line 20
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    iput-object v5, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    const/4 v0, 0x1

    .line 22
    monitor-exit v4

    goto :goto_1

    .line 25
    :cond_2
    iget-object v0, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v5

    sub-long v5, v7, v5

    .line 28
    iget-wide v12, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    cmp-long v0, v12, v5

    if-gez v0, :cond_6

    .line 30
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v0, 0x2

    :goto_1
    const-wide/16 v4, 0x20

    if-ne v0, v9, :cond_3

    .line 42
    iget-wide v9, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    sub-long/2addr v7, v9

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 43
    iget-object v9, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Ldc/squareup/okhttp3/internal/cache2/FileOperator;

    iget-wide v6, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long v10, v6, v4

    move-object/from16 v12, p1

    move-wide v13, v2

    invoke-virtual/range {v9 .. v14}, Ldc/squareup/okhttp3/internal/cache2/FileOperator;->read(JLdc/squareup/okio/Buffer;J)V

    .line 44
    iget-wide v4, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    return-wide v2

    :cond_3
    const/4 v6, 0x0

    .line 51
    :try_start_1
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    iget-object v9, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstream:Ldc/squareup/okio/Source;

    iget-object v12, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstreamBuffer:Ldc/squareup/okio/Buffer;

    iget-wide v13, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->bufferMaxSize:J

    invoke-interface {v9, v12, v13, v14}, Ldc/squareup/okio/Source;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide v12

    cmp-long v0, v12, v10

    if-nez v0, :cond_4

    .line 55
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    invoke-virtual {v0, v7, v8}, Ldc/squareup/okhttp3/internal/cache2/Relay;->commit(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 81
    iget-object v2, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    monitor-enter v2

    .line 82
    :try_start_2
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    iput-object v6, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 84
    monitor-exit v2

    return-wide v10

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 85
    :cond_4
    :try_start_3
    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 86
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    iget-object v14, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstreamBuffer:Ldc/squareup/okio/Buffer;

    const-wide/16 v16, 0x0

    move-object/from16 v15, p1

    move-wide/from16 v18, v2

    invoke-virtual/range {v14 .. v19}, Ldc/squareup/okio/Buffer;->copyTo(Ldc/squareup/okio/Buffer;JJ)Ldc/squareup/okio/Buffer;

    .line 87
    iget-wide v9, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v9, v2

    iput-wide v9, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 90
    iget-object v15, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Ldc/squareup/okhttp3/internal/cache2/FileOperator;

    add-long v16, v7, v4

    iget-object v0, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstreamBuffer:Ldc/squareup/okio/Buffer;

    .line 91
    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->clone()Ldc/squareup/okio/Buffer;

    move-result-object v18

    move-wide/from16 v19, v12

    .line 92
    invoke-virtual/range {v15 .. v20}, Ldc/squareup/okhttp3/internal/cache2/FileOperator;->write(JLdc/squareup/okio/Buffer;J)V

    .line 95
    iget-object v4, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 97
    :try_start_4
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    iget-object v5, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->buffer:Ldc/squareup/okio/Buffer;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstreamBuffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v5, v0, v12, v13}, Ldc/squareup/okio/Buffer;->write(Ldc/squareup/okio/Buffer;J)V

    .line 98
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v7

    iget-object v0, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    iget-wide v9, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->bufferMaxSize:J

    cmp-long v5, v7, v9

    if-lez v5, :cond_5

    .line 99
    iget-object v0, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v7

    iget-object v5, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    iget-wide v9, v5, Ldc/squareup/okhttp3/internal/cache2/Relay;->bufferMaxSize:J

    sub-long/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Ldc/squareup/okio/Buffer;->skip(J)V

    .line 103
    :cond_5
    iget-object v5, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    iget-wide v7, v5, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstreamPos:J

    add-long/2addr v7, v12

    iput-wide v7, v5, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstreamPos:J

    .line 104
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 108
    monitor-enter v5

    .line 109
    :try_start_5
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    iput-object v6, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 111
    monitor-exit v5

    return-wide v2

    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 112
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    .line 116
    iget-object v2, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    monitor-enter v2

    .line 117
    :try_start_8
    iget-object v3, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    iput-object v6, v3, Ldc/squareup/okhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 118
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 119
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 120
    throw v0

    :catchall_4
    move-exception v0

    .line 121
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    :cond_6
    sub-long/2addr v7, v12

    .line 122
    :try_start_a
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 123
    iget-object v0, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->this$0:Ldc/squareup/okhttp3/internal/cache2/Relay;

    iget-object v9, v0, Ldc/squareup/okhttp3/internal/cache2/Relay;->buffer:Ldc/squareup/okio/Buffer;

    iget-wide v7, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    sub-long v11, v7, v5

    move-object/from16 v10, p1

    move-wide v13, v2

    invoke-virtual/range {v9 .. v14}, Ldc/squareup/okio/Buffer;->copyTo(Ldc/squareup/okio/Buffer;JJ)Ldc/squareup/okio/Buffer;

    .line 124
    iget-wide v5, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long/2addr v5, v2

    iput-wide v5, v1, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 125
    monitor-exit v4

    return-wide v2

    :catchall_5
    move-exception v0

    .line 126
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v0

    .line 127
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public timeout()Ldc/squareup/okio/Timeout;
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache2/Relay$RelaySource;->timeout:Ldc/squareup/okio/Timeout;

    return-object v0
.end method
