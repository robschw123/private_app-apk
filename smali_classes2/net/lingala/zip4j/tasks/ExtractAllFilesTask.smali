.class public Lnet/lingala/zip4j/tasks/ExtractAllFilesTask;
.super Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/tasks/ExtractAllFilesTask$ExtractAllFilesTaskParameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/tasks/AbstractExtractFileTask<",
        "Lnet/lingala/zip4j/tasks/ExtractAllFilesTask$ExtractAllFilesTaskParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private final password:[C

.field private splitInputStream:Lnet/lingala/zip4j/io/inputstream/SplitFileInputStream;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/ZipModel;[CLnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;-><init>(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    .line 2
    iput-object p2, p0, Lnet/lingala/zip4j/tasks/ExtractAllFilesTask;->password:[C

    return-void
.end method

.method private getFirstFileHeader(Lnet/lingala/zip4j/model/ZipModel;)Lnet/lingala/zip4j/model/FileHeader;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/lingala/zip4j/model/FileHeader;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private prepareZipInputStream(Lnet/lingala/zip4j/model/Zip4jConfig;)Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->getZipModel()Lnet/lingala/zip4j/model/ZipModel;

    move-result-object v0

    invoke-static {v0}, Lnet/lingala/zip4j/util/UnzipUtil;->createSplitInputStream(Lnet/lingala/zip4j/model/ZipModel;)Lnet/lingala/zip4j/io/inputstream/SplitFileInputStream;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/tasks/ExtractAllFilesTask;->splitInputStream:Lnet/lingala/zip4j/io/inputstream/SplitFileInputStream;

    .line 3
    invoke-virtual {p0}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->getZipModel()Lnet/lingala/zip4j/model/ZipModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/tasks/ExtractAllFilesTask;->getFirstFileHeader(Lnet/lingala/zip4j/model/ZipModel;)Lnet/lingala/zip4j/model/FileHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lnet/lingala/zip4j/tasks/ExtractAllFilesTask;->splitInputStream:Lnet/lingala/zip4j/io/inputstream/SplitFileInputStream;

    invoke-virtual {v1, v0}, Lnet/lingala/zip4j/io/inputstream/SplitFileInputStream;->prepareExtractionForFileHeader(Lnet/lingala/zip4j/model/FileHeader;)V

    .line 8
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;

    iget-object v1, p0, Lnet/lingala/zip4j/tasks/ExtractAllFilesTask;->splitInputStream:Lnet/lingala/zip4j/io/inputstream/SplitFileInputStream;

    iget-object v2, p0, Lnet/lingala/zip4j/tasks/ExtractAllFilesTask;->password:[C

    invoke-direct {v0, v1, v2, p1}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;-><init>(Ljava/io/InputStream;[CLnet/lingala/zip4j/model/Zip4jConfig;)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic calculateTotalWork(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    check-cast p1, Lnet/lingala/zip4j/tasks/ExtractAllFilesTask$ExtractAllFilesTaskParameters;

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/tasks/ExtractAllFilesTask;->calculateTotalWork(Lnet/lingala/zip4j/tasks/ExtractAllFilesTask$ExtractAllFilesTaskParameters;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected calculateTotalWork(Lnet/lingala/zip4j/tasks/ExtractAllFilesTask$ExtractAllFilesTaskParameters;)J
    .locals 2

    .line 2
    invoke-virtual {p0}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->getZipModel()Lnet/lingala/zip4j/model/ZipModel;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lnet/lingala/zip4j/headers/HeaderUtil;->getTotalUncompressedSizeOfAllFileHeaders(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected bridge synthetic executeTask(Ljava/lang/Object;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lnet/lingala/zip4j/tasks/ExtractAllFilesTask$ExtractAllFilesTaskParameters;

    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/tasks/ExtractAllFilesTask;->executeTask(Lnet/lingala/zip4j/tasks/ExtractAllFilesTask$ExtractAllFilesTaskParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    return-void
.end method

.method protected executeTask(Lnet/lingala/zip4j/tasks/ExtractAllFilesTask$ExtractAllFilesTaskParameters;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p1, Lnet/lingala/zip4j/tasks/AbstractZipTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/tasks/ExtractAllFilesTask;->prepareZipInputStream(Lnet/lingala/zip4j/model/Zip4jConfig;)Lnet/lingala/zip4j/io/inputstream/ZipInputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    invoke-virtual {p0}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->getZipModel()Lnet/lingala/zip4j/model/ZipModel;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lnet/lingala/zip4j/model/FileHeader;

    .line 4
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "__MACOSX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getUncompressedSize()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->updateWorkCompleted(J)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lnet/lingala/zip4j/tasks/ExtractAllFilesTask;->splitInputStream:Lnet/lingala/zip4j/io/inputstream/SplitFileInputStream;

    invoke-virtual {v1, v3}, Lnet/lingala/zip4j/io/inputstream/SplitFileInputStream;->prepareExtractionForFileHeader(Lnet/lingala/zip4j/model/FileHeader;)V

    .line 11
    iget-object v1, p1, Lnet/lingala/zip4j/tasks/AbstractZipTaskParameters;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v1

    new-array v7, v1, [B

    .line 12
    invoke-static {p1}, Lnet/lingala/zip4j/tasks/ExtractAllFilesTask$ExtractAllFilesTaskParameters;->access$000(Lnet/lingala/zip4j/tasks/ExtractAllFilesTask$ExtractAllFilesTaskParameters;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v6, p2

    invoke-virtual/range {v1 .. v7}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->extractFile(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;[B)V

    .line 13
    invoke-virtual {p0}, Lnet/lingala/zip4j/tasks/AsyncZipTask;->verifyIfTaskIsCancelled()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 15
    :try_start_2
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 16
    :cond_2
    iget-object p1, p0, Lnet/lingala/zip4j/tasks/ExtractAllFilesTask;->splitInputStream:Lnet/lingala/zip4j/io/inputstream/SplitFileInputStream;

    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_4

    .line 18
    :try_start_3
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 32
    iget-object p2, p0, Lnet/lingala/zip4j/tasks/ExtractAllFilesTask;->splitInputStream:Lnet/lingala/zip4j/io/inputstream/SplitFileInputStream;

    if-eqz p2, :cond_5

    .line 33
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 35
    :cond_5
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
