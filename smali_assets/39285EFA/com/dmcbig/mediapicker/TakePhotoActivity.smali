.class public Lcom/dmcbig/mediapicker/TakePhotoActivity;
.super Landroid/app/Activity;


# instance fields
.field NuriForFile:Landroid/net/Uri;

.field mTmpFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/dmcbig/mediapicker/TakePhotoActivity;->mTmpFile:Ljava/io/File;

    return-void
.end method

.method private createImageFile()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JPEG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, ".jpg"

    .line 4
    invoke-static {v0, v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 13

    move-object v0, p0

    move v1, p1

    .line 1
    invoke-super/range {p0 .. p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x64

    if-eq v1, v3, :cond_0

    const/16 v3, 0x65

    if-ne v1, v3, :cond_1

    const/4 v1, -0x1

    move v3, p2

    if-ne v3, v1, :cond_1

    .line 3
    iget-object v1, v0, Lcom/dmcbig/mediapicker/TakePhotoActivity;->mTmpFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    .line 4
    :cond_0
    new-instance v1, Lcom/dmcbig/mediapicker/entity/Media;

    iget-object v3, v0, Lcom/dmcbig/mediapicker/TakePhotoActivity;->mTmpFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v3, v0, Lcom/dmcbig/mediapicker/TakePhotoActivity;->mTmpFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v3, v0, Lcom/dmcbig/mediapicker/TakePhotoActivity;->mTmpFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    const-string v12, ""

    move-object v3, v1

    invoke-direct/range {v3 .. v12}, Lcom/dmcbig/mediapicker/entity/Media;-><init>(Ljava/lang/String;Ljava/lang/String;JIJILjava/lang/String;)V

    .line 5
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "select_result"

    .line 8
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const v2, 0x12faa62

    .line 9
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    :try_start_0
    invoke-direct {p0}, Lcom/dmcbig/mediapicker/TakePhotoActivity;->createImageFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/dmcbig/mediapicker/TakePhotoActivity;->mTmpFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 10
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const-string v2, "output"

    if-lt v0, v1, :cond_0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".dmc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dmcbig/mediapicker/TakePhotoActivity;->mTmpFile:Ljava/io/File;

    invoke-static {p0, v0, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/dmcbig/mediapicker/TakePhotoActivity;->NuriForFile:Landroid/net/Uri;

    .line 12
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v0, 0x64

    .line 13
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/dmcbig/mediapicker/TakePhotoActivity;->mTmpFile:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/dmcbig/mediapicker/TakePhotoActivity;->mTmpFile:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v0, 0x65

    .line 17
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    const-string v0, "take error"

    .line 19
    invoke-static {p0, v0, p1}, Lcom/dcloud/android/widget/toast/ToastCompat;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/dcloud/android/widget/toast/ToastCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dcloud/android/widget/toast/ToastCompat;->show()V

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method
