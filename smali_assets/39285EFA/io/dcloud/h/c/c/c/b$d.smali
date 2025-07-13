.class Lio/dcloud/h/c/c/c/b$d;
.super Ljava/util/ArrayList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/h/c/c/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lio/dcloud/h/c/c/c/a$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v0, Lio/dcloud/h/c/c/c/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    sget-object v2, Lio/dcloud/h/c/c/c/a$a$a;->c:Lio/dcloud/h/c/c/c/a$a$a;

    .line 5
    sget-object v3, Lio/dcloud/h/c/c/c/b;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    sget-object v2, Lio/dcloud/h/c/c/c/a$a$a;->b:Lio/dcloud/h/c/c/c/a$a$a;

    goto :goto_1

    .line 11
    :cond_1
    sget-object v2, Lio/dcloud/h/c/c/c/a$a$a;->a:Lio/dcloud/h/c/c/c/a$a$a;

    .line 19
    :cond_2
    :goto_1
    new-instance v3, Lio/dcloud/h/c/c/c/a$a;

    invoke-direct {v3, v1, v2}, Lio/dcloud/h/c/c/c/a$a;-><init>(Ljava/lang/String;Lio/dcloud/h/c/c/c/a$a$a;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method
