.class Lcom/baidu/platform/comapi/util/b;
.super Ljava/lang/Object;
.source "BMEventBus.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/platform/comapi/util/a$a;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/baidu/platform/comapi/util/a;


# direct methods
.method constructor <init>(Lcom/baidu/platform/comapi/util/a;Lcom/baidu/platform/comapi/util/a$a;Ljava/lang/Object;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/baidu/platform/comapi/util/b;->c:Lcom/baidu/platform/comapi/util/a;

    iput-object p2, p0, Lcom/baidu/platform/comapi/util/b;->a:Lcom/baidu/platform/comapi/util/a$a;

    iput-object p3, p0, Lcom/baidu/platform/comapi/util/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/baidu/platform/comapi/util/b;->c:Lcom/baidu/platform/comapi/util/a;

    iget-object v1, p0, Lcom/baidu/platform/comapi/util/b;->a:Lcom/baidu/platform/comapi/util/a$a;

    iget-object v2, p0, Lcom/baidu/platform/comapi/util/b;->b:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/baidu/platform/comapi/util/a;->a(Lcom/baidu/platform/comapi/util/a;Lcom/baidu/platform/comapi/util/a$b;Ljava/lang/Object;)V

    return-void
.end method
