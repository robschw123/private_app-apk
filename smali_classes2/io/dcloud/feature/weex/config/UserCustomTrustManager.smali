.class public Lio/dcloud/feature/weex/config/UserCustomTrustManager;
.super Ljava/lang/Object;
.source "UserCustomTrustManager.java"


# static fields
.field private static cacheCertSSLFactory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/taobao/weex/http/CertDTO;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static cacheSSLFactory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lio/dcloud/feature/weex/config/AndroidTlsConfig;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/dcloud/feature/weex/config/UserCustomTrustManager;->cacheSSLFactory:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/dcloud/feature/weex/config/UserCustomTrustManager;->cacheCertSSLFactory:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSSLSocketFactory(Lcom/taobao/weex/http/CertDTO;Lcom/taobao/weex/WXSDKInstance;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "certDTO",
            "wxsdkInstance"
        }
    .end annotation

    const-string v0, "PKCS12"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 146
    :cond_0
    sget-object v2, Lio/dcloud/feature/weex/config/UserCustomTrustManager;->cacheCertSSLFactory:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    sget-object v2, Lio/dcloud/feature/weex/config/UserCustomTrustManager;->cacheCertSSLFactory:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    if-nez p1, :cond_2

    return-object v1

    :cond_2
    :try_start_0
    const-string v2, "TLS"

    .line 162
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 164
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 166
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v4

    .line 169
    iget-object v5, p0, Lcom/taobao/weex/http/CertDTO;->client:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    iget-object v8, p0, Lcom/taobao/weex/http/CertDTO;->clientPassword:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/2addr v7, v8

    and-int/2addr v5, v7

    if-eqz v5, :cond_5

    .line 170
    invoke-static {}, Lio/dcloud/feature/weex/config/MimeInfoParser;->getInstance()Lio/dcloud/feature/weex/config/MimeInfoParser;

    move-result-object v5

    iget-object v7, p0, Lcom/taobao/weex/http/CertDTO;->client:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lio/dcloud/feature/weex/config/MimeInfoParser;->obtainMimeInfo(Ljava/lang/String;)Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 173
    invoke-virtual {v5, p1}, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->getDataBytes(Lcom/taobao/weex/WXSDKInstance;)Ljava/io/InputStream;

    move-result-object v5

    goto :goto_1

    .line 176
    :cond_4
    iget-object v5, p0, Lcom/taobao/weex/http/CertDTO;->client:Ljava/lang/String;

    invoke-static {p1, v5}, Lio/dcloud/feature/weex/config/MimeInfoParser;->getFilePathStream(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_6

    .line 181
    invoke-virtual {p0}, Lcom/taobao/weex/http/CertDTO;->getClientPassword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 182
    invoke-virtual {p0}, Lcom/taobao/weex/http/CertDTO;->getClientPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    goto :goto_2

    :cond_5
    move-object v4, v1

    :cond_6
    :goto_2
    const-string v3, "X.509"

    .line 191
    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 192
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 194
    :goto_3
    invoke-virtual {p0}, Lcom/taobao/weex/http/CertDTO;->getServer()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v6, v5, :cond_9

    .line 196
    invoke-static {}, Lio/dcloud/feature/weex/config/MimeInfoParser;->getInstance()Lio/dcloud/feature/weex/config/MimeInfoParser;

    move-result-object v5

    invoke-virtual {p0}, Lcom/taobao/weex/http/CertDTO;->getServer()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-virtual {v5, v7}, Lio/dcloud/feature/weex/config/MimeInfoParser;->obtainMimeInfo(Ljava/lang/String;)Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 200
    invoke-virtual {v5, p1}, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->getDataBytes(Lcom/taobao/weex/WXSDKInstance;)Ljava/io/InputStream;

    move-result-object v5

    goto :goto_4

    .line 202
    :cond_7
    invoke-virtual {p0}, Lcom/taobao/weex/http/CertDTO;->getServer()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-static {p1, v5}, Lio/dcloud/feature/weex/config/MimeInfoParser;->getFilePathStream(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    :goto_4
    if-eqz v5, :cond_8

    .line 205
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 206
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 207
    invoke-virtual {v3, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 212
    :cond_9
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p1

    .line 213
    invoke-virtual {p1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    if-nez v4, :cond_a

    .line 217
    invoke-virtual {p1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v1, p1, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    goto :goto_5

    .line 219
    :cond_a
    invoke-virtual {v4}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0, p1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 223
    :goto_5
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    .line 226
    sget-object v0, Lio/dcloud/feature/weex/config/UserCustomTrustManager;->cacheCertSSLFactory:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_b

    .line 228
    sget-object v0, Lio/dcloud/feature/weex/config/UserCustomTrustManager;->cacheCertSSLFactory:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 230
    :cond_b
    sget-object v0, Lio/dcloud/feature/weex/config/UserCustomTrustManager;->cacheCertSSLFactory:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 244
    invoke-virtual {p0}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    goto :goto_6

    :catch_1
    move-exception p0

    .line 242
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_2
    move-exception p0

    .line 240
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_6

    :catch_3
    move-exception p0

    .line 238
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_6

    :catch_4
    move-exception p0

    .line 236
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_6

    :catch_5
    move-exception p0

    .line 234
    invoke-virtual {p0}, Ljava/security/KeyManagementException;->printStackTrace()V

    :goto_6
    return-object v1
.end method

.method public static getSSLSocketFactory(Lio/dcloud/feature/weex/config/AndroidTlsConfig;Lcom/taobao/weex/WXSDKInstance;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "androidTlsConfig",
            "wxsdkInstance"
        }
    .end annotation

    const-string v0, "PKCS12"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 43
    :cond_0
    sget-object v2, Lio/dcloud/feature/weex/config/UserCustomTrustManager;->cacheSSLFactory:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    sget-object v2, Lio/dcloud/feature/weex/config/UserCustomTrustManager;->cacheSSLFactory:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    if-nez p1, :cond_2

    return-object v1

    :cond_2
    :try_start_0
    const-string v2, "TLS"

    .line 60
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 62
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 64
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v4

    .line 67
    invoke-virtual {p0}, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->getKeystore()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p0}, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->getStorePass()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/2addr v7, v8

    and-int/2addr v5, v7

    if-eqz v5, :cond_5

    .line 68
    invoke-static {}, Lio/dcloud/feature/weex/config/MimeInfoParser;->getInstance()Lio/dcloud/feature/weex/config/MimeInfoParser;

    move-result-object v5

    invoke-virtual {p0}, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->getKeystore()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lio/dcloud/feature/weex/config/MimeInfoParser;->obtainMimeInfo(Ljava/lang/String;)Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 70
    invoke-virtual {v5, p1}, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->getDataBytes(Lcom/taobao/weex/WXSDKInstance;)Ljava/io/InputStream;

    move-result-object v5

    .line 72
    invoke-virtual {p0}, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->getStorePass()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 73
    invoke-virtual {p0}, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->getStorePass()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    goto :goto_1

    :cond_4
    return-object v1

    :cond_5
    move-object v4, v1

    :goto_1
    const-string v3, "X.509"

    .line 83
    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 84
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 86
    :goto_2
    invoke-virtual {p0}, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->getCa()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v6, v5, :cond_7

    .line 88
    invoke-static {}, Lio/dcloud/feature/weex/config/MimeInfoParser;->getInstance()Lio/dcloud/feature/weex/config/MimeInfoParser;

    move-result-object v5

    invoke-virtual {p0}, Lio/dcloud/feature/weex/config/AndroidTlsConfig;->getCa()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-virtual {v5, v7}, Lio/dcloud/feature/weex/config/MimeInfoParser;->obtainMimeInfo(Ljava/lang/String;)Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 91
    invoke-virtual {v5, p1}, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->getDataBytes(Lcom/taobao/weex/WXSDKInstance;)Ljava/io/InputStream;

    move-result-object v5

    .line 92
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 93
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 94
    invoke-virtual {v3, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 98
    :cond_7
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p1

    .line 99
    invoke-virtual {p1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    if-nez v4, :cond_8

    .line 103
    invoke-virtual {p1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v1, p1, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    goto :goto_3

    .line 105
    :cond_8
    invoke-virtual {v4}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0, p1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 109
    :goto_3
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    .line 112
    sget-object v0, Lio/dcloud/feature/weex/config/UserCustomTrustManager;->cacheSSLFactory:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_9

    .line 114
    sget-object v0, Lio/dcloud/feature/weex/config/UserCustomTrustManager;->cacheSSLFactory:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 116
    :cond_9
    sget-object v0, Lio/dcloud/feature/weex/config/UserCustomTrustManager;->cacheSSLFactory:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 130
    invoke-virtual {p0}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception p0

    .line 128
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception p0

    .line 126
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception p0

    .line 124
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception p0

    .line 122
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_4

    :catch_5
    move-exception p0

    .line 120
    invoke-virtual {p0}, Ljava/security/KeyManagementException;->printStackTrace()V

    :goto_4
    return-object v1
.end method
