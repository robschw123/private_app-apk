.class Lio/dcloud/sdk/base/dcloud/ADHandler$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Lio/dcloud/sdk/base/dcloud/ADHandler$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/base/dcloud/ADHandler$j;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/base/dcloud/ADHandler$j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$a;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$a;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$j;

    invoke-interface {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$j;->execute()V

    return-void
.end method
