.class public final Lio/dcloud/h/b/a$e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/h/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:[Ljava/io/InputStream;

.field private final d:[J

.field final synthetic e:Lio/dcloud/h/b/a;


# direct methods
.method private constructor <init>(Lio/dcloud/h/b/a;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .locals 0

    .line 2
    iput-object p1, p0, Lio/dcloud/h/b/a$e;->e:Lio/dcloud/h/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lio/dcloud/h/b/a$e;->a:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lio/dcloud/h/b/a$e;->b:J

    .line 5
    iput-object p5, p0, Lio/dcloud/h/b/a$e;->c:[Ljava/io/InputStream;

    .line 6
    iput-object p6, p0, Lio/dcloud/h/b/a$e;->d:[J

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/h/b/a;Ljava/lang/String;J[Ljava/io/InputStream;[JLio/dcloud/h/b/a$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lio/dcloud/h/b/a$e;-><init>(Lio/dcloud/h/b/a;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/h/b/a$e;->c:[Ljava/io/InputStream;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public b(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/h/b/a$e;->a(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/h/b/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/dcloud/h/b/a$e;->c:[Ljava/io/InputStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-static {v3}, Lio/dcloud/h/b/c;->a(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
