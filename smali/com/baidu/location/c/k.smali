.class public Lcom/baidu/location/c/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/c/k$a;
    }
.end annotation


# static fields
.field public static a:J

.field private static b:Lcom/baidu/location/c/k;


# instance fields
.field private c:Landroid/net/wifi/WifiManager;

.field private d:Lcom/baidu/location/c/k$a;

.field private e:Lcom/baidu/location/c/j;

.field private f:J

.field private g:J

.field private h:Z

.field private i:Landroid/net/ConnectivityManager;

.field private j:Landroid/os/Handler;

.field private k:Z

.field private l:J

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c/k;->c:Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/baidu/location/c/k;->d:Lcom/baidu/location/c/k$a;

    iput-object v0, p0, Lcom/baidu/location/c/k;->e:Lcom/baidu/location/c/j;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/baidu/location/c/k;->f:J

    iput-wide v1, p0, Lcom/baidu/location/c/k;->g:J

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/baidu/location/c/k;->h:Z

    iput-object v0, p0, Lcom/baidu/location/c/k;->i:Landroid/net/ConnectivityManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/c/k;->j:Landroid/os/Handler;

    iput-boolean v3, p0, Lcom/baidu/location/c/k;->k:Z

    iput-wide v1, p0, Lcom/baidu/location/c/k;->l:J

    iput-wide v1, p0, Lcom/baidu/location/c/k;->m:J

    return-void
.end method

.method public static declared-synchronized a()Lcom/baidu/location/c/k;
    .locals 2

    const-class v0, Lcom/baidu/location/c/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/location/c/k;->b:Lcom/baidu/location/c/k;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/location/c/k;

    invoke-direct {v1}, Lcom/baidu/location/c/k;-><init>()V

    sput-object v1, Lcom/baidu/location/c/k;->b:Lcom/baidu/location/c/k;

    :cond_0
    sget-object v1, Lcom/baidu/location/c/k;->b:Lcom/baidu/location/c/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(J)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-wide/16 v1, 0xff

    and-long v3, p1, v1

    long-to-int v4, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v4, 0x8

    shr-long v4, p1, v4

    and-long/2addr v4, v1

    long-to-int v5, v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v4, 0x10

    shr-long v4, p1, v4

    and-long/2addr v4, v1

    long-to-int v5, v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v3, 0x18

    shr-long/2addr p1, v3

    and-long/2addr p1, v1

    long-to-int p2, p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static a(Lcom/baidu/location/c/j;Lcom/baidu/location/c/j;)Z
    .locals 6

    sget v0, Lcom/baidu/location/e/k;->az:F

    invoke-static {p0, p1, v0}, Lcom/baidu/location/c/k;->a(Lcom/baidu/location/c/j;Lcom/baidu/location/c/j;F)Z

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/baidu/location/b/b;->c:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const-wide/16 v3, 0x7530

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/baidu/location/c/j;->g()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/baidu/location/c/j;->g()J

    move-result-wide p0

    sub-long/2addr v1, p0

    const-wide/16 p0, 0x1e

    cmp-long v3, v1, p0

    if-lez v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static a(Lcom/baidu/location/c/j;Lcom/baidu/location/c/j;F)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    if-nez p1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object p0, p0, Lcom/baidu/location/c/j;->a:Ljava/util/List;

    iget-object p1, p1, Lcom/baidu/location/c/j;->a:Ljava/util/List;

    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    if-eqz p0, :cond_c

    if-nez p1, :cond_2

    goto :goto_6

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    return v1

    :cond_3
    if-eqz v2, :cond_c

    if-nez v3, :cond_4

    goto :goto_6

    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_b

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    goto :goto_1

    :cond_5
    move-object v6, v7

    :goto_1
    if-nez v6, :cond_6

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v3, :cond_a

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;

    iget-object v9, v9, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    goto :goto_3

    :cond_7
    move-object v9, v7

    :goto_3
    if-nez v9, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_a
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_b
    int-to-float p0, v5

    int-to-float p1, v2

    mul-float p1, p1, p2

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_c

    return v1

    :cond_c
    :goto_6
    return v0
.end method

.method static synthetic a(Lcom/baidu/location/c/k;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/location/c/k;->k:Z

    return p0
.end method

.method static synthetic a(Lcom/baidu/location/c/k;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/c/k;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/location/c/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/c/k;->q()V

    return-void
.end method

.method static synthetic c(Lcom/baidu/location/c/k;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/c/k;->j:Landroid/os/Handler;

    return-object p0
.end method

.method private q()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/location/c/k;->c:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/location/c/k;->a(Landroid/net/wifi/WifiManager;J)Lcom/baidu/location/c/j;

    move-result-object v0

    iget-object v1, v0, Lcom/baidu/location/c/j;->a:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/location/c/k;->e:Lcom/baidu/location/c/j;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/baidu/location/c/j;->a(Lcom/baidu/location/c/j;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iput-object v0, p0, Lcom/baidu/location/c/k;->e:Lcom/baidu/location/c/j;

    :catch_0
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroid/net/wifi/WifiManager;J)Lcom/baidu/location/c/j;
    .locals 4

    new-instance v0, Lcom/baidu/location/c/j;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/location/c/j;-><init>(Ljava/util/List;J)V

    if-eqz p1, :cond_0

    sget v1, Lcom/baidu/location/e/k;->f:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    new-instance v0, Lcom/baidu/location/c/j;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Lcom/baidu/location/c/j;-><init>(Ljava/util/List;J)V

    :cond_0
    return-object v0
.end method

.method public b()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/c/k;->l:J

    return-void
.end method

.method public declared-synchronized c()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/c/k;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/baidu/location/f;->isServing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/baidu/location/c/k;->c:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/baidu/location/c/k$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/baidu/location/c/k$a;-><init>(Lcom/baidu/location/c/k;Lcom/baidu/location/c/k$1;)V

    iput-object v0, p0, Lcom/baidu/location/c/k;->d:Lcom/baidu/location/c/k$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/c/k;->d:Lcom/baidu/location/c/k$a;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    :try_start_4
    iput-boolean v1, p0, Lcom/baidu/location/c/k;->h:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/location/c/k;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/c/k;->d:Lcom/baidu/location/c/k$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baidu/location/c/k;->a:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/baidu/location/c/k;->d:Lcom/baidu/location/c/k$a;

    iput-object v0, p0, Lcom/baidu/location/c/k;->c:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/c/k;->h:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Z
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/c/k;->g:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iput-wide v0, p0, Lcom/baidu/location/c/k;->g:J

    invoke-virtual {p0}, Lcom/baidu/location/c/k;->b()V

    invoke-virtual {p0}, Lcom/baidu/location/c/k;->f()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 12

    iget-object v0, p0, Lcom/baidu/location/c/k;->c:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/c/k;->f:J

    sub-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_4

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/baidu/location/c/k;->l:J

    const-wide/16 v8, 0x1388

    add-long v10, v6, v8

    cmp-long v0, v4, v10

    if-gtz v0, :cond_1

    return v1

    :cond_1
    sget-wide v4, Lcom/baidu/location/c/k;->a:J

    const-wide/16 v10, 0x3e8

    mul-long v4, v4, v10

    sub-long v4, v2, v4

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-gtz v0, :cond_2

    return v1

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v0, v4, :cond_3

    iget-wide v4, p0, Lcom/baidu/location/c/k;->f:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x61a8

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/baidu/location/c/k;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v4, p0, Lcom/baidu/location/c/k;->f:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    iget-wide v6, p0, Lcom/baidu/location/c/k;->l:J

    add-long/2addr v6, v4

    cmp-long v0, v2, v6

    if-gtz v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/baidu/location/c/k;->h()Z

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/baidu/location/c/k;->c:Landroid/net/wifi/WifiManager;

    const-string v1, ""

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-le v0, v2, :cond_1

    iget-object v0, p0, Lcom/baidu/location/c/k;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "&wifio=1"
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    nop

    :catch_0
    :cond_1
    return-object v1
.end method

.method public h()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/c/k;->m:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    const-wide/16 v3, 0x7d0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_0

    return v2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/c/k;->m:J

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/c/k;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/baidu/location/c/k;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget v0, Lcom/baidu/location/e/k;->f:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/baidu/location/c/k;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/c/k;->f:J
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_2
    return v2
.end method

.method public i()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/c/k;->i:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/baidu/location/c/k;->i:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v1, p0, Lcom/baidu/location/c/k;->i:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return v0
.end method

.method public j()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/c/k;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/baidu/location/c/k;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/location/c/k;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/baidu/location/c/k;->n()Lcom/baidu/location/c/j;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/baidu/location/c/j;->e()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :catch_0
    :cond_2
    return v0
.end method

.method public k()Landroid/net/wifi/WifiInfo;
    .locals 5

    const-string v0, ""

    iget-object v1, p0, Lcom/baidu/location/c/k;->c:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    sget v1, Lcom/baidu/location/e/k;->f:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/c/k;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    const/16 v4, -0x64

    if-gt v3, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, ":"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "000000000000"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "020000000000"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    :cond_2
    return-object v2

    :cond_3
    return-object v1

    :catch_0
    :cond_4
    :goto_0
    return-object v2
.end method

.method public l()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/baidu/location/c/k;->a()Lcom/baidu/location/c/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/c/k;->k()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    invoke-static {}, Lcom/baidu/location/c/k;->a()Lcom/baidu/location/c/k;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/location/c/k;->m()Ljava/lang/String;

    move-result-object v5

    if-gez v3, :cond_0

    neg-int v3, v3

    :cond_0
    if-eqz v2, :cond_4

    const/16 v6, 0x64

    if-ge v3, v6, :cond_4

    const-string v6, "020000000000"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "&wf="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v2, "_"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&wf_n=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v5, :cond_3

    const-string v1, "&wf_gw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/c/k;->c:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/net/DhcpInfo;->gateway:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/baidu/location/c/k;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public n()Lcom/baidu/location/c/j;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/k;->e:Lcom/baidu/location/c/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/baidu/location/c/j;->j()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/c/k;->e:Lcom/baidu/location/c/j;

    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/location/c/k;->p()Lcom/baidu/location/c/j;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/baidu/location/c/j;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/k;->e:Lcom/baidu/location/c/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/baidu/location/c/j;->k()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/c/k;->e:Lcom/baidu/location/c/j;

    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/location/c/k;->p()Lcom/baidu/location/c/j;

    move-result-object v0

    return-object v0
.end method

.method public p()Lcom/baidu/location/c/j;
    .locals 3

    iget-object v0, p0, Lcom/baidu/location/c/k;->c:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-wide v1, p0, Lcom/baidu/location/c/k;->f:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/location/c/k;->a(Landroid/net/wifi/WifiManager;J)Lcom/baidu/location/c/j;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/location/c/k;->a(Landroid/net/wifi/WifiManager;J)Lcom/baidu/location/c/j;

    move-result-object v0

    return-object v0
.end method
