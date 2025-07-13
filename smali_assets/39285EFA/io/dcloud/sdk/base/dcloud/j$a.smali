.class Lio/dcloud/sdk/base/dcloud/j$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/sdk/base/dcloud/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/j;-><init>(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$g;Landroid/view/ViewGroup;Lio/dcloud/sdk/base/dcloud/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lio/dcloud/sdk/base/dcloud/j;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/base/dcloud/j;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/j$a;->b:Lio/dcloud/sdk/base/dcloud/j;

    iput-object p2, p0, Lio/dcloud/sdk/base/dcloud/j$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiver(Lorg/json/JSONObject;)V
    .locals 3

    const-string p1, "shutao"

    const-string v0, "listenADReceive----------------onReceiver-"

    .line 1
    invoke-static {p1, v0}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/j$a;->b:Lio/dcloud/sdk/base/dcloud/j;

    iget-boolean v1, v0, Lio/dcloud/sdk/base/dcloud/j;->f:Z

    if-eqz v1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v1, v0, Lio/dcloud/sdk/base/dcloud/j;->h:Landroid/content/Context;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/j;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    iget-object v2, v0, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->h:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$g;)Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    .line 6
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/j$a;->b:Lio/dcloud/sdk/base/dcloud/j;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/j;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/j$a;->b:Lio/dcloud/sdk/base/dcloud/j;

    invoke-static {v0}, Lio/dcloud/sdk/base/dcloud/j;->a(Lio/dcloud/sdk/base/dcloud/j;)V

    const-string v0, "initAdMainView"

    .line 8
    invoke-static {p1, v0}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "setImageDownlaodListen"

    .line 10
    invoke-static {p1, v0}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/j$a;->b:Lio/dcloud/sdk/base/dcloud/j;

    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/j$a;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lio/dcloud/sdk/base/dcloud/j;->a(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
