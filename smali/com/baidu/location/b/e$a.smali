.class Lcom/baidu/location/b/e$a;
.super Landroid/telephony/TelephonyManager$CellInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/b/e;


# direct methods
.method private constructor <init>(Lcom/baidu/location/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/b/e$a;->a:Lcom/baidu/location/b/e;

    invoke-direct {p0}, Landroid/telephony/TelephonyManager$CellInfoCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/b/e;Lcom/baidu/location/b/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/b/e$a;-><init>(Lcom/baidu/location/b/e;)V

    return-void
.end method


# virtual methods
.method public onCellInfo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/baidu/location/b/e$a;->a:Lcom/baidu/location/b/e;

    invoke-static {p1}, Lcom/baidu/location/b/e;->g(Lcom/baidu/location/b/e;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/baidu/location/b/e;->b(Lcom/baidu/location/b/e;Z)Z

    iget-object p1, p0, Lcom/baidu/location/b/e$a;->a:Lcom/baidu/location/b/e;

    invoke-static {p1}, Lcom/baidu/location/b/e;->g(Lcom/baidu/location/b/e;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/baidu/location/b/e$a;->a:Lcom/baidu/location/b/e;

    invoke-static {p1}, Lcom/baidu/location/b/e;->c(Lcom/baidu/location/b/e;)Lcom/baidu/location/LocationClientOption;

    move-result-object p1

    iget p1, p1, Lcom/baidu/location/LocationClientOption;->priority:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/baidu/location/b/e$a;->a:Lcom/baidu/location/b/e;

    invoke-static {p1}, Lcom/baidu/location/b/e;->i(Lcom/baidu/location/b/e;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/b/e$a;->a:Lcom/baidu/location/b/e;

    invoke-static {v0}, Lcom/baidu/location/b/e;->i(Lcom/baidu/location/b/e;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
