.class public abstract Lnet/lingala/zip4j/io/inputstream/SplitFileInputStream;
.super Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract prepareExtractionForFileHeader(Lnet/lingala/zip4j/model/FileHeader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
