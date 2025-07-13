.class Lio/dcloud/e/e/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/e/e/a;->a(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lio/dcloud/e/e/a;


# direct methods
.method constructor <init>(Lio/dcloud/e/e/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/e/e/a$a;->b:Lio/dcloud/e/e/a;

    iput-object p2, p0, Lio/dcloud/e/e/a$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p2, [Ljava/lang/Object;

    const/4 p1, 0x0

    .line 2
    aget-object p1, p2, p1

    check-cast p1, Lio/dcloud/common/DHInterface/IApp;

    const/4 v0, 0x2

    .line 3
    aget-object p2, p2, v0

    check-cast p2, [B

    .line 4
    iget-object v0, p0, Lio/dcloud/e/e/a$a;->b:Lio/dcloud/e/e/a;

    iget-object v1, p0, Lio/dcloud/e/e/a$a;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1, p2}, Lio/dcloud/e/e/a;->a(Lio/dcloud/e/e/a;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;[B)V

    const/4 p1, 0x0

    return-object p1
.end method
