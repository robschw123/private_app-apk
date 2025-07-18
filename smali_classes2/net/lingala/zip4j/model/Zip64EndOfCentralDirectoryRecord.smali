.class public Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;
.super Lnet/lingala/zip4j/model/ZipHeader;


# instance fields
.field private extensibleDataSector:[B

.field private numberOfThisDisk:I

.field private numberOfThisDiskStartOfCentralDirectory:I

.field private offsetStartCentralDirectoryWRTStartDiskNumber:J

.field private sizeOfCentralDirectory:J

.field private sizeOfZip64EndCentralDirectoryRecord:J

.field private totalNumberOfEntriesInCentralDirectory:J

.field private totalNumberOfEntriesInCentralDirectoryOnThisDisk:J

.field private versionMadeBy:I

.field private versionNeededToExtract:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnet/lingala/zip4j/model/ZipHeader;-><init>()V

    const-wide/16 v0, -0x1

    .line 11
    iput-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->offsetStartCentralDirectoryWRTStartDiskNumber:J

    return-void
.end method


# virtual methods
.method public getExtensibleDataSector()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->extensibleDataSector:[B

    return-object v0
.end method

.method public getNumberOfThisDisk()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->numberOfThisDisk:I

    return v0
.end method

.method public getNumberOfThisDiskStartOfCentralDirectory()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->numberOfThisDiskStartOfCentralDirectory:I

    return v0
.end method

.method public getOffsetStartCentralDirectoryWRTStartDiskNumber()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->offsetStartCentralDirectoryWRTStartDiskNumber:J

    return-wide v0
.end method

.method public getSizeOfCentralDirectory()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->sizeOfCentralDirectory:J

    return-wide v0
.end method

.method public getSizeOfZip64EndCentralDirectoryRecord()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->sizeOfZip64EndCentralDirectoryRecord:J

    return-wide v0
.end method

.method public getTotalNumberOfEntriesInCentralDirectory()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->totalNumberOfEntriesInCentralDirectory:J

    return-wide v0
.end method

.method public getTotalNumberOfEntriesInCentralDirectoryOnThisDisk()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->totalNumberOfEntriesInCentralDirectoryOnThisDisk:J

    return-wide v0
.end method

.method public getVersionMadeBy()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->versionMadeBy:I

    return v0
.end method

.method public getVersionNeededToExtract()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->versionNeededToExtract:I

    return v0
.end method

.method public setExtensibleDataSector([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->extensibleDataSector:[B

    return-void
.end method

.method public setNumberOfThisDisk(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->numberOfThisDisk:I

    return-void
.end method

.method public setNumberOfThisDiskStartOfCentralDirectory(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->numberOfThisDiskStartOfCentralDirectory:I

    return-void
.end method

.method public setOffsetStartCentralDirectoryWRTStartDiskNumber(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->offsetStartCentralDirectoryWRTStartDiskNumber:J

    return-void
.end method

.method public setSizeOfCentralDirectory(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->sizeOfCentralDirectory:J

    return-void
.end method

.method public setSizeOfZip64EndCentralDirectoryRecord(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->sizeOfZip64EndCentralDirectoryRecord:J

    return-void
.end method

.method public setTotalNumberOfEntriesInCentralDirectory(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->totalNumberOfEntriesInCentralDirectory:J

    return-void
.end method

.method public setTotalNumberOfEntriesInCentralDirectoryOnThisDisk(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->totalNumberOfEntriesInCentralDirectoryOnThisDisk:J

    return-void
.end method

.method public setVersionMadeBy(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->versionMadeBy:I

    return-void
.end method

.method public setVersionNeededToExtract(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->versionNeededToExtract:I

    return-void
.end method
