.class public Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;
.super Ljava/io/OutputStream;

# interfaces
.implements Lnet/lingala/zip4j/io/outputstream/OutputStreamWithSplitZipSupport;


# instance fields
.field private numberOfBytesWritten:J

.field private outputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->numberOfBytesWritten:J

    .line 5
    iput-object p1, p0, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->outputStream:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public checkBuffSizeAndStartNextSplitFile(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->isSplitZipFile()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->outputStream:Ljava/io/OutputStream;

    check-cast v0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->checkBufferSizeAndStartNextSplitFile(I)Z

    move-result p1

    return p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public getCurrentSplitFileCounter()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->isSplitZipFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->outputStream:Ljava/io/OutputStream;

    check-cast v0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->getCurrentSplitFileCounter()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFilePointer()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->outputStream:Ljava/io/OutputStream;

    instance-of v1, v0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->getFilePointer()J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_0
    iget-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->numberOfBytesWritten:J

    return-wide v0
.end method

.method public getNumberOfBytesWritten()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->outputStream:Ljava/io/OutputStream;

    instance-of v1, v0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->getFilePointer()J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_0
    iget-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->numberOfBytesWritten:J

    return-wide v0
.end method

.method public getOffsetForNextEntry()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->outputStream:Ljava/io/OutputStream;

    instance-of v1, v0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->getFilePointer()J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_0
    iget-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->numberOfBytesWritten:J

    return-wide v0
.end method

.method public getSplitLength()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->isSplitZipFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->outputStream:Ljava/io/OutputStream;

    check-cast v0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->getSplitLength()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isSplitZipFile()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->outputStream:Ljava/io/OutputStream;

    instance-of v1, v0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    .line 2
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->isSplitZipFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 1
    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->write([B)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 4
    iget-wide p1, p0, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->numberOfBytesWritten:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->numberOfBytesWritten:J

    return-void
.end method
