.class Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/core/module/DCBaseAOLLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lio/dcloud/sdk/core/module/DCBaseAOL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/dcloud/sdk/core/module/DCBaseAOLLoader;Ljava/util/List;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/sdk/core/module/DCBaseAOLLoader;",
            "Ljava/util/List<",
            "+",
            "Lio/dcloud/sdk/core/module/DCBaseAOL;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    .line 3
    iput p3, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->b:I

    .line 4
    iput p4, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->c:I

    .line 5
    iput-object p5, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->d:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->e:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sub slot ads:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/sdk/poly/base/utils/e;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Lio/dcloud/h/c/c/a/c;

    invoke-direct {v0}, Lio/dcloud/h/c/c/a/c;-><init>()V

    .line 2
    iget-object v1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    invoke-virtual {v1}, Lio/dcloud/sdk/core/module/DCBaseAOL;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/dcloud/h/c/c/a/c;->a(Ljava/lang/String;)Lio/dcloud/h/c/c/a/c;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    invoke-virtual {v2}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getSlotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/dcloud/h/c/c/a/c;->c(Ljava/lang/String;)Lio/dcloud/h/c/c/a/c;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    invoke-virtual {v2}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/dcloud/h/c/c/a/c;->b(Ljava/lang/String;)Lio/dcloud/h/c/c/a/c;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    invoke-virtual {v2}, Lio/dcloud/sdk/core/module/DCBaseAOL;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/dcloud/h/c/c/a/c;->d(Ljava/lang/String;)Lio/dcloud/h/c/c/a/c;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    invoke-virtual {v2}, Lio/dcloud/sdk/core/module/a;->k()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/dcloud/h/c/c/a/c;->a(J)Lio/dcloud/h/c/c/a/c;

    .line 3
    iget v1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lio/dcloud/h/c/c/a/c;->a(I)Lio/dcloud/h/c/c/a/c;

    .line 5
    iget-object v1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    invoke-static {v1}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->a(Lio/dcloud/sdk/core/module/DCBaseAOLLoader;)Lio/dcloud/h/c/c/e/a$a;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    iget-object v3, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->e:Ljava/util/List;

    invoke-interface {v1, v2, v3, v0}, Lio/dcloud/h/c/c/e/a$a;->a(Lio/dcloud/sdk/core/module/DCBaseAOLLoader;Ljava/util/List;Lio/dcloud/h/c/c/a/c;)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Lio/dcloud/h/c/c/a/c;->a(I)Lio/dcloud/h/c/c/a/c;

    .line 8
    iget v1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->c:I

    iget-object v2, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/dcloud/h/c/c/a/c;->a(ILjava/lang/String;)Lio/dcloud/h/c/c/a/c;

    .line 9
    iget-object v1, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    invoke-static {v1}, Lio/dcloud/sdk/core/module/DCBaseAOLLoader;->a(Lio/dcloud/sdk/core/module/DCBaseAOLLoader;)Lio/dcloud/h/c/c/e/a$a;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/sdk/core/module/DCBaseAOLLoader$a;->a:Lio/dcloud/sdk/core/module/DCBaseAOLLoader;

    invoke-interface {v1, v2, v0}, Lio/dcloud/h/c/c/e/a$a;->a(Lio/dcloud/sdk/core/module/DCBaseAOLLoader;Lio/dcloud/h/c/c/a/c;)V

    :cond_1
    :goto_0
    return-void
.end method
