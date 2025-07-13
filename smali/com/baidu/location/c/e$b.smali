.class Lcom/baidu/location/c/e$b;
.super Landroid/location/GnssNavigationMessage$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field public a:I

.field final synthetic b:Lcom/baidu/location/c/e;


# direct methods
.method private constructor <init>(Lcom/baidu/location/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/e$b;->b:Lcom/baidu/location/c/e;

    invoke-direct {p0}, Landroid/location/GnssNavigationMessage$Callback;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/baidu/location/c/e$b;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/c/e;Lcom/baidu/location/c/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/e$b;-><init>(Lcom/baidu/location/c/e;)V

    return-void
.end method


# virtual methods
.method public onGnssNavigationMessageReceived(Landroid/location/GnssNavigationMessage;)V
    .locals 5

    iget-object v0, p0, Lcom/baidu/location/c/e$b;->b:Lcom/baidu/location/c/e;

    invoke-static {v0}, Lcom/baidu/location/c/e;->e(Lcom/baidu/location/c/e;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    invoke-static {}, Lcom/baidu/location/b/z;->a()Lcom/baidu/location/b/z;

    move-result-object v0

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/baidu/location/c/e$b;->b:Lcom/baidu/location/c/e;

    invoke-static {v1}, Lcom/baidu/location/c/e;->e(Lcom/baidu/location/c/e;)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    :goto_0
    invoke-virtual {v0, p1, v1, v2}, Lcom/baidu/location/b/z;->a(Landroid/location/GnssNavigationMessage;J)V

    return-void
.end method

.method public onStatusChanged(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/c/e$b;->a:I

    return-void
.end method
