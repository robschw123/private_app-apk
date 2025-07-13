.class Lio/dcloud/b$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/b$a;


# direct methods
.method constructor <init>(Lio/dcloud/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/b$a$a;->a:Lio/dcloud/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/b$a$a;->a:Lio/dcloud/b$a;

    iget-object v1, v0, Lio/dcloud/b$a;->b:Lio/dcloud/b;

    iget-object v0, v0, Lio/dcloud/b$a;->a:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Lio/dcloud/b;->onRuntimeCreate(Landroid/os/Bundle;)V

    return-void
.end method
