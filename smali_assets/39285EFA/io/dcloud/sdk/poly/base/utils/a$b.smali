.class Lio/dcloud/sdk/poly/base/utils/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/poly/base/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:D

.field private b:D

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/sdk/poly/base/utils/a$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(DDLjava/lang/String;)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lio/dcloud/sdk/poly/base/utils/a$b;->a:D

    .line 3
    iput-wide p3, p0, Lio/dcloud/sdk/poly/base/utils/a$b;->b:D

    .line 4
    iput-object p5, p0, Lio/dcloud/sdk/poly/base/utils/a$b;->c:Ljava/lang/String;

    return-void
.end method

.method public a(D)Z
    .locals 3

    .line 5
    iget-wide v0, p0, Lio/dcloud/sdk/poly/base/utils/a$b;->a:D

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_0

    iget-wide v0, p0, Lio/dcloud/sdk/poly/base/utils/a$b;->b:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
