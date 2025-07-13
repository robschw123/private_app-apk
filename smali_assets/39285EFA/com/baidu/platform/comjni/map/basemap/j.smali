.class Lcom/baidu/platform/comjni/map/basemap/j;
.super Ljava/lang/Object;
.source "NABaseMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;


# direct methods
.method constructor <init>(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;Z)V
    .locals 0

    .line 1287
    iput-object p1, p0, Lcom/baidu/platform/comjni/map/basemap/j;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    iput-boolean p2, p0, Lcom/baidu/platform/comjni/map/basemap/j;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1290
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/j;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-static {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->d(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1295
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/j;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-static {v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1297
    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/j;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-static {v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 1298
    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/j;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-static {v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;)J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/baidu/platform/comjni/map/basemap/j;->a:Z

    invoke-static {v1, v2, v3, v4}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;JZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 1305
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/j;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-static {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_2
    throw v1

    :catch_0
    nop

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/j;->b:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-static {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_3
    return-void
.end method
