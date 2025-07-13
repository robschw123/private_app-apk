.class public Lcom/baidu/platform/comapi/b/a;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method public static a(Ljava/io/Closeable;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 53
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 28
    :try_start_0
    instance-of v0, p0, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    .line 32
    :cond_0
    instance-of v0, p1, Ljava/io/BufferedOutputStream;

    if-nez v0, :cond_1

    .line 33
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p1, v0

    .line 37
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {p0}, Lcom/baidu/platform/comapi/b/a;->a(Ljava/io/Closeable;)V

    .line 44
    invoke-static {p1}, Lcom/baidu/platform/comapi/b/a;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p2

    .line 43
    invoke-static {p0}, Lcom/baidu/platform/comapi/b/a;->a(Ljava/io/Closeable;)V

    .line 44
    invoke-static {p1}, Lcom/baidu/platform/comapi/b/a;->a(Ljava/io/Closeable;)V

    throw p2

    .line 24
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "copyStream : outputStream or inputStream is null"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method
