.class Lio/dcloud/h/c/b/b/b$c$b;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/h/c/b/b/b$c;->c(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/h/c/b/b/b$c;


# direct methods
.method constructor <init>(Lio/dcloud/h/c/b/b/b$c;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/dcloud/h/c/b/b/b$c$b;->a:Lio/dcloud/h/c/b/b/b$c;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "Content-Type"

    const-string v0, "application/x-www-form-urlencoded;charset=utf-8"

    .line 2
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
