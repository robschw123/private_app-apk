.class public final Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation


# instance fields
.field private done:Z

.field final entry:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

.field final synthetic this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

.field final written:[Z


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/internal/cache/DiskLruCache;Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    .line 3
    iget-boolean p2, p2, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v1, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    if-ne v1, p0, :cond_0

    .line 6
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->completeEdit(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;Z)V

    :cond_0
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    .line 9
    monitor-exit v0

    return-void

    .line 10
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abortUnlessCommitted()V
    .locals 3

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v1, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p0, :cond_0

    .line 4
    :try_start_1
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->completeEdit(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public commit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v1, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    const/4 v2, 0x1

    if-ne v1, p0, :cond_0

    .line 6
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1, p0, v2}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->completeEdit(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;Z)V

    .line 8
    :cond_0
    iput-boolean v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    .line 9
    monitor-exit v0

    return-void

    .line 10
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method detach()V
    .locals 3

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v0, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    if-ne v0, p0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    iget v2, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v0, v2, :cond_0

    .line 4
    :try_start_0
    iget-object v1, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v2, v2, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ldc/squareup/okhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    const/4 v1, 0x0

    iput-object v1, v0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    :cond_1
    return-void
.end method

.method public newSink(I)Ldc/squareup/okio/Sink;
    .locals 4

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_2

    .line 5
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-object v2, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;

    if-eq v2, p0, :cond_0

    .line 6
    invoke-static {}, Ldc/squareup/okio/Okio;->blackhole()Ldc/squareup/okio/Sink;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 8
    :cond_0
    iget-boolean v2, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    if-nez v2, :cond_1

    .line 9
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->written:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    .line 11
    :cond_1
    iget-object v1, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object p1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    iget-object v1, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    invoke-interface {v1, p1}, Ldc/squareup/okhttp3/internal/io/FileSystem;->sink(Ljava/io/File;)Ldc/squareup/okio/Sink;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    new-instance v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor$1;

    invoke-direct {v1, p0, p1}, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor$1;-><init>(Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;Ldc/squareup/okio/Sink;)V

    monitor-exit v0

    return-object v1

    .line 19
    :catch_0
    invoke-static {}, Ldc/squareup/okio/Okio;->blackhole()Ldc/squareup/okio/Sink;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 42
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public newSource(I)Ldc/squareup/okio/Source;
    .locals 4

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_2

    .line 5
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->entry:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;

    iget-boolean v2, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, p0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    :try_start_1
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Editor;->this$0:Ldc/squareup/okhttp3/internal/cache/DiskLruCache;

    iget-object v2, v2, Ldc/squareup/okhttp3/internal/cache/DiskLruCache;->fileSystem:Ldc/squareup/okhttp3/internal/io/FileSystem;

    iget-object v1, v1, Ldc/squareup/okhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object p1, v1, p1

    invoke-interface {v2, p1}, Ldc/squareup/okhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Ldc/squareup/okio/Source;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p1

    .line 11
    :catch_0
    monitor-exit v0

    return-object v3

    .line 12
    :cond_1
    :goto_0
    monitor-exit v0

    return-object v3

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 23
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
