.class Lcom/baidu/location/c;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/baidu/location/LocationClient;


# direct methods
.method constructor <init>(Lcom/baidu/location/LocationClient;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c;->a:Lcom/baidu/location/LocationClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/c;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->h(Lcom/baidu/location/LocationClient;)Lcom/baidu/location/b/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/c;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->i(Lcom/baidu/location/LocationClient;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/e/k;->f(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->h(Lcom/baidu/location/LocationClient;)Lcom/baidu/location/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/e;->a()V

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/c;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->h(Lcom/baidu/location/LocationClient;)Lcom/baidu/location/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/e;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
