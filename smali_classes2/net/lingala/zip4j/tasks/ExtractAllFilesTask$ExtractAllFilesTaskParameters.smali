.class public Lnet/lingala/zip4j/tasks/ExtractAllFilesTask$ExtractAllFilesTaskParameters;
.super Lnet/lingala/zip4j/tasks/AbstractZipTaskParameters;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lingala/zip4j/tasks/ExtractAllFilesTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtractAllFilesTaskParameters"
.end annotation


# instance fields
.field private final outputPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/lingala/zip4j/model/Zip4jConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/tasks/AbstractZipTaskParameters;-><init>(Lnet/lingala/zip4j/model/Zip4jConfig;)V

    .line 2
    iput-object p1, p0, Lnet/lingala/zip4j/tasks/ExtractAllFilesTask$ExtractAllFilesTaskParameters;->outputPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lnet/lingala/zip4j/tasks/ExtractAllFilesTask$ExtractAllFilesTaskParameters;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/lingala/zip4j/tasks/ExtractAllFilesTask$ExtractAllFilesTaskParameters;->outputPath:Ljava/lang/String;

    return-object p0
.end method
