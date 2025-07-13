.class Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;
.super Lcom/bumptech/glide/request/target/CustomTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->onGranted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/CustomTarget<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;


# direct methods
.method constructor <init>(Lio/dcloud/js/gallery/GalleryFeatureImpl$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BLcom/bumptech/glide/request/transition/Transition;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-[B>;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    iget-object p2, p2, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "image/*"

    invoke-static {v0, v1, p2}, Lio/dcloud/common/util/PdrUtil;->getDownloadFilename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "."

    .line 3
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/FileUtil;->getFileTypeForSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 5
    :cond_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 6
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 7
    array-length v5, p1

    invoke-static {p1, v3, v5, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 8
    iget-object v2, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 9
    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "/"

    .line 10
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 11
    array-length v5, v2

    if-le v5, v4, :cond_1

    aget-object v5, v2, v4

    invoke-static {v5}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v5, v2, v4

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, v2, v4

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 17
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/dcloud/js/gallery/GalleryFeatureImpl;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 20
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    iget-object p1, p1, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/FileUtil;->needMediaStoreOpenFile(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 21
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p1}, Lio/dcloud/common/util/FileUtil;->writeStream2File(Ljava/io/InputStream;Ljava/io/File;)V

    goto :goto_0

    .line 24
    :cond_2
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    iget-object p1, p1, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2, p2}, Lio/dcloud/common/util/FileUtil;->copyMediaFileToDCIM(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 26
    iget-object p2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    iget-object p2, p2, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lio/dcloud/common/util/FileUtil;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/16 p1, 0xc

    const-string p2, "SAVE ERROR"

    .line 28
    invoke-static {p1, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 29
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    iget-object v4, p1, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v5, p1, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->d:Ljava/lang/String;

    sget v7, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 32
    :goto_0
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    iget-object p1, p1, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->b:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {p1, v0, v1}, Lio/dcloud/common/DHInterface/IApp;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 34
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "file"

    .line 35
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "path"

    .line 36
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    iget-object v0, p1, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object p1, p1, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->d:Ljava/lang/String;

    sget v2, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {v0, p1, p2, v2, v3}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    .line 38
    new-instance p1, Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 39
    iget-object p2, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    iget-object p2, p2, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    const/16 p1, 0xc

    const-string v0, "UNKOWN ERROR"

    .line 1
    invoke-static {p1, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    iget-object p1, p0, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a:Lio/dcloud/js/gallery/GalleryFeatureImpl$b;

    iget-object v1, p1, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->c:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p1, Lio/dcloud/js/gallery/GalleryFeatureImpl$b;->d:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lio/dcloud/js/gallery/GalleryFeatureImpl$b$a;->a([BLcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
