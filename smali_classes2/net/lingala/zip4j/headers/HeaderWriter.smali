.class public Lnet/lingala/zip4j/headers/HeaderWriter;
.super Ljava/lang/Object;


# static fields
.field private static final AES_EXTRA_DATA_RECORD_SIZE:S = 0xbs

.field private static final ZIP64_EXTRA_DATA_RECORD_SIZE_FH:S = 0x1cs

.field private static final ZIP64_EXTRA_DATA_RECORD_SIZE_LFH:S = 0x10s


# instance fields
.field private final intBuff:[B

.field private final longBuff:[B

.field private final rawIO:Lnet/lingala/zip4j/util/RawIO;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {v0}, Lnet/lingala/zip4j/util/RawIO;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 8
    iput-object v0, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 9
    iput-object v0, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->intBuff:[B

    return-void
.end method

.method private buildZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/ZipModel;IJ)Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;-><init>()V

    .line 3
    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    const-wide/16 v1, 0x2c

    .line 4
    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setSizeOfZip64EndCentralDirectoryRecord(J)V

    .line 6
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 9
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/lingala/zip4j/model/FileHeader;

    .line 10
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->getVersionMadeBy()I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setVersionMadeBy(I)V

    .line 11
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getVersionNeededToExtract()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setVersionNeededToExtract(I)V

    .line 14
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getNumberOfThisDisk()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setNumberOfThisDisk(I)V

    .line 15
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getNumberOfThisDiskStartOfCentralDir()I

    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setNumberOfThisDiskStartOfCentralDirectory(I)V

    .line 20
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    .line 22
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 23
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v3

    .line 24
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getNumberOfThisDisk()I

    move-result p1

    .line 25
    invoke-direct {p0, v3, p1}, Lnet/lingala/zip4j/headers/HeaderWriter;->countNumberOfFileHeaderEntriesOnDisk(Ljava/util/List;I)J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    .line 29
    :goto_0
    invoke-virtual {v0, v3, v4}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectoryOnThisDisk(J)V

    .line 30
    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectory(J)V

    int-to-long p1, p2

    .line 31
    invoke-virtual {v0, p1, p2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setSizeOfCentralDirectory(J)V

    .line 32
    invoke-virtual {v0, p3, p4}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setOffsetStartCentralDirectoryWRTStartDiskNumber(J)V

    return-object v0
.end method

.method private calculateExtraDataRecordsSize(Lnet/lingala/zip4j/model/FileHeader;Z)I
    .locals 6

    if-eqz p2, :cond_0

    const/16 p2, 0x20

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    add-int/lit8 p2, p2, 0xb

    .line 5
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/ExtraDataRecord;

    .line 7
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v1

    sget-object v3, Lnet/lingala/zip4j/headers/HeaderSignature;->AES_EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v3}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 8
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v1

    sget-object v3, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v3}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/2addr p2, v0

    goto :goto_1

    :cond_4
    return p2
.end method

.method private countNumberOfFileHeaderEntriesOnDisk(Ljava/util/List;I)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/FileHeader;",
            ">;I)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/lingala/zip4j/model/FileHeader;

    .line 2
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v1

    if-ne v1, p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    int-to-long p1, v0

    return-wide p1

    .line 3
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "file headers are null, cannot calculate number of entries on this disk"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private getCurrentSplitFileCounter(Ljava/io/OutputStream;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    invoke-virtual {p1}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->getCurrentSplitFileCounter()I

    move-result p1

    return p1

    .line 4
    :cond_0
    check-cast p1, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    invoke-virtual {p1}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->getCurrentSplitFileCounter()I

    move-result p1

    return p1
.end method

.method private getOffsetOfCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;)J
    .locals 5

    .line 1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getOffsetStartCentralDirectoryWRTStartDiskNumber()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 4
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getOffsetStartCentralDirectoryWRTStartDiskNumber()J

    move-result-wide v0

    return-wide v0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getOffsetOfStartOfCentralDirectory()J

    move-result-wide v0

    return-wide v0
.end method

.method private isSplitZipFile(Ljava/io/OutputStream;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    invoke-virtual {p1}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->isSplitZipFile()Z

    move-result p1

    return p1

    .line 3
    :cond_0
    instance-of v0, p1, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    invoke-virtual {p1}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->isSplitZipFile()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isZip64Entry(Lnet/lingala/zip4j/model/FileHeader;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCompressedSize()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getUncompressedSize()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 3
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 4
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result p1

    const v0, 0xffff

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private processHeaderData(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lnet/lingala/zip4j/io/outputstream/OutputStreamWithSplitZipSupport;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v0

    check-cast p2, Lnet/lingala/zip4j/io/outputstream/OutputStreamWithSplitZipSupport;

    .line 3
    invoke-interface {p2}, Lnet/lingala/zip4j/io/outputstream/OutputStreamWithSplitZipSupport;->getFilePointer()J

    move-result-wide v1

    .line 4
    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setOffsetOfStartOfCentralDirectory(J)V

    .line 6
    invoke-interface {p2}, Lnet/lingala/zip4j/io/outputstream/OutputStreamWithSplitZipSupport;->getCurrentSplitFileCounter()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 9
    :goto_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v0

    if-nez v0, :cond_1

    .line 11
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;-><init>()V

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;)V

    .line 13
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v0

    if-nez v0, :cond_2

    .line 14
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;-><init>()V

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndOfCentralDirectoryLocator(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;)V

    .line 17
    :cond_2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getOffsetOfStartOfCentralDirectory()J

    move-result-wide v1

    .line 19
    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setOffsetStartCentralDirectoryWRTStartDiskNumber(J)V

    .line 21
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setNumberOfDiskStartOfZip64EndOfCentralDirectoryRecord(I)V

    .line 23
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setTotalNumberOfDiscs(I)V

    .line 25
    :cond_3
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setNumberOfThisDisk(I)V

    .line 26
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setNumberOfThisDiskStartOfCentralDir(I)V

    return-void
.end method

.method private updateFileSizesInLocalFileHeader(Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;Lnet/lingala/zip4j/model/FileHeader;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getUncompressedSize()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    const/4 v4, 0x4

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-ltz v6, :cond_1

    .line 2
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {v0, v1, v5, v2, v3}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {p1, v0, v5, v4}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->write([BII)V

    .line 4
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {p1, v0, v5, v4}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->write([BII)V

    .line 13
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getFileNameLength()I

    move-result v0

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    .line 14
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->skipBytes(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 17
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getUncompressedSize()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian(Ljava/io/OutputStream;J)V

    .line 18
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCompressedSize()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian(Ljava/io/OutputStream;J)V

    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to skip "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes to update LFH"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCompressedSize()J

    move-result-wide v2

    invoke-virtual {v0, v1, v5, v2, v3}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 25
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {p1, v0, v5, v4}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->write([BII)V

    .line 27
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getUncompressedSize()J

    move-result-wide v2

    invoke-virtual {v0, v1, v5, v2, v3}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 28
    iget-object p2, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {p1, p2, v5, v4}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->write([BII)V

    :goto_0
    return-void
.end method

.method private writeCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/util/RawIO;Ljava/nio/charset/Charset;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lnet/lingala/zip4j/model/FileHeader;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 7
    invoke-direct/range {v2 .. v7}, Lnet/lingala/zip4j/headers/HeaderWriter;->writeFileHeader(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Ljava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/util/RawIO;Ljava/nio/charset/Charset;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private writeEndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/ZipModel;IJLjava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/util/RawIO;Ljava/nio/charset/Charset;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 2
    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v1}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {p6, p5, v2}, Lnet/lingala/zip4j/util/RawIO;->writeIntLittleEndian(Ljava/io/OutputStream;I)V

    .line 4
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getNumberOfThisDisk()I

    move-result v1

    .line 5
    invoke-virtual {p6, p5, v1}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 8
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getNumberOfThisDiskStartOfCentralDir()I

    move-result v1

    .line 9
    invoke-virtual {p6, p5, v1}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 12
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    .line 14
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 15
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v3

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v3

    .line 16
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v4

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getNumberOfThisDisk()I

    move-result v4

    .line 17
    invoke-direct {p0, v3, v4}, Lnet/lingala/zip4j/headers/HeaderWriter;->countNumberOfFileHeaderEntriesOnDisk(Ljava/util/List;I)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    const-wide/32 v5, 0xffff

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    move-wide v3, v5

    :cond_1
    long-to-int v4, v3

    .line 24
    invoke-virtual {p6, p5, v4}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    cmp-long v3, v1, v5

    if-lez v3, :cond_2

    move-wide v1, v5

    :cond_2
    long-to-int v2, v1

    .line 29
    invoke-virtual {p6, p5, v2}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 31
    invoke-virtual {p6, p5, p2}, Lnet/lingala/zip4j/util/RawIO;->writeIntLittleEndian(Ljava/io/OutputStream;I)V

    const/4 p2, 0x4

    const-wide v1, 0xffffffffL

    const/4 v3, 0x0

    cmp-long v4, p3, v1

    if-lez v4, :cond_3

    .line 33
    invoke-virtual {p6, v0, v3, v1, v2}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 34
    invoke-virtual {p5, v0, v3, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 36
    :cond_3
    invoke-virtual {p6, v0, v3, p3, p4}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 37
    invoke-virtual {p5, v0, v3, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 40
    :goto_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getComment()Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 42
    invoke-static {p1, p7}, Lnet/lingala/zip4j/headers/HeaderUtil;->getBytesFromString(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 43
    array-length p2, p1

    invoke-virtual {p6, p5, p2}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 44
    invoke-virtual {p5, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_2

    .line 46
    :cond_4
    invoke-virtual {p6, p5, v3}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    :goto_2
    return-void
.end method

.method private writeFileHeader(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/FileHeader;Ljava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/util/RawIO;Ljava/nio/charset/Charset;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    if-eqz v2, :cond_9

    const/4 v6, 0x2

    :try_start_0
    new-array v7, v6, [B

    const/4 v8, 0x0

    aput-byte v8, v7, v8

    const/4 v9, 0x1

    aput-byte v8, v7, v9

    .line 2
    invoke-direct {v1, v2}, Lnet/lingala/zip4j/headers/HeaderWriter;->isZip64Entry(Lnet/lingala/zip4j/model/FileHeader;)Z

    move-result v10

    .line 4
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/ZipHeader;->getSignature()Lnet/lingala/zip4j/headers/HeaderSignature;

    move-result-object v11

    invoke-virtual {v11}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v11

    long-to-int v12, v11

    invoke-virtual {v4, v3, v12}, Lnet/lingala/zip4j/util/RawIO;->writeIntLittleEndian(Ljava/io/OutputStream;I)V

    .line 5
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getVersionMadeBy()I

    move-result v11

    invoke-virtual {v4, v3, v11}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 6
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getVersionNeededToExtract()I

    move-result v11

    invoke-virtual {v4, v3, v11}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 7
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getGeneralPurposeFlag()[B

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 8
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v11

    invoke-virtual {v11}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCode()I

    move-result v11

    invoke-virtual {v4, v3, v11}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 10
    iget-object v11, v1, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getLastModifiedTime()J

    move-result-wide v12

    invoke-virtual {v4, v11, v8, v12, v13}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 11
    iget-object v11, v1, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v12, 0x4

    invoke-virtual {v3, v11, v8, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 13
    iget-object v11, v1, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCrc()J

    move-result-wide v13

    invoke-virtual {v4, v11, v8, v13, v14}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 14
    iget-object v11, v1, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {v3, v11, v8, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const-wide v13, 0xffffffffL

    if-eqz v10, :cond_0

    .line 17
    iget-object v11, v1, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {v4, v11, v8, v13, v14}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 18
    iget-object v11, v1, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {v3, v11, v8, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 19
    iget-object v11, v1, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {v3, v11, v8, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 20
    invoke-virtual {v0, v9}, Lnet/lingala/zip4j/model/ZipModel;->setZip64Format(Z)V

    move-object v15, v7

    goto :goto_0

    .line 22
    :cond_0
    iget-object v11, v1, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    move-object v15, v7

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCompressedSize()J

    move-result-wide v6

    invoke-virtual {v4, v11, v8, v6, v7}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 23
    iget-object v6, v1, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {v3, v6, v8, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 24
    iget-object v6, v1, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getUncompressedSize()J

    move-result-wide v13

    invoke-virtual {v4, v6, v8, v13, v14}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 25
    iget-object v6, v1, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {v3, v6, v8, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_0
    new-array v6, v8, [B

    .line 29
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 30
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lnet/lingala/zip4j/headers/HeaderUtil;->getBytesFromString(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v6

    .line 32
    :cond_1
    array-length v7, v6

    invoke-virtual {v4, v3, v7}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    new-array v7, v12, [B

    if-eqz v10, :cond_2

    .line 38
    iget-object v11, v1, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const-wide v13, 0xffffffffL

    invoke-virtual {v4, v11, v8, v13, v14}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 39
    iget-object v11, v1, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-static {v11, v8, v7, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 41
    :cond_2
    iget-object v11, v1, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v13

    invoke-virtual {v4, v11, v8, v13, v14}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 42
    iget-object v11, v1, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-static {v11, v8, v7, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    :goto_1
    invoke-direct {v1, v2, v10}, Lnet/lingala/zip4j/headers/HeaderWriter;->calculateExtraDataRecordsSize(Lnet/lingala/zip4j/model/FileHeader;Z)I

    move-result v11

    .line 46
    invoke-virtual {v4, v3, v11}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 48
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getFileComment()Ljava/lang/String;

    move-result-object v11

    new-array v12, v8, [B

    .line 50
    invoke-static {v11}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 51
    invoke-static {v11, v5}, Lnet/lingala/zip4j/headers/HeaderUtil;->getBytesFromString(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v12

    .line 53
    :cond_3
    array-length v11, v12

    invoke-virtual {v4, v3, v11}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    if-eqz v10, :cond_4

    .line 56
    iget-object v11, v1, Lnet/lingala/zip4j/headers/HeaderWriter;->intBuff:[B

    const v13, 0xffff

    invoke-virtual {v4, v11, v8, v13}, Lnet/lingala/zip4j/util/RawIO;->writeIntLittleEndian([BII)V

    .line 57
    iget-object v11, v1, Lnet/lingala/zip4j/headers/HeaderWriter;->intBuff:[B

    const/4 v13, 0x2

    invoke-virtual {v3, v11, v8, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 59
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v11

    invoke-virtual {v4, v3, v11}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    :goto_2
    move-object v11, v15

    .line 62
    invoke-virtual {v3, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getExternalFileAttributes()[B

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 68
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 70
    array-length v7, v6

    if-lez v7, :cond_5

    .line 71
    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_5
    if-eqz v10, :cond_6

    .line 75
    invoke-virtual {v0, v9}, Lnet/lingala/zip4j/model/ZipModel;->setZip64Format(Z)V

    .line 78
    sget-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 79
    invoke-virtual {v0}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v6

    long-to-int v0, v6

    .line 80
    invoke-virtual {v4, v3, v0}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    const/16 v0, 0x1c

    .line 84
    invoke-virtual {v4, v3, v0}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getUncompressedSize()J

    move-result-wide v6

    invoke-virtual {v4, v3, v6, v7}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian(Ljava/io/OutputStream;J)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCompressedSize()J

    move-result-wide v6

    invoke-virtual {v4, v3, v6, v7}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian(Ljava/io/OutputStream;J)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v6

    invoke-virtual {v4, v3, v6, v7}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian(Ljava/io/OutputStream;J)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Lnet/lingala/zip4j/util/RawIO;->writeIntLittleEndian(Ljava/io/OutputStream;I)V

    .line 91
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 92
    invoke-virtual/range {p2 .. p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipHeader;->getSignature()Lnet/lingala/zip4j/headers/HeaderSignature;

    move-result-object v6

    invoke-virtual {v6}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v4, v3, v7}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 94
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getDataSize()I

    move-result v6

    invoke-virtual {v4, v3, v6}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 95
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesVersion()Lnet/lingala/zip4j/model/enums/AesVersion;

    move-result-object v6

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/enums/AesVersion;->getVersionNumber()I

    move-result v6

    invoke-virtual {v4, v3, v6}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 96
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getVendorID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lnet/lingala/zip4j/headers/HeaderUtil;->getBytesFromString(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-array v5, v9, [B

    .line 99
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesKeyStrength()Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object v6

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getRawCode()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v8

    .line 100
    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 102
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCode()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 105
    :cond_7
    invoke-direct {v1, v2, v3}, Lnet/lingala/zip4j/headers/HeaderWriter;->writeRemainingExtraDataRecordsIfPresent(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/OutputStream;)V

    .line 107
    array-length v0, v12

    if-lez v0, :cond_8

    .line 108
    invoke-virtual {v3, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    return-void

    :catch_0
    move-exception v0

    .line 111
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 112
    :cond_9
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "input parameters is null, cannot write local file header"

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeRemainingExtraDataRecordsIfPresent(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/model/ExtraDataRecord;

    .line 6
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v1

    sget-object v3, Lnet/lingala/zip4j/headers/HeaderSignature;->AES_EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v3}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 7
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v1

    sget-object v3, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v3}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v1, p2, v3}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 12
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 14
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private writeZip64EndOfCentralDirectoryLocator(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;Ljava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/util/RawIO;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_LOCATOR:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v0}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p3, p2, v1}, Lnet/lingala/zip4j/util/RawIO;->writeIntLittleEndian(Ljava/io/OutputStream;I)V

    .line 3
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->getNumberOfDiskStartOfZip64EndOfCentralDirectoryRecord()I

    move-result v0

    .line 4
    invoke-virtual {p3, p2, v0}, Lnet/lingala/zip4j/util/RawIO;->writeIntLittleEndian(Ljava/io/OutputStream;I)V

    .line 7
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->getOffsetZip64EndOfCentralDirectoryRecord()J

    move-result-wide v0

    .line 8
    invoke-virtual {p3, p2, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian(Ljava/io/OutputStream;J)V

    .line 11
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->getTotalNumberOfDiscs()I

    move-result p1

    .line 12
    invoke-virtual {p3, p2, p1}, Lnet/lingala/zip4j/util/RawIO;->writeIntLittleEndian(Ljava/io/OutputStream;I)V

    return-void
.end method

.method private writeZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;Ljava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/util/RawIO;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipHeader;->getSignature()Lnet/lingala/zip4j/headers/HeaderSignature;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p3, p2, v1}, Lnet/lingala/zip4j/util/RawIO;->writeIntLittleEndian(Ljava/io/OutputStream;I)V

    .line 2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getSizeOfZip64EndCentralDirectoryRecord()J

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian(Ljava/io/OutputStream;J)V

    .line 3
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getVersionMadeBy()I

    move-result v0

    invoke-virtual {p3, p2, v0}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 4
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getVersionNeededToExtract()I

    move-result v0

    invoke-virtual {p3, p2, v0}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 5
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getNumberOfThisDisk()I

    move-result v0

    invoke-virtual {p3, p2, v0}, Lnet/lingala/zip4j/util/RawIO;->writeIntLittleEndian(Ljava/io/OutputStream;I)V

    .line 6
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getNumberOfThisDiskStartOfCentralDirectory()I

    move-result v0

    invoke-virtual {p3, p2, v0}, Lnet/lingala/zip4j/util/RawIO;->writeIntLittleEndian(Ljava/io/OutputStream;I)V

    .line 7
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getTotalNumberOfEntriesInCentralDirectoryOnThisDisk()J

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian(Ljava/io/OutputStream;J)V

    .line 8
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getTotalNumberOfEntriesInCentralDirectory()J

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian(Ljava/io/OutputStream;J)V

    .line 9
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getSizeOfCentralDirectory()J

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian(Ljava/io/OutputStream;J)V

    .line 10
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getOffsetStartCentralDirectoryWRTStartDiskNumber()J

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian(Ljava/io/OutputStream;J)V

    return-void
.end method

.method private writeZipHeaderBytes(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;[BLjava/nio/charset/Charset;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 1
    instance-of v0, p2, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p2

    check-cast v0, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;

    array-length v1, p3

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/io/outputstream/CountingOutputStream;->checkBuffSizeAndStartNextSplitFile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, p4}, Lnet/lingala/zip4j/headers/HeaderWriter;->finalizeZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void

    .line 8
    :cond_0
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    return-void

    .line 9
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid buff to write as zip headers"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public finalizeZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 1
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/headers/HeaderWriter;->processHeaderData(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V

    .line 3
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/headers/HeaderWriter;->getOffsetOfCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;)J

    move-result-wide v3

    .line 4
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {p0, p1, v8, v0, p3}, Lnet/lingala/zip4j/headers/HeaderWriter;->writeCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/util/RawIO;Ljava/nio/charset/Charset;)V

    .line 5
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    .line 7
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v5, v3, v0

    if-gez v5, :cond_0

    .line 8
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0xffff

    if-lt v0, v1, :cond_4

    .line 10
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v0

    if-nez v0, :cond_1

    .line 11
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;-><init>()V

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;)V

    .line 13
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v0

    if-nez v0, :cond_2

    .line 14
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;-><init>()V

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndOfCentralDirectoryLocator(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;)V

    .line 17
    :cond_2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v0

    int-to-long v5, v2

    add-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setOffsetZip64EndOfCentralDirectoryRecord(J)V

    .line 20
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/headers/HeaderWriter;->isSplitZipFile(Ljava/io/OutputStream;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 21
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/headers/HeaderWriter;->getCurrentSplitFileCounter(Ljava/io/OutputStream;)I

    move-result v0

    .line 22
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v5

    invoke-virtual {v5, v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setNumberOfDiskStartOfZip64EndOfCentralDirectoryRecord(I)V

    .line 24
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v5

    add-int/2addr v0, v1

    invoke-virtual {v5, v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setTotalNumberOfDiscs(I)V

    goto :goto_0

    .line 26
    :cond_3
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setNumberOfDiskStartOfZip64EndOfCentralDirectoryRecord(I)V

    .line 27
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setTotalNumberOfDiscs(I)V

    .line 30
    :goto_0
    invoke-direct {p0, p1, v2, v3, v4}, Lnet/lingala/zip4j/headers/HeaderWriter;->buildZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/ZipModel;IJ)Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;)V

    .line 33
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {p0, v0, v8, v1}, Lnet/lingala/zip4j/headers/HeaderWriter;->writeZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;Ljava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/util/RawIO;)V

    .line 34
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v0

    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {p0, v0, v8, v1}, Lnet/lingala/zip4j/headers/HeaderWriter;->writeZip64EndOfCentralDirectoryLocator(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;Ljava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/util/RawIO;)V

    .line 37
    :cond_4
    iget-object v6, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    move-object v0, p0

    move-object v1, p1

    move-object v5, v8

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lnet/lingala/zip4j/headers/HeaderWriter;->writeEndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/ZipModel;IJLjava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/util/RawIO;Ljava/nio/charset/Charset;)V

    .line 38
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lnet/lingala/zip4j/headers/HeaderWriter;->writeZipHeaderBytes(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;[BLjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 40
    :try_start_1
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    .line 41
    :cond_5
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input parameters is null, cannot finalize zip file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public finalizeZipFileWithoutValidations(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 1
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/headers/HeaderWriter;->getOffsetOfCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;)J

    move-result-wide v3

    .line 3
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {p0, p1, v8, v0, p3}, Lnet/lingala/zip4j/headers/HeaderWriter;->writeCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/util/RawIO;Ljava/nio/charset/Charset;)V

    .line 4
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    .line 6
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v5, v3, v0

    if-gez v5, :cond_0

    .line 7
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0xffff

    if-lt v0, v1, :cond_3

    .line 9
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v0

    if-nez v0, :cond_1

    .line 10
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;-><init>()V

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;)V

    .line 12
    :cond_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v0

    if-nez v0, :cond_2

    .line 13
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;-><init>()V

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndOfCentralDirectoryLocator(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;)V

    .line 16
    :cond_2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v0

    int-to-long v5, v2

    add-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setOffsetZip64EndOfCentralDirectoryRecord(J)V

    .line 19
    invoke-direct {p0, p1, v2, v3, v4}, Lnet/lingala/zip4j/headers/HeaderWriter;->buildZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/ZipModel;IJ)Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;)V

    .line 22
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {p0, v0, v8, v1}, Lnet/lingala/zip4j/headers/HeaderWriter;->writeZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;Ljava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/util/RawIO;)V

    .line 23
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v0

    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {p0, v0, v8, v1}, Lnet/lingala/zip4j/headers/HeaderWriter;->writeZip64EndOfCentralDirectoryLocator(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;Ljava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/util/RawIO;)V

    .line 26
    :cond_3
    iget-object v6, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    move-object v0, p0

    move-object v1, p1

    move-object v5, v8

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lnet/lingala/zip4j/headers/HeaderWriter;->writeEndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/ZipModel;IJLjava/io/ByteArrayOutputStream;Lnet/lingala/zip4j/util/RawIO;Ljava/nio/charset/Charset;)V

    .line 27
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lnet/lingala/zip4j/headers/HeaderWriter;->writeZipHeaderBytes(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;[BLjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 29
    :try_start_1
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    .line 30
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input parameters is null, cannot finalize zip file without validations"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateLocalFileHeader(Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v0

    invoke-virtual {p3}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->getCurrentSplitFileCounter()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    .line 2
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lnet/lingala/zip4j/util/FileUtils;->getZipFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz v0, :cond_0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "file.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 8
    :goto_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v1

    const/16 v4, 0x9

    if-ge v1, v4, :cond_1

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".z0"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result p2

    add-int/2addr p2, v2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 11
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".z"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result p2

    add-int/2addr p2, v2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 13
    :goto_1
    new-instance v0, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;-><init>(Ljava/io/File;)V

    goto :goto_2

    :cond_2
    move-object v0, p3

    const/4 v2, 0x0

    .line 19
    :goto_2
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->getFilePointer()J

    move-result-wide v4

    .line 21
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v6

    const-wide/16 v8, 0xe

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->seek(J)V

    .line 22
    iget-object p2, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCrc()J

    move-result-wide v6

    invoke-virtual {p2, v1, v3, v6, v7}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 23
    iget-object p2, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v1, 0x4

    invoke-virtual {v0, p2, v3, v1}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->write([BII)V

    .line 25
    invoke-direct {p0, v0, p1}, Lnet/lingala/zip4j/headers/HeaderWriter;->updateFileSizesInLocalFileHeader(Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;Lnet/lingala/zip4j/model/FileHeader;)V

    if-eqz v2, :cond_3

    .line 28
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->close()V

    goto :goto_3

    .line 30
    :cond_3
    invoke-virtual {p3, v4, v5}, Lnet/lingala/zip4j/io/outputstream/SplitOutputStream;->seek(J)V

    :goto_3
    return-void

    .line 31
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid input parameters, cannot update local file header"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeExtendedLocalHeader(Lnet/lingala/zip4j/model/LocalFileHeader;Ljava/io/OutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    sget-object v2, Lnet/lingala/zip4j/headers/HeaderSignature;->EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v2}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v1, v0, v3}, Lnet/lingala/zip4j/util/RawIO;->writeIntLittleEndian(Ljava/io/OutputStream;I)V

    .line 4
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCrc()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 5
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 7
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/LocalFileHeader;->isWriteCompressedSizeInZip64ExtraRecord()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCompressedSize()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian(Ljava/io/OutputStream;J)V

    .line 9
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getUncompressedSize()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian(Ljava/io/OutputStream;J)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    iget-object v3, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCompressedSize()J

    move-result-wide v6

    invoke-virtual {v1, v3, v5, v6, v7}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 12
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 14
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    iget-object v3, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getUncompressedSize()J

    move-result-wide v6

    invoke-virtual {v1, v3, v5, v6, v7}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 15
    iget-object p1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {v0, p1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 18
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    .line 21
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input parameters is null, cannot write extended local header"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeLocalFileHeader(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/LocalFileHeader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipHeader;->getSignature()Lnet/lingala/zip4j/headers/HeaderSignature;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v1, v0, v3}, Lnet/lingala/zip4j/util/RawIO;->writeIntLittleEndian(Ljava/io/OutputStream;I)V

    .line 3
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getVersionNeededToExtract()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 4
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getGeneralPurposeFlag()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 5
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCode()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 7
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getLastModifiedTime()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 8
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 10
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    iget-object v3, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCrc()J

    move-result-wide v6

    invoke-virtual {v1, v3, v5, v6, v7}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 11
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 13
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCompressedSize()J

    move-result-wide v3

    const-wide v6, 0xffffffffL

    const/4 v1, 0x1

    cmp-long v8, v3, v6

    if-gez v8, :cond_1

    .line 14
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getUncompressedSize()J

    move-result-wide v3

    cmp-long v8, v3, v6

    if-ltz v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_2

    .line 17
    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    iget-object v8, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {v4, v8, v5, v6, v7}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 21
    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {v0, v4, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 22
    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {v0, v4, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 24
    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/ZipModel;->setZip64Format(Z)V

    .line 25
    invoke-virtual {p2, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setWriteCompressedSizeInZip64ExtraRecord(Z)V

    goto :goto_2

    .line 27
    :cond_2
    iget-object p1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCompressedSize()J

    move-result-wide v6

    invoke-virtual {p1, v4, v5, v6, v7}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 28
    iget-object p1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {v0, p1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 30
    iget-object p1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getUncompressedSize()J

    move-result-wide v6

    invoke-virtual {p1, v4, v5, v6, v7}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian([BIJ)V

    .line 31
    iget-object p1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->longBuff:[B

    invoke-virtual {v0, p1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 33
    invoke-virtual {p2, v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->setWriteCompressedSizeInZip64ExtraRecord(Z)V

    :goto_2
    new-array p1, v5, [B

    .line 37
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 38
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p4}, Lnet/lingala/zip4j/headers/HeaderUtil;->getBytesFromString(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 40
    :cond_3
    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    array-length v4, p1

    invoke-virtual {v2, v0, v4}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    if-eqz v3, :cond_4

    const/16 v2, 0x14

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    .line 46
    :goto_3
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v4

    if-eqz v4, :cond_5

    add-int/lit8 v2, v2, 0xb

    .line 49
    :cond_5
    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v4, v0, v2}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 51
    array-length v2, p1

    if-lez v2, :cond_6

    .line 52
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_6
    if-eqz v3, :cond_7

    .line 60
    iget-object p1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    sget-object v2, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    .line 61
    invoke-virtual {v2}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v2

    long-to-int v3, v2

    .line 62
    invoke-virtual {p1, v0, v3}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 64
    iget-object p1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v2}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 65
    iget-object p1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getUncompressedSize()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian(Ljava/io/OutputStream;J)V

    .line 66
    iget-object p1, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCompressedSize()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lnet/lingala/zip4j/util/RawIO;->writeLongLittleEndian(Ljava/io/OutputStream;J)V

    .line 69
    :cond_7
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 70
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object p1

    .line 71
    iget-object p2, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipHeader;->getSignature()Lnet/lingala/zip4j/headers/HeaderSignature;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {p2, v0, v3}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 72
    iget-object p2, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getDataSize()I

    move-result v2

    invoke-virtual {p2, v0, v2}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 73
    iget-object p2, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesVersion()Lnet/lingala/zip4j/model/enums/AesVersion;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/enums/AesVersion;->getVersionNumber()I

    move-result v2

    invoke-virtual {p2, v0, v2}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 74
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getVendorID()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p4}, Lnet/lingala/zip4j/headers/HeaderUtil;->getBytesFromString(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-array p2, v1, [B

    .line 77
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesKeyStrength()Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object p4

    invoke-virtual {p4}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getRawCode()I

    move-result p4

    int-to-byte p4, p4

    aput-byte p4, p2, v5

    .line 78
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 80
    iget-object p2, p0, Lnet/lingala/zip4j/headers/HeaderWriter;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCode()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lnet/lingala/zip4j/util/RawIO;->writeShortLittleEndian(Ljava/io/OutputStream;I)V

    .line 83
    :cond_8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 85
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
.end method
