.class public Lio/dcloud/feature/weex/config/MimeInfoParser;
.super Ljava/lang/Object;
.source "MimeInfoParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;
    }
.end annotation


# instance fields
.field final DATA_FLAG:Ljava/lang/String;

.field final ENCODE_FORMAT_FLAG:Ljava/lang/String;

.field final FILE_FORMAT_FLAG:Ljava/lang/String;

.field final FILE_TYPE_FLAG:Ljava/lang/String;

.field registerEncodeFormatSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field registerFileFormatSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field registerFileTypeSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerFileTypeSet:Ljava/util/HashSet;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerFileFormatSet:Ljava/util/HashSet;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerEncodeFormatSet:Ljava/util/HashSet;

    const-string v0, "data:"

    .line 194
    iput-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->DATA_FLAG:Ljava/lang/String;

    const-string v0, "/"

    .line 195
    iput-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->FILE_TYPE_FLAG:Ljava/lang/String;

    const-string v0, ";"

    .line 196
    iput-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->FILE_FORMAT_FLAG:Ljava/lang/String;

    const-string v0, ","

    .line 197
    iput-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->ENCODE_FORMAT_FLAG:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerFileTypeSet:Ljava/util/HashSet;

    const-string v1, "keystore"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerFileTypeSet:Ljava/util/HashSet;

    const-string v1, "cert"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerFileFormatSet:Ljava/util/HashSet;

    const-string v1, "p12"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerFileFormatSet:Ljava/util/HashSet;

    const-string v1, "pem"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerEncodeFormatSet:Ljava/util/HashSet;

    const-string v1, "filepath"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerEncodeFormatSet:Ljava/util/HashSet;

    const-string v1, "base64"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lio/dcloud/feature/weex/config/MimeInfoParser;->registerEncodeFormatSet:Ljava/util/HashSet;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getFilePathStream(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "wxsdkInstance",
            "filePath"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 58
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getURIAdapter()Lcom/taobao/weex/adapter/URIAdapter;

    move-result-object v1

    .line 59
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "file"

    invoke-interface {v1, p0, v3, v2}, Lcom/taobao/weex/adapter/URIAdapter;->rewrite(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    .line 60
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    .line 64
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 65
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 66
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object p0

    .line 69
    :cond_0
    invoke-static {p1}, Lio/dcloud/feature/weex/config/UniPathParser;->getAndroidPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 70
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 72
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v0
.end method

.method public static getInstance()Lio/dcloud/feature/weex/config/MimeInfoParser;
    .locals 1

    .line 30
    new-instance v0, Lio/dcloud/feature/weex/config/MimeInfoParser;

    invoke-direct {v0}, Lio/dcloud/feature/weex/config/MimeInfoParser;-><init>()V

    return-object v0
.end method

.method private parseMimeInfo(Ljava/lang/String;)Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mimeEncode"
        }
    .end annotation

    .line 211
    new-instance v0, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;

    invoke-direct {v0}, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;-><init>()V

    const-string v1, "data:"

    .line 214
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const-string v1, "/"

    .line 218
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v2

    :cond_1
    const-string v3, ";"

    .line 221
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    return-object v2

    :cond_2
    const-string v4, ","

    .line 224
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    return-object v2

    :cond_3
    const/4 v2, 0x5

    .line 229
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 231
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 232
    invoke-static {v0, v2}, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->access$102(Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-static {v0, v1}, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->access$202(Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-static {v0, v1}, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->access$302(Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 246
    invoke-static {v0, p1}, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->access$402(Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public obtainMimeInfo(Ljava/lang/String;)Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mimeEncode"
        }
    .end annotation

    .line 200
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/config/MimeInfoParser;->parseMimeInfo(Ljava/lang/String;)Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 202
    invoke-static {p1, p0}, Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;->access$000(Lio/dcloud/feature/weex/config/MimeInfoParser$MimeInfo;Lio/dcloud/feature/weex/config/MimeInfoParser;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method
