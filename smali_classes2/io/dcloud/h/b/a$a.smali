.class Lio/dcloud/h/b/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/h/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/h/b/a;


# direct methods
.method constructor <init>(Lio/dcloud/h/b/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/h/b/a$a;->a:Lio/dcloud/h/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/dcloud/h/b/a$a;->a:Lio/dcloud/h/b/a;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/dcloud/h/b/a$a;->a:Lio/dcloud/h/b/a;

    invoke-static {v1}, Lio/dcloud/h/b/a;->a(Lio/dcloud/h/b/a;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-object v2

    .line 5
    :cond_0
    iget-object v1, p0, Lio/dcloud/h/b/a$a;->a:Lio/dcloud/h/b/a;

    invoke-static {v1}, Lio/dcloud/h/b/a;->b(Lio/dcloud/h/b/a;)V

    .line 6
    iget-object v1, p0, Lio/dcloud/h/b/a$a;->a:Lio/dcloud/h/b/a;

    invoke-static {v1}, Lio/dcloud/h/b/a;->e(Lio/dcloud/h/b/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lio/dcloud/h/b/a$a;->a:Lio/dcloud/h/b/a;

    invoke-static {v1}, Lio/dcloud/h/b/a;->f(Lio/dcloud/h/b/a;)V

    .line 8
    iget-object v1, p0, Lio/dcloud/h/b/a$a;->a:Lio/dcloud/h/b/a;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lio/dcloud/h/b/a;->a(Lio/dcloud/h/b/a;I)I

    .line 10
    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/dcloud/h/b/a$a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
