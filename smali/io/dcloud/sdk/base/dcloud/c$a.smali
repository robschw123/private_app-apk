.class Lio/dcloud/sdk/base/dcloud/c$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/c;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/base/dcloud/c;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/base/dcloud/c;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/c$a;->a:Lio/dcloud/sdk/base/dcloud/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x2710

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/c$a;->a:Lio/dcloud/sdk/base/dcloud/c;

    invoke-static {p1}, Lio/dcloud/sdk/base/dcloud/c;->a(Lio/dcloud/sdk/base/dcloud/c;)V

    :goto_0
    return-void
.end method
