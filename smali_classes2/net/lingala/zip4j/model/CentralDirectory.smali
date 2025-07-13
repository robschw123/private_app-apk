.class public Lnet/lingala/zip4j/model/CentralDirectory;
.super Ljava/lang/Object;


# instance fields
.field private digitalSignature:Lnet/lingala/zip4j/model/DigitalSignature;

.field private fileHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/FileHeader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/model/CentralDirectory;->fileHeaders:Ljava/util/List;

    .line 4
    new-instance v0, Lnet/lingala/zip4j/model/DigitalSignature;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/DigitalSignature;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/model/CentralDirectory;->digitalSignature:Lnet/lingala/zip4j/model/DigitalSignature;

    return-void
.end method


# virtual methods
.method public getDigitalSignature()Lnet/lingala/zip4j/model/DigitalSignature;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/CentralDirectory;->digitalSignature:Lnet/lingala/zip4j/model/DigitalSignature;

    return-object v0
.end method

.method public getFileHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/FileHeader;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/CentralDirectory;->fileHeaders:Ljava/util/List;

    return-object v0
.end method

.method public setDigitalSignature(Lnet/lingala/zip4j/model/DigitalSignature;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/CentralDirectory;->digitalSignature:Lnet/lingala/zip4j/model/DigitalSignature;

    return-void
.end method

.method public setFileHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/FileHeader;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/CentralDirectory;->fileHeaders:Ljava/util/List;

    return-void
.end method
