.class Lio/dcloud/h/c/c/b/b/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/h/c/c/c/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/h/c/c/b/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/h/c/c/b/b/b$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/dcloud/h/c/c/b/b/b$b;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/dcloud/h/c/c/c/a$a;)V
    .locals 0

    return-void
.end method

.method public b(Lio/dcloud/h/c/c/c/a$a;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/dcloud/h/c/c/c/a$a;->b()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/h/c/c/b/b/b$b;->a:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/h/c/c/b/b/b$b;->b:Ljava/util/HashMap;

    invoke-static {p1, v0, v1}, Lio/dcloud/h/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "uniAD-Commit_F"

    .line 5
    invoke-static {p1, v0}, Lio/dcloud/sdk/poly/base/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onNoOnePicked()V
    .locals 0

    return-void
.end method
