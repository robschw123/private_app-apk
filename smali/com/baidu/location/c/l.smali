.class Lcom/baidu/location/c/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/baidu/location/c/k$a;


# direct methods
.method constructor <init>(Lcom/baidu/location/c/k$a;Z)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/l;->b:Lcom/baidu/location/c/k$a;

    iput-boolean p2, p0, Lcom/baidu/location/c/l;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/baidu/location/c/l;->b:Lcom/baidu/location/c/k$a;

    iget-object v0, v0, Lcom/baidu/location/c/k$a;->a:Lcom/baidu/location/c/k;

    invoke-static {v0}, Lcom/baidu/location/c/k;->a(Lcom/baidu/location/c/k;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c/l;->b:Lcom/baidu/location/c/k$a;

    iget-object v0, v0, Lcom/baidu/location/c/k$a;->a:Lcom/baidu/location/c/k;

    iget-boolean v1, p0, Lcom/baidu/location/c/l;->a:Z

    invoke-static {v0, v1}, Lcom/baidu/location/c/k;->a(Lcom/baidu/location/c/k;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/c/l;->b:Lcom/baidu/location/c/k$a;

    iget-object v0, v0, Lcom/baidu/location/c/k$a;->a:Lcom/baidu/location/c/k;

    invoke-static {v0}, Lcom/baidu/location/c/k;->b(Lcom/baidu/location/c/k;)V

    invoke-static {}, Lcom/baidu/location/b/p;->c()Lcom/baidu/location/b/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/p;->i()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/baidu/location/b/u;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    invoke-static {}, Lcom/baidu/location/b/z;->a()Lcom/baidu/location/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/z;->c()V

    :cond_1
    return-void
.end method
