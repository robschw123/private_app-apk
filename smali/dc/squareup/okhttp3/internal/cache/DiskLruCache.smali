.class public final Ldc/squareup/okhttp3/internal/cache/DiskLruCache;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;,
        Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;,
        Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupRunnable:Ljava/lang/Runnable;

.field closed:Z

.field final directory:Ljava/io/File;

.field private final executor:Ljava/util/concurrent/Executor;

.field final fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

.field hasJournalErrors:Z

.field initialized:Z

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field journalWriter:Ldc/squareup/okio/BufferedSink;

.field final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field mostRecentRebuildFailed:Z

.field mostRecentTrimFailed:Z

.field private nextSequenceNumber:J

.field redundantOpCount:I

.field private size:J

.field final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[a-z0-9_-]{1,120}"

    .line 8
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ldc/squareup/okhttp3/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->size:J

    .line 4
    new-instance v2, Ljava/util/LinkedHashMap;

    const/4 v3, 0x0

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 19
    iput-wide v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->nextSequenceNumber:J

    .line 23
    new-instance v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$1;

    invoke-direct {v0, p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$1;-><init>(Ldc/squareup/okhttp3/internal/cache/DiskLruCache;)V

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    .line 51
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    .line 52
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    .line 53
    iput p3, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->appVersion:I

    .line 54
    new-instance p1, Ljava/io/File;

    const-string p3, "journal"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 55
    new-instance p1, Ljava/io/File;

    const-string p3, "journal.tmp"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 56
    new-instance p1, Ljava/io/File;

    const-string p3, "journal.bkp"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 57
    iput p4, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    .line 58
    iput-wide p5, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->maxSize:J

    .line 59
    iput-object p7, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private declared-synchronized checkNotClosed()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->isClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static create(Ldc/squareup/okhttp3/internal/io/FileSystem;Ljava/io/File;IIJ)Ldc/squareup/okhttp3/internal/cache/DiskLruCache;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_1

    if-lez p3, :cond_0

    .line 1
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v0, 0x1

    const-string v1, "OkHttp DiskLruCache"

    .line 2
    invoke-static {v1, v0}, Ldc/squareup/okhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 4
    new-instance v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-direct/range {v2 .. v9}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;-><init>(Ldc/squareup/okhttp3/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private newJournalWriter()Ldc/squareup/okio/BufferedSink;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Ldc/squareup/okhttp3/internal/io/FileSystem;->appendingSink(Ljava/io/File;)Ldc/squareup/okio/Sink;

    move-result-object v0

    .line 2
    new-instance v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$2;

    invoke-direct {v1, p0, v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$2;-><init>(Ldc/squareup/okhttp3/internal/cache/DiskLruCache;Ldc/squareup/okio/Sink;)V

    .line 8
    invoke-static {v1}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Sink;)Ldc/squareup/okio/BufferedSink;

    move-result-object v0

    return-object v0
.end method

.method private processJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-interface {v0, v1}, Ldc/squareup/okhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    .line 4
    iget-object v2, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 5
    :goto_1
    iget v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v3, v2, :cond_0

    .line 6
    iget-wide v4, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->size:J

    iget-object v2, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->size:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 9
    iput-object v2, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    .line 10
    :goto_2
    iget v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v3, v2, :cond_2

    .line 11
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v4, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v4, v4, v3

    invoke-interface {v2, v4}, Ldc/squareup/okhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 12
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v4, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v4, v4, v3

    invoke-interface {v2, v4}, Ldc/squareup/okhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 14
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private readJournal()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", "

    .line 1
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v1, v2}, Ldc/squareup/okhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Ldc/squareup/okio/Source;

    move-result-object v1

    invoke-static {v1}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Source;)Ldc/squareup/okio/BufferedSource;

    move-result-object v1

    .line 3
    :try_start_0
    invoke-interface {v1}, Ldc/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-interface {v1}, Ldc/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-interface {v1}, Ldc/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-interface {v1}, Ldc/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-interface {v1}, Ldc/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    .line 8
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "1"

    .line 9
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->appVersion:I

    .line 10
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ""

    .line 12
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    .line 20
    :goto_0
    :try_start_1
    invoke-interface {v1}, Ldc/squareup/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :catch_0
    :try_start_2
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    .line 29
    invoke-interface {v1}, Ldc/squareup/okio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->rebuildJournal()V

    goto :goto_1

    .line 32
    :cond_0
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->newJournalWriter()Ldc/squareup/okio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    :goto_1
    invoke-static {v1}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    .line 36
    :cond_1
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected journal header: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 58
    invoke-static {v1}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 59
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "unexpected journal line: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

    add-int/lit8 v4, v1, 0x1

    .line 7
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 10
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    if-ne v1, v5, :cond_1

    const-string v5, "REMOVE"

    .line 11
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 12
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 16
    :cond_0
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 19
    :cond_1
    iget-object v5, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    if-nez v5, :cond_2

    .line 21
    new-instance v5, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    invoke-direct {v5, p0, v4}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;-><init>(Ldc/squareup/okhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V

    .line 22
    iget-object v6, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v4, 0x5

    if-eq v0, v3, :cond_3

    if-ne v1, v4, :cond_3

    const-string v6, "CLEAN"

    .line 25
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 27
    iput-boolean v1, v5, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    const/4 v0, 0x0

    .line 28
    iput-object v0, v5, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    .line 29
    invoke-virtual {v5, p1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    if-ne v1, v4, :cond_4

    const-string v4, "DIRTY"

    .line 30
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 31
    new-instance p1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    invoke-direct {p1, p0, v5}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;-><init>(Ldc/squareup/okhttp3/internal/cache/DiskLruCache;Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;)V

    iput-object p1, v5, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    goto :goto_0

    :cond_4
    if-ne v0, v3, :cond_5

    const/4 v0, 0x4

    if-ne v1, v0, :cond_5

    const-string v0, "READ"

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_0
    return-void

    .line 35
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->initialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->closed:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    new-array v2, v2, [Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 7
    iget-object v4, v4, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {v4}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->abort()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->trimToSize()V

    .line 12
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    invoke-interface {v0}, Ldc/squareup/okio/Sink;->close()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    .line 14
    iput-boolean v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 15
    :cond_3
    :goto_1
    :try_start_1
    iput-boolean v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method declared-synchronized completeEdit(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    .line 2
    iget-object v1, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    if-ne v1, p1, :cond_a

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 7
    iget-boolean v2, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 8
    :goto_0
    iget v3, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_2

    .line 9
    iget-object v3, p1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    .line 13
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v4, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Ldc/squareup/okhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 14
    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->abort()V

    .line 16
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_2
    :goto_1
    iget p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v1, p1, :cond_5

    .line 26
    iget-object p1, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object p1, p1, v1

    if-eqz p2, :cond_3

    .line 28
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    invoke-interface {v2, p1}, Ldc/squareup/okhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 29
    iget-object v2, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v2, v2, v1

    .line 30
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    invoke-interface {v3, p1, v2}, Ldc/squareup/okhttp3/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 31
    iget-object p1, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    aget-wide v3, p1, v1

    .line 32
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    invoke-interface {p1, v2}, Ldc/squareup/okhttp3/internal/io/FileSystem;->size(Ljava/io/File;)J

    move-result-wide v5

    .line 33
    iget-object p1, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    aput-wide v5, p1, v1

    .line 34
    iget-wide v7, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->size:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->size:J

    goto :goto_2

    .line 37
    :cond_3
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    invoke-interface {v2, p1}, Ldc/squareup/okhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 41
    :cond_5
    iget p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    const/4 p1, 0x0

    .line 42
    iput-object p1, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    .line 43
    iget-boolean p1, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    or-int/2addr p1, p2

    const/16 v2, 0xa

    const/16 v3, 0x20

    if-eqz p1, :cond_6

    .line 44
    iput-boolean v1, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    .line 45
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    const-string v1, "CLEAN"

    invoke-interface {p1, v1}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object p1

    invoke-interface {p1, v3}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 46
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    iget-object v1, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {p1, v1}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    .line 47
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    invoke-virtual {v0, p1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->writeLengths(Ldc/squareup/okio/BufferedSink;)V

    .line 48
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    invoke-interface {p1, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    if-eqz p2, :cond_7

    .line 50
    iget-wide p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->nextSequenceNumber:J

    iput-wide p1, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->sequenceNumber:J

    goto :goto_3

    .line 53
    :cond_6
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    iget-object p2, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    const-string p2, "REMOVE"

    invoke-interface {p1, p2}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object p1

    invoke-interface {p1, v3}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 55
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    iget-object p2, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {p1, p2}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    .line 56
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    invoke-interface {p1, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 58
    :cond_7
    :goto_3
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    invoke-interface {p1}, Ldc/squareup/okio/BufferedSink;->flush()V

    .line 60
    iget-wide p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->size:J

    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->maxSize:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_8

    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 61
    :cond_8
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    monitor-exit p0

    return-void

    .line 62
    :cond_a
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public delete()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->close()V

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-interface {v0, v1}, Ldc/squareup/okhttp3/internal/io/FileSystem;->deleteContents(Ljava/io/File;)V

    return-void
.end method

.method public edit(Ljava/lang/String;)Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;J)Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object p1

    return-object p1
.end method

.method declared-synchronized edit(Ljava/lang/String;J)Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 4
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 5
    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    .line 7
    iget-wide v1, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->sequenceNumber:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v1, p2

    if-eqz v4, :cond_1

    :cond_0
    monitor-exit p0

    return-object v3

    :cond_1
    if-eqz v0, :cond_2

    .line 11
    :try_start_1
    iget-object p2, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    monitor-exit p0

    return-object v3

    .line 14
    :cond_2
    :try_start_2
    iget-boolean p2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z

    if-eqz p2, :cond_3

    goto :goto_0

    .line 25
    :cond_3
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    const-string p3, "DIRTY"

    invoke-interface {p2, p3}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object p2

    const/16 p3, 0x20

    invoke-interface {p2, p3}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    move-result-object p2

    invoke-interface {p2, p1}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object p2

    const/16 p3, 0xa

    invoke-interface {p2, p3}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 26
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    invoke-interface {p2}, Ldc/squareup/okio/BufferedSink;->flush()V

    .line 28
    iget-boolean p2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->hasJournalErrors:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_4

    monitor-exit p0

    return-object v3

    :cond_4
    if-nez v0, :cond_5

    .line 33
    :try_start_3
    new-instance v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    invoke-direct {v0, p0, p1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;-><init>(Ldc/squareup/okhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_5
    new-instance p1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    invoke-direct {p1, p0, v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;-><init>(Ldc/squareup/okhttp3/internal/cache/DiskLruCache;Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;)V

    .line 37
    iput-object p1, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    .line 38
    :cond_6
    :goto_0
    :try_start_4
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized evictAll()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 3
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-array v1, v1, [Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 4
    invoke-virtual {p0, v4}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->removeEntry(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iput-boolean v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 4
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->trimToSize()V

    .line 5
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    invoke-interface {v0}, Ldc/squareup/okio/BufferedSink;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 3
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 4
    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 6
    iget-boolean v2, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->snapshot()Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-object v1

    .line 11
    :cond_1
    :try_start_1
    iget v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    .line 12
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    const-string v2, "READ"

    invoke-interface {v1, v2}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v1

    const/16 v2, 0x20

    invoke-interface {v1, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, p1}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object p1

    const/16 v1, 0xa

    invoke-interface {p1, v1}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 13
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v0

    :cond_3
    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized getMaxSize()J
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->maxSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initialize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1}, Ldc/squareup/okhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Ldc/squareup/okhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1}, Ldc/squareup/okhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Ldc/squareup/okhttp3/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 18
    :cond_2
    :goto_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Ldc/squareup/okhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 20
    :try_start_2
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->readJournal()V

    .line 21
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->processJournal()V

    .line 22
    iput-boolean v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->initialized:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 25
    :try_start_3
    invoke-static {}, Ldc/squareup/okhttp3/internal/platform/Platform;->get()Ldc/squareup/okhttp3/internal/platform/Platform;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", removing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    .line 27
    invoke-virtual {v2, v4, v3, v0}, Ldc/squareup/okhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x0

    .line 34
    :try_start_4
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->delete()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 36
    :try_start_5
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->closed:Z

    goto :goto_1

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->closed:Z

    .line 37
    throw v1

    .line 40
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->rebuildJournal()V

    .line 42
    iput-boolean v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->initialized:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method journalRebuildRequired()Z
    .locals 2

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 2
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method declared-synchronized rebuildJournal()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ldc/squareup/okio/Sink;->close()V

    .line 5
    :cond_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-interface {v0, v1}, Ldc/squareup/okhttp3/internal/io/FileSystem;->sink(Ljava/io/File;)Ldc/squareup/okio/Sink;

    move-result-object v0

    invoke-static {v0}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Sink;)Ldc/squareup/okio/BufferedSink;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    .line 7
    invoke-interface {v0, v1}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    const-string v1, "1"

    .line 8
    invoke-interface {v0, v1}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 9
    iget v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->appVersion:I

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Ldc/squareup/okio/BufferedSink;->writeDecimalLong(J)Ldc/squareup/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 10
    iget v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Ldc/squareup/okio/BufferedSink;->writeDecimalLong(J)Ldc/squareup/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 11
    invoke-interface {v0, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 13
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    .line 14
    iget-object v4, v3, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    const/16 v5, 0x20

    if-eqz v4, :cond_1

    const-string v4, "DIRTY"

    .line 15
    invoke-interface {v0, v4}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v4

    invoke-interface {v4, v5}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 16
    iget-object v3, v3, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {v0, v3}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    .line 17
    invoke-interface {v0, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    goto :goto_0

    :cond_1
    const-string v4, "CLEAN"

    .line 19
    invoke-interface {v0, v4}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v4

    invoke-interface {v4, v5}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 20
    iget-object v4, v3, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {v0, v4}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    .line 21
    invoke-virtual {v3, v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->writeLengths(Ldc/squareup/okio/BufferedSink;)V

    .line 22
    invoke-interface {v0, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 26
    :cond_2
    :try_start_2
    invoke-interface {v0}, Ldc/squareup/okio/Sink;->close()V

    .line 29
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Ldc/squareup/okhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Ldc/squareup/okhttp3/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 32
    :cond_3
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Ldc/squareup/okhttp3/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 33
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1}, Ldc/squareup/okhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 35
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->newJournalWriter()Ldc/squareup/okio/BufferedSink;

    move-result-object v0

    iput-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->hasJournalErrors:Z

    .line 37
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 38
    :try_start_3
    invoke-interface {v0}, Ldc/squareup/okio/Sink;->close()V

    .line 39
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 3
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 4
    invoke-direct {p0, p1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return v0

    .line 7
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->removeEntry(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-wide v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->size:J

    iget-wide v3, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->maxSize:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method removeEntry(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->detach()V

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v0, v1, :cond_1

    .line 6
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v2, p1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ldc/squareup/okhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 7
    iget-wide v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->size:J

    iget-object v3, p1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    aget-wide v4, v3, v0

    sub-long/2addr v1, v4

    iput-wide v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->size:J

    const-wide/16 v1, 0x0

    .line 8
    aput-wide v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    .line 12
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalWriter:Ldc/squareup/okio/BufferedSink;

    const-string v2, "REMOVE"

    invoke-interface {v0, v2}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v0

    const/16 v2, 0x20

    invoke-interface {v0, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    move-result-object v0

    iget-object v2, p1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-interface {v0, v2}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Ldc/squareup/okio/BufferedSink;->writeByte(I)Ldc/squareup/okio/BufferedSink;

    .line 13
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 16
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return v1
.end method

.method public declared-synchronized setMaxSize(J)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-wide p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->maxSize:J

    .line 2
    iget-boolean p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->initialized:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object p2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 2
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized snapshots()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Snapshot;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 2
    new-instance v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$3;

    invoke-direct {v0, p0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$3;-><init>(Ldc/squareup/okhttp3/internal/cache/DiskLruCache;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method trimToSize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-wide v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->size:J

    iget-wide v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->maxSize:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    .line 3
    invoke-virtual {p0, v0}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->removeEntry(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z

    return-void
.end method
