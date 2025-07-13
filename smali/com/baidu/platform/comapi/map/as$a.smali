.class Lcom/baidu/platform/comapi/map/as$a;
.super Ljava/lang/Thread;
.source "VulkanRenderControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platform/comapi/map/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platform/comapi/map/as;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/platform/comapi/map/as;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Lcom/baidu/platform/comapi/map/aq;

.field private n:Landroid/view/SurfaceHolder;

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/Runnable;

.field private q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private r:J


# direct methods
.method public constructor <init>(Lcom/baidu/platform/comapi/map/as;Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/platform/comapi/map/as;",
            ">;)V"
        }
    .end annotation

    .line 333
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/as$a;->a:Lcom/baidu/platform/comapi/map/as;

    .line 334
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 327
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/as$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 669
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/as$a;->f:Z

    .line 671
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/as$a;->h:Z

    .line 678
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/as$a;->o:Ljava/util/ArrayList;

    .line 681
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/as$a;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    .line 682
    iput-wide v0, p0, Lcom/baidu/platform/comapi/map/as$a;->r:J

    .line 335
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/as$a;->d:Z

    .line 336
    iput p1, p0, Lcom/baidu/platform/comapi/map/as$a;->i:I

    .line 337
    iput p1, p0, Lcom/baidu/platform/comapi/map/as$a;->j:I

    const/4 p1, 0x1

    .line 338
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/as$a;->l:Z

    .line 339
    iput p1, p0, Lcom/baidu/platform/comapi/map/as$a;->k:I

    .line 340
    iput-object p2, p0, Lcom/baidu/platform/comapi/map/as$a;->b:Ljava/lang/ref/WeakReference;

    .line 341
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/platform/comapi/map/as;

    .line 342
    iget-object p2, p1, Lcom/baidu/platform/comapi/map/as;->a:Lcom/baidu/platform/comapi/map/aq;

    iput-object p2, p0, Lcom/baidu/platform/comapi/map/as$a;->m:Lcom/baidu/platform/comapi/map/aq;

    .line 343
    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/as;->a()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/platform/comapi/map/as$a;->n:Landroid/view/SurfaceHolder;

    .line 344
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/platform/comapi/map/VulkanDetect;->getNativeWindow(Landroid/view/Surface;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/baidu/platform/comapi/map/as$a;->r:J

    const/16 p1, 0xa

    .line 345
    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/map/as$a;->setPriority(I)V

    return-void
.end method

.method private f()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 398
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/as$a;->d:Z

    if-nez v0, :cond_9

    .line 407
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as$a;->c:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 409
    :goto_1
    :try_start_1
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/as$a;->h()Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 410
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 417
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/as$a;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 418
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/as$a;->f:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 419
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/as$a;->g:Z

    if-nez v1, :cond_2

    .line 421
    iput-boolean v2, p0, Lcom/baidu/platform/comapi/map/as$a;->g:Z

    .line 422
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/as$a;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 425
    :cond_2
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/as$a;->a:Lcom/baidu/platform/comapi/map/as;

    invoke-static {v1}, Lcom/baidu/platform/comapi/map/as;->a(Lcom/baidu/platform/comapi/map/as;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 426
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/as$a;->h:Z

    if-nez v1, :cond_3

    .line 427
    iput-boolean v2, p0, Lcom/baidu/platform/comapi/map/as$a;->h:Z

    .line 428
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/as$a;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 431
    :cond_3
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/as$a;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_2

    .line 433
    :cond_4
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/as$a;->d:Z

    if-eqz v1, :cond_5

    .line 434
    monitor-exit v0

    goto/16 :goto_4

    .line 436
    :cond_5
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/as$a;->a:Lcom/baidu/platform/comapi/map/as;

    invoke-static {v1}, Lcom/baidu/platform/comapi/map/as;->a(Lcom/baidu/platform/comapi/map/as;)Z

    .line 437
    iget v1, p0, Lcom/baidu/platform/comapi/map/as$a;->i:I

    .line 438
    iget v2, p0, Lcom/baidu/platform/comapi/map/as$a;->j:I

    .line 439
    iget-object v3, p0, Lcom/baidu/platform/comapi/map/as$a;->a:Lcom/baidu/platform/comapi/map/as;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/baidu/platform/comapi/map/as;->a(Lcom/baidu/platform/comapi/map/as;Z)Z

    .line 440
    iput-boolean v4, p0, Lcom/baidu/platform/comapi/map/as$a;->h:Z

    .line 441
    iput-boolean v4, p0, Lcom/baidu/platform/comapi/map/as$a;->l:Z

    .line 442
    iget-boolean v3, p0, Lcom/baidu/platform/comapi/map/as$a;->f:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/baidu/platform/comapi/map/as$a;->g:Z

    if-eqz v3, :cond_6

    .line 444
    iput-boolean v4, p0, Lcom/baidu/platform/comapi/map/as$a;->g:Z

    .line 446
    :cond_6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 467
    :try_start_2
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as$a;->p:Ljava/lang/Runnable;

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 469
    iput-object v3, p0, Lcom/baidu/platform/comapi/map/as$a;->p:Ljava/lang/Runnable;

    goto :goto_3

    :cond_7
    move-object v0, v3

    :goto_3
    if-lez v1, :cond_0

    if-lez v2, :cond_0

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 475
    iget-object v3, p0, Lcom/baidu/platform/comapi/map/as$a;->m:Lcom/baidu/platform/comapi/map/aq;

    invoke-interface {v3, p0}, Lcom/baidu/platform/comapi/map/aq;->a(Ljava/lang/Object;)V

    if-eqz v0, :cond_8

    .line 483
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 487
    :cond_8
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as$a;->a:Lcom/baidu/platform/comapi/map/as;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/as;->b(Lcom/baidu/platform/comapi/map/as;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/as;

    .line 488
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/as;->e()I

    move-result v0

    .line 489
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/16 v5, 0x3c

    if-ge v0, v5, :cond_0

    if-lez v0, :cond_0

    const/16 v5, 0x3e8

    .line 491
    div-int/2addr v5, v0

    int-to-long v5, v5

    sub-long/2addr v3, v1

    sub-long/2addr v5, v3

    const-wide/16 v0, 0x1

    cmp-long v2, v5, v0

    if-lez v2, :cond_0

    .line 493
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as$a;->c:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 494
    :try_start_3
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/as$a;->c:Ljava/lang/Object;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 495
    monitor-exit v0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_1
    move-exception v1

    .line 446
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_9
    :goto_4
    const-string v0, "VulkanSurfaceView"

    const-string v1, "destroySurface"

    .line 506
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_2
    move-exception v0

    const-string v1, "VulkanSurfaceView"

    const-string v2, "destroySurface"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method private g()Z
    .locals 3

    .line 511
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/as$a;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 515
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/as$a;->e:Z

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/as$a;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as$a;->a:Lcom/baidu/platform/comapi/map/as;

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/as;->a(Lcom/baidu/platform/comapi/map/as;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 519
    :cond_1
    iget v0, p0, Lcom/baidu/platform/comapi/map/as$a;->i:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/baidu/platform/comapi/map/as$a;->j:I

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/as$a;->l:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/baidu/platform/comapi/map/as$a;->k:I

    if-ne v0, v2, :cond_3

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method private h()Ljava/lang/Runnable;
    .locals 2

    .line 658
    monitor-enter p0

    .line 659
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as$a;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as$a;->o:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    monitor-exit p0

    return-object v0

    .line 663
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as$a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 540
    :try_start_0
    iget v1, p0, Lcom/baidu/platform/comapi/map/as$a;->k:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 541
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(I)V
    .locals 2

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    .line 530
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/as$a;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 531
    :try_start_0
    iput p1, p0, Lcom/baidu/platform/comapi/map/as$a;->k:I

    if-ne p1, v0, :cond_0

    .line 533
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/as$a;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 535
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 528
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "renderMode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 7

    .line 552
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as$a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 553
    :try_start_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/platform/comapi/map/VulkanDetect;->getNativeWindow(Landroid/view/Surface;)J

    move-result-wide v1

    .line 555
    iget-wide v3, p0, Lcom/baidu/platform/comapi/map/as$a;->r:J

    const/4 v5, 0x1

    cmp-long v6, v3, v1

    if-eqz v6, :cond_0

    .line 556
    iput-wide v1, p0, Lcom/baidu/platform/comapi/map/as$a;->r:J

    .line 557
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/as$a;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 559
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/as$a;->m:Lcom/baidu/platform/comapi/map/aq;

    invoke-interface {v1, p1, v5, v5, v5}, Lcom/baidu/platform/comapi/map/aq;->a(Landroid/view/SurfaceHolder;III)V

    .line 561
    :cond_0
    iput-boolean v5, p0, Lcom/baidu/platform/comapi/map/as$a;->f:Z

    .line 562
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/as$a;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 563
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Landroid/view/SurfaceHolder;II)V
    .locals 2

    .line 613
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/as$a;->c:Ljava/lang/Object;

    monitor-enter p1

    .line 614
    :try_start_0
    iput p2, p0, Lcom/baidu/platform/comapi/map/as$a;->i:I

    .line 615
    iput p3, p0, Lcom/baidu/platform/comapi/map/as$a;->j:I

    .line 617
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as$a;->a:Lcom/baidu/platform/comapi/map/as;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/platform/comapi/map/as;->a(Lcom/baidu/platform/comapi/map/as;Z)Z

    .line 618
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as$a;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 620
    :goto_0
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/as$a;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/as$a;->isAlive()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 622
    :try_start_1
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as$a;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 624
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as$a;->m:Lcom/baidu/platform/comapi/map/aq;

    invoke-interface {v0, p2, p3}, Lcom/baidu/platform/comapi/map/aq;->a(II)V

    .line 628
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/as$a;->a:Lcom/baidu/platform/comapi/map/as;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/baidu/platform/comapi/map/as;->a(Lcom/baidu/platform/comapi/map/as;Z)Z

    .line 629
    iget-object p2, p0, Lcom/baidu/platform/comapi/map/as$a;->c:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 630
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    .line 583
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as$a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 588
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 589
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 592
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/as$a;->l:Z

    .line 593
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/as$a;->p:Ljava/lang/Runnable;

    .line 595
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/as$a;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 596
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 2

    .line 545
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as$a;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 546
    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/as$a;->l:Z

    .line 547
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/as$a;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 548
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 567
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as$a;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 568
    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/as$a;->f:Z

    .line 569
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/as$a;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 571
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/as$a;->g:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/as$a;->isAlive()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 573
    :try_start_1
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/as$a;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 575
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 578
    :cond_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/as$a;->m:Lcom/baidu/platform/comapi/map/aq;

    invoke-interface {v1, p1}, Lcom/baidu/platform/comapi/map/aq;->a(Landroid/view/SurfaceHolder;)V

    .line 579
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1

    .line 652
    monitor-enter p0

    .line 653
    :try_start_0
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as$a;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()V
    .locals 2

    .line 600
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as$a;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 601
    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/as$a;->e:Z

    .line 602
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()V
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as$a;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 607
    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/as$a;->e:Z

    .line 608
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/as$a;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 609
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()V
    .locals 2

    .line 636
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/as$a;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 637
    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/as$a;->d:Z

    .line 638
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/as$a;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 639
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/as$a;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 643
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 639
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 3

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VkThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/as$a;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/as$a;->setName(Ljava/lang/String;)V

    .line 353
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/as$a;->f()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 355
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method
