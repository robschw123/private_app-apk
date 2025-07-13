.class public Lio/dcloud/common/util/net/http/Response;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final CR:B = 0xdt

.field private static final CRLF:[B

.field private static final LF:B = 0xat


# instance fields
.field final BUFFER_SIZE:I

.field mNetMgr:Lio/dcloud/common/DHInterface/AbsMgr;

.field mSocket:Ljava/net/Socket;

.field mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lio/dcloud/common/util/net/http/Response;->CRLF:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/net/Socket;Lio/dcloud/common/DHInterface/AbsMgr;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/common/util/net/http/Response;->mSocket:Ljava/net/Socket;

    .line 3
    iput-object v0, p0, Lio/dcloud/common/util/net/http/Response;->mNetMgr:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 4
    iput-object v0, p0, Lio/dcloud/common/util/net/http/Response;->mUrl:Ljava/lang/String;

    const/16 v0, 0x2800

    .line 13
    iput v0, p0, Lio/dcloud/common/util/net/http/Response;->BUFFER_SIZE:I

    .line 14
    iput-object p1, p0, Lio/dcloud/common/util/net/http/Response;->mSocket:Ljava/net/Socket;

    .line 15
    iput-object p2, p0, Lio/dcloud/common/util/net/http/Response;->mNetMgr:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 16
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private addResponseHead(JLjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HTTP/1.1 200 OK"

    .line 1
    invoke-virtual {p0, p3, v0}, Lio/dcloud/common/util/net/http/Response;->writeHeader(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/common/util/net/http/Response;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lio/dcloud/common/util/net/http/Response;->writeHeader(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v0, "Access-Control-Allow-Origin: *"

    .line 3
    invoke-virtual {p0, p3, v0}, Lio/dcloud/common/util/net/http/Response;->writeHeader(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v0, "Access-Control-Allow-Headers: *"

    .line 4
    invoke-virtual {p0, p3, v0}, Lio/dcloud/common/util/net/http/Response;->writeHeader(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lio/dcloud/common/util/net/http/Response;->writeHeader(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 17
    sget-object p1, Lio/dcloud/common/util/net/http/Response;->CRLF:[B

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 18
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method private write(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private writeRequest(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "GET /index.html HTTP/1.1"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 2
    sget-object v0, Lio/dcloud/common/util/net/http/Response;->CRLF:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 5
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 7
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 9
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lio/dcloud/common/util/net/http/Response;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2
    :try_start_1
    new-instance v2, Lio/dcloud/common/util/net/http/Request;

    invoke-direct {v2, v1}, Lio/dcloud/common/util/net/http/Request;-><init>(Ljava/io/InputStream;)V

    .line 3
    invoke-virtual {v2}, Lio/dcloud/common/util/net/http/Request;->parse()V

    .line 4
    invoke-virtual {v2}, Lio/dcloud/common/util/net/http/Request;->getData()Ljava/lang/String;

    move-result-object v3

    const-string v4, "snc:"

    .line 6
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    iget-object v2, p0, Lio/dcloud/common/util/net/http/Response;->mNetMgr:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v4, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v5, 0x7

    invoke-interface {v2, v4, v5, v3}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    goto/16 :goto_7

    :cond_0
    const-string v4, "sconn:"

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v7, "miniserver"

    if-eqz v4, :cond_2

    const/4 v2, 0x6

    .line 9
    :try_start_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 11
    iget-object v3, p0, Lio/dcloud/common/util/net/http/Response;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string v4, "request_root_path"

    .line 12
    invoke-static {v2, v4}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 13
    sget-object v4, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceRootDir:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_1
    const-string v4, ""

    :goto_0
    :try_start_4
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v5

    const/4 v2, 0x1

    aput-object v4, v6, v2

    .line 15
    invoke-static {v7, v6}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v2, v0

    move-object v0, v3

    goto/16 :goto_7

    :catchall_0
    move-exception v2

    move-object v10, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v2

    :goto_1
    move-object v2, v10

    goto/16 :goto_a

    :catch_0
    move-exception v2

    move-object v10, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v2

    :goto_2
    move-object v2, v10

    goto/16 :goto_8

    .line 18
    :cond_2
    :try_start_5
    invoke-virtual {v2}, Lio/dcloud/common/util/net/http/Request;->getUri()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lio/dcloud/common/util/net/http/Response;->mUrl:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v2, :cond_3

    .line 56
    :try_start_6
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 57
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 58
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    .line 59
    iget-object v0, p0, Lio/dcloud/common/util/net/http/Response;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void

    .line 62
    :cond_3
    :try_start_7
    iget-object v2, p0, Lio/dcloud/common/util/net/http/Response;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const/16 v3, 0x2800

    :try_start_8
    new-array v3, v3, [B

    .line 64
    iget-object v4, p0, Lio/dcloud/common/util/net/http/Response;->mUrl:Ljava/lang/String;

    const-string v8, "_res/"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "res/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lio/dcloud/common/util/net/http/Response;->mUrl:Ljava/lang/String;

    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/adapter/util/PlatformUtil;->getResInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_4

    .line 67
    :cond_4
    iget-object v4, p0, Lio/dcloud/common/util/net/http/Response;->mNetMgr:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v8, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v9, p0, Lio/dcloud/common/util/net/http/Response;->mUrl:Ljava/lang/String;

    invoke-interface {v4, v8, v6, v9}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    move-object v0, v4

    :goto_4
    if-eqz v0, :cond_6

    .line 72
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 75
    :goto_5
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_5

    .line 76
    invoke-virtual {v4, v3, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_5

    .line 79
    :cond_5
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 80
    array-length v4, v3

    int-to-long v4, v4

    invoke-direct {p0, v4, v5, v2}, Lio/dcloud/common/util/net/http/Response;->addResponseHead(JLjava/io/OutputStream;)V

    .line 81
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_6

    .line 83
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/dcloud/common/util/net/http/Response;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "HTTP/1.1 404 File Not Found\r\nContent-Type: text/html\r\nContent-Length: 23\r\n\r\n<h1>File Not Found</h1>"

    .line 89
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_6
    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    .line 96
    :goto_7
    :try_start_9
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 97
    invoke-static {v2}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 98
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    .line 99
    iget-object v0, p0, Lio/dcloud/common/util/net/http/Response;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :catchall_1
    move-exception v3

    move-object v10, v1

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_1

    :catch_3
    move-exception v3

    move-object v10, v1

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_2

    :catchall_2
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_a

    :catch_4
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_8

    :catchall_3
    move-exception v2

    move-object v1, v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_a

    :catch_5
    move-exception v2

    move-object v1, v0

    move-object v3, v2

    move-object v2, v1

    .line 102
    :goto_8
    :try_start_a
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 105
    :try_start_b
    invoke-static {v2}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 106
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 107
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    .line 108
    iget-object v0, p0, Lio/dcloud/common/util/net/http/Response;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_9

    :catch_6
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9
    return-void

    :catchall_4
    move-exception v3

    .line 111
    :goto_a
    :try_start_c
    invoke-static {v2}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 112
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/InputStream;)V

    .line 113
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->close(Ljava/io/OutputStream;)V

    .line 114
    iget-object v0, p0, Lio/dcloud/common/util/net/http/Response;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_b

    :catch_7
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    :goto_b
    goto :goto_d

    :goto_c
    throw v3

    :goto_d
    goto :goto_c
.end method

.method writeHeader(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/util/net/http/Response;->write(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2
    sget-object p2, Lio/dcloud/common/util/net/http/Response;->CRLF:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
