.class Lio/dcloud/h/a/c/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/h/a/c/a;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lio/dcloud/h/a/c/a;


# direct methods
.method constructor <init>(Lio/dcloud/h/a/c/a;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/h/a/c/a$a;->c:Lio/dcloud/h/a/c/a;

    iput p2, p0, Lio/dcloud/h/a/c/a$a;->a:I

    iput-object p3, p0, Lio/dcloud/h/a/c/a$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/dcloud/h/a/c/a$a;->c:Lio/dcloud/h/a/c/a;

    iget-object v0, v0, Lio/dcloud/h/a/c/a;->a:Lio/dcloud/h/a/c/a$c;

    iget v1, p0, Lio/dcloud/h/a/c/a$a;->a:I

    iget-object v2, p0, Lio/dcloud/h/a/c/a$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lio/dcloud/h/a/c/a$c;->onError(ILjava/lang/String;)V

    return-void
.end method
