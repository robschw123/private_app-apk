.class public Lnet/lingala/zip4j/model/ZipParameters;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;
    }
.end annotation


# instance fields
.field private aesKeyStrength:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

.field private aesVersion:Lnet/lingala/zip4j/model/enums/AesVersion;

.field private compressionLevel:Lnet/lingala/zip4j/model/enums/CompressionLevel;

.field private compressionMethod:Lnet/lingala/zip4j/model/enums/CompressionMethod;

.field private defaultFolderPath:Ljava/lang/String;

.field private encryptFiles:Z

.field private encryptionMethod:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

.field private entryCRC:J

.field private entrySize:J

.field private excludeFileFilter:Lnet/lingala/zip4j/model/ExcludeFileFilter;

.field private fileComment:Ljava/lang/String;

.field private fileNameInZip:Ljava/lang/String;

.field private includeRootFolder:Z

.field private lastModifiedFileTime:J

.field private overrideExistingFilesInZip:Z

.field private readHiddenFiles:Z

.field private readHiddenFolders:Z

.field private rootFolderNameInZip:Ljava/lang/String;

.field private symbolicLinkAction:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

.field private unixMode:Z

.field private writeExtendedLocalFileHeader:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->compressionMethod:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 3
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->NORMAL:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->compressionLevel:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->encryptFiles:Z

    .line 5
    sget-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->NONE:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->encryptionMethod:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFiles:Z

    .line 7
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFolders:Z

    .line 8
    sget-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    iput-object v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->aesKeyStrength:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 9
    sget-object v1, Lnet/lingala/zip4j/model/enums/AesVersion;->TWO:Lnet/lingala/zip4j/model/enums/AesVersion;

    iput-object v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->aesVersion:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 10
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->includeRootFolder:Z

    const-wide/16 v1, 0x0

    .line 14
    iput-wide v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->lastModifiedFileTime:J

    const-wide/16 v1, -0x1

    .line 15
    iput-wide v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->entrySize:J

    .line 16
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->writeExtendedLocalFileHeader:Z

    .line 17
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->overrideExistingFilesInZip:Z

    .line 20
    sget-object v0, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINKED_FILE_ONLY:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->symbolicLinkAction:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    return-void
.end method

.method public constructor <init>(Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->compressionMethod:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 23
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionLevel;->NORMAL:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->compressionLevel:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->encryptFiles:Z

    .line 25
    sget-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->NONE:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->encryptionMethod:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFiles:Z

    .line 27
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFolders:Z

    .line 28
    sget-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    iput-object v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->aesKeyStrength:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 29
    sget-object v1, Lnet/lingala/zip4j/model/enums/AesVersion;->TWO:Lnet/lingala/zip4j/model/enums/AesVersion;

    iput-object v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->aesVersion:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 30
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->includeRootFolder:Z

    const-wide/16 v1, 0x0

    .line 34
    iput-wide v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->lastModifiedFileTime:J

    const-wide/16 v1, -0x1

    .line 35
    iput-wide v1, p0, Lnet/lingala/zip4j/model/ZipParameters;->entrySize:J

    .line 36
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->writeExtendedLocalFileHeader:Z

    .line 37
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->overrideExistingFilesInZip:Z

    .line 40
    sget-object v0, Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;->INCLUDE_LINKED_FILE_ONLY:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->symbolicLinkAction:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 59
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->compressionMethod:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    .line 60
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionLevel()Lnet/lingala/zip4j/model/enums/CompressionLevel;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->compressionLevel:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    .line 61
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->encryptFiles:Z

    .line 62
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->encryptionMethod:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    .line 63
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isReadHiddenFiles()Z

    move-result v0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFiles:Z

    .line 64
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isReadHiddenFolders()Z

    move-result v0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFolders:Z

    .line 65
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getAesKeyStrength()Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aesKeyStrength:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    .line 66
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getAesVersion()Lnet/lingala/zip4j/model/enums/AesVersion;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aesVersion:Lnet/lingala/zip4j/model/enums/AesVersion;

    .line 67
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isIncludeRootFolder()Z

    move-result v0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->includeRootFolder:Z

    .line 68
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getEntryCRC()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->entryCRC:J

    .line 69
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getDefaultFolderPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->defaultFolderPath:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->fileNameInZip:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getLastModifiedFileTime()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->lastModifiedFileTime:J

    .line 72
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getEntrySize()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->entrySize:J

    .line 73
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isWriteExtendedLocalFileHeader()Z

    move-result v0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->writeExtendedLocalFileHeader:Z

    .line 74
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isOverrideExistingFilesInZip()Z

    move-result v0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->overrideExistingFilesInZip:Z

    .line 75
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getRootFolderNameInZip()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->rootFolderNameInZip:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getFileComment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->fileComment:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getSymbolicLinkAction()Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->symbolicLinkAction:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    .line 78
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getExcludeFileFilter()Lnet/lingala/zip4j/model/ExcludeFileFilter;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->excludeFileFilter:Lnet/lingala/zip4j/model/ExcludeFileFilter;

    .line 79
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isUnixMode()Z

    move-result p1

    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->unixMode:Z

    return-void
.end method


# virtual methods
.method public getAesKeyStrength()Lnet/lingala/zip4j/model/enums/AesKeyStrength;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aesKeyStrength:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    return-object v0
.end method

.method public getAesVersion()Lnet/lingala/zip4j/model/enums/AesVersion;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->aesVersion:Lnet/lingala/zip4j/model/enums/AesVersion;

    return-object v0
.end method

.method public getCompressionLevel()Lnet/lingala/zip4j/model/enums/CompressionLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->compressionLevel:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    return-object v0
.end method

.method public getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->compressionMethod:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    return-object v0
.end method

.method public getDefaultFolderPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->defaultFolderPath:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->encryptionMethod:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    return-object v0
.end method

.method public getEntryCRC()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->entryCRC:J

    return-wide v0
.end method

.method public getEntrySize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->entrySize:J

    return-wide v0
.end method

.method public getExcludeFileFilter()Lnet/lingala/zip4j/model/ExcludeFileFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->excludeFileFilter:Lnet/lingala/zip4j/model/ExcludeFileFilter;

    return-object v0
.end method

.method public getFileComment()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->fileComment:Ljava/lang/String;

    return-object v0
.end method

.method public getFileNameInZip()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->fileNameInZip:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifiedFileTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->lastModifiedFileTime:J

    return-wide v0
.end method

.method public getRootFolderNameInZip()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->rootFolderNameInZip:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbolicLinkAction()Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->symbolicLinkAction:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    return-object v0
.end method

.method public isEncryptFiles()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->encryptFiles:Z

    return v0
.end method

.method public isIncludeRootFolder()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->includeRootFolder:Z

    return v0
.end method

.method public isOverrideExistingFilesInZip()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->overrideExistingFilesInZip:Z

    return v0
.end method

.method public isReadHiddenFiles()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFiles:Z

    return v0
.end method

.method public isReadHiddenFolders()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFolders:Z

    return v0
.end method

.method public isUnixMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->unixMode:Z

    return v0
.end method

.method public isWriteExtendedLocalFileHeader()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->writeExtendedLocalFileHeader:Z

    return v0
.end method

.method public setAesKeyStrength(Lnet/lingala/zip4j/model/enums/AesKeyStrength;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->aesKeyStrength:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    return-void
.end method

.method public setAesVersion(Lnet/lingala/zip4j/model/enums/AesVersion;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->aesVersion:Lnet/lingala/zip4j/model/enums/AesVersion;

    return-void
.end method

.method public setCompressionLevel(Lnet/lingala/zip4j/model/enums/CompressionLevel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->compressionLevel:Lnet/lingala/zip4j/model/enums/CompressionLevel;

    return-void
.end method

.method public setCompressionMethod(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->compressionMethod:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    return-void
.end method

.method public setDefaultFolderPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->defaultFolderPath:Ljava/lang/String;

    return-void
.end method

.method public setEncryptFiles(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->encryptFiles:Z

    return-void
.end method

.method public setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->encryptionMethod:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    return-void
.end method

.method public setEntryCRC(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->entryCRC:J

    return-void
.end method

.method public setEntrySize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->entrySize:J

    return-void
.end method

.method public setExcludeFileFilter(Lnet/lingala/zip4j/model/ExcludeFileFilter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->excludeFileFilter:Lnet/lingala/zip4j/model/ExcludeFileFilter;

    return-void
.end method

.method public setFileComment(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->fileComment:Ljava/lang/String;

    return-void
.end method

.method public setFileNameInZip(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->fileNameInZip:Ljava/lang/String;

    return-void
.end method

.method public setIncludeRootFolder(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->includeRootFolder:Z

    return-void
.end method

.method public setLastModifiedFileTime(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 1
    iput-wide v0, p0, Lnet/lingala/zip4j/model/ZipParameters;->lastModifiedFileTime:J

    return-void

    .line 5
    :cond_0
    iput-wide p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->lastModifiedFileTime:J

    return-void
.end method

.method public setOverrideExistingFilesInZip(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->overrideExistingFilesInZip:Z

    return-void
.end method

.method public setReadHiddenFiles(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFiles:Z

    return-void
.end method

.method public setReadHiddenFolders(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->readHiddenFolders:Z

    return-void
.end method

.method public setRootFolderNameInZip(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->rootFolderNameInZip:Ljava/lang/String;

    return-void
.end method

.method public setSymbolicLinkAction(Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->symbolicLinkAction:Lnet/lingala/zip4j/model/ZipParameters$SymbolicLinkAction;

    return-void
.end method

.method public setUnixMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->unixMode:Z

    return-void
.end method

.method public setWriteExtendedLocalFileHeader(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipParameters;->writeExtendedLocalFileHeader:Z

    return-void
.end method
