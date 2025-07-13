.class public abstract Lnet/lingala/zip4j/model/ZipHeader;
.super Ljava/lang/Object;


# instance fields
.field private signature:Lnet/lingala/zip4j/headers/HeaderSignature;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSignature()Lnet/lingala/zip4j/headers/HeaderSignature;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipHeader;->signature:Lnet/lingala/zip4j/headers/HeaderSignature;

    return-object v0
.end method

.method public setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipHeader;->signature:Lnet/lingala/zip4j/headers/HeaderSignature;

    return-void
.end method
