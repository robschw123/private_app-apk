.class Lio/dcloud/sdk/base/dcloud/j$e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/j;->a(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/base/dcloud/j;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/base/dcloud/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/j$e;->a:Lio/dcloud/sdk/base/dcloud/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/j$e;->a:Lio/dcloud/sdk/base/dcloud/j;

    iget-object v0, p1, Lio/dcloud/sdk/base/dcloud/j;->d:Landroid/view/View;

    invoke-static {p1}, Lio/dcloud/sdk/base/dcloud/j;->c(Lio/dcloud/sdk/base/dcloud/j;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/j$e;->a:Lio/dcloud/sdk/base/dcloud/j;

    invoke-static {p1}, Lio/dcloud/sdk/base/dcloud/j;->b(Lio/dcloud/sdk/base/dcloud/j;)V

    return-void
.end method
