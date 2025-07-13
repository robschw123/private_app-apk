.class Lio/dcloud/h/a/d/c/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/h/a/d/c/b;->a(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/h/a/d/c/b;


# direct methods
.method constructor <init>(Lio/dcloud/h/a/d/c/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/h/a/d/c/b$a;->a:Lio/dcloud/h/a/d/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/a/d/c/b$a;->a:Lio/dcloud/h/a/d/c/b;

    invoke-static {v0}, Lio/dcloud/h/a/d/c/b;->a(Lio/dcloud/h/a/d/c/b;)Lio/dcloud/h/a/c/a$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/dcloud/h/a/d/c/b$a;->a:Lio/dcloud/h/a/d/c/b;

    invoke-static {v0}, Lio/dcloud/h/a/d/c/b;->a(Lio/dcloud/h/a/d/c/b;)Lio/dcloud/h/a/c/a$c;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/h/a/c/a$c;->b()V

    :cond_0
    return-void
.end method
