.class public Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;
.super Lnet/lingala/zip4j/model/ZipHeader;


# instance fields
.field private extraFieldData:Ljava/lang/String;

.field private extraFieldLength:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/lingala/zip4j/model/ZipHeader;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtraFieldData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;->extraFieldData:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraFieldLength()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;->extraFieldLength:I

    return v0
.end method

.method public setExtraFieldData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;->extraFieldData:Ljava/lang/String;

    return-void
.end method

.method public setExtraFieldLength(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;->extraFieldLength:I

    return-void
.end method
