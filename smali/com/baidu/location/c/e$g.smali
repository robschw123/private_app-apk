.class Lcom/baidu/location/c/e$g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/GpsStatus$NmeaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/c/e;


# direct methods
.method private constructor <init>(Lcom/baidu/location/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/e$g;->a:Lcom/baidu/location/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/c/e;Lcom/baidu/location/c/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/e$g;-><init>(Lcom/baidu/location/c/e;)V

    return-void
.end method


# virtual methods
.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/baidu/location/c/e$g;->a:Lcom/baidu/location/c/e;

    invoke-static {p1}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;)Lcom/baidu/location/c/e$e;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/baidu/location/c/e$g;->a:Lcom/baidu/location/c/e;

    invoke-static {p1}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;)Lcom/baidu/location/c/e$e;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Lcom/baidu/location/c/e$e;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/baidu/location/c/e$g;->a:Lcom/baidu/location/c/e;

    invoke-static {p2}, Lcom/baidu/location/c/e;->a(Lcom/baidu/location/c/e;)Lcom/baidu/location/c/e$e;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/location/c/e$e;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
