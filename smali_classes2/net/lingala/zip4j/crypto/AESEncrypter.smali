.class public Lnet/lingala/zip4j/crypto/AESEncrypter;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/lingala/zip4j/crypto/Encrypter;


# instance fields
.field private aesEngine:Lnet/lingala/zip4j/crypto/engine/AESEngine;

.field private final counterBlock:[B

.field private derivedPasswordVerifier:[B

.field private finished:Z

.field private final iv:[B

.field private loopCount:I

.field private mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

.field private nonce:I

.field private final random:Ljava/security/SecureRandom;

.field private saltBytes:[B


# direct methods
.method public constructor <init>([CLnet/lingala/zip4j/model/enums/AesKeyStrength;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->nonce:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->loopCount:I

    if-eqz p1, :cond_2

    .line 15
    array-length v1, p1

    if-eqz v1, :cond_2

    .line 18
    sget-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_128:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    if-eq p2, v1, :cond_1

    sget-object v1, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->KEY_STRENGTH_256:Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Invalid AES key strength"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->finished:Z

    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 24
    iput-object v1, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->counterBlock:[B

    new-array v0, v0, [B

    .line 25
    iput-object v0, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->iv:[B

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/crypto/AESEncrypter;->init([CLnet/lingala/zip4j/model/enums/AesKeyStrength;Z)V

    return-void

    .line 27
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input password is empty or null"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private generateSalt(I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v1, 0x10

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "invalid salt size, cannot generate salt"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-ne p1, v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    .line 12
    :goto_1
    new-array p1, p1, [B

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    .line 14
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    mul-int/lit8 v3, v1, 0x4

    shr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    .line 15
    aput-byte v4, p1, v3

    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v5, v2, 0x10

    int-to-byte v5, v5

    .line 16
    aput-byte v5, p1, v4

    add-int/lit8 v4, v3, 0x2

    shr-int/lit8 v5, v2, 0x8

    int-to-byte v5, v5

    .line 17
    aput-byte v5, p1, v4

    add-int/lit8 v3, v3, 0x3

    int-to-byte v2, v2

    .line 18
    aput-byte v2, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-object p1
.end method

.method private init([CLnet/lingala/zip4j/model/enums/AesKeyStrength;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getSaltLength()I

    move-result v0

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/crypto/AESEncrypter;->generateSalt(I)[B

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->saltBytes:[B

    .line 2
    invoke-static {v0, p1, p2, p3}, Lnet/lingala/zip4j/crypto/AesCipherUtil;->derivePasswordBasedKey([B[CLnet/lingala/zip4j/model/enums/AesKeyStrength;Z)[B

    move-result-object p1

    .line 3
    invoke-static {p1, p2}, Lnet/lingala/zip4j/crypto/AesCipherUtil;->derivePasswordVerifier([BLnet/lingala/zip4j/model/enums/AesKeyStrength;)[B

    move-result-object p3

    iput-object p3, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->derivedPasswordVerifier:[B

    .line 4
    invoke-static {p1, p2}, Lnet/lingala/zip4j/crypto/AesCipherUtil;->getAESEngine([BLnet/lingala/zip4j/model/enums/AesKeyStrength;)Lnet/lingala/zip4j/crypto/engine/AESEngine;

    move-result-object p3

    iput-object p3, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->aesEngine:Lnet/lingala/zip4j/crypto/engine/AESEngine;

    .line 5
    invoke-static {p1, p2}, Lnet/lingala/zip4j/crypto/AesCipherUtil;->getMacBasedPRF([BLnet/lingala/zip4j/model/enums/AesKeyStrength;)Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    return-void
.end method


# virtual methods
.method public encryptData([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/crypto/AESEncrypter;->encryptData([BII)I

    move-result p1

    return p1

    .line 2
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "input bytes are null, cannot perform AES encryption"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encryptData([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 3
    iget-boolean v0, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->finished:Z

    if-nez v0, :cond_4

    .line 10
    rem-int/lit8 v0, p3, 0x10

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 11
    iput-boolean v1, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->finished:Z

    :cond_0
    move v0, p2

    :goto_0
    add-int v2, p2, p3

    if-ge v0, v2, :cond_3

    add-int/lit8 v3, v0, 0x10

    if-gt v3, v2, :cond_1

    const/16 v2, 0x10

    goto :goto_1

    :cond_1
    sub-int/2addr v2, v0

    .line 16
    :goto_1
    iput v2, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->loopCount:I

    .line 18
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->iv:[B

    iget v4, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->nonce:I

    invoke-static {v2, v4}, Lnet/lingala/zip4j/crypto/AesCipherUtil;->prepareBuffAESIVBytes([BI)V

    .line 19
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->aesEngine:Lnet/lingala/zip4j/crypto/engine/AESEngine;

    iget-object v4, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->iv:[B

    iget-object v5, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->counterBlock:[B

    invoke-virtual {v2, v4, v5}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->processBlock([B[B)I

    const/4 v2, 0x0

    .line 21
    :goto_2
    iget v4, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->loopCount:I

    if-ge v2, v4, :cond_2

    add-int v4, v0, v2

    .line 22
    aget-byte v5, p1, v4

    iget-object v6, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->counterBlock:[B

    aget-byte v6, v6, v2

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 25
    :cond_2
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    invoke-virtual {v2, p1, v0, v4}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->update([BII)V

    .line 26
    iget v0, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->nonce:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->nonce:I

    move v0, v3

    goto :goto_0

    :cond_3
    return p3

    .line 27
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "AES Encrypter is in finished state (A non 16 byte block has already been passed to encrypter)"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public getDerivedPasswordVerifier()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->derivedPasswordVerifier:[B

    return-object v0
.end method

.method public getFinalMac()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->doFinal()[B

    move-result-object v0

    const/16 v1, 0xa

    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 3
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public getSaltBytes()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/AESEncrypter;->saltBytes:[B

    return-object v0
.end method
