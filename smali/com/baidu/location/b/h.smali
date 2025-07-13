.class public Lcom/baidu/location/b/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/b/h$a;,
        Lcom/baidu/location/b/h$b;
    }
.end annotation


# static fields
.field public static f:Ljava/lang/String; = "0"

.field private static j:Lcom/baidu/location/b/h;


# instance fields
.field private A:Lcom/baidu/location/b/h$b;

.field private B:Z

.field private C:Z

.field private D:I

.field private E:F

.field private F:F

.field private G:J

.field private H:I

.field private I:Landroid/os/Handler;

.field private J:[B

.field private K:[B

.field private L:I

.field private M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private N:Z

.field a:J

.field b:Landroid/location/Location;

.field c:Landroid/location/Location;

.field d:Ljava/lang/StringBuilder;

.field e:J

.field g:I

.field h:D

.field i:D

.field private k:I

.field private l:D

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:D

.field private s:D

.field private t:D

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/location/b/h;->k:I

    const-wide v1, 0x3fe6666660000000L    # 0.699999988079071

    iput-wide v1, p0, Lcom/baidu/location/b/h;->l:D

    const-string v1, "3G|4G"

    iput-object v1, p0, Lcom/baidu/location/b/h;->m:Ljava/lang/String;

    iput v0, p0, Lcom/baidu/location/b/h;->n:I

    const v1, 0x4b000

    iput v1, p0, Lcom/baidu/location/b/h;->o:I

    const/16 v1, 0xf

    iput v1, p0, Lcom/baidu/location/b/h;->p:I

    iput v0, p0, Lcom/baidu/location/b/h;->q:I

    const-wide/high16 v0, 0x400c000000000000L    # 3.5

    iput-wide v0, p0, Lcom/baidu/location/b/h;->r:D

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    iput-wide v0, p0, Lcom/baidu/location/b/h;->s:D

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/baidu/location/b/h;->t:D

    const/16 v0, 0x12c

    iput v0, p0, Lcom/baidu/location/b/h;->u:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/baidu/location/b/h;->v:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/location/b/h;->w:I

    iput v0, p0, Lcom/baidu/location/b/h;->x:I

    iput v1, p0, Lcom/baidu/location/b/h;->y:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/baidu/location/b/h;->z:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b/h;->A:Lcom/baidu/location/b/h$b;

    iput-boolean v1, p0, Lcom/baidu/location/b/h;->B:Z

    iput-boolean v1, p0, Lcom/baidu/location/b/h;->C:Z

    iput v1, p0, Lcom/baidu/location/b/h;->D:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/baidu/location/b/h;->E:F

    iput v4, p0, Lcom/baidu/location/b/h;->F:F

    iput-wide v2, p0, Lcom/baidu/location/b/h;->G:J

    const/16 v4, 0x1f4

    iput v4, p0, Lcom/baidu/location/b/h;->H:I

    iput-wide v2, p0, Lcom/baidu/location/b/h;->a:J

    iput-object v0, p0, Lcom/baidu/location/b/h;->b:Landroid/location/Location;

    iput-object v0, p0, Lcom/baidu/location/b/h;->c:Landroid/location/Location;

    iput-object v0, p0, Lcom/baidu/location/b/h;->d:Ljava/lang/StringBuilder;

    iput-wide v2, p0, Lcom/baidu/location/b/h;->e:J

    iput-object v0, p0, Lcom/baidu/location/b/h;->I:Landroid/os/Handler;

    const/4 v2, 0x4

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/baidu/location/b/h;->J:[B

    iput-object v0, p0, Lcom/baidu/location/b/h;->K:[B

    iput v1, p0, Lcom/baidu/location/b/h;->L:I

    iput-object v0, p0, Lcom/baidu/location/b/h;->M:Ljava/util/List;

    iput-boolean v1, p0, Lcom/baidu/location/b/h;->N:Z

    iput v1, p0, Lcom/baidu/location/b/h;->g:I

    const-wide v0, 0x405d0e4d1816773bL    # 116.22345545

    iput-wide v0, p0, Lcom/baidu/location/b/h;->h:D

    const-wide v0, 0x40441f7206defd8dL    # 40.245667323

    iput-wide v0, p0, Lcom/baidu/location/b/h;->i:D

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/b/h;->I:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/baidu/location/b/h;
    .locals 1

    sget-object v0, Lcom/baidu/location/b/h;->j:Lcom/baidu/location/b/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/b/h;

    invoke-direct {v0}, Lcom/baidu/location/b/h;-><init>()V

    sput-object v0, Lcom/baidu/location/b/h;->j:Lcom/baidu/location/b/h;

    :cond_0
    sget-object v0, Lcom/baidu/location/b/h;->j:Lcom/baidu/location/b/h;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/location/b/h;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/location/b/h;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "--"

    const-string v2, "\r\n"

    const-string v3, "multipart/form-data"

    :try_start_0
    invoke-static {}, Lcom/baidu/location/e/k;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljavax/net/ssl/HttpsURLConnection;

    const/16 v5, 0x2710

    invoke-virtual {p2, v5}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    invoke-virtual {p2, v5}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    invoke-virtual {p2, v5}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    const-string v6, "POST"

    invoke-virtual {p2, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v6, "Charset"

    const-string v7, "utf-8"

    invoke-virtual {p2, v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/baidu/location/b/h$a;

    invoke-direct {v6, v4}, Lcom/baidu/location/b/h$a;-><init>(Ljava/net/URL;)V

    invoke-virtual {p2, v6}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    const-string v4, "connection"

    const-string v6, "close"

    invoke-virtual {p2, v4, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Content-Type"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";boundary="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v4, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content-Disposition: form-data; name=\"location_dat\"; filename=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content-Type: application/octet-stream; charset=utf-8"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->write([B)V

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    :goto_0
    invoke-virtual {v6, p1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    invoke-virtual {v4, p1, v5, v7}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/io/DataOutputStream;->write([B)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result p1

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    iget p2, p0, Lcom/baidu/location/b/h;->y:I

    add-int/lit16 p2, p2, 0x190

    iput p2, p0, Lcom/baidu/location/b/h;->y:I

    invoke-direct {p0, p2}, Lcom/baidu/location/b/h;->c(I)V

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_1

    const-string p1, "1"
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :catch_1
    :cond_1
    const-string p1, "0"

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/location/b/h;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/b/h;->b(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/b/h;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/b/h;->e(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method private a(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const v1, 0xff00

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    const/high16 v1, 0xff0000

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    const/high16 v1, -0x1000000

    and-int/2addr p1, v1

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput-byte p1, v0, v1

    return-object v0
.end method

.method private a(Ljava/lang/String;)[B
    .locals 8

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    int-to-byte v0, v0

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v1

    int-to-byte v1, v1

    array-length v2, p1

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-byte v6, p1, v4

    add-int/lit8 v7, v5, 0x1

    xor-int/2addr v6, v0

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    :cond_1
    add-int/lit8 p1, v5, 0x1

    aput-byte v0, v2, v5

    aput-byte v1, v2, p1

    return-object v2
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/baidu/location/b/h;->a(I)[B

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/b/h;->M:Ljava/util/List;

    aget-byte v2, p1, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/b/h;->c(Landroid/location/Location;)V

    invoke-direct {p0}, Lcom/baidu/location/b/h;->h()V

    return-void
.end method

.method private c()V
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/b/h;->N:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/b/h;->N:Z

    sget-object v0, Lcom/baidu/location/e/b;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/location/b/h;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/baidu/location/b/h;->j()V

    invoke-direct {p0}, Lcom/baidu/location/b/h;->d()V

    return-void
.end method

.method private c(I)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/e/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/grtcf.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x8

    const-string v4, "rw"

    if-nez v0, :cond_3

    :try_start_1
    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/baidu/location/e/j;->a:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v5, 0x2

    invoke-virtual {v0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const-string v6, "1980_01_01:0"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v7, v6

    invoke-virtual {v0, v7}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->write([B)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    const-wide/16 v6, 0x320

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%d_%02d_%02d"

    invoke-direct {p0, v2}, Lcom/baidu/location/b/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method private c(Landroid/location/Location;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/b/h;->a:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/baidu/location/b/h;->H:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    iget v1, p0, Lcom/baidu/location/b/h;->E:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    iput v0, p0, Lcom/baidu/location/b/h;->E:F

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/b/h;->M:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/b/h;->M:Ljava/util/List;

    invoke-direct {p0}, Lcom/baidu/location/b/h;->i()V

    invoke-direct {p0, p1}, Lcom/baidu/location/b/h;->d(Landroid/location/Location;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/baidu/location/b/h;->e(Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    iget p1, p0, Lcom/baidu/location/b/h;->L:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/baidu/location/b/h;->L:I

    :cond_3
    :goto_1
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "uptime"

    const-string v3, "nondrper"

    const-string v4, "nondron"

    const-string v5, "stper"

    const-string v6, "drstsh"

    const-string v7, "stspsh"

    const-string v8, "acsh"

    const-string v9, "spsh"

    const-string v10, "chdron"

    const-string v11, "per"

    const-string v12, "tcsh"

    const-string v13, "tcon"

    const-string v14, "net"

    const-string v15, "bash"

    move-object/from16 v16, v2

    const-string v2, "on"

    if-eqz v1, :cond_f

    move-object/from16 v17, v3

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/location/b/h;->k:I

    :cond_0
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/location/b/h;->l:D

    :cond_1
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/location/b/h;->m:Ljava/lang/String;

    :cond_2
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/location/b/h;->n:I

    :cond_3
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/location/b/h;->o:I

    :cond_4
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/location/b/h;->p:I

    :cond_5
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/location/b/h;->q:I

    :cond_6
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/location/b/h;->r:D

    :cond_7
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/location/b/h;->s:D

    :cond_8
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/location/b/h;->t:D

    :cond_9
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/location/b/h;->u:I

    :cond_a
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/location/b/h;->v:I

    :cond_b
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/location/b/h;->w:I

    :cond_c
    move-object/from16 v1, v17

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/location/b/h;->x:I

    :cond_d
    move-object/from16 v1, v16

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/location/b/h;->z:J

    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/baidu/location/b/h;->k()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_f
    return-void
.end method

.method private d()V
    .locals 5

    const-string v0, "9.3.5.3"

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    iget-object v2, p0, Lcom/baidu/location/b/h;->J:[B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    const/4 v4, 0x2

    aput-byte v3, v2, v4

    const/4 v4, 0x3

    aput-byte v3, v2, v4

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v1, 0x4

    :cond_0
    :goto_0
    if-ge v3, v1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/baidu/location/b/h;->J:[B

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/e/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/location/e/b;->a()Lcom/baidu/location/e/b;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/location/e/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/location/b/h;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/b/h;->K:[B

    return-void
.end method

.method private d(Landroid/location/Location;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/b/h;->e:J

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    invoke-direct {p0, v1}, Lcom/baidu/location/b/h;->b(I)V

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/baidu/location/b/h;->b(I)V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    mul-double v0, v0, v2

    double-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/baidu/location/b/h;->b(I)V

    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-lez v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v0

    const/high16 v2, 0x41700000    # 15.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    and-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    :goto_0
    iget-object v2, p0, Lcom/baidu/location/b/h;->M:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lez v1, :cond_1

    const/16 v0, -0x80

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x400ccccccccccccdL    # 3.6

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    :goto_1
    iget-object v1, p0, Lcom/baidu/location/b/h;->M:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/baidu/location/b/h;->b:Landroid/location/Location;

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 9

    const-string v0, ":"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/baidu/location/e/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/grtcf.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x1000

    const/4 v6, 0x1

    if-ge v3, v5, :cond_0

    new-array v7, v3, [B

    invoke-virtual {v1, v7, v4, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>([B)V

    const-string v7, "%d_%02d_%02d"

    invoke-direct {p0, v7}, Lcom/baidu/location/b/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v7, :cond_0

    :try_start_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    if-le v3, v6, :cond_0

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/baidu/location/b/h;->y:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    if-gt v6, v2, :cond_3

    mul-int/lit16 v0, v6, 0x800

    int-to-long v7, v0

    :try_start_2
    invoke-virtual {v1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    if-le v0, v5, :cond_1

    goto :goto_1

    :cond_1
    new-array v3, v0, [B

    invoke-virtual {v1, v3, v4, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v0}, Lcom/baidu/location/b/h;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_4
    return-void
.end method

.method private e(Landroid/location/Location;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iget-object v4, v0, Lcom/baidu/location/b/h;->b:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    sub-double/2addr v2, v4

    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double v2, v2, v4

    double-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    iget-object v3, v0, Lcom/baidu/location/b/h;->b:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double v6, v6, v4

    double-to-int v3, v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearing()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v6

    xor-int/2addr v6, v5

    if-lez v2, :cond_1

    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    const/4 v8, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lez v3, :cond_2

    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    const/4 v9, 0x1

    :goto_1
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v10, v0, Lcom/baidu/location/b/h;->L:I

    if-le v10, v5, :cond_3

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/baidu/location/b/h;->c:Landroid/location/Location;

    iget-object v5, v0, Lcom/baidu/location/b/h;->b:Landroid/location/Location;

    iput-object v5, v0, Lcom/baidu/location/b/h;->c:Landroid/location/Location;

    :cond_3
    iput-object v1, v0, Lcom/baidu/location/b/h;->b:Landroid/location/Location;

    if-eqz v1, :cond_4

    iget-object v5, v0, Lcom/baidu/location/b/h;->c:Landroid/location/Location;

    if-eqz v5, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    iget-object v5, v0, Lcom/baidu/location/b/h;->c:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    cmp-long v5, v10, v12

    if-lez v5, :cond_4

    iget-object v5, v0, Lcom/baidu/location/b/h;->b:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    iget-object v5, v0, Lcom/baidu/location/b/h;->c:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x1388

    cmp-long v5, v10, v12

    if-gez v5, :cond_4

    iget-object v5, v0, Lcom/baidu/location/b/h;->b:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    iget-object v5, v0, Lcom/baidu/location/b/h;->c:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const/4 v5, 0x2

    new-array v5, v5, [F

    iget-object v12, v0, Lcom/baidu/location/b/h;->b:Landroid/location/Location;

    invoke-virtual {v12}, Landroid/location/Location;->getAltitude()D

    move-result-wide v12

    iget-object v14, v0, Lcom/baidu/location/b/h;->b:Landroid/location/Location;

    invoke-virtual {v14}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    iget-object v7, v0, Lcom/baidu/location/b/h;->c:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    iget-object v7, v0, Lcom/baidu/location/b/h;->c:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    move-object/from16 v20, v5

    invoke-static/range {v12 .. v20}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v12, 0x0

    aget v5, v5, v12

    iget-object v12, v0, Lcom/baidu/location/b/h;->c:Landroid/location/Location;

    invoke-virtual {v12}, Landroid/location/Location;->getSpeed()F

    move-result v12

    long-to-float v13, v10

    mul-float v12, v12, v13

    sub-float/2addr v5, v12

    mul-float v5, v5, v7

    mul-long v10, v10, v10

    long-to-float v7, v10

    div-float/2addr v5, v7

    float-to-double v10, v5

    iget v5, v0, Lcom/baidu/location/b/h;->F:F

    float-to-double v12, v5

    cmpl-double v5, v10, v12

    if-lez v5, :cond_4

    double-to-float v5, v10

    iput v5, v0, Lcom/baidu/location/b/h;->F:F

    :cond_4
    iget-object v5, v0, Lcom/baidu/location/b/h;->M:Ljava/util/List;

    and-int/lit16 v7, v2, 0xff

    int-to-byte v7, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lcom/baidu/location/b/h;->M:Ljava/util/List;

    const v7, 0xff00

    and-int/2addr v2, v7

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/baidu/location/b/h;->M:Ljava/util/List;

    and-int/lit16 v5, v3, 0xff

    int-to-byte v5, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/baidu/location/b/h;->M:Ljava/util/List;

    and-int/2addr v3, v7

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lez v4, :cond_6

    const/16 v2, 0x20

    if-lez v9, :cond_5

    const/16 v2, 0x60

    int-to-byte v2, v2

    :cond_5
    if-lez v8, :cond_8

    goto :goto_2

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v2

    const/high16 v3, 0x41700000    # 15.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    and-int/lit8 v2, v2, 0x1f

    int-to-byte v2, v2

    if-lez v9, :cond_7

    or-int/lit8 v2, v2, 0x40

    int-to-byte v2, v2

    :cond_7
    if-lez v8, :cond_8

    :goto_2
    or-int/lit8 v2, v2, -0x80

    int-to-byte v2, v2

    :cond_8
    iget-object v3, v0, Lcom/baidu/location/b/h;->M:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lez v6, :cond_9

    iget-object v1, v0, Lcom/baidu/location/b/h;->M:Ljava/util/List;

    const/16 v2, -0x80

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x400ccccccccccccdL    # 3.6

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    div-double/2addr v1, v3

    double-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    iget-object v2, v0, Lcom/baidu/location/b/h;->M:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/e/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/grtcf.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "rw"

    const-wide/16 v3, 0x2

    const/4 v5, 0x0

    if-nez v0, :cond_2

    :try_start_1
    new-instance v0, Ljava/io/File;

    sget-object v6, Lcom/baidu/location/e/j;->a:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const-wide/16 v6, 0x8

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    const-string v6, "1980_01_01:0"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v7, v6

    invoke-virtual {v0, v7}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->write([B)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    const-wide/16 v6, 0x320

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    const/4 v2, 0x1

    :goto_1
    if-gt v2, v1, :cond_4

    mul-int/lit16 v6, v2, 0x800

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    new-array v7, v6, [B

    invoke-virtual {v0, v7, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    sget-object v7, Lcom/baidu/location/e/b;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-lt v2, v1, :cond_5

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    :cond_5
    mul-int/lit16 v2, v2, 0x800

    int-to-long v1, v2

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method private e()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/location/e/k;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "gflk.dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v0, v2

    goto :goto_1

    :catch_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    :cond_2
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_1

    :catch_1
    move-object v0, v3

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v3, v0

    :goto_1
    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_4
    throw v1

    :catch_3
    :goto_2
    if-eqz v0, :cond_5

    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_5
    :goto_3
    return v1
.end method

.method private f()Z
    .locals 7

    iget-boolean v0, p0, Lcom/baidu/location/b/h;->B:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/baidu/location/b/h;->C:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/baidu/location/b/h;->E:F

    float-to-double v3, v0

    iget-wide v5, p0, Lcom/baidu/location/b/h;->t:D

    cmpg-double v0, v3, v5

    if-gez v0, :cond_0

    iget v0, p0, Lcom/baidu/location/b/h;->D:I

    iget v3, p0, Lcom/baidu/location/b/h;->p:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/baidu/location/b/h;->D:I

    iget v3, p0, Lcom/baidu/location/b/h;->u:I

    if-le v0, v3, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/baidu/location/b/h;->G:J

    sub-long/2addr v3, v5

    iget v0, p0, Lcom/baidu/location/b/h;->v:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-lez v0, :cond_6

    goto :goto_1

    :cond_0
    iput v1, p0, Lcom/baidu/location/b/h;->D:I

    iput-boolean v1, p0, Lcom/baidu/location/b/h;->C:Z

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/baidu/location/b/h;->E:F

    float-to-double v3, v0

    iget-wide v5, p0, Lcom/baidu/location/b/h;->t:D

    cmpg-double v0, v3, v5

    if-gez v0, :cond_5

    iput-boolean v2, p0, Lcom/baidu/location/b/h;->C:Z

    iput v1, p0, Lcom/baidu/location/b/h;->D:I

    iget v0, p0, Lcom/baidu/location/b/h;->p:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/baidu/location/b/h;->D:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/baidu/location/b/h;->E:F

    float-to-double v3, v0

    iget-wide v5, p0, Lcom/baidu/location/b/h;->r:D

    cmpl-double v0, v3, v5

    if-gez v0, :cond_4

    iget v0, p0, Lcom/baidu/location/b/h;->F:F

    float-to-double v3, v0

    iget-wide v5, p0, Lcom/baidu/location/b/h;->s:D

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_3

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/baidu/location/b/h;->w:I

    if-ne v0, v2, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/baidu/location/b/h;->G:J

    sub-long/2addr v3, v5

    iget v0, p0, Lcom/baidu/location/b/h;->x:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-lez v0, :cond_6

    goto :goto_1

    :cond_4
    :goto_0
    iput-boolean v2, p0, Lcom/baidu/location/b/h;->B:Z

    :cond_5
    :goto_1
    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method private g()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b/h;->M:Ljava/util/List;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/baidu/location/b/h;->e:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/location/b/h;->L:I

    iput-object v0, p0, Lcom/baidu/location/b/h;->b:Landroid/location/Location;

    iput-object v0, p0, Lcom/baidu/location/b/h;->c:Landroid/location/Location;

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/b/h;->E:F

    iput v0, p0, Lcom/baidu/location/b/h;->F:F

    return-void
.end method

.method private h()V
    .locals 5

    iget-wide v0, p0, Lcom/baidu/location/b/h;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/b/h;->e:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/baidu/location/b/h;->p:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, "loc_navi_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "is_navi_on"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/baidu/location/b/h;->g()V

    return-void

    :cond_1
    iget v0, p0, Lcom/baidu/location/b/h;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/baidu/location/b/h;->f()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/baidu/location/b/h;->g()V

    return-void

    :cond_2
    sget-object v0, Lcom/baidu/location/e/b;->e:Ljava/lang/String;

    const-string v3, "com.ubercab.driver"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/baidu/location/e/b;->e:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/baidu/location/b/h;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/baidu/location/b/h;->g()V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/baidu/location/b/h;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/baidu/location/b/h;->g()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/baidu/location/b/h;->M:Ljava/util/List;

    if-eqz v0, :cond_9

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lcom/baidu/location/b/h;->M:Ljava/util/List;

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/baidu/location/b/h;->M:Ljava/util/List;

    const v4, 0xff00

    and-int/2addr v4, v0

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/location/b/h;->M:Ljava/util/List;

    const/4 v3, 0x3

    iget v4, p0, Lcom/baidu/location/b/h;->L:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [B

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Lcom/baidu/location/b/h;->M:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/baidu/location/e/k;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, "baidu/tempdata"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "intime.dat"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_7
    :try_start_1
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    new-instance v0, Lcom/baidu/location/b/j;

    invoke-direct {v0, p0}, Lcom/baidu/location/b/j;-><init>(Lcom/baidu/location/b/h;)V

    invoke-virtual {v0}, Lcom/baidu/location/b/j;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_8
    :try_start_2
    invoke-direct {p0}, Lcom/baidu/location/b/h;->g()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/b/h;->G:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_9
    :goto_1
    return-void
.end method

.method private i()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/b/h;->M:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/b/h;->M:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/baidu/location/b/h;->f:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/b/h;->M:Ljava/util/List;

    const/16 v3, -0x52

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/b/h;->M:Ljava/util/List;

    const/16 v3, -0x42

    :goto_0
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/b/h;->M:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/b/h;->M:Ljava/util/List;

    iget-object v2, p0, Lcom/baidu/location/b/h;->J:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/b/h;->M:Ljava/util/List;

    iget-object v2, p0, Lcom/baidu/location/b/h;->J:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/b/h;->M:Ljava/util/List;

    iget-object v2, p0, Lcom/baidu/location/b/h;->J:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/b/h;->M:Ljava/util/List;

    iget-object v2, p0, Lcom/baidu/location/b/h;->J:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/b/h;->K:[B

    array-length v0, v0

    iget-object v2, p0, Lcom/baidu/location/b/h;->M:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/baidu/location/b/h;->M:Ljava/util/List;

    iget-object v3, p0, Lcom/baidu/location/b/h;->K:[B

    aget-byte v3, v3, v1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private j()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/b/h;->z:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v0, p0, Lcom/baidu/location/b/h;->A:Lcom/baidu/location/b/h$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/b/h$b;

    invoke-direct {v0, p0}, Lcom/baidu/location/b/h$b;-><init>(Lcom/baidu/location/b/h;)V

    iput-object v0, p0, Lcom/baidu/location/b/h;->A:Lcom/baidu/location/b/h$b;

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/baidu/location/e/b;->a()Lcom/baidu/location/e/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/location/e/b;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/location/b/h;->A:Lcom/baidu/location/b/h$b;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/location/b/h$b;->a(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/baidu/location/b/h;->k()V

    return-void
.end method

.method private k()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 3

    iget-boolean v0, p0, Lcom/baidu/location/b/h;->N:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/baidu/location/b/h;->c()V

    :cond_0
    iget v0, p0, Lcom/baidu/location/b/h;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/baidu/location/b/h;->m:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/c/b;->a()Lcom/baidu/location/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/c/b;->e()I

    move-result v2

    invoke-static {v2}, Lcom/baidu/location/c/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/baidu/location/b/h;->n:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/baidu/location/b/h;->y:I

    iget v1, p0, Lcom/baidu/location/b/h;->o:I

    if-le v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/b/h;->I:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/location/b/i;

    invoke-direct {v1, p0, p1}, Lcom/baidu/location/b/i;-><init>(Lcom/baidu/location/b/h;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public b()V
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/b/h;->N:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/b/h;->N:Z

    invoke-direct {p0}, Lcom/baidu/location/b/h;->g()V

    return-void
.end method
