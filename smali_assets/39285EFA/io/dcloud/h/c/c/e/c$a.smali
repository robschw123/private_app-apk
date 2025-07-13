.class Lio/dcloud/h/c/c/e/c$a;
.super Lio/dcloud/h/c/c/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/h/c/c/e/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lio/dcloud/h/c/c/e/c;


# direct methods
.method constructor <init>(Lio/dcloud/h/c/c/e/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/h/c/c/e/c$a;->b:Lio/dcloud/h/c/c/e/c;

    invoke-direct {p0, p2}, Lio/dcloud/h/c/c/b/a$a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lio/dcloud/h/c/c/e/c$a;->b:Lio/dcloud/h/c/c/e/c;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/h/c/c/e/c;->b(ILjava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/c/c/e/c$a;->b:Lio/dcloud/h/c/c/e/c;

    invoke-virtual {v0, p1}, Lio/dcloud/h/c/c/e/c;->a(Lorg/json/JSONObject;)V

    return-void
.end method
