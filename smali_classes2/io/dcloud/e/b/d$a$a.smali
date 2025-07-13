.class Lio/dcloud/e/b/d$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/e/b/d$a;->execute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/e/b/d$a;


# direct methods
.method constructor <init>(Lio/dcloud/e/b/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/e/b/d$a$a;->a:Lio/dcloud/e/b/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string p2, "console"

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "nativeApp pull success"

    .line 1
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "nativeApp pull fail"

    .line 5
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :goto_0
    iget-object p1, p0, Lio/dcloud/e/b/d$a$a;->a:Lio/dcloud/e/b/d$a;

    iget-object p1, p1, Lio/dcloud/e/b/d$a;->b:Lio/dcloud/e/b/d;

    iget-object p1, p1, Lio/dcloud/e/b/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 10
    iget-object p1, p0, Lio/dcloud/e/b/d$a$a;->a:Lio/dcloud/e/b/d$a;

    iget-object p1, p1, Lio/dcloud/e/b/d$a;->b:Lio/dcloud/e/b/d;

    invoke-virtual {p1}, Lio/dcloud/e/b/d;->a()V

    const/4 p1, 0x0

    return-object p1
.end method
