.class Lcom/baidu/location/b/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/location/Location;

.field final synthetic b:Lcom/baidu/location/b/h;


# direct methods
.method constructor <init>(Lcom/baidu/location/b/h;Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/b/i;->b:Lcom/baidu/location/b/h;

    iput-object p2, p0, Lcom/baidu/location/b/i;->a:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/b/i;->b:Lcom/baidu/location/b/h;

    iget-object v1, p0, Lcom/baidu/location/b/i;->a:Landroid/location/Location;

    invoke-static {v0, v1}, Lcom/baidu/location/b/h;->a(Lcom/baidu/location/b/h;Landroid/location/Location;)V

    return-void
.end method
