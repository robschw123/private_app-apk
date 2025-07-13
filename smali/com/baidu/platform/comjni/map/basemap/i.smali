.class Lcom/baidu/platform/comjni/map/basemap/i;
.super Ljava/lang/Object;
.source "NABaseMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;


# direct methods
.method constructor <init>(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1256
    iput-object p1, p0, Lcom/baidu/platform/comjni/map/basemap/i;->c:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    iput-object p2, p0, Lcom/baidu/platform/comjni/map/basemap/i;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/platform/comjni/map/basemap/i;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1259
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/i;->c:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-static {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->d(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1264
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/i;->c:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-static {v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1266
    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/i;->c:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-static {v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 1267
    iget-object v1, p0, Lcom/baidu/platform/comjni/map/basemap/i;->c:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-static {v1}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->b(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/baidu/platform/comjni/map/basemap/i;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/platform/comjni/map/basemap/i;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;JLjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 1274
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/i;->c:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

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
    iget-object v0, p0, Lcom/baidu/platform/comjni/map/basemap/i;->c:Lcom/baidu/platform/comjni/map/basemap/NABaseMap;

    invoke-static {v0}, Lcom/baidu/platform/comjni/map/basemap/NABaseMap;->a(Lcom/baidu/platform/comjni/map/basemap/NABaseMap;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_3
    return-void
.end method
