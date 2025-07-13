.class public Lnet/lingala/zip4j/headers/HeaderReader;
.super Ljava/lang/Object;


# instance fields
.field private final intBuff:[B

.field private final rawIO:Lnet/lingala/zip4j/util/RawIO;

.field private zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {v0}, Lnet/lingala/zip4j/util/RawIO;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 5
    iput-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->intBuff:[B

    return-void
.end method

.method private getNumberOfEntriesInCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;)J
    .locals 2

    .line 1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getTotalNumberOfEntriesInCentralDirectory()J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getTotalNumberOfEntriesInCentralDirectory()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method private locateOffsetOfEndOfCentralDirectory(Ljava/io/RandomAccessFile;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    sub-long/2addr v0, v2

    .line 6
    invoke-direct {p0, p1, v0, v1}, Lnet/lingala/zip4j/headers/HeaderReader;->seekInCurrentPart(Ljava/io/RandomAccessFile;J)V

    .line 7
    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Lnet/lingala/zip4j/headers/HeaderSignature;->END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v4}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-wide v0

    .line 11
    :cond_0
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/headers/HeaderReader;->locateOffsetOfEndOfCentralDirectoryByReverseSeek(Ljava/io/RandomAccessFile;)J

    move-result-wide v0

    return-wide v0

    .line 12
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "Zip file size less than size of zip headers. Probably not a zip file."

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private locateOffsetOfEndOfCentralDirectoryByReverseSeek(Ljava/io/RandomAccessFile;)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    sub-long/2addr v0, v2

    .line 3
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x10000

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v6, v4, v2

    if-lez v6, :cond_2

    cmp-long v6, v0, v2

    if-lez v6, :cond_2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 6
    invoke-direct {p0, p1, v0, v1}, Lnet/lingala/zip4j/headers/HeaderReader;->seekInCurrentPart(Ljava/io/RandomAccessFile;J)V

    .line 7
    iget-object v6, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v6, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v6

    int-to-long v6, v6

    sget-object v8, Lnet/lingala/zip4j/headers/HeaderSignature;->END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v8}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-nez v10, :cond_1

    return-wide v0

    :cond_1
    sub-long/2addr v4, v2

    goto :goto_0

    .line 13
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "Zip headers not found. Probably not a zip file"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private parseExtraDataRecords([BI)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/ExtraDataRecord;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    .line 3
    new-instance v3, Lnet/lingala/zip4j/model/ExtraDataRecord;

    invoke-direct {v3}, Lnet/lingala/zip4j/model/ExtraDataRecord;-><init>()V

    .line 4
    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v4, p1, v2}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian([BI)I

    move-result v4

    int-to-long v4, v4

    .line 5
    invoke-virtual {v3, v4, v5}, Lnet/lingala/zip4j/model/ExtraDataRecord;->setHeader(J)V

    add-int/lit8 v2, v2, 0x2

    .line 8
    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v4, p1, v2}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian([BI)I

    move-result v4

    .line 9
    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/ExtraDataRecord;->setSizeOfData(I)V

    add-int/lit8 v2, v2, 0x2

    if-lez v4, :cond_0

    .line 13
    new-array v5, v4, [B

    .line 14
    invoke-static {p1, v2, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    invoke-virtual {v3, v5}, Lnet/lingala/zip4j/model/ExtraDataRecord;->setData([B)V

    :cond_0
    add-int/2addr v2, v4

    .line 18
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private readAesExtraDataRecord(Ljava/util/List;Lnet/lingala/zip4j/util/RawIO;)Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/ExtraDataRecord;",
            ">;",
            "Lnet/lingala/zip4j/util/RawIO;",
            ")",
            "Lnet/lingala/zip4j/model/AESExtraDataRecord;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 9
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/lingala/zip4j/model/ExtraDataRecord;

    if-nez v1, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v2

    sget-object v4, Lnet/lingala/zip4j/headers/HeaderSignature;->AES_EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v4}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v5

    cmp-long v7, v2, v5

    if-nez v7, :cond_1

    .line 16
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object p1

    if-eqz p1, :cond_3

    .line 17
    array-length p1, p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    .line 21
    new-instance p1, Lnet/lingala/zip4j/model/AESExtraDataRecord;

    invoke-direct {p1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;-><init>()V

    .line 23
    invoke-virtual {p1, v4}, Lnet/lingala/zip4j/model/ZipHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 24
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setDataSize(I)V

    .line 26
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 27
    invoke-virtual {p2, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian([BI)I

    move-result v2

    invoke-static {v2}, Lnet/lingala/zip4j/model/enums/AesVersion;->getFromVersionNumber(I)Lnet/lingala/zip4j/model/enums/AesVersion;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setAesVersion(Lnet/lingala/zip4j/model/enums/AesVersion;)V

    const/4 v2, 0x2

    new-array v3, v2, [B

    .line 29
    invoke-static {v0, v2, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setVendorID(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 31
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getAesKeyStrengthFromRawCode(I)Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setAesKeyStrength(Lnet/lingala/zip4j/model/enums/AesKeyStrength;)V

    const/4 v1, 0x5

    .line 33
    invoke-virtual {p2, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian([BI)I

    move-result p2

    invoke-static {p2}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCompressionMethodFromCode(I)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setCompressionMethod(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    return-object p1

    .line 35
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "corrupt AES extra data records"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v0
.end method

.method private readAesExtraDataRecord(Lnet/lingala/zip4j/model/AbstractFileHeader;Lnet/lingala/zip4j/util/RawIO;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lnet/lingala/zip4j/headers/HeaderReader;->readAesExtraDataRecord(Ljava/util/List;Lnet/lingala/zip4j/util/RawIO;)Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setAesExtraDataRecord(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V

    .line 8
    sget-object p2, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private readCentralDirectory(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;Ljava/nio/charset/Charset;)Lnet/lingala/zip4j/model/CentralDirectory;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    new-instance v4, Lnet/lingala/zip4j/model/CentralDirectory;

    invoke-direct {v4}, Lnet/lingala/zip4j/model/CentralDirectory;-><init>()V

    .line 2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v6, v0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-static {v6}, Lnet/lingala/zip4j/headers/HeaderUtil;->getOffsetStartOfCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;)J

    move-result-wide v6

    .line 5
    iget-object v8, v0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v0, v8}, Lnet/lingala/zip4j/headers/HeaderReader;->getNumberOfEntriesInCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;)J

    move-result-wide v8

    .line 7
    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v6, 0x2

    new-array v7, v6, [B

    const/4 v10, 0x4

    new-array v11, v10, [B

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    int-to-long v14, v13

    cmp-long v16, v14, v8

    if-gez v16, :cond_5

    .line 13
    new-instance v14, Lnet/lingala/zip4j/model/FileHeader;

    invoke-direct {v14}, Lnet/lingala/zip4j/model/FileHeader;-><init>()V

    .line 14
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v15

    move-object/from16 v17, v11

    int-to-long v10, v15

    sget-object v15, Lnet/lingala/zip4j/headers/HeaderSignature;->CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v15}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v18

    const/16 v20, 0x1

    cmp-long v21, v10, v18

    if-nez v21, :cond_4

    .line 17
    invoke-virtual {v14, v15}, Lnet/lingala/zip4j/model/ZipHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 18
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v10

    invoke-virtual {v14, v10}, Lnet/lingala/zip4j/model/FileHeader;->setVersionMadeBy(I)V

    .line 19
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v10

    invoke-virtual {v14, v10}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setVersionNeededToExtract(I)V

    new-array v10, v6, [B

    .line 22
    invoke-virtual {v1, v10}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 23
    aget-byte v11, v10, v12

    invoke-static {v11, v12}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v11

    invoke-virtual {v14, v11}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setEncrypted(Z)V

    .line 24
    aget-byte v11, v10, v12

    const/4 v15, 0x3

    invoke-static {v11, v15}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v11

    invoke-virtual {v14, v11}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setDataDescriptorExists(Z)V

    .line 25
    aget-byte v11, v10, v20

    invoke-static {v11, v15}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v11

    invoke-virtual {v14, v11}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setFileNameUTF8Encoded(Z)V

    .line 26
    invoke-virtual {v10}, [B->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    invoke-virtual {v14, v10}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setGeneralPurposeFlag([B)V

    .line 28
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v10

    invoke-static {v10}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCompressionMethodFromCode(I)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v10

    invoke-virtual {v14, v10}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setCompressionMethod(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    .line 30
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v14, v10, v11}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setLastModifiedTime(J)V

    move-object/from16 v10, v17

    .line 32
    invoke-virtual {v1, v10}, Ljava/io/RandomAccessFile;->readFully([B)V

    move-object v15, v7

    .line 33
    invoke-virtual {v2, v10, v12}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v6

    invoke-virtual {v14, v6, v7}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setCrc(J)V

    const/4 v6, 0x4

    .line 35
    invoke-virtual {v2, v1, v6}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;I)J

    move-result-wide v11

    invoke-virtual {v14, v11, v12}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setCompressedSize(J)V

    .line 36
    invoke-virtual {v2, v1, v6}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;I)J

    move-result-wide v11

    invoke-virtual {v14, v11, v12}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setUncompressedSize(J)V

    .line 38
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v11

    .line 39
    invoke-virtual {v14, v11}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setFileNameLength(I)V

    .line 41
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v12

    invoke-virtual {v14, v12}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setExtraFieldLength(I)V

    .line 43
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v12

    .line 44
    invoke-virtual {v14, v12}, Lnet/lingala/zip4j/model/FileHeader;->setFileCommentLength(I)V

    .line 46
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v6

    invoke-virtual {v14, v6}, Lnet/lingala/zip4j/model/FileHeader;->setDiskNumberStart(I)V

    move-object v6, v15

    .line 48
    invoke-virtual {v1, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 49
    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    invoke-virtual {v14, v15}, Lnet/lingala/zip4j/model/FileHeader;->setInternalFileAttributes([B)V

    .line 51
    invoke-virtual {v1, v10}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 52
    invoke-virtual {v10}, [B->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    invoke-virtual {v14, v15}, Lnet/lingala/zip4j/model/FileHeader;->setExternalFileAttributes([B)V

    .line 54
    invoke-virtual {v1, v10}, Ljava/io/RandomAccessFile;->readFully([B)V

    move-wide/from16 v18, v8

    const/4 v7, 0x0

    .line 55
    invoke-virtual {v2, v10, v7}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v8

    invoke-virtual {v14, v8, v9}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    if-lez v11, :cond_3

    .line 58
    new-array v8, v11, [B

    .line 59
    invoke-virtual {v1, v8}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 60
    invoke-virtual {v14}, Lnet/lingala/zip4j/model/AbstractFileHeader;->isFileNameUTF8Encoded()Z

    move-result v9

    invoke-static {v8, v9, v3}, Lnet/lingala/zip4j/headers/HeaderUtil;->decodeStringWithCharset([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    .line 61
    invoke-virtual {v14, v8}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setFileName(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v14}, Lnet/lingala/zip4j/model/FileHeader;->getExternalFileAttributes()[B

    move-result-object v8

    invoke-virtual {v14}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lnet/lingala/zip4j/headers/HeaderReader;->isDirectory([BLjava/lang/String;)Z

    move-result v8

    invoke-virtual {v14, v8}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setDirectory(Z)V

    .line 67
    invoke-direct {v0, v1, v14}, Lnet/lingala/zip4j/headers/HeaderReader;->readExtraDataRecords(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/model/FileHeader;)V

    .line 68
    invoke-direct {v0, v14, v2}, Lnet/lingala/zip4j/headers/HeaderReader;->readZip64ExtendedInfo(Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/util/RawIO;)V

    .line 69
    invoke-direct {v0, v14, v2}, Lnet/lingala/zip4j/headers/HeaderReader;->readAesExtraDataRecord(Lnet/lingala/zip4j/model/AbstractFileHeader;Lnet/lingala/zip4j/util/RawIO;)V

    if-lez v12, :cond_0

    .line 72
    new-array v8, v12, [B

    .line 73
    invoke-virtual {v1, v8}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 74
    invoke-virtual {v14}, Lnet/lingala/zip4j/model/AbstractFileHeader;->isFileNameUTF8Encoded()Z

    move-result v9

    invoke-static {v8, v9, v3}, Lnet/lingala/zip4j/headers/HeaderUtil;->decodeStringWithCharset([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Lnet/lingala/zip4j/model/FileHeader;->setFileComment(Ljava/lang/String;)V

    .line 77
    :cond_0
    invoke-virtual {v14}, Lnet/lingala/zip4j/model/AbstractFileHeader;->isEncrypted()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 78
    invoke-virtual {v14}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 79
    sget-object v8, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v14, v8}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    goto :goto_1

    .line 81
    :cond_1
    sget-object v8, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v14, v8}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    .line 85
    :cond_2
    :goto_1
    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object v7, v6

    move-object v11, v10

    move-wide/from16 v8, v18

    const/4 v6, 0x2

    const/4 v10, 0x4

    const/4 v12, 0x0

    goto/16 :goto_0

    .line 86
    :cond_3
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "Invalid entry name in file header"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_4
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected central directory entry not found (#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_5
    invoke-virtual {v4, v5}, Lnet/lingala/zip4j/model/CentralDirectory;->setFileHeaders(Ljava/util/List;)V

    .line 162
    new-instance v3, Lnet/lingala/zip4j/model/DigitalSignature;

    invoke-direct {v3}, Lnet/lingala/zip4j/model/DigitalSignature;-><init>()V

    .line 163
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v5

    int-to-long v5, v5

    sget-object v7, Lnet/lingala/zip4j/headers/HeaderSignature;->DIGITAL_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v7}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v8

    cmp-long v10, v5, v8

    if-nez v10, :cond_6

    .line 164
    invoke-virtual {v3, v7}, Lnet/lingala/zip4j/model/ZipHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 165
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v2

    invoke-virtual {v3, v2}, Lnet/lingala/zip4j/model/DigitalSignature;->setSizeOfData(I)V

    .line 167
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/DigitalSignature;->getSizeOfData()I

    move-result v2

    if-lez v2, :cond_6

    .line 168
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/DigitalSignature;->getSizeOfData()I

    move-result v2

    new-array v2, v2, [B

    .line 169
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 170
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v1}, Lnet/lingala/zip4j/model/DigitalSignature;->setSignatureData(Ljava/lang/String;)V

    :cond_6
    return-object v4
.end method

.method private readEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;Lnet/lingala/zip4j/model/Zip4jConfig;)Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/headers/HeaderReader;->locateOffsetOfEndOfCentralDirectory(Ljava/io/RandomAccessFile;)J

    move-result-wide v0

    const-wide/16 v2, 0x4

    add-long/2addr v2, v0

    .line 2
    invoke-direct {p0, p1, v2, v3}, Lnet/lingala/zip4j/headers/HeaderReader;->seekInCurrentPart(Ljava/io/RandomAccessFile;J)V

    .line 4
    new-instance v2, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    invoke-direct {v2}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;-><init>()V

    .line 5
    sget-object v3, Lnet/lingala/zip4j/headers/HeaderSignature;->END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/ZipHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 6
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setNumberOfThisDisk(I)V

    .line 7
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setNumberOfThisDiskStartOfCentralDir(I)V

    .line 9
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v3

    .line 10
    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectoryOnThisDisk(I)V

    .line 12
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectory(I)V

    .line 13
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setSizeOfCentralDirectory(I)V

    .line 14
    invoke-virtual {v2, v0, v1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setOffsetOfEndOfCentralDirectory(J)V

    .line 16
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->intBuff:[B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 17
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->intBuff:[B

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setOffsetOfStartOfCentralDirectory(J)V

    .line 19
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result p2

    .line 20
    invoke-virtual {p3}, Lnet/lingala/zip4j/model/Zip4jConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/headers/HeaderReader;->readZipComment(Ljava/io/RandomAccessFile;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setComment(Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getNumberOfThisDisk()I

    move-result p2

    if-lez p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    return-object v2
.end method

.method private readExtraDataRecords(Ljava/io/InputStream;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "I)",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/ExtraDataRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    if-ge p2, v0, :cond_1

    if-lez p2, :cond_0

    int-to-long v0, p2

    .line 27
    invoke-virtual {p1, v0, v1}, Ljava/io/InputStream;->skip(J)J

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 33
    :cond_1
    new-array v0, p2, [B

    .line 34
    invoke-static {p1, v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    .line 37
    :try_start_0
    invoke-direct {p0, v0, p2}, Lnet/lingala/zip4j/headers/HeaderReader;->parseExtraDataRecords([BI)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 40
    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private readExtraDataRecords(Ljava/io/RandomAccessFile;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "I)",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/ExtraDataRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    if-ge p2, v0, :cond_1

    if-lez p2, :cond_0

    .line 13
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 19
    :cond_1
    new-array v0, p2, [B

    .line 20
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 23
    :try_start_0
    invoke-direct {p0, v0, p2}, Lnet/lingala/zip4j/headers/HeaderReader;->parseExtraDataRecords([BI)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 26
    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private readExtraDataRecords(Ljava/io/InputStream;Lnet/lingala/zip4j/model/LocalFileHeader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraFieldLength()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-direct {p0, p1, v0}, Lnet/lingala/zip4j/headers/HeaderReader;->readExtraDataRecords(Ljava/io/InputStream;I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setExtraDataRecords(Ljava/util/List;)V

    return-void
.end method

.method private readExtraDataRecords(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/model/FileHeader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraFieldLength()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-direct {p0, p1, v0}, Lnet/lingala/zip4j/headers/HeaderReader;->readExtraDataRecords(Ljava/io/RandomAccessFile;I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setExtraDataRecords(Ljava/util/List;)V

    return-void
.end method

.method private readZip64EndCentralDirRec(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;)Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->getOffsetZip64EndOfCentralDirectoryRecord()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 12
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 14
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;-><init>()V

    .line 16
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v1

    int-to-long v4, v1

    .line 17
    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v1}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    .line 20
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 21
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setSizeOfZip64EndCentralDirectoryRecord(J)V

    .line 22
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setVersionMadeBy(I)V

    .line 23
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setVersionNeededToExtract(I)V

    .line 24
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setNumberOfThisDisk(I)V

    .line 25
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setNumberOfThisDiskStartOfCentralDirectory(I)V

    .line 27
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    .line 28
    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectoryOnThisDisk(J)V

    .line 30
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectory(J)V

    .line 31
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setSizeOfCentralDirectory(J)V

    .line 33
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    .line 34
    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setOffsetStartCentralDirectoryWRTStartDiskNumber(J)V

    .line 39
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getSizeOfZip64EndCentralDirectoryRecord()J

    move-result-wide v4

    const-wide/16 v6, 0x2c

    sub-long/2addr v4, v6

    cmp-long p2, v4, v2

    if-lez p2, :cond_0

    long-to-int p2, v4

    .line 41
    new-array p2, p2, [B

    .line 42
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 43
    invoke-virtual {v0, p2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setExtensibleDataSector([B)V

    :cond_0
    return-object v0

    .line 44
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid signature for zip64 end of central directory record"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid offset for start of end of central directory record"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid zip64 end of central directory locator"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readZip64EndOfCentralDirectoryLocator(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;J)Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;-><init>()V

    .line 3
    invoke-direct {p0, p1, p3, p4}, Lnet/lingala/zip4j/headers/HeaderReader;->setFilePointerToReadZip64EndCentralDirLoc(Ljava/io/RandomAccessFile;J)V

    .line 5
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result p3

    int-to-long p3, p3

    .line 6
    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_LOCATOR:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v1}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v2

    cmp-long v4, p3, v2

    if-nez v4, :cond_0

    .line 7
    iget-object p3, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lnet/lingala/zip4j/model/ZipModel;->setZip64Format(Z)V

    .line 8
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 15
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result p3

    .line 16
    invoke-virtual {v0, p3}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setNumberOfDiskStartOfZip64EndOfCentralDirectoryRecord(I)V

    .line 19
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;)J

    move-result-wide p3

    .line 20
    invoke-virtual {v0, p3, p4}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setOffsetZip64EndOfCentralDirectoryRecord(J)V

    .line 22
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setTotalNumberOfDiscs(I)V

    return-object v0

    .line 23
    :cond_0
    iget-object p1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/ZipModel;->setZip64Format(Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private readZip64ExtendedInfo(Ljava/util/List;Lnet/lingala/zip4j/util/RawIO;JJJI)Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/ExtraDataRecord;",
            ">;",
            "Lnet/lingala/zip4j/util/RawIO;",
            "JJJI)",
            "Lnet/lingala/zip4j/model/Zip64ExtendedInfo;"
        }
    .end annotation

    move-object v0, p2

    .line 54
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/lingala/zip4j/model/ExtraDataRecord;

    if-nez v2, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    sget-object v4, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v4}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v4

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_6

    .line 61
    new-instance v1, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    invoke-direct {v1}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;-><init>()V

    .line 62
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object v4

    .line 64
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v5

    if-gtz v5, :cond_1

    return-object v3

    :cond_1
    const/4 v3, 0x0

    .line 69
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v5

    const-wide v6, 0xffffffffL

    if-lez v5, :cond_2

    cmp-long v5, p3, v6

    if-nez v5, :cond_2

    .line 70
    invoke-virtual {p2, v4, v3}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setUncompressedSize(J)V

    const/16 v3, 0x8

    .line 74
    :cond_2
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v5

    if-ge v3, v5, :cond_3

    cmp-long v5, p5, v6

    if-nez v5, :cond_3

    .line 75
    invoke-virtual {p2, v4, v3}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setCompressedSize(J)V

    add-int/lit8 v3, v3, 0x8

    .line 79
    :cond_3
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v5

    if-ge v3, v5, :cond_4

    cmp-long v5, p7, v6

    if-nez v5, :cond_4

    .line 80
    invoke-virtual {p2, v4, v3}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setOffsetLocalHeader(J)V

    add-int/lit8 v3, v3, 0x8

    .line 84
    :cond_4
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v2

    if-ge v3, v2, :cond_5

    const v2, 0xffff

    move/from16 v5, p9

    if-ne v5, v2, :cond_5

    .line 85
    invoke-virtual {p2, v4, v3}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian([BI)I

    move-result v0

    invoke-virtual {v1, v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setDiskNumberStart(I)V

    :cond_5
    return-object v1

    :cond_6
    move/from16 v5, p9

    goto/16 :goto_0

    :cond_7
    return-object v3
.end method

.method private readZip64ExtendedInfo(Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/util/RawIO;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getUncompressedSize()J

    move-result-wide v4

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCompressedSize()J

    move-result-wide v6

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v8

    .line 7
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v10

    move-object v1, p0

    move-object v3, p2

    .line 8
    invoke-direct/range {v1 .. v10}, Lnet/lingala/zip4j/headers/HeaderReader;->readZip64ExtendedInfo(Ljava/util/List;Lnet/lingala/zip4j/util/RawIO;JJJI)Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 16
    :cond_1
    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setZip64ExtendedInfo(Lnet/lingala/zip4j/model/Zip64ExtendedInfo;)V

    .line 18
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUncompressedSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 19
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUncompressedSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setUncompressedSize(J)V

    .line 22
    :cond_2
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 23
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setCompressedSize(J)V

    .line 26
    :cond_3
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    .line 27
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    .line 30
    :cond_4
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getDiskNumberStart()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 31
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getDiskNumberStart()I

    move-result p2

    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/FileHeader;->setDiskNumberStart(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method private readZip64ExtendedInfo(Lnet/lingala/zip4j/model/LocalFileHeader;Lnet/lingala/zip4j/util/RawIO;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 32
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v2

    .line 37
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getUncompressedSize()J

    move-result-wide v4

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCompressedSize()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v3, p2

    .line 38
    invoke-direct/range {v1 .. v10}, Lnet/lingala/zip4j/headers/HeaderReader;->readZip64ExtendedInfo(Ljava/util/List;Lnet/lingala/zip4j/util/RawIO;JJJI)Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 45
    :cond_1
    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setZip64ExtendedInfo(Lnet/lingala/zip4j/model/Zip64ExtendedInfo;)V

    .line 47
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUncompressedSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 48
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUncompressedSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setUncompressedSize(J)V

    .line 51
    :cond_2
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 52
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setCompressedSize(J)V

    :cond_3
    :goto_0
    return-void

    .line 53
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "file header is null in reading Zip64 Extended Info"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readZipComment(Ljava/io/RandomAccessFile;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    new-array p2, p2, [B

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/4 p1, 0x0

    if-eqz p3, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p3, Lnet/lingala/zip4j/util/InternalZipConstants;->ZIP4J_DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    :goto_0
    invoke-static {p2, p1, p3}, Lnet/lingala/zip4j/headers/HeaderUtil;->decodeStringWithCharset([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method private seekInCurrentPart(Ljava/io/RandomAccessFile;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;

    invoke-virtual {p1, p2, p3}, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->seekInCurrentPart(J)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    return-void
.end method

.method private setFilePointerToReadZip64EndCentralDirLoc(Ljava/io/RandomAccessFile;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x4

    sub-long/2addr p2, v0

    const-wide/16 v2, 0x8

    sub-long/2addr p2, v2

    sub-long/2addr p2, v0

    sub-long/2addr p2, v0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/headers/HeaderReader;->seekInCurrentPart(Ljava/io/RandomAccessFile;J)V

    return-void
.end method


# virtual methods
.method public isDirectory([BLjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    aget-byte v1, p1, v0

    const/4 v3, 0x4

    invoke-static {v1, v3}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x3

    .line 3
    aget-byte v3, p1, v1

    if-eqz v3, :cond_1

    aget-byte p1, p1, v1

    const/4 v1, 0x6

    invoke-static {p1, v1}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    if-eqz p2, :cond_3

    const-string p1, "/"

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "\\"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public readAllHeaders(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/model/Zip4jConfig;)Lnet/lingala/zip4j/model/ZipModel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    new-instance p1, Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {p1}, Lnet/lingala/zip4j/model/ZipModel;-><init>()V

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    cmp-long v4, v0, v2

    if-ltz v4, :cond_4

    .line 10
    new-instance v0, Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/ZipModel;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 13
    :try_start_0
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {p0, p1, v1, p2}, Lnet/lingala/zip4j/headers/HeaderReader;->readEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;Lnet/lingala/zip4j/model/Zip4jConfig;)Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->setEndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getTotalNumberOfEntriesInCentralDirectory()I

    move-result v0

    if-nez v0, :cond_1

    .line 22
    iget-object p1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    return-object p1

    .line 26
    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    .line 27
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getOffsetOfEndOfCentralDirectory()J

    move-result-wide v2

    .line 28
    invoke-direct {p0, p1, v1, v2, v3}, Lnet/lingala/zip4j/headers/HeaderReader;->readZip64EndOfCentralDirectoryLocator(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;J)Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndOfCentralDirectoryLocator(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;)V

    .line 31
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {p0, p1, v1}, Lnet/lingala/zip4j/headers/HeaderReader;->readZip64EndCentralDirRec(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;)Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;)V

    .line 33
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 34
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getNumberOfThisDisk()I

    move-result v0

    if-lez v0, :cond_2

    .line 35
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    goto :goto_0

    .line 37
    :cond_2
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    .line 41
    :cond_3
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip4jConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {p0, p1, v1, p2}, Lnet/lingala/zip4j/headers/HeaderReader;->readCentralDirectory(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;Ljava/nio/charset/Charset;)Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/ZipModel;->setCentralDirectory(Lnet/lingala/zip4j/model/CentralDirectory;)V

    .line 43
    iget-object p1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    return-object p1

    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 45
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "Zip headers not found. Probably not a zip file or a corrupted zip file"

    invoke-direct {p2, v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 46
    throw p1

    .line 47
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Zip file size less than minimum expected zip file size. Probably not a zip file or a corrupted zip file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readDataDescriptor(Ljava/io/InputStream;Z)Lnet/lingala/zip4j/model/DataDescriptor;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/lingala/zip4j/model/DataDescriptor;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/DataDescriptor;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 4
    invoke-static {p1, v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    .line 5
    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v4

    .line 10
    sget-object v2, Lnet/lingala/zip4j/headers/HeaderSignature;->EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v2}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 11
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/ZipHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 12
    invoke-static {p1, v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    .line 13
    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v2, v1, v3}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/DataDescriptor;->setCrc(J)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/DataDescriptor;->setCrc(J)V

    :goto_0
    if-eqz p2, :cond_1

    .line 19
    iget-object p2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/InputStream;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/DataDescriptor;->setCompressedSize(J)V

    .line 20
    iget-object p2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/InputStream;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lnet/lingala/zip4j/model/DataDescriptor;->setUncompressedSize(J)V

    goto :goto_1

    .line 22
    :cond_1
    iget-object p2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/InputStream;)I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/DataDescriptor;->setCompressedSize(J)V

    .line 23
    iget-object p2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/InputStream;)I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Lnet/lingala/zip4j/model/DataDescriptor;->setUncompressedSize(J)V

    :goto_1
    return-object v0
.end method

.method public readLocalFileHeader(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lnet/lingala/zip4j/model/LocalFileHeader;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;-><init>()V

    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 5
    iget-object v3, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v3, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/InputStream;)I

    move-result v3

    int-to-long v4, v3

    .line 6
    sget-object v6, Lnet/lingala/zip4j/headers/HeaderSignature;->TEMPORARY_SPANNING_MARKER:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v6}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 7
    iget-object v3, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v3, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/InputStream;)I

    move-result v3

    :cond_0
    int-to-long v3, v3

    .line 9
    sget-object v5, Lnet/lingala/zip4j/headers/HeaderSignature;->LOCAL_FILE_HEADER:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v5}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v6

    cmp-long v8, v3, v6

    if-eqz v8, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 12
    :cond_1
    invoke-virtual {v0, v5}, Lnet/lingala/zip4j/model/ZipHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 13
    iget-object v3, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v3, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/InputStream;)I

    move-result v3

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setVersionNeededToExtract(I)V

    const/4 v3, 0x2

    new-array v4, v3, [B

    .line 16
    invoke-static {p1, v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    move-result v5

    if-ne v5, v3, :cond_8

    const/4 v3, 0x0

    .line 19
    aget-byte v5, v4, v3

    invoke-static {v5, v3}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v5

    invoke-virtual {v0, v5}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setEncrypted(Z)V

    .line 20
    aget-byte v5, v4, v3

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v5

    invoke-virtual {v0, v5}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setDataDescriptorExists(Z)V

    const/4 v5, 0x1

    .line 21
    aget-byte v7, v4, v5

    invoke-static {v7, v6}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v6

    invoke-virtual {v0, v6}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setFileNameUTF8Encoded(Z)V

    .line 22
    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setGeneralPurposeFlag([B)V

    .line 24
    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    .line 25
    invoke-virtual {v4, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/InputStream;)I

    move-result v4

    .line 26
    invoke-static {v4}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCompressionMethodFromCode(I)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v4

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setCompressionMethod(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    .line 28
    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v4, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v6, v4

    invoke-virtual {v0, v6, v7}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setLastModifiedTime(J)V

    .line 30
    invoke-static {p1, v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    .line 31
    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v4, v2, v3}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setCrc(J)V

    .line 33
    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v2, p1, v1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/InputStream;I)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setCompressedSize(J)V

    .line 34
    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v2, p1, v1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/InputStream;I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setUncompressedSize(J)V

    .line 36
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v1, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/InputStream;)I

    move-result v1

    .line 37
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setFileNameLength(I)V

    .line 39
    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/InputStream;)I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setExtraFieldLength(I)V

    if-lez v1, :cond_7

    .line 42
    new-array v1, v1, [B

    .line 43
    invoke-static {p1, v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    .line 45
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->isFileNameUTF8Encoded()Z

    move-result v2

    invoke-static {v1, v2, p2}, Lnet/lingala/zip4j/headers/HeaderUtil;->decodeStringWithCharset([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p2

    .line 46
    invoke-virtual {v0, p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setFileName(Ljava/lang/String;)V

    const-string v1, "/"

    .line 47
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\\"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :cond_3
    :goto_0
    invoke-virtual {v0, v5}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setDirectory(Z)V

    .line 52
    invoke-direct {p0, p1, v0}, Lnet/lingala/zip4j/headers/HeaderReader;->readExtraDataRecords(Ljava/io/InputStream;Lnet/lingala/zip4j/model/LocalFileHeader;)V

    .line 53
    iget-object p1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {p0, v0, p1}, Lnet/lingala/zip4j/headers/HeaderReader;->readZip64ExtendedInfo(Lnet/lingala/zip4j/model/LocalFileHeader;Lnet/lingala/zip4j/util/RawIO;)V

    .line 54
    iget-object p1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {p0, v0, p1}, Lnet/lingala/zip4j/headers/HeaderReader;->readAesExtraDataRecord(Lnet/lingala/zip4j/model/AbstractFileHeader;Lnet/lingala/zip4j/util/RawIO;)V

    .line 56
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->isEncrypted()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 58
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object p1

    sget-object p2, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne p1, p2, :cond_4

    goto :goto_1

    .line 61
    :cond_4
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getGeneralPurposeFlag()[B

    move-result-object p1

    aget-byte p1, p1, v3

    const/4 p2, 0x6

    invoke-static {p1, p2}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 62
    sget-object p1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD_VARIANT_STRONG:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    goto :goto_1

    .line 64
    :cond_5
    sget-object p1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    :cond_6
    :goto_1
    return-object v0

    .line 65
    :cond_7
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Invalid entry name in local file header"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_8
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Could not read enough bytes for generalPurposeFlags"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
