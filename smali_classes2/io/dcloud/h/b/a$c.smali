.class public final Lio/dcloud/h/b/a$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/h/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/h/b/a$c$a;
    }
.end annotation


# instance fields
.field private final a:Lio/dcloud/h/b/a$d;

.field private final b:[Z

.field private c:Z

.field private d:Z

.field final synthetic e:Lio/dcloud/h/b/a;


# direct methods
.method private constructor <init>(Lio/dcloud/h/b/a;Lio/dcloud/h/b/a$d;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lio/dcloud/h/b/a$c;->e:Lio/dcloud/h/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lio/dcloud/h/b/a$c;->a:Lio/dcloud/h/b/a$d;

    .line 4
    invoke-static {p2}, Lio/dcloud/h/b/a$d;->d(Lio/dcloud/h/b/a$d;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lio/dcloud/h/b/a;->c(Lio/dcloud/h/b/a;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lio/dcloud/h/b/a$c;->b:[Z

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/h/b/a;Lio/dcloud/h/b/a$d;Lio/dcloud/h/b/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/h/b/a$c;-><init>(Lio/dcloud/h/b/a;Lio/dcloud/h/b/a$d;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/h/b/a$c;)Lio/dcloud/h/b/a$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/h/b/a$c;->a:Lio/dcloud/h/b/a$d;

    return-object p0
.end method

.method static synthetic a(Lio/dcloud/h/b/a$c;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lio/dcloud/h/b/a$c;->c:Z

    return p1
.end method

.method static synthetic b(Lio/dcloud/h/b/a$c;)[Z
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/h/b/a$c;->b:[Z

    return-object p0
.end method


# virtual methods
.method public a(I)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lio/dcloud/h/b/a$c;->e:Lio/dcloud/h/b/a;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/dcloud/h/b/a$c;->a:Lio/dcloud/h/b/a$d;

    invoke-static {v1}, Lio/dcloud/h/b/a$d;->e(Lio/dcloud/h/b/a$d;)Lio/dcloud/h/b/a$c;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 7
    iget-object v1, p0, Lio/dcloud/h/b/a$c;->a:Lio/dcloud/h/b/a$d;

    invoke-static {v1}, Lio/dcloud/h/b/a$d;->d(Lio/dcloud/h/b/a$d;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    iget-object v1, p0, Lio/dcloud/h/b/a$c;->b:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 10
    :cond_0
    iget-object v1, p0, Lio/dcloud/h/b/a$c;->a:Lio/dcloud/h/b/a$d;

    invoke-virtual {v1, p1}, Lio/dcloud/h/b/a$d;->b(I)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 16
    :catch_0
    :try_start_2
    iget-object v1, p0, Lio/dcloud/h/b/a$c;->e:Lio/dcloud/h/b/a;

    invoke-static {v1}, Lio/dcloud/h/b/a;->d(Lio/dcloud/h/b/a;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24
    :goto_0
    :try_start_4
    new-instance p1, Lio/dcloud/h/b/a$c$a;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v2}, Lio/dcloud/h/b/a$c$a;-><init>(Lio/dcloud/h/b/a$c;Ljava/io/OutputStream;Lio/dcloud/h/b/a$a;)V

    monitor-exit v0

    return-object p1

    .line 25
    :catch_1
    invoke-static {}, Lio/dcloud/h/b/a;->a()Ljava/io/OutputStream;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 46
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lio/dcloud/h/b/a$c;->e:Lio/dcloud/h/b/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lio/dcloud/h/b/a;->a(Lio/dcloud/h/b/a;Lio/dcloud/h/b/a$c;Z)V

    return-void
.end method

.method public b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lio/dcloud/h/b/a$c;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/dcloud/h/b/a$c;->e:Lio/dcloud/h/b/a;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lio/dcloud/h/b/a;->a(Lio/dcloud/h/b/a;Lio/dcloud/h/b/a$c;Z)V

    .line 4
    iget-object v0, p0, Lio/dcloud/h/b/a$c;->e:Lio/dcloud/h/b/a;

    iget-object v2, p0, Lio/dcloud/h/b/a$c;->a:Lio/dcloud/h/b/a$d;

    invoke-static {v2}, Lio/dcloud/h/b/a$d;->b(Lio/dcloud/h/b/a$d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/dcloud/h/b/a;->d(Ljava/lang/String;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lio/dcloud/h/b/a$c;->e:Lio/dcloud/h/b/a;

    invoke-static {v0, p0, v1}, Lio/dcloud/h/b/a;->a(Lio/dcloud/h/b/a;Lio/dcloud/h/b/a$c;Z)V

    .line 8
    :goto_0
    iput-boolean v1, p0, Lio/dcloud/h/b/a$c;->d:Z

    return-void
.end method
