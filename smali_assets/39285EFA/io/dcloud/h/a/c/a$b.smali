.class Lio/dcloud/h/a/c/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/h/a/c/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/h/a/c/a;


# direct methods
.method constructor <init>(Lio/dcloud/h/a/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/h/a/c/a$b;->a:Lio/dcloud/h/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/a/c/a$b;->a:Lio/dcloud/h/a/c/a;

    iget-object v0, v0, Lio/dcloud/h/a/c/a;->a:Lio/dcloud/h/a/c/a$c;

    invoke-interface {v0}, Lio/dcloud/h/a/c/a$c;->onSplashAdLoad()V

    return-void
.end method
