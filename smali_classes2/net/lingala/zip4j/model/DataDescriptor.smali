.class public Lnet/lingala/zip4j/model/DataDescriptor;
.super Lnet/lingala/zip4j/model/ZipHeader;


# instance fields
.field private compressedSize:J

.field private crc:J

.field private uncompressedSize:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/lingala/zip4j/model/ZipHeader;-><init>()V

    return-void
.end method


# virtual methods
.method public getCompressedSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/model/DataDescriptor;->compressedSize:J

    return-wide v0
.end method

.method public getCrc()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/model/DataDescriptor;->crc:J

    return-wide v0
.end method

.method public getUncompressedSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/model/DataDescriptor;->uncompressedSize:J

    return-wide v0
.end method

.method public setCompressedSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/model/DataDescriptor;->compressedSize:J

    return-void
.end method

.method public setCrc(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/model/DataDescriptor;->crc:J

    return-void
.end method

.method public setUncompressedSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/model/DataDescriptor;->uncompressedSize:J

    return-void
.end method
