.class Lcom/baidu/location/c/e$e;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/location/c/e;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/baidu/location/c/e;


# direct methods
.method constructor <init>(Lcom/baidu/location/c/e;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/location/c/e$e;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    sget-boolean v0, Lcom/baidu/location/f;->isServing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/c/e$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c/e;

    iput-object v0, p0, Lcom/baidu/location/c/e$e;->b:Lcom/baidu/location/c/e;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/c/e$e;->b:Lcom/baidu/location/c/e;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/c/e$e;->b:Lcom/baidu/location/c/e;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/location/Location;

    const-string v1, "&og=2"

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/baidu/location/c/e$e;->b:Lcom/baidu/location/c/e;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/location/Location;

    const-string v1, "&og=1"

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;Ljava/lang/String;Landroid/location/Location;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/baidu/location/c/e$e;->b:Lcom/baidu/location/c/e;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/location/Location;

    invoke-static {v0, p1}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;Landroid/location/Location;)V

    :goto_1
    return-void
.end method
