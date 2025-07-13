.class Lio/dcloud/h/c/c/e/a$b;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/h/c/c/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/h/c/c/e/a;


# direct methods
.method public constructor <init>(Lio/dcloud/h/c/c/e/a;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/h/c/c/e/a$b;->a:Lio/dcloud/h/c/c/e/a;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lio/dcloud/h/c/c/e/a$b;->a:Lio/dcloud/h/c/c/e/a;

    invoke-static {p1}, Lio/dcloud/h/c/c/e/a;->a(Lio/dcloud/h/c/c/e/a;)V

    return-void
.end method
