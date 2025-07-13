.class public abstract Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;
.super Lcom/nostra13/dcloudimageloader/cache/disc/BaseDiscCache;


# static fields
.field private static final INVALID_SIZE:I = -0x1


# instance fields
.field private final cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final lastUsageDates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final sizeLimit:I


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/nostra13/dcloudimageloader/core/DefaultConfigurationFactory;->createFileNameGenerator()Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/nostra13/dcloudimageloader/cache/disc/BaseDiscCache;-><init>(Ljava/io/File;Lcom/nostra13/dcloudimageloader/cache/disc/naming/FileNameGenerator;)V

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    .line 4
    iput p3, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->sizeLimit:I

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->calculateCacheSizeAndFillUsageMap()V

    return-void
.end method

.method static synthetic access$000(Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private calculateCacheSizeAndFillUsageMap()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache$1;

    invoke-direct {v1, p0}, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache$1;-><init>(Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 19
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private removeNext()I
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 11
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-nez v2, :cond_2

    .line 14
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 15
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    goto :goto_0

    .line 17
    :cond_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 18
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-gez v10, :cond_1

    .line 20
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    move-object v3, v5

    goto :goto_0

    .line 24
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-eqz v2, :cond_5

    .line 28
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 29
    invoke-virtual {p0, v2}, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->getSize(Ljava/io/File;)I

    move-result v0

    .line 30
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 31
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 34
    :cond_4
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    return v0

    :catchall_0
    move-exception v0

    .line 35
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3
    invoke-super {p0}, Lcom/nostra13/dcloudimageloader/cache/disc/BaseDiscCache;->clear()V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/nostra13/dcloudimageloader/cache/disc/BaseDiscCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 4
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method protected abstract getSize(Ljava/io/File;)I
.end method

.method public put(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->getSize(Ljava/io/File;)I

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    :goto_0
    add-int/2addr v0, p1

    iget v1, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->sizeLimit:I

    if-le v0, v1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->removeNext()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v0, v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    goto :goto_0

    .line 13
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->cacheSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 16
    iget-object v0, p0, Lcom/nostra13/dcloudimageloader/cache/disc/LimitedDiscCache;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
