.class public Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;
.super Lnet/lingala/zip4j/model/ZipHeader;


# instance fields
.field private numberOfDiskStartOfZip64EndOfCentralDirectoryRecord:I

.field private offsetZip64EndOfCentralDirectoryRecord:J

.field private totalNumberOfDiscs:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/lingala/zip4j/model/ZipHeader;-><init>()V

    return-void
.end method


# virtual methods
.method public getNumberOfDiskStartOfZip64EndOfCentralDirectoryRecord()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->numberOfDiskStartOfZip64EndOfCentralDirectoryRecord:I

    return v0
.end method

.method public getOffsetZip64EndOfCentralDirectoryRecord()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->offsetZip64EndOfCentralDirectoryRecord:J

    return-wide v0
.end method

.method public getTotalNumberOfDiscs()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->totalNumberOfDiscs:I

    return v0
.end method

.method public setNumberOfDiskStartOfZip64EndOfCentralDirectoryRecord(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->numberOfDiskStartOfZip64EndOfCentralDirectoryRecord:I

    return-void
.end method

.method public setOffsetZip64EndOfCentralDirectoryRecord(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->offsetZip64EndOfCentralDirectoryRecord:J

    return-void
.end method

.method public setTotalNumberOfDiscs(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->totalNumberOfDiscs:I

    return-void
.end method
