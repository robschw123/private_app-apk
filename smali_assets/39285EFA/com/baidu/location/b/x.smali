.class public Lcom/baidu/location/b/x;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/b/x$b;,
        Lcom/baidu/location/b/x$a;
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/location/b/x$b;

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/b/x;->b:J

    iput-wide v0, p0, Lcom/baidu/location/b/x;->c:J

    return-void
.end method

.method public static a()Lcom/baidu/location/b/x;
    .locals 1

    invoke-static {}, Lcom/baidu/location/b/x$a;->a()Lcom/baidu/location/b/x;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/location/GnssNavigationMessage;J)V
    .locals 2

    invoke-static {}, Lcom/baidu/location/b/s;->a()Lcom/baidu/location/b/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/location/b/s;->a(Landroid/location/GnssNavigationMessage;J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/b/x;->b:J

    iput-wide p2, p0, Lcom/baidu/location/b/x;->c:J

    return-void
.end method

.method public b()V
    .locals 5

    iget-wide v0, p0, Lcom/baidu/location/b/x;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/b/x;->b:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x4e20

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    iget-object v0, p0, Lcom/baidu/location/b/x;->a:Lcom/baidu/location/b/x$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/b/x$b;

    invoke-direct {v0, p0}, Lcom/baidu/location/b/x$b;-><init>(Lcom/baidu/location/b/x;)V

    iput-object v0, p0, Lcom/baidu/location/b/x;->a:Lcom/baidu/location/b/x$b;

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/b/x;->a:Lcom/baidu/location/b/x$b;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/baidu/location/b/x$b;->b()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/baidu/location/b/s;->a()Lcom/baidu/location/b/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/s;->b()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v2, v4, :cond_1

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/b/x;->a:Lcom/baidu/location/b/x$b;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/location/b/x;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/location/b/x$b;->a(Ljava/lang/String;J)V

    :cond_3
    return-void
.end method
