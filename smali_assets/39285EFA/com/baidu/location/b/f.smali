.class Lcom/baidu/location/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/baidu/location/b/e$d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/b/e;


# direct methods
.method constructor <init>(Lcom/baidu/location/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/b/f;->a:Lcom/baidu/location/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/location/b/e$d;Lcom/baidu/location/b/e$d;)I
    .locals 2

    iget v0, p1, Lcom/baidu/location/b/e$d;->b:I

    iget v1, p2, Lcom/baidu/location/b/e$d;->b:I

    if-le v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget p1, p1, Lcom/baidu/location/b/e$d;->b:I

    iget p2, p2, Lcom/baidu/location/b/e$d;->b:I

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/baidu/location/b/e$d;

    check-cast p2, Lcom/baidu/location/b/e$d;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/location/b/f;->a(Lcom/baidu/location/b/e$d;Lcom/baidu/location/b/e$d;)I

    move-result p1

    return p1
.end method
