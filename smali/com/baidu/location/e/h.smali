.class Lcom/baidu/location/e/h;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/location/e/f;


# direct methods
.method constructor <init>(Lcom/baidu/location/e/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/e/h;->b:Lcom/baidu/location/e/f;

    iput-object p2, p0, Lcom/baidu/location/e/h;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "gzip"

    const-string v2, "close baos IOException!"

    const-string v3, "close is IOException!"

    const-string v4, "close os IOException!"

    const-string v5, "baidu_location_service"

    iget-object v6, v1, Lcom/baidu/location/e/h;->b:Lcom/baidu/location/e/f;

    invoke-virtual {v6}, Lcom/baidu/location/e/f;->a()V

    iget-object v6, v1, Lcom/baidu/location/e/h;->b:Lcom/baidu/location/e/f;

    iget-object v7, v1, Lcom/baidu/location/e/h;->a:Ljava/lang/String;

    iput-object v7, v6, Lcom/baidu/location/e/f;->g:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, Lcom/baidu/location/e/k;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v8

    invoke-static {v8}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/net/URL;

    iget-object v10, v1, Lcom/baidu/location/e/h;->b:Lcom/baidu/location/e/f;

    iget-object v10, v10, Lcom/baidu/location/e/f;->g:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {v10, v6}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    invoke-virtual {v10, v11}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    sget v12, Lcom/baidu/location/e/a;->a:I

    invoke-virtual {v10, v12}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    sget v12, Lcom/baidu/location/e/a;->b:I

    invoke-virtual {v10, v12}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const-string v12, "POST"

    invoke-virtual {v10, v12}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    new-instance v12, Lcom/baidu/location/e/f$a;

    invoke-direct {v12, v9}, Lcom/baidu/location/e/f$a;-><init>(Ljava/net/URL;)V

    invoke-virtual {v10, v12}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    const-string v12, "Content-Type"

    const-string v13, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {v10, v12, v13}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "Accept-Encoding"

    invoke-virtual {v10, v12, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v12, Lcom/baidu/location/e/k;->aw:Ljava/lang/String;

    if-eqz v12, :cond_0

    const-string v12, "bd-loc-android"

    sget-object v13, Lcom/baidu/location/e/k;->aw:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v12, v1, Lcom/baidu/location/e/h;->b:Lcom/baidu/location/e/f;

    iget-object v12, v12, Lcom/baidu/location/e/f;->j:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v14, "="

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v13, "&"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    if-lez v12, :cond_2

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    sub-int/2addr v12, v11

    invoke-virtual {v8, v12}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v10}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v10}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v8

    const/16 v13, 0xc8

    if-ne v8, v13, :cond_5

    invoke-virtual {v10}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v10}, Ljavax/net/ssl/HttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-direct {v13, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v13}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v8, v0

    :cond_3
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v0, 0x400

    :try_start_5
    new-array v0, v0, [B

    :goto_1
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_4

    invoke-virtual {v13, v0, v6, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_4
    iget-object v0, v1, Lcom/baidu/location/e/h;->b:Lcom/baidu/location/e/f;

    new-instance v14, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    const-string v6, "utf-8"

    invoke-direct {v14, v15, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v14, v0, Lcom/baidu/location/e/f;->i:Ljava/lang/String;

    iget-object v0, v1, Lcom/baidu/location/e/h;->b:Lcom/baidu/location/e/f;

    invoke-virtual {v0, v11}, Lcom/baidu/location/e/f;->a(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-object v7, v8

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :catch_1
    move-exception v0

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    move-object v13, v7

    goto/16 :goto_13

    :catch_2
    move-exception v0

    move-object v13, v7

    goto/16 :goto_8

    :catch_3
    move-exception v0

    move-object v13, v7

    goto/16 :goto_e

    :cond_5
    :try_start_6
    iget-object v0, v1, Lcom/baidu/location/e/h;->b:Lcom/baidu/location/e/f;

    iput-object v7, v0, Lcom/baidu/location/e/f;->i:Ljava/lang/String;

    iget-object v0, v1, Lcom/baidu/location/e/h;->b:Lcom/baidu/location/e/f;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/baidu/location/e/f;->a(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v13, v7

    :goto_2
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_6
    if-eqz v12, :cond_7

    :try_start_7
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    :catch_4
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    if-eqz v7, :cond_8

    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    :catch_5
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    if-eqz v13, :cond_f

    goto/16 :goto_11

    :catchall_1
    move-exception v0

    move-object v8, v7

    move-object v13, v8

    goto/16 :goto_13

    :catch_6
    move-exception v0

    move-object v8, v7

    move-object v13, v8

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v8, v7

    move-object v13, v8

    goto/16 :goto_e

    :catchall_2
    move-exception v0

    move-object v8, v7

    move-object v12, v8

    move-object v13, v12

    goto/16 :goto_13

    :catch_8
    move-exception v0

    move-object v8, v7

    move-object v12, v8

    goto :goto_7

    :catch_9
    move-exception v0

    move-object v8, v7

    move-object v12, v8

    goto/16 :goto_d

    :catchall_3
    move-exception v0

    move-object v8, v7

    move-object v12, v8

    goto :goto_5

    :catch_a
    move-exception v0

    move-object v8, v7

    move-object v10, v8

    goto :goto_6

    :catch_b
    move-exception v0

    move-object v8, v7

    move-object v10, v8

    goto :goto_c

    :catchall_4
    move-exception v0

    move-object v8, v7

    move-object v9, v8

    move-object v12, v9

    :goto_5
    move-object v13, v12

    goto/16 :goto_14

    :catch_c
    move-exception v0

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    :goto_6
    move-object v12, v10

    :goto_7
    move-object v13, v12

    :goto_8
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    const-string v0, "https NetworkCommunicationError!"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/baidu/location/e/h;->b:Lcom/baidu/location/e/f;

    iput-object v7, v0, Lcom/baidu/location/e/f;->i:Ljava/lang/String;

    iget-object v0, v1, Lcom/baidu/location/e/h;->b:Lcom/baidu/location/e/f;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/baidu/location/e/f;->a(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_9
    if-eqz v12, :cond_a

    :try_start_a
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d

    goto :goto_9

    :catch_d
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_9
    if-eqz v8, :cond_b

    :try_start_b
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e

    goto :goto_a

    :catch_e
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_a
    if-eqz v13, :cond_f

    :goto_b
    :try_start_c
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_12

    goto :goto_12

    :catch_f
    move-exception v0

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    :goto_c
    move-object v12, v10

    :goto_d
    move-object v13, v12

    :goto_e
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "https NetworkCommunicationException!"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/baidu/location/e/h;->b:Lcom/baidu/location/e/f;

    iput-object v7, v0, Lcom/baidu/location/e/f;->i:Ljava/lang/String;

    iget-object v0, v1, Lcom/baidu/location/e/h;->b:Lcom/baidu/location/e/f;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/baidu/location/e/f;->a(Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    if-eqz v10, :cond_c

    invoke-virtual {v10}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_c
    if-eqz v12, :cond_d

    :try_start_e
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_10

    goto :goto_f

    :catch_10
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_f
    if-eqz v8, :cond_e

    :try_start_f
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_11

    goto :goto_10

    :catch_11
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_10
    if-eqz v13, :cond_f

    :goto_11
    goto :goto_b

    :catch_12
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_12
    return-void

    :catchall_5
    move-exception v0

    :goto_13
    move-object v7, v10

    :goto_14
    if-eqz v7, :cond_10

    invoke-virtual {v7}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_10
    if-eqz v12, :cond_11

    :try_start_10
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_13

    goto :goto_15

    :catch_13
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_15
    if-eqz v8, :cond_12

    :try_start_11
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_14

    goto :goto_16

    :catch_14
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_16
    if-eqz v13, :cond_13

    :try_start_12
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_15

    goto :goto_17

    :catch_15
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_17
    goto :goto_19

    :goto_18
    throw v0

    :goto_19
    goto :goto_18
.end method
