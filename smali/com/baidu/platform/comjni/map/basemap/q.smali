.class Lcom/baidu/platform/comjni/map/basemap/q;
.super Ljava/lang/Object;
.source "NABaseMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Z

.field final synthetic d:Landroid/os/Bundle;

.field final synthetic e:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;


# direct methods
.method constructor <init>(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;JJZLandroid/os/Bundle;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/baidu/platform/comjni/map/basemap/q;->e:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    iput-wide p2, p0, Lcom/baidu/platform/comjni/map/basemap/q;->a:J

    iput-wide p4, p0, Lcom/baidu/platform/comjni/map/basemap/q;->b:J

    iput-boolean p6, p0, Lcom/baidu/platform/comjni/map/basemap/q;->c:Z

    iput-object p7, p0, Lcom/baidu/platform/comjni/map/basemap/q;->d:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v0, 0x0

    .line 464
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/q;->e:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-static {v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/q;->e:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    iget-wide v2, p0, Lcom/baidu/platform/comjni/map/basemap/q;->a:J

    invoke-static {v1, v2, v3}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 467
    iget-object v2, p0, Lcom/baidu/platform/comjni/map/basemap/q;->e:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-static {v2}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/baidu/platform/comjni/map/basemap/q;->a:J

    iget-wide v7, p0, Lcom/baidu/platform/comjni/map/basemap/q;->b:J

    iget-boolean v9, p0, Lcom/baidu/platform/comjni/map/basemap/q;->c:Z

    iget-object v10, p0, Lcom/baidu/platform/comjni/map/basemap/q;->d:Landroid/os/Bundle;

    invoke-static/range {v2 .. v10}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;JJJZLandroid/os/Bundle;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/q;->e:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-static {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_1
    throw v1

    :catch_0
    nop

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/q;->e:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-static {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_2
    return-void
.end method
