.class Lio/dcloud/sdk/base/dcloud/ADHandler$e;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/sdk/base/dcloud/ADHandler$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$g;)Lio/dcloud/sdk/base/dcloud/ADHandler$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/dcloud/sdk/base/dcloud/ADHandler$h<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/base/dcloud/ADHandler$g;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    iput-object p2, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 2

    .line 1
    invoke-static {}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->b:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    invoke-static {v0, p1, v1}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;Ljava/io/File;Lio/dcloud/sdk/base/dcloud/ADHandler$g;)V

    return-void
.end method

.method public find()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->a:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->a()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic operate(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;->a(Ljava/io/File;)V

    return-void
.end method
