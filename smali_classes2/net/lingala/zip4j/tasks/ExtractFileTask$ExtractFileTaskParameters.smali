.class public Lnet/lingala/zip4j/tasks/ExtractFileTask$ExtractFileTaskParameters;
.super Lnet/lingala/zip4j/tasks/AbstractZipTaskParameters;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lingala/zip4j/tasks/ExtractFileTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtractFileTaskParameters"
.end annotation


# instance fields
.field private fileToExtract:Ljava/lang/String;

.field private newFileName:Ljava/lang/String;

.field private outputPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/model/Zip4jConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p4}, Lnet/lingala/zip4j/tasks/AbstractZipTaskParameters;-><init>(Lnet/lingala/zip4j/model/Zip4jConfig;)V

    .line 2
    iput-object p1, p0, Lnet/lingala/zip4j/tasks/ExtractFileTask$ExtractFileTaskParameters;->outputPath:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lnet/lingala/zip4j/tasks/ExtractFileTask$ExtractFileTaskParameters;->fileToExtract:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lnet/lingala/zip4j/tasks/ExtractFileTask$ExtractFileTaskParameters;->newFileName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lnet/lingala/zip4j/tasks/ExtractFileTask$ExtractFileTaskParameters;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/lingala/zip4j/tasks/ExtractFileTask$ExtractFileTaskParameters;->fileToExtract:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lnet/lingala/zip4j/tasks/ExtractFileTask$ExtractFileTaskParameters;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/lingala/zip4j/tasks/ExtractFileTask$ExtractFileTaskParameters;->newFileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lnet/lingala/zip4j/tasks/ExtractFileTask$ExtractFileTaskParameters;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/lingala/zip4j/tasks/ExtractFileTask$ExtractFileTaskParameters;->outputPath:Ljava/lang/String;

    return-object p0
.end method
