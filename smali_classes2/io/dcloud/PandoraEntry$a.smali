.class Lio/dcloud/PandoraEntry$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/PandoraEntry;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/PandoraEntry;


# direct methods
.method constructor <init>(Lio/dcloud/PandoraEntry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/PandoraEntry$a;->a:Lio/dcloud/PandoraEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/PandoraEntry$a;->a:Lio/dcloud/PandoraEntry;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
