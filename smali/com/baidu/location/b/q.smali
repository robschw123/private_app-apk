.class Lcom/baidu/location/b/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/location/b/p;


# direct methods
.method constructor <init>(Lcom/baidu/location/b/p;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/b/q;->a:Lcom/baidu/location/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/b/q;->a:Lcom/baidu/location/b/p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/b/p;->a(Lcom/baidu/location/b/p;Landroid/os/Message;)V

    return-void
.end method
