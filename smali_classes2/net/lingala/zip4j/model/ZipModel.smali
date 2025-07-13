.class public Lnet/lingala/zip4j/model/ZipModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private archiveExtraDataRecord:Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;

.field private centralDirectory:Lnet/lingala/zip4j/model/CentralDirectory;

.field private dataDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/DataDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private end:J

.field private endOfCentralDirectoryRecord:Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

.field private isNestedZipFile:Z

.field private isZip64Format:Z

.field private localFileHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/LocalFileHeader;",
            ">;"
        }
    .end annotation
.end field

.field private splitArchive:Z

.field private splitLength:J

.field private start:J

.field private zip64EndOfCentralDirectoryLocator:Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

.field private zip64EndOfCentralDirectoryRecord:Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

.field private zipFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->localFileHeaders:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->dataDescriptors:Ljava/util/List;

    .line 4
    new-instance v0, Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->archiveExtraDataRecord:Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;

    .line 5
    new-instance v0, Lnet/lingala/zip4j/model/CentralDirectory;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/CentralDirectory;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->centralDirectory:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 6
    new-instance v0, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->endOfCentralDirectoryRecord:Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    .line 7
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->zip64EndOfCentralDirectoryLocator:Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    .line 8
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->zip64EndOfCentralDirectoryRecord:Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format:Z

    const-wide/16 v0, -0x1

    .line 19
    iput-wide v0, p0, Lnet/lingala/zip4j/model/ZipModel;->splitLength:J

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getArchiveExtraDataRecord()Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->archiveExtraDataRecord:Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;

    return-object v0
.end method

.method public getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->centralDirectory:Lnet/lingala/zip4j/model/CentralDirectory;

    return-object v0
.end method

.method public getDataDescriptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/DataDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->dataDescriptors:Ljava/util/List;

    return-object v0
.end method

.method public getEnd()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/model/ZipModel;->end:J

    return-wide v0
.end method

.method public getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->endOfCentralDirectoryRecord:Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    return-object v0
.end method

.method public getLocalFileHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/LocalFileHeader;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->localFileHeaders:Ljava/util/List;

    return-object v0
.end method

.method public getSplitLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/model/ZipModel;->splitLength:J

    return-wide v0
.end method

.method public getStart()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/model/ZipModel;->start:J

    return-wide v0
.end method

.method public getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->zip64EndOfCentralDirectoryLocator:Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    return-object v0
.end method

.method public getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->zip64EndOfCentralDirectoryRecord:Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    return-object v0
.end method

.method public getZipFile()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->zipFile:Ljava/io/File;

    return-object v0
.end method

.method public isNestedZipFile()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipModel;->isNestedZipFile:Z

    return v0
.end method

.method public isSplitArchive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipModel;->splitArchive:Z

    return v0
.end method

.method public isZip64Format()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format:Z

    return v0
.end method

.method public setArchiveExtraDataRecord(Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->archiveExtraDataRecord:Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;

    return-void
.end method

.method public setCentralDirectory(Lnet/lingala/zip4j/model/CentralDirectory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->centralDirectory:Lnet/lingala/zip4j/model/CentralDirectory;

    return-void
.end method

.method public setDataDescriptors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/DataDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->dataDescriptors:Ljava/util/List;

    return-void
.end method

.method public setEnd(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/model/ZipModel;->end:J

    return-void
.end method

.method public setEndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->endOfCentralDirectoryRecord:Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    return-void
.end method

.method public setLocalFileHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/LocalFileHeader;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->localFileHeaders:Ljava/util/List;

    return-void
.end method

.method public setNestedZipFile(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipModel;->isNestedZipFile:Z

    return-void
.end method

.method public setSplitArchive(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipModel;->splitArchive:Z

    return-void
.end method

.method public setSplitLength(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/model/ZipModel;->splitLength:J

    return-void
.end method

.method public setStart(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/model/ZipModel;->start:J

    return-void
.end method

.method public setZip64EndOfCentralDirectoryLocator(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->zip64EndOfCentralDirectoryLocator:Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    return-void
.end method

.method public setZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->zip64EndOfCentralDirectoryRecord:Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    return-void
.end method

.method public setZip64Format(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format:Z

    return-void
.end method

.method public setZipFile(Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->zipFile:Ljava/io/File;

    return-void
.end method
