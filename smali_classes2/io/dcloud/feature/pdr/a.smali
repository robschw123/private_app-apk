.class public Lio/dcloud/feature/pdr/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/pdr/a$b;,
        Lio/dcloud/feature/pdr/a$c;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;FF)F
    .locals 1

    const-string v0, "auto"

    .line 192
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    .line 195
    :cond_0
    invoke-static {p0, p1, p2}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FF)F

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Landroid/graphics/Bitmap;ZI)J
    .locals 8

    .line 144
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_2

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 148
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    return-wide v2

    .line 155
    :cond_2
    invoke-static {p0}, Lio/dcloud/feature/pdr/a;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 156
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    :cond_3
    :goto_0
    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 161
    invoke-static {p0}, Lio/dcloud/feature/pdr/a;->c(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p0

    invoke-virtual {p1, p0, p3, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 162
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 163
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 164
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_4

    .line 165
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide p0

    return-wide p0

    :catch_0
    move-exception p0

    .line 177
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-wide v2

    :catch_1
    move-exception p0

    .line 178
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-wide v2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-static {p0, p1}, Lio/dcloud/common/util/FileUtil;->checkPrivatePath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 134
    invoke-static {p0, p1}, Lio/dcloud/common/util/FileUtil;->getFileInputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 136
    invoke-static {p0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 137
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 143
    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public static a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .line 141
    invoke-static {p3, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    sget v3, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public static declared-synchronized a(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;)V
    .locals 20

    move-object/from16 v1, p0

    const-class v2, Lio/dcloud/feature/pdr/a;

    monitor-enter v2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    aget-object v3, p1, v0

    const/4 v4, 0x1

    .line 2
    aget-object v5, p1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, -0x1

    .line 5
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    new-instance v3, Lio/dcloud/feature/pdr/a$c;

    invoke-direct {v3}, Lio/dcloud/feature/pdr/a$c;-><init>()V

    .line 14
    invoke-virtual {v3, v7, v1, v5}, Lio/dcloud/feature/pdr/a$c;->a(Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_0

    monitor-exit v2

    return-void

    .line 20
    :cond_0
    :try_start_3
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 21
    iput-boolean v0, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 23
    iget v8, v3, Lio/dcloud/feature/pdr/a$c;->e:I

    if-gez v8, :cond_1

    const/16 v8, 0x32

    .line 24
    iput v8, v3, Lio/dcloud/feature/pdr/a$c;->e:I

    .line 26
    :cond_1
    iget-wide v8, v3, Lio/dcloud/feature/pdr/a$c;->m:J

    const-wide/32 v10, 0x16e360

    const/4 v12, 0x2

    cmp-long v13, v8, v10

    if-lez v13, :cond_2

    .line 27
    iput v12, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 29
    :cond_2
    iput v4, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 31
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u6587\u4ef6\u83b7\u53d6\u5b8c\u6bd5 \u521d\u59cb\u5316bitmap \u83b7\u53d6\u6587\u4ef6\u5927\u5c0f"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v3, Lio/dcloud/feature/pdr/a$c;->m:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "CompressImage"

    invoke-static {v9, v8}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v8, 0x0

    .line 34
    :try_start_4
    invoke-interface/range {p0 .. p0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, v3, Lio/dcloud/feature/pdr/a$c;->a:Ljava/lang/String;

    invoke-static {v9, v10, v7}, Lio/dcloud/feature/pdr/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 36
    :catch_0
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u83b7\u53d6bitmap \u5185\u5b58\u6ea2\u51fa\u7b2c\u4e00\u6b21  bitmap\u8def\u5f84"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lio/dcloud/feature/pdr/a$c;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "CompressImage"

    invoke-static {v10, v9}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget v9, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v9, v9, 0x2

    iput v9, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 38
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u83b7\u53d6bitmap \u5185\u5b58\u6ea2\u51fa\u7b2c\u4e00\u6b21 \u7b2c\u4e8c\u6b21\u83b7\u53d6bitmmap  bitmap\u8def\u5f84"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lio/dcloud/feature/pdr/a$c;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "CompressImage"

    invoke-static {v10, v9}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 40
    :try_start_6
    invoke-interface/range {p0 .. p0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, v3, Lio/dcloud/feature/pdr/a$c;->a:Ljava/lang/String;

    invoke-static {v9, v10, v7}, Lio/dcloud/feature/pdr/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_1
    move-object v9, v8

    :goto_1
    if-nez v9, :cond_3

    .line 47
    :try_start_7
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_PARAMETER_ERROR:Ljava/lang/String;

    invoke-static {v1, v5, v0, v6}, Lio/dcloud/feature/pdr/a;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v2

    return-void

    .line 52
    :cond_3
    :try_start_8
    iget-boolean v6, v3, Lio/dcloud/feature/pdr/a$c;->l:Z

    if-eqz v6, :cond_4

    iget v6, v3, Lio/dcloud/feature/pdr/a$c;->f:F

    const/4 v10, 0x0

    cmpl-float v6, v6, v10

    if-lez v6, :cond_4

    iget v6, v3, Lio/dcloud/feature/pdr/a$c;->g:F

    cmpl-float v6, v6, v10

    if-lez v6, :cond_4

    .line 53
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 54
    iget v10, v3, Lio/dcloud/feature/pdr/a$c;->f:F

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 55
    iget v11, v3, Lio/dcloud/feature/pdr/a$c;->g:F

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v11, v13

    .line 56
    invoke-virtual {v6, v10, v11}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 57
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 58
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    move-object v13, v9

    move-object/from16 v18, v6

    .line 59
    invoke-static/range {v13 .. v19}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_2

    :cond_4
    move-object v6, v9

    .line 64
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u7f29\u653e\u5b8c\u6bd5"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v3, Lio/dcloud/feature/pdr/a$c;->a:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "CompressImage"

    invoke-static {v11, v10}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget v10, v3, Lio/dcloud/feature/pdr/a$c;->h:I

    if-lez v10, :cond_5

    .line 68
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 69
    iget v10, v3, Lio/dcloud/feature/pdr/a$c;->h:I

    int-to-float v10, v10

    invoke-virtual {v8, v10}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_5
    move-object/from16 v18, v8

    .line 71
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u65cb\u8f6c\u5b8c\u6bd5"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lio/dcloud/feature/pdr/a$c;->a:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "CompressImage"

    invoke-static {v10, v8}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v8, v3, Lio/dcloud/feature/pdr/a$c;->k:Lio/dcloud/feature/pdr/a$b;

    if-eqz v8, :cond_6

    .line 74
    iget v10, v8, Lio/dcloud/feature/pdr/a$b;->a:F

    iget v7, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v7, v7

    div-float/2addr v10, v7

    float-to-int v15, v10

    .line 75
    iget v10, v8, Lio/dcloud/feature/pdr/a$b;->b:F

    div-float/2addr v10, v7

    float-to-int v14, v10

    .line 76
    iget v10, v8, Lio/dcloud/feature/pdr/a$b;->c:F

    div-float/2addr v10, v7

    float-to-int v10, v10

    .line 77
    iget v8, v8, Lio/dcloud/feature/pdr/a$b;->d:F

    div-float/2addr v8, v7

    float-to-int v7, v8

    const/16 v19, 0x0

    move-object v13, v6

    move/from16 v16, v10

    move/from16 v17, v7

    .line 80
    invoke-static/range {v13 .. v19}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eq v7, v6, :cond_7

    .line 83
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    :cond_6
    if-eqz v18, :cond_8

    .line 87
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 88
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    move-object v13, v6

    .line 89
    invoke-static/range {v13 .. v19}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eq v7, v6, :cond_7

    .line 92
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    :goto_3
    move-object v6, v7

    .line 95
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u88c1\u526a\u5b8c\u6bd5"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lio/dcloud/feature/pdr/a$c;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CompressImage"

    invoke-static {v8, v7}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 98
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 99
    iget-object v10, v3, Lio/dcloud/feature/pdr/a$c;->b:Ljava/lang/String;

    iget-boolean v11, v3, Lio/dcloud/feature/pdr/a$c;->d:Z

    iget v13, v3, Lio/dcloud/feature/pdr/a$c;->e:I

    invoke-static {v10, v6, v11, v13}, Lio/dcloud/feature/pdr/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;ZI)J

    move-result-wide v10

    const-wide/16 v13, 0x0

    cmp-long v15, v10, v13

    if-lez v15, :cond_9

    .line 101
    iget-object v6, v3, Lio/dcloud/feature/pdr/a$c;->a:Ljava/lang/String;

    iget-object v13, v3, Lio/dcloud/feature/pdr/a$c;->b:Ljava/lang/String;

    invoke-static {v6, v13}, Lio/dcloud/feature/pdr/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u5f00\u59cb\u4fdd\u5b58\u56fe\u7247"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v3, Lio/dcloud/feature/pdr/a$c;->a:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v13, "CompressImage"

    invoke-static {v13, v6}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    iget-object v3, v3, Lio/dcloud/feature/pdr/a$c;->b:Ljava/lang/String;

    aput-object v3, v13, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v13, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v13, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v13, v3

    const-string v0, "{path:\'file://%s\', w:%d, h:%d, size:%d}"

    invoke-static {v6, v0, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v1, v5, v0}, Lio/dcloud/feature/pdr/a;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 106
    :cond_9
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 107
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 109
    :cond_a
    invoke-interface/range {p0 .. p0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lio/dcloud/base/R$string;->dcloud_common_zip_image_output_failed:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x5

    invoke-static {v1, v5, v0, v3}, Lio/dcloud/feature/pdr/a;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    :goto_4
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 112
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_b
    monitor-exit v2

    return-void

    :catch_2
    move-exception v0

    .line 113
    :try_start_9
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 114
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_PARAMETER_ERROR:Ljava/lang/String;

    invoke-static {v1, v5, v0, v6}, Lio/dcloud/feature/pdr/a;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 115
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance p0, Landroid/media/ExifInterface;

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 117
    const-class p1, Landroid/media/ExifInterface;

    .line 118
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 119
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 120
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 121
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "TAG"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 122
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 124
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-virtual {v0, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 127
    invoke-virtual {p0, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p0}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :catchall_0
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    .line 179
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "/"

    .line 182
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    if-nez v0, :cond_1

    goto :goto_0

    .line 188
    :cond_1
    :try_start_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 189
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    .line 191
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_3
    :goto_0
    return v1
.end method

.method public static b(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lio/dcloud/feature/pdr/a$a;

    invoke-direct {v1, p0, p1}, Lio/dcloud/feature/pdr/a$a;-><init>(Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x5

    cmp-long p0, v1, v3

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public static c(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    const-string v0, ".jpg"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0

    .line 5
    :cond_1
    :goto_0
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method
