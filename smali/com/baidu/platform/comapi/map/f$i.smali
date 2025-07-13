.class Lcom/baidu/platform/comapi/map/f$i;
.super Ljava/lang/Thread;
.source "GLRenderControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platform/comapi/map/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private s:Z

.field private t:Ljava/lang/Runnable;

.field private u:Lcom/baidu/platform/comapi/map/f$h;

.field private v:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/platform/comapi/map/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/platform/comapi/map/f;",
            ">;)V"
        }
    .end annotation

    .line 1245
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1851
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/f$i;->r:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 1852
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/f$i;->s:Z

    const/4 v1, 0x0

    .line 1853
    iput-object v1, p0, Lcom/baidu/platform/comapi/map/f$i;->t:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 1246
    iput v1, p0, Lcom/baidu/platform/comapi/map/f$i;->l:I

    .line 1247
    iput v1, p0, Lcom/baidu/platform/comapi/map/f$i;->m:I

    .line 1248
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/f$i;->o:Z

    .line 1249
    iput v0, p0, Lcom/baidu/platform/comapi/map/f$i;->n:I

    .line 1250
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->p:Z

    .line 1251
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/f$i;->v:Ljava/lang/ref/WeakReference;

    const/16 p1, 0xa

    .line 1252
    invoke-virtual {p0, p1}, Lcom/baidu/platform/comapi/map/f$i;->setPriority(I)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/platform/comapi/map/f$i;Z)Z
    .locals 0

    .line 1243
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/f$i;->b:Z

    return p1
.end method

.method private i()V
    .locals 1

    .line 1276
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/f$i;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1277
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/f$i;->i:Z

    .line 1278
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/f$i;->u:Lcom/baidu/platform/comapi/map/f$h;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/f$h;->e()V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    .line 1287
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/f$i;->h:Z

    if-eqz v0, :cond_0

    .line 1288
    iget-object v0, p0, Lcom/baidu/platform/comapi/map/f$i;->u:Lcom/baidu/platform/comapi/map/f$h;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/f$h;->f()V

    const/4 v0, 0x0

    .line 1289
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/f$i;->h:Z

    .line 1290
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/map/f$j;->b(Lcom/baidu/platform/comapi/map/f$i;)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1295
    new-instance v0, Lcom/baidu/platform/comapi/map/f$h;

    iget-object v2, v1, Lcom/baidu/platform/comapi/map/f$i;->v:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Lcom/baidu/platform/comapi/map/f$h;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Lcom/baidu/platform/comapi/map/f$i;->u:Lcom/baidu/platform/comapi/map/f$h;

    const/4 v0, 0x0

    .line 1296
    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/f$i;->h:Z

    .line 1297
    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/f$i;->i:Z

    .line 1298
    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/f$i;->p:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    const/4 v15, 0x0

    .line 1316
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v16

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 1318
    :goto_2
    :try_start_1
    iget-boolean v2, v1, Lcom/baidu/platform/comapi/map/f$i;->a:Z

    if-eqz v2, :cond_0

    .line 1319
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 1628
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v2

    monitor-enter v2

    .line 1629
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/f$i;->i()V

    .line 1630
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/f$i;->j()V

    .line 1631
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1322
    :cond_0
    :try_start_3
    iget-object v2, v1, Lcom/baidu/platform/comapi/map/f$i;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1323
    iget-object v2, v1, Lcom/baidu/platform/comapi/map/f$i;->r:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/Runnable;

    goto/16 :goto_7

    .line 1329
    :cond_1
    iget-boolean v2, v1, Lcom/baidu/platform/comapi/map/f$i;->d:Z

    iget-boolean v0, v1, Lcom/baidu/platform/comapi/map/f$i;->c:Z

    if-eq v2, v0, :cond_2

    .line 1331
    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/f$i;->d:Z

    .line 1332
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    .line 1339
    :goto_3
    iget-boolean v2, v1, Lcom/baidu/platform/comapi/map/f$i;->k:Z

    if-eqz v2, :cond_3

    .line 1343
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/f$i;->i()V

    .line 1344
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/f$i;->j()V

    const/4 v2, 0x0

    .line 1345
    iput-boolean v2, v1, Lcom/baidu/platform/comapi/map/f$i;->k:Z

    const/4 v5, 0x1

    :cond_3
    if-eqz v3, :cond_4

    .line 1351
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/f$i;->i()V

    .line 1352
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/f$i;->j()V

    const/4 v3, 0x0

    :cond_4
    if-eqz v0, :cond_5

    .line 1357
    iget-boolean v2, v1, Lcom/baidu/platform/comapi/map/f$i;->i:Z

    if-eqz v2, :cond_5

    .line 1361
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/f$i;->i()V

    :cond_5
    if-eqz v0, :cond_7

    .line 1365
    iget-boolean v0, v1, Lcom/baidu/platform/comapi/map/f$i;->h:Z

    if-eqz v0, :cond_7

    .line 1366
    iget-object v0, v1, Lcom/baidu/platform/comapi/map/f$i;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/f;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_4

    .line 1368
    :cond_6
    invoke-static {v0}, Lcom/baidu/platform/comapi/map/f;->g(Lcom/baidu/platform/comapi/map/f;)Z

    move-result v0

    :goto_4
    if-nez v0, :cond_7

    .line 1370
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/f$i;->j()V

    .line 1378
    :cond_7
    iget-boolean v0, v1, Lcom/baidu/platform/comapi/map/f$i;->e:Z

    if-nez v0, :cond_9

    iget-boolean v0, v1, Lcom/baidu/platform/comapi/map/f$i;->g:Z

    if-nez v0, :cond_9

    .line 1382
    iget-boolean v0, v1, Lcom/baidu/platform/comapi/map/f$i;->i:Z

    if-eqz v0, :cond_8

    .line 1383
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/f$i;->i()V

    :cond_8
    const/4 v0, 0x1

    .line 1385
    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/f$i;->g:Z

    const/4 v0, 0x0

    .line 1386
    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/f$i;->f:Z

    .line 1387
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1391
    :cond_9
    iget-boolean v0, v1, Lcom/baidu/platform/comapi/map/f$i;->e:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v1, Lcom/baidu/platform/comapi/map/f$i;->g:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 1395
    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/f$i;->g:Z

    .line 1396
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_a
    if-eqz v4, :cond_b

    const/4 v0, 0x0

    .line 1403
    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/f$i;->p:Z

    const/4 v0, 0x1

    .line 1405
    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/f$i;->q:Z

    .line 1406
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v4, 0x0

    .line 1409
    :cond_b
    iget-object v0, v1, Lcom/baidu/platform/comapi/map/f$i;->t:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    const/4 v2, 0x0

    .line 1411
    iput-object v2, v1, Lcom/baidu/platform/comapi/map/f$i;->t:Ljava/lang/Runnable;

    move-object v6, v0

    .line 1415
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/f$i;->l()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1418
    iget-boolean v0, v1, Lcom/baidu/platform/comapi/map/f$i;->h:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    if-nez v0, :cond_e

    if-eqz v5, :cond_d

    const/4 v5, 0x0

    goto :goto_5

    .line 1423
    :cond_d
    :try_start_4
    iget-object v0, v1, Lcom/baidu/platform/comapi/map/f$i;->u:Lcom/baidu/platform/comapi/map/f$h;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/f$h;->a()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    const/4 v0, 0x1

    .line 1428
    :try_start_5
    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/f$i;->h:Z

    .line 1431
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v8, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    .line 1425
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/platform/comapi/map/f$j;->b(Lcom/baidu/platform/comapi/map/f$i;)V

    .line 1426
    throw v0

    .line 1435
    :cond_e
    :goto_5
    iget-boolean v0, v1, Lcom/baidu/platform/comapi/map/f$i;->h:Z

    if-eqz v0, :cond_f

    iget-boolean v0, v1, Lcom/baidu/platform/comapi/map/f$i;->i:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    .line 1436
    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/f$i;->i:Z

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    .line 1442
    :cond_f
    iget-boolean v0, v1, Lcom/baidu/platform/comapi/map/f$i;->i:Z

    if-eqz v0, :cond_21

    .line 1443
    iget-boolean v0, v1, Lcom/baidu/platform/comapi/map/f$i;->s:Z

    if-eqz v0, :cond_10

    .line 1445
    iget v13, v1, Lcom/baidu/platform/comapi/map/f$i;->l:I

    .line 1446
    iget v14, v1, Lcom/baidu/platform/comapi/map/f$i;->m:I

    const/4 v0, 0x1

    .line 1447
    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/f$i;->p:Z

    const/4 v0, 0x0

    .line 1456
    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/f$i;->s:Z

    const/4 v0, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x1

    goto :goto_6

    :cond_10
    const/4 v0, 0x0

    .line 1458
    :goto_6
    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/f$i;->o:Z

    .line 1459
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1460
    iget-boolean v0, v1, Lcom/baidu/platform/comapi/map/f$i;->p:Z

    if-eqz v0, :cond_11

    const/4 v12, 0x1

    .line 1487
    :cond_11
    :goto_7
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    if-eqz v15, :cond_12

    .line 1490
    :try_start_6
    invoke-interface {v15}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_12
    if-eqz v9, :cond_14

    .line 1499
    iget-object v0, v1, Lcom/baidu/platform/comapi/map/f$i;->u:Lcom/baidu/platform/comapi/map/f$h;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/f$h;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1500
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v2

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    const/4 v0, 0x1

    .line 1501
    :try_start_7
    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/f$i;->j:Z

    .line 1502
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1503
    monitor-exit v2

    const/4 v9, 0x0

    goto :goto_8

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    .line 1505
    :cond_13
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v2

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    const/4 v0, 0x1

    .line 1506
    :try_start_9
    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/f$i;->j:Z

    .line 1507
    iput-boolean v0, v1, Lcom/baidu/platform/comapi/map/f$i;->f:Z

    .line 1508
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1509
    monitor-exit v2

    const/4 v0, 0x0

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0

    :cond_14
    :goto_8
    if-eqz v10, :cond_15

    .line 1516
    iget-object v0, v1, Lcom/baidu/platform/comapi/map/f$i;->u:Lcom/baidu/platform/comapi/map/f$h;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/f$h;->c()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljavax/microedition/khronos/opengles/GL10;

    const/4 v10, 0x0

    :cond_15
    if-eqz v8, :cond_17

    .line 1525
    iget-object v0, v1, Lcom/baidu/platform/comapi/map/f$i;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/f;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    if-eqz v0, :cond_16

    .line 1530
    :try_start_b
    invoke-static {v0}, Lcom/baidu/platform/comapi/map/f;->h(Lcom/baidu/platform/comapi/map/f;)Lcom/baidu/platform/comapi/map/aq;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/f;->c()I

    move-result v8

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/f;->d()I

    move-result v0

    move/from16 v18, v3

    move/from16 v17, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v8, v0, v4}, Lcom/baidu/platform/comapi/map/aq;->a(Landroid/view/SurfaceHolder;III)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    const-string v0, "GLRenderControl"

    const-string v2, "mRenderer.onSurfaceCreated"

    .line 1533
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catchall_3
    move-exception v0

    const-string v2, "GLRenderControl"

    const-string v3, "mRenderer.onSurfaceCreated"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :cond_16
    move/from16 v18, v3

    move/from16 v17, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9
    const/4 v8, 0x0

    goto :goto_a

    :cond_17
    move/from16 v18, v3

    move/from16 v17, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    if-eqz v11, :cond_19

    .line 1543
    iget-object v0, v1, Lcom/baidu/platform/comapi/map/f$i;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/f;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    if-eqz v0, :cond_18

    .line 1548
    :try_start_d
    invoke-static {v0}, Lcom/baidu/platform/comapi/map/f;->h(Lcom/baidu/platform/comapi/map/f;)Lcom/baidu/platform/comapi/map/aq;

    move-result-object v0

    invoke-interface {v0, v13, v14}, Lcom/baidu/platform/comapi/map/aq;->a(II)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    const-string v0, "GLRenderControl"

    const-string v2, "mRenderer.onSurfaceChanged"

    .line 1551
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :catchall_4
    move-exception v0

    const-string v2, "GLRenderControl"

    const-string v3, "mRenderer.onSurfaceChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :cond_18
    :goto_b
    const/4 v11, 0x0

    .line 1561
    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 1564
    iget-object v0, v1, Lcom/baidu/platform/comapi/map/f$i;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/platform/comapi/map/f;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    if-eqz v0, :cond_1b

    .line 1568
    :try_start_f
    invoke-static {v0}, Lcom/baidu/platform/comapi/map/f;->h(Lcom/baidu/platform/comapi/map/f;)Lcom/baidu/platform/comapi/map/aq;

    move-result-object v3

    invoke-interface {v3, v7}, Lcom/baidu/platform/comapi/map/aq;->a(Ljava/lang/Object;)V

    if-eqz v6, :cond_1a

    .line 1570
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    const/4 v6, 0x0

    .line 1573
    :cond_1a
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/f;->e()I

    move-result v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_c

    :catchall_5
    move-exception v0

    .line 1576
    :try_start_10
    throw v0

    :cond_1b
    const/16 v0, 0x3c

    .line 1582
    :goto_c
    iget-object v3, v1, Lcom/baidu/platform/comapi/map/f$i;->u:Lcom/baidu/platform/comapi/map/f$h;

    invoke-virtual {v3}, Lcom/baidu/platform/comapi/map/f$h;->d()I

    move-result v3

    const/16 v4, 0x3000

    if-eq v3, v4, :cond_1d

    const/16 v4, 0x300e

    if-eq v3, v4, :cond_1c

    const-string v4, "GLThread"

    const-string v2, "eglSwapBuffers"

    .line 1597
    invoke-static {v4, v2, v3}, Lcom/baidu/platform/comapi/map/f$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1599
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v2

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    const/4 v3, 0x1

    .line 1600
    :try_start_11
    iput-boolean v3, v1, Lcom/baidu/platform/comapi/map/f$i;->f:Z

    .line 1601
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 1602
    monitor-exit v2

    goto :goto_d

    :catchall_6
    move-exception v0

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :try_start_12
    throw v0

    :cond_1c
    const/4 v3, 0x1

    const/16 v18, 0x1

    goto :goto_d

    :cond_1d
    const/4 v3, 0x1

    :goto_d
    if-eqz v12, :cond_1e

    const/4 v4, 0x1

    const/4 v12, 0x0

    goto :goto_e

    :cond_1e
    move/from16 v4, v17

    .line 1613
    :goto_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_1f

    if-lez v0, :cond_1f

    const/16 v1, 0x3e8

    .line 1615
    div-int/2addr v1, v0

    int-to-long v0, v1

    sub-long v2, v2, v19

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    cmp-long v16, v0, v2

    if-lez v16, :cond_1f

    .line 1617
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v2

    monitor-enter v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 1618
    :try_start_13
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 1619
    monitor-exit v2

    goto :goto_f

    :catchall_7
    move-exception v0

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :try_start_14
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    :cond_1f
    :goto_f
    const/4 v0, 0x0

    move-object/from16 v1, p0

    move/from16 v3, v18

    goto/16 :goto_1

    :cond_20
    if-eqz v6, :cond_21

    :try_start_15
    const-string v0, "GLRenderControl"

    const-string v1, "Warning, !readyToDraw() but waiting for draw finished! Early reporting draw finished."

    .line 1467
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    const/4 v6, 0x0

    .line 1485
    :cond_21
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    const/4 v0, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_2

    :catchall_8
    move-exception v0

    .line 1487
    monitor-exit v16
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    :try_start_16
    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    :catchall_9
    move-exception v0

    .line 1628
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v1

    monitor-enter v1

    .line 1629
    :try_start_17
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/f$i;->i()V

    .line 1630
    invoke-direct/range {p0 .. p0}, Lcom/baidu/platform/comapi/map/f$i;->j()V

    .line 1631
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    throw v0

    :catchall_a
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    goto :goto_11

    :goto_10
    throw v0

    :goto_11
    goto :goto_10
.end method

.method private l()Z
    .locals 2

    .line 1640
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/f$i;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/f$i;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/f$i;->f:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/baidu/platform/comapi/map/f$i;->l:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/baidu/platform/comapi/map/f$i;->m:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/f$i;->o:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/baidu/platform/comapi/map/f$i;->n:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public a(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1648
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    monitor-enter v0

    .line 1649
    :try_start_0
    iput p1, p0, Lcom/baidu/platform/comapi/map/f$i;->n:I

    .line 1650
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1651
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1646
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "renderMode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(II)V
    .locals 1

    .line 1764
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    monitor-enter v0

    .line 1765
    :try_start_0
    iput p1, p0, Lcom/baidu/platform/comapi/map/f$i;->l:I

    .line 1766
    iput p2, p0, Lcom/baidu/platform/comapi/map/f$i;->m:I

    const/4 p1, 0x1

    .line 1767
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/f$i;->s:Z

    .line 1768
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/f$i;->o:Z

    const/4 p1, 0x0

    .line 1769
    iput-boolean p1, p0, Lcom/baidu/platform/comapi/map/f$i;->q:Z

    .line 1776
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    if-ne p1, p0, :cond_0

    .line 1777
    monitor-exit v0

    return-void

    .line 1780
    :cond_0
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1783
    :goto_0
    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/f$i;->b:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/f$i;->d:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/f$i;->q:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/f$i;->a()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 1788
    :try_start_1
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1790
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1793
    :cond_1
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

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    .line 1668
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    monitor-enter v0

    .line 1673
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1674
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 1677
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->p:Z

    .line 1678
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->o:Z

    const/4 v1, 0x0

    .line 1679
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->q:Z

    .line 1680
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/f$i;->t:Ljava/lang/Runnable;

    .line 1682
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1683
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()Z
    .locals 1

    .line 1636
    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/f$i;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/platform/comapi/map/f$i;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/f$i;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()I
    .locals 2

    .line 1655
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    monitor-enter v0

    .line 1656
    :try_start_0
    iget v1, p0, Lcom/baidu/platform/comapi/map/f$i;->n:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1657
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1826
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    monitor-enter v0

    .line 1827
    :try_start_0
    iget-object v1, p0, Lcom/baidu/platform/comapi/map/f$i;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1828
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1829
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1824
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "r must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()V
    .locals 2

    .line 1661
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1662
    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->o:Z

    .line 1663
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1664
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

    .line 1687
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1691
    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->e:Z

    const/4 v1, 0x0

    .line 1692
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->j:Z

    .line 1693
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1694
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->g:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->j:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1696
    :try_start_1
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1698
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1701
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public e()V
    .locals 2

    .line 1705
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1709
    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->e:Z

    .line 1710
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1711
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->g:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1713
    :try_start_1
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1715
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1718
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public f()V
    .locals 2

    .line 1722
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1726
    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->c:Z

    .line 1727
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1728
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->b:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1733
    :try_start_1
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1735
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1738
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public g()V
    .locals 3

    .line 1742
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 1746
    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->c:Z

    const/4 v2, 0x1

    .line 1747
    iput-boolean v2, p0, Lcom/baidu/platform/comapi/map/f$i;->o:Z

    .line 1748
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->q:Z

    .line 1749
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1750
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->b:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->d:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1755
    :try_start_1
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1757
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1760
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public h()V
    .locals 2

    .line 1799
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1800
    :try_start_0
    iput-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->a:Z

    .line 1801
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1802
    :goto_0
    iget-boolean v1, p0, Lcom/baidu/platform/comapi/map/f$i;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1804
    :try_start_1
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1806
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1809
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public run()V
    .locals 3

    .line 1257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/baidu/platform/comapi/map/f$i;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/platform/comapi/map/f$i;->setName(Ljava/lang/String;)V

    .line 1263
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/platform/comapi/map/f$i;->k()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1267
    :catch_0
    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/platform/comapi/map/f$j;->a(Lcom/baidu/platform/comapi/map/f$i;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/baidu/platform/comapi/map/f;->m()Lcom/baidu/platform/comapi/map/f$j;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/baidu/platform/comapi/map/f$j;->a(Lcom/baidu/platform/comapi/map/f$i;)V

    throw v0

    :goto_0
    return-void
.end method
