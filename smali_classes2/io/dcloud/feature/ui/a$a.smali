.class Lio/dcloud/feature/ui/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/dcloud/feature/ui/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/feature/ui/a;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/ui/a$a;->a:Lio/dcloud/feature/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/dcloud/feature/ui/c;Lio/dcloud/feature/ui/c;)I
    .locals 3

    .line 1
    iget v0, p1, Lio/dcloud/feature/ui/c;->F:I

    iget v1, p2, Lio/dcloud/feature/ui/c;->F:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 3
    iget-wide v0, p1, Lio/dcloud/feature/ui/c;->v:J

    iget-wide p1, p2, Lio/dcloud/feature/ui/c;->v:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lio/dcloud/feature/ui/c;

    check-cast p2, Lio/dcloud/feature/ui/c;

    invoke-virtual {p0, p1, p2}, Lio/dcloud/feature/ui/a$a;->a(Lio/dcloud/feature/ui/c;Lio/dcloud/feature/ui/c;)I

    move-result p1

    return p1
.end method
