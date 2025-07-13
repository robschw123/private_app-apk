.class Lio/dcloud/js/camera/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/js/camera/a$a;
    }
.end annotation


# static fields
.field protected static a:I = 0x1f5

.field protected static b:I = 0x1f6

.field protected static c:I = 0x1393


# instance fields
.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field g:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/js/camera/a;->d:Ljava/util/List;

    .line 3
    iput-object v0, p0, Lio/dcloud/js/camera/a;->e:Ljava/util/List;

    .line 4
    iput-object v0, p0, Lio/dcloud/js/camera/a;->f:Ljava/util/List;

    .line 14
    iput p1, p0, Lio/dcloud/js/camera/a;->g:I

    return-void
.end method

.method static a(Ljava/lang/String;Z)Lio/dcloud/js/camera/a$a;
    .locals 3

    .line 6
    new-instance v0, Lio/dcloud/js/camera/a$a;

    invoke-direct {v0}, Lio/dcloud/js/camera/a$a;-><init>()V

    if-eqz p0, :cond_6

    const/4 v1, 0x0

    .line 10
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const-string p0, "resolution"

    .line 13
    invoke-static {v1, p0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lio/dcloud/js/camera/a$a;->b:Ljava/lang/String;

    const-string p0, "filename"

    .line 14
    invoke-static {v1, p0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "format"

    .line 15
    invoke-static {v1, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v2, "jpg"

    goto :goto_1

    :cond_0
    const-string v2, "mp4"

    .line 17
    :goto_1
    iput-object v2, v0, Lio/dcloud/js/camera/a$a;->c:Ljava/lang/String;

    .line 18
    invoke-static {p0, v2}, Lio/dcloud/common/util/PdrUtil;->getDefaultPrivateDocPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 19
    iput-object p0, v0, Lio/dcloud/js/camera/a$a;->a:Ljava/lang/String;

    const-string p0, "index"

    .line 20
    invoke-static {v1, p0}, Lio/dcloud/common/util/JSONUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lio/dcloud/js/camera/a$a;->d:I

    if-eqz v1, :cond_1

    const-string p0, "optimize"

    .line 21
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 22
    invoke-static {v1, p0}, Lio/dcloud/common/util/JSONUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v0, Lio/dcloud/js/camera/a$a;->e:Z

    :cond_1
    if-eqz v1, :cond_2

    const-string p0, "videoMaximumDuration"

    .line 24
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 25
    invoke-static {v1, p0}, Lio/dcloud/common/util/JSONUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lio/dcloud/js/camera/a$a;->f:I

    :cond_2
    if-eqz v1, :cond_3

    const-string p0, "crop"

    .line 28
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 29
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lio/dcloud/js/camera/a$a;->g:Lorg/json/JSONObject;

    :cond_3
    if-nez p1, :cond_4

    if-eqz v1, :cond_6

    const-string p0, "videoCompress"

    .line 33
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    .line 34
    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, v0, Lio/dcloud/js/camera/a$a;->h:Z

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_6

    const-string p0, "sizeType"

    .line 36
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 37
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "original"

    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    const-string v1, "compressed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 39
    iput-boolean v2, v0, Lio/dcloud/js/camera/a$a;->h:Z

    goto :goto_2

    .line 41
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v2

    iput-boolean p0, v0, Lio/dcloud/js/camera/a$a;->h:Z

    :cond_6
    :goto_2
    return-object v0
.end method

.method private a(Ljava/util/List;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string p1, "[\'jpg\']"

    const-string v0, "[\'mp4\']"

    .line 5
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 24
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 26
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "["

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    iget v5, v5, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v0, -0x1

    if-eq v2, v3, :cond_0

    const-string v3, ","

    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "]"

    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, "[]"

    :goto_1
    return-object p1
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/js/camera/a;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lio/dcloud/js/camera/a;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "[]"

    :goto_0
    return-object v0
.end method

.method private d()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/dcloud/js/camera/a;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lio/dcloud/js/camera/a;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "[\'jpg\']"

    const-string v1, "[\'mp4\']"

    .line 8
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/dcloud/js/camera/a;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    sget v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lio/dcloud/js/camera/a;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "[]"

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-direct {p0}, Lio/dcloud/js/camera/a;->d()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/dcloud/js/camera/a;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0}, Lio/dcloud/js/camera/a;->e()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    aget-object v2, v0, v3

    const/4 v3, 0x2

    aput-object v2, v1, v3

    aget-object v0, v0, v4

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const-string v0, "(function(){return{supportedImageResolutions : %s,supportedVideoResolutions : %s,supportedImageFormats : %s,supportedVideoFormats : %s};})();"

    invoke-static {v0, v1}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 3

    .line 1
    :try_start_0
    iget v0, p0, Lio/dcloud/js/camera/a;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 4
    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 5
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 6
    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 12
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 14
    :cond_2
    sget v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3

    .line 15
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/js/camera/a;->d:Ljava/util/List;

    .line 17
    :cond_3
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/js/camera/a;->f:Ljava/util/List;

    .line 18
    sget v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_4

    .line 19
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureFormats()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/js/camera/a;->e:Ljava/util/List;

    .line 21
    :cond_4
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
