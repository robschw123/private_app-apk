.class public Lio/dcloud/feature/weex/config/AndroidTlsConfig;
.super Ljava/lang/Object;
.source "AndroidTlsConfig.java"


# instance fields
.field private ca:[Ljava/lang/String;

.field private keystore:Ljava/lang/String;

.field private storePass:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 69
    :cond_1
    check-cast p1, Lio/dcloud/feature/weex/config/AndroidTlsConfig;

    .line 71
    iget-object v2, p0, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->ca:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 72
    iget-object v3, p1, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->ca:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 75
    iget-object v4, p0, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->keystore:Ljava/lang/String;

    iget-object v5, p1, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->keystore:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->storePass:Ljava/lang/String;

    iget-object p1, p1, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->storePass:Ljava/lang/String;

    .line 76
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCa()[Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->ca:[Ljava/lang/String;

    return-object v0
.end method

.method public getKeystore()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->keystore:Ljava/lang/String;

    return-object v0
.end method

.method public getStorePass()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->storePass:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->keystore:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->storePass:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->ca:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 83
    iget-object v1, p0, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->ca:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setCa([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ca"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 53
    :cond_0
    iput-object p1, p0, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->ca:[Ljava/lang/String;

    return-void
.end method

.method public setKeystore(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keystore"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 31
    :cond_0
    iput-object p1, p0, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->keystore:Ljava/lang/String;

    return-void
.end method

.method public setStorePass(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "storePass"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 42
    :cond_0
    iput-object p1, p0, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->storePass:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidTlsConfig{keystore=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->keystore:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", storePass=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->storePass:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", ca="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->ca:[Ljava/lang/String;

    .line 61
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
