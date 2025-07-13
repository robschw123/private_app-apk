.class public Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;
.super Ljava/io/OutputStream;


# instance fields
.field private compressedOutputStream:Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;

.field private countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

.field private crc32:Ljava/util/zip/CRC32;

.field private entryClosed:Z

.field private fileHeader:Lnet/lingala/zip4j/model/FileHeader;

.field private fileHeaderFactory:Lnet/lingala/zip4j/headers/FileHeaderFactory;

.field private headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

.field private localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

.field private password:[C

.field private rawIO:Lnet/lingala/zip4j/util/RawIO;

.field private streamClosed:Z

.field private uncompressedSizeForThisEntry:J

.field private zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

.field private zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;-><init>(Ljava/io/OutputStream;[CLjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;-><init>(Ljava/io/OutputStream;[CLjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;-><init>(Ljava/io/OutputStream;[CLjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[CLjava/nio/charset/Charset;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    new-instance v0, Lnet/lingala/zip4j/model/Zip4jConfig;

    const/16 v1, 0x1000

    const/4 v2, 0x1

    invoke-direct {v0, p3, v1, v2}, Lnet/lingala/zip4j/model/Zip4jConfig;-><init>(Ljava/nio/charset/Charset;IZ)V

    new-instance p3, Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {p3}, Lnet/lingala/zip4j/model/ZipModel;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;-><init>(Ljava/io/OutputStream;[CLnet/lingala/zip4j/model/Zip4jConfig;Lnet/lingala/zip4j/model/ZipModel;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[CLnet/lingala/zip4j/model/Zip4jConfig;Lnet/lingala/zip4j/model/ZipModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 6
    new-instance v0, Lnet/lingala/zip4j/headers/FileHeaderFactory;

    invoke-direct {v0}, Lnet/lingala/zip4j/headers/FileHeaderFactory;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeaderFactory:Lnet/lingala/zip4j/headers/FileHeaderFactory;

    .line 7
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderWriter;

    invoke-direct {v0}, Lnet/lingala/zip4j/headers/HeaderWriter;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    .line 8
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->crc32:Ljava/util/zip/CRC32;

    .line 9
    new-instance v0, Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {v0}, Lnet/lingala/zip4j/util/RawIO;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->uncompressedSizeForThisEntry:J

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->entryClosed:Z

    .line 36
    invoke-virtual {p3}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v0

    const/16 v1, 0x200

    if-lt v0, v1, :cond_0

    .line 40
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    .line 41
    iput-object p2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->password:[C

    .line 42
    iput-object p3, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    .line 43
    invoke-direct {p0, p4, v0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->initializeZipModel(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;)Lnet/lingala/zip4j/model/ZipModel;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->streamClosed:Z

    .line 45
    invoke-direct {p0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->writeSplitZipHeaderIfApplicable()V

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Buffer size cannot be less than 512 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private cloneAndPrepareZipParameters(Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/model/ZipParameters;
    .locals 6

    .line 1
    new-instance v0, Lnet/lingala/zip4j/model/ZipParameters;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/model/ZipParameters;-><init>(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 3
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/lingala/zip4j/util/FileUtils;->isZipEntryDirectory(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipParameters;->setWriteExtendedLocalFileHeader(Z)V

    .line 5
    sget-object v4, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/model/ZipParameters;->setCompressionMethod(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    .line 6
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptFiles(Z)V

    .line 7
    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/ZipParameters;->setEntrySize(J)V

    .line 10
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getLastModifiedFileTime()J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-gtz p1, :cond_1

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/ZipParameters;->setLastModifiedFileTime(J)V

    :cond_1
    return-object v0
.end method

.method private ensureStreamOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->streamClosed:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initializeAndWriteFileHeader(Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeaderFactory:Lnet/lingala/zip4j/headers/FileHeaderFactory;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    invoke-virtual {v1}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->isSplitZipFile()Z

    move-result v2

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    .line 2
    invoke-virtual {v1}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->getCurrentSplitFileCounter()I

    move-result v3

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/Zip4jConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    iget-object v5, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    move-object v1, p1

    .line 3
    invoke-virtual/range {v0 .. v5}, Lnet/lingala/zip4j/headers/FileHeaderFactory;->generateFileHeader(Lnet/lingala/zip4j/model/ZipParameters;ZILjava/nio/charset/Charset;Lnet/lingala/zip4j/util/RawIO;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    .line 5
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->getOffsetForNextEntry()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    .line 7
    iget-object p1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeaderFactory:Lnet/lingala/zip4j/headers/FileHeaderFactory;

    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/headers/FileHeaderFactory;->generateLocalFileHeader(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 8
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    iget-object v3, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/Zip4jConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lnet/lingala/zip4j/headers/HeaderWriter;->writeLocalFileHeader(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/LocalFileHeader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method private initializeCipherOutputStream(Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;",
            "Lnet/lingala/zip4j/model/ZipParameters;",
            ")",
            "Lnet/lingala/zip4j/io/outputstream/CipherOutputStream<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/NoCipherOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lnet/lingala/zip4j/io/outputstream/NoCipherOutputStream;-><init>(Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;Lnet/lingala/zip4j/model/ZipParameters;[C)V

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->password:[C

    if-eqz v0, :cond_4

    array-length v0, v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v0, v1, :cond_1

    .line 10
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->password:[C

    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/Zip4jConfig;->isUseUtf8CharsetForPasswords()Z

    move-result v2

    invoke-direct {v0, p1, p2, v1, v2}, Lnet/lingala/zip4j/io/outputstream/AesCipherOutputStream;-><init>(Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;Lnet/lingala/zip4j/model/ZipParameters;[CZ)V

    return-object v0

    .line 11
    :cond_1
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v0, v1, :cond_2

    .line 12
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/ZipStandardCipherOutputStream;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->password:[C

    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/Zip4jConfig;->isUseUtf8CharsetForPasswords()Z

    move-result v2

    invoke-direct {v0, p1, p2, v1, v2}, Lnet/lingala/zip4j/io/outputstream/ZipStandardCipherOutputStream;-><init>(Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;Lnet/lingala/zip4j/model/ZipParameters;[CZ)V

    return-object v0

    .line 13
    :cond_2
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object p1

    sget-object p2, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD_VARIANT_STRONG:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne p1, p2, :cond_3

    .line 14
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " encryption method is not supported"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Invalid encryption method"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "password not set"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initializeCompressedOutputStream(Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/lingala/zip4j/io/outputstream/CipherOutputStream<",
            "*>;",
            "Lnet/lingala/zip4j/model/ZipParameters;",
            ")",
            "Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;"
        }
    .end annotation

    .line 4
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    if-ne v0, v1, :cond_0

    .line 5
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionLevel()Lnet/lingala/zip4j/model/enums/CompressionLevel;

    move-result-object p2

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lnet/lingala/zip4j/io/outputstream/DeflaterOutputStream;-><init>(Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;Lnet/lingala/zip4j/model/enums/CompressionLevel;I)V

    return-object v0

    .line 8
    :cond_0
    new-instance p2, Lnet/lingala/zip4j/io/outputstream/StoreOutputStream;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/io/outputstream/StoreOutputStream;-><init>(Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;)V

    return-object p2
.end method

.method private initializeCompressedOutputStream(Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2
    invoke-direct {p0, v0, p1}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->initializeCipherOutputStream(Lnet/lingala/zip4j/io/outputstream/ZipEntryOutputStream;Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0, p1}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->initializeCompressedOutputStream(Lnet/lingala/zip4j/io/outputstream/CipherOutputStream;Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;

    move-result-object p1

    return-object p1
.end method

.method private initializeZipModel(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;)Lnet/lingala/zip4j/model/ZipModel;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {p1}, Lnet/lingala/zip4j/model/ZipModel;-><init>()V

    .line 4
    :cond_0
    invoke-virtual {p2}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->isSplitZipFile()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    .line 6
    invoke-virtual {p2}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->getSplitLength()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->setSplitLength(J)V

    :cond_1
    return-object p1
.end method

.method private reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->uncompressedSizeForThisEntry:J

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->compressedOutputStream:Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;->close()V

    return-void
.end method

.method private verifyZipParameters(Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    if-ne v0, v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getEntrySize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 7
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lingala/zip4j/util/FileUtils;->isZipEntryDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isWriteExtendedLocalFileHeader()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "uncompressed size should be set for zip entries of compression type store"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "fileNameInZip is null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeCrc(Lnet/lingala/zip4j/model/FileHeader;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->isEncrypted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    sget-object v2, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return v1

    .line 7
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesVersion()Lnet/lingala/zip4j/model/enums/AesVersion;

    move-result-object p1

    sget-object v0, Lnet/lingala/zip4j/model/enums/AesVersion;->ONE:Lnet/lingala/zip4j/model/enums/AesVersion;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private writeSplitZipHeaderIfApplicable()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->isSplitZipFile()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    sget-object v2, Lnet/lingala/zip4j/headers/HeaderSignature;->SPLIT_ZIP:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v2}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v1, v3}, Lnet/lingala/zip4j/util/RawIO;->writeIntLittleEndian(Ljava/io/OutputStream;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->entryClosed:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->closeEntry()Lnet/lingala/zip4j/model/FileHeader;

    .line 5
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v0

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    invoke-virtual {v1}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->getNumberOfBytesWritten()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setOffsetOfStartOfCentralDirectory(J)V

    .line 6
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    iget-object v3, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/Zip4jConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lnet/lingala/zip4j/headers/HeaderWriter;->finalizeZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 7
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->close()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->streamClosed:Z

    return-void
.end method

.method public closeEntry()Lnet/lingala/zip4j/model/FileHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->compressedOutputStream:Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;->closeEntry()V

    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->compressedOutputStream:Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;->getCompressedSize()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v2, v0, v1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setCompressedSize(J)V

    .line 5
    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v2, v0, v1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setCompressedSize(J)V

    .line 7
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    iget-wide v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->uncompressedSizeForThisEntry:J

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setUncompressedSize(J)V

    .line 8
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-wide v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->uncompressedSizeForThisEntry:J

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setUncompressedSize(J)V

    .line 10
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->writeCrc(Lnet/lingala/zip4j/model/FileHeader;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setCrc(J)V

    .line 12
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setCrc(J)V

    .line 15
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getLocalFileHeaders()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->isDataDescriptorExists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->headerWriter:Lnet/lingala/zip4j/headers/HeaderWriter;

    iget-object v1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v2, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->countingOutputStream:Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/headers/HeaderWriter;->writeExtendedLocalHeader(Lnet/lingala/zip4j/model/LocalFileHeader;Ljava/io/OutputStream;)V

    .line 21
    :cond_1
    invoke-direct {p0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->reset()V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->entryClosed:Z

    .line 23
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    return-object v0
.end method

.method public putNextEntry(Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->verifyZipParameters(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 2
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->cloneAndPrepareZipParameters(Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/model/ZipParameters;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->initializeAndWriteFileHeader(Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 8
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->initializeCompressedOutputStream(Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->compressedOutputStream:Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->entryClosed:Z

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->ensureStreamOpen()V

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setComment(Ljava/lang/String;)V

    return-void
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
    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->write([B)V

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

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->write([BII)V

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
    invoke-direct {p0}, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->ensureStreamOpen()V

    .line 4
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 5
    iget-object v0, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->compressedOutputStream:Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lnet/lingala/zip4j/io/outputstream/CompressedOutputStream;->write([BII)V

    .line 6
    iget-wide p1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->uncompressedSizeForThisEntry:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lnet/lingala/zip4j/io/outputstream/ZipOutputStream;->uncompressedSizeForThisEntry:J

    return-void
.end method
