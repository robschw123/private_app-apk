.class Lio/dcloud/sdk/base/dcloud/j$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/j$d;->a:Lio/dcloud/sdk/base/dcloud/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/j$d;->a:Lio/dcloud/sdk/base/dcloud/j;

    iget-object p1, p1, Lio/dcloud/sdk/base/dcloud/j;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    iput-object p2, p1, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->a:Landroid/view/MotionEvent;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/j$d;->a:Lio/dcloud/sdk/base/dcloud/j;

    iget-object p1, p1, Lio/dcloud/sdk/base/dcloud/j;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    iput-object p2, p1, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->b:Landroid/view/MotionEvent;

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
