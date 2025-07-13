.class Lio/dcloud/sdk/activity/a/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/activity/a/a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/activity/a/a;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/activity/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/activity/a/a$a;->a:Lio/dcloud/sdk/activity/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/dcloud/sdk/activity/a/a$a;->a:Lio/dcloud/sdk/activity/a/a;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lio/dcloud/sdk/activity/a/a;->a(I)V

    .line 2
    iget-object p1, p0, Lio/dcloud/sdk/activity/a/a$a;->a:Lio/dcloud/sdk/activity/a/a;

    iget-object p1, p1, Lio/dcloud/sdk/activity/a/a;->b:Lio/dcloud/sdk/activity/a/a$b;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, v0}, Lio/dcloud/sdk/activity/a/a$b;->onItemClick(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lio/dcloud/sdk/activity/a/a$a;->a:Lio/dcloud/sdk/activity/a/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/dcloud/sdk/activity/a/a;->a(Lio/dcloud/sdk/activity/a/a;Z)Z

    return-void
.end method
