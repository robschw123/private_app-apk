.class Lio/dcloud/e/b/d$a$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/e/b/d$a;->execute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/dcloud/e/b/d$a;


# direct methods
.method constructor <init>(Lio/dcloud/e/b/d$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/e/b/d$a$b;->b:Lio/dcloud/e/b/d$a;

    iput-object p2, p0, Lio/dcloud/e/b/d$a$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/e/b/d$a$b;->a:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/adapter/io/DHFile;->delete(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "console"

    if-eqz v0, :cond_0

    const-string v0, "rm file success"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "rm file fail"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_0
    iget-object v0, p0, Lio/dcloud/e/b/d$a$b;->b:Lio/dcloud/e/b/d$a;

    iget-object v0, v0, Lio/dcloud/e/b/d$a;->b:Lio/dcloud/e/b/d;

    iget-object v0, v0, Lio/dcloud/e/b/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 7
    iget-object v0, p0, Lio/dcloud/e/b/d$a$b;->b:Lio/dcloud/e/b/d$a;

    iget-object v0, v0, Lio/dcloud/e/b/d$a;->b:Lio/dcloud/e/b/d;

    invoke-virtual {v0}, Lio/dcloud/e/b/d;->a()V

    return-void
.end method
