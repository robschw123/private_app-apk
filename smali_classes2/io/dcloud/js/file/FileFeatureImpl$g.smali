.class Lio/dcloud/js/file/FileFeatureImpl$g;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/common/adapter/util/AsyncTaskHandler$IAsyncTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;[Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lio/dcloud/js/file/FileFeatureImpl;


# direct methods
.method constructor <init>(Lio/dcloud/js/file/FileFeatureImpl;Ljava/lang/String;IILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->f:Lio/dcloud/js/file/FileFeatureImpl;

    iput-object p2, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->a:Ljava/lang/String;

    iput p3, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->b:I

    iput p4, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->c:I

    iput-object p5, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->d:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p6, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onExecuteBegin()V
    .locals 0

    return-void
.end method

.method public onExecuteEnd(Ljava/lang/Object;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->d:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->e:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->f:Lio/dcloud/js/file/FileFeatureImpl;

    iget-object v0, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->d:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v1, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->e:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-static {p1, v2, v0, v1}, Lio/dcloud/js/file/FileFeatureImpl;->a(Lio/dcloud/js/file/FileFeatureImpl;ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onExecuting()Ljava/lang/Object;
    .locals 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1
    :try_start_0
    iget-object v4, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->a:Ljava/lang/String;

    invoke-static {v4}, Lio/dcloud/common/adapter/io/DHFile;->createFileHandler(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/adapter/io/DHFile;->getInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v5

    .line 4
    iget v6, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->b:I

    if-lez v6, :cond_1

    if-lt v6, v5, :cond_0

    add-int/lit8 v6, v5, -0x1

    .line 9
    :cond_0
    iget v5, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->c:I

    sub-int/2addr v6, v5

    add-int/2addr v6, v0

    .line 10
    new-array v7, v6, [B

    int-to-long v8, v5

    .line 11
    invoke-virtual {v4, v8, v9}, Ljava/io/InputStream;->skip(J)J

    .line 12
    invoke-virtual {v4, v7, v1, v6}, Ljava/io/InputStream;->read([BII)I

    .line 13
    invoke-static {v7, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    move-object v5, v3

    goto :goto_1

    .line 15
    :cond_1
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    const v6, 0x32000

    :try_start_2
    new-array v6, v6, [B

    .line 18
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 26
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v6, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .line 29
    :goto_1
    invoke-static {v6}, Lio/dcloud/common/util/JSONUtil;->toJSONableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    if-eqz v5, :cond_4

    .line 40
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 44
    :cond_2
    :try_start_4
    invoke-virtual {v5, v6, v1, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v6

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v5, v3

    goto :goto_7

    :catch_2
    move-exception v5

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v5, v3

    goto :goto_8

    :catch_3
    move-exception v5

    move-object v4, v3

    :goto_2
    move-object v6, v5

    move-object v5, v3

    :goto_3
    const-string v7, "{code:%d,message:\'%s\'}"

    :try_start_5
    new-array v2, v2, [Ljava/lang/Object;

    const/16 v8, 0xd

    .line 54
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-static {v7, v2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 55
    iget-object v8, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->d:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v9, p0, Lio/dcloud/js/file/FileFeatureImpl$g;->e:Ljava/lang/String;

    sget v11, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v4, :cond_3

    .line 59
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_5

    :cond_3
    :goto_4
    if-eqz v5, :cond_4

    .line 62
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    .line 65
    :goto_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_6
    return-object v3

    :catchall_3
    move-exception v0

    :goto_7
    move-object v3, v4

    :goto_8
    move-object v4, v3

    :goto_9
    if-eqz v4, :cond_5

    .line 66
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_a

    :catch_5
    move-exception v1

    goto :goto_b

    :cond_5
    :goto_a
    if-eqz v5, :cond_6

    .line 69
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_c

    .line 72
    :goto_b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 74
    :cond_6
    :goto_c
    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method
