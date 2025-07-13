.class public Lio/dcloud/sdk/base/dcloud/ADHandler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/sdk/base/dcloud/ADHandler$i;,
        Lio/dcloud/sdk/base/dcloud/ADHandler$j;,
        Lio/dcloud/sdk/base/dcloud/ADHandler$InstallReceiver;,
        Lio/dcloud/sdk/base/dcloud/ADHandler$g;,
        Lio/dcloud/sdk/base/dcloud/ADHandler$h;
    }
.end annotation


# static fields
.field private static a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$g;)Lio/dcloud/sdk/base/dcloud/ADHandler$g;
    .locals 2

    .line 108
    iput-object p1, p2, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->h:Ljava/lang/String;

    .line 109
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    sput-object p1, Lio/dcloud/sdk/base/dcloud/ADHandler;->a:Ljava/util/LinkedList;

    .line 110
    new-instance p1, Lio/dcloud/sdk/base/dcloud/ADHandler$e;

    invoke-direct {p1, p2, p0}, Lio/dcloud/sdk/base/dcloud/ADHandler$e;-><init>(Lio/dcloud/sdk/base/dcloud/ADHandler$g;Landroid/content/Context;)V

    invoke-static {p0, p1}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$h;)V

    .line 122
    invoke-virtual {p2}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->a()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lio/dcloud/sdk/base/dcloud/ADHandler;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 123
    :goto_0
    sget-object v0, Lio/dcloud/sdk/base/dcloud/ADHandler;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/dcloud/sdk/base/dcloud/ADHandler;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "s.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    if-nez p1, :cond_0

    .line 127
    sget-object v0, Lio/dcloud/sdk/base/dcloud/ADHandler;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {p0, v0, p2}, Lio/dcloud/sdk/base/dcloud/ADHandler;->b(Landroid/content/Context;Ljava/io/File;Lio/dcloud/sdk/base/dcloud/ADHandler$g;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/cache/ad/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 132
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/ad/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 12
    invoke-static {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "ua-webview"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "appid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "adid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :pswitch_0
    invoke-static {}, Lio/dcloud/h/c/a;->d()Lio/dcloud/h/c/a;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/h/c/a;->c()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/h/a/d/b/i;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_1
    invoke-static {}, Lio/dcloud/h/c/a;->d()Lio/dcloud/h/c/a;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/h/c/a;->b()Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;->getAppId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :pswitch_2
    invoke-static {}, Lio/dcloud/h/c/a;->d()Lio/dcloud/h/c/a;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/h/c/a;->b()Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/sdk/core/DCloudAOLManager$InitConfig;->getAdId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2d9c7e -> :sswitch_2
        0x58b82fc -> :sswitch_1
        0x5f0ee1b8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    const-string v0, "${User-Agent}"

    :try_start_0
    const-string v1, "u-a"

    .line 23
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "${click_id}"

    :try_start_1
    const-string v1, "click_id"

    .line 24
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "${down_x}"

    :try_start_2
    const-string v1, "down_x"

    const/16 v2, -0x3e7

    .line 25
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v0, "${down_y}"

    :try_start_3
    const-string v1, "down_y"

    .line 26
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v0, "${up_x}"

    :try_start_4
    const-string v1, "up_x"

    .line 27
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v0, "${up_y}"

    :try_start_5
    const-string v1, "up_y"

    .line 28
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_0

    const-string v0, "${relative_down_x}"

    :try_start_6
    const-string v1, "relative_down_x"

    .line 29
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_0

    const-string v0, "${relative_down_y}"

    :try_start_7
    const-string v1, "relative_down_y"

    .line 30
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_0

    const-string v0, "${relative_up_x}"

    :try_start_8
    const-string v1, "relative_up_x"

    .line 31
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_0

    const-string v0, "${relative_up_y}"

    :try_start_9
    const-string v1, "relative_up_y"

    .line 32
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method static synthetic a()Ljava/util/LinkedList;
    .locals 1

    .line 3
    sget-object v0, Lio/dcloud/sdk/base/dcloud/ADHandler;->a:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic a(Lio/dcloud/sdk/base/dcloud/ADHandler$g;)Lorg/json/JSONObject;
    .locals 0

    .line 2
    invoke-static {p0}, Lio/dcloud/sdk/base/dcloud/ADHandler;->b(Lio/dcloud/sdk/base/dcloud/ADHandler$g;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$g;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lio/dcloud/sdk/base/dcloud/ADHandler;->b(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$g;Ljava/lang/String;)V

    return-void
.end method

.method static a(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$g;Ljava/lang/String;)V
    .locals 3

    .line 36
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "tid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {}, Lio/dcloud/h/a/e/f;->a()Lio/dcloud/h/a/e/f;

    move-result-object v1

    new-instance v2, Lio/dcloud/sdk/base/dcloud/ADHandler$d;

    invoke-direct {v2, p1, p0, v0, p2}, Lio/dcloud/sdk/base/dcloud/ADHandler$d;-><init>(Lio/dcloud/sdk/base/dcloud/ADHandler$g;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/dcloud/h/a/e/f;->a(Ljava/lang/Runnable;)V

    .line 56
    iget-object v0, p1, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->c:Ljava/lang/String;

    const-string/jumbo v1, "wanka"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {p0, p1, p2}, Lio/dcloud/sdk/base/dcloud/a;->d(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$g;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p1, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->c:Ljava/lang/String;

    const-string/jumbo v1, "youdao"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-static {p0, p1, p2}, Lio/dcloud/sdk/base/dcloud/b;->d(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$g;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p1, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->c:Ljava/lang/String;

    const-string v1, "common"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    invoke-static {p0, p1, p2}, Lio/dcloud/sdk/base/dcloud/e;->d(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$g;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_2
    invoke-static {p0, p1, p2}, Lio/dcloud/sdk/base/dcloud/ADHandler;->b(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$g;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static a(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$h;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/dcloud/sdk/base/dcloud/ADHandler$h<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-static {p0}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 75
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 79
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 83
    :cond_1
    invoke-static {p0}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a([Ljava/io/File;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 86
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_7

    .line 87
    aget-object v2, p0, v1

    .line 88
    invoke-interface {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$h;->find()Z

    move-result v3

    if-nez v3, :cond_5

    .line 89
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    .line 90
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_6

    .line 91
    aget-object v4, v2, v3

    .line 92
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-lez v9, :cond_3

    .line 94
    invoke-interface {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$h;->find()Z

    move-result v5

    if-nez v5, :cond_4

    .line 95
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x0

    .line 96
    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_4

    .line 97
    aget-object v6, v4, v5

    .line 98
    invoke-interface {p1, v6}, Lio/dcloud/sdk/base/dcloud/ADHandler$h;->operate(Ljava/lang/Object;)V

    .line 99
    invoke-interface {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$h;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 103
    :cond_3
    invoke-static {v4}, Lio/dcloud/sdk/base/dcloud/h;->a(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 107
    :cond_5
    invoke-static {v2}, Lio/dcloud/sdk/base/dcloud/h;->a(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/io/File;Lio/dcloud/sdk/base/dcloud/ADHandler$g;)V
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Lio/dcloud/sdk/base/dcloud/ADHandler;->b(Landroid/content/Context;Ljava/io/File;Lio/dcloud/sdk/base/dcloud/ADHandler$g;)V

    return-void
.end method

.method private static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/sdk/base/dcloud/ADHandler$g;)V
    .locals 6

    .line 35
    iget-object v5, p5, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->k:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lio/dcloud/h/c/c/b/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;JLio/dcloud/sdk/base/dcloud/ADHandler$i;)V
    .locals 0

    .line 145
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lio/dcloud/sdk/base/dcloud/ADHandler;->b(Landroid/content/Context;Lorg/json/JSONObject;JLio/dcloud/sdk/base/dcloud/ADHandler$i;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    invoke-interface {p4}, Lio/dcloud/sdk/base/dcloud/ADHandler$i;->b()V

    :goto_0
    return-void
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "es"

    .line 133
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 135
    new-instance p2, Lio/dcloud/sdk/base/dcloud/c;

    invoke-direct {p2, p0, p1}, Lio/dcloud/sdk/base/dcloud/c;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-virtual {p2}, Lio/dcloud/sdk/base/dcloud/c;->d()V

    return-void

    .line 139
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 140
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "tid.txt"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p0, v0, p2}, Lio/dcloud/sdk/base/dcloud/h;->a([BILjava/lang/String;)V

    .line 141
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".gif"

    invoke-virtual {p3, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "img.gif"

    goto :goto_0

    :cond_1
    const-string p2, "img.png"

    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "srcPath"

    .line 142
    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "data.json"

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, v0, p4}, Lio/dcloud/sdk/base/dcloud/h;->a([BILjava/lang/String;)V

    .line 144
    new-instance p2, Lio/dcloud/sdk/base/dcloud/ADHandler$f;

    invoke-direct {p2, p1, p3, p0, p5}, Lio/dcloud/sdk/base/dcloud/ADHandler$f;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$i;)V

    invoke-static {p2}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Lio/dcloud/sdk/base/dcloud/ADHandler$j;)V

    return-void
.end method

.method private static a(Lio/dcloud/sdk/base/dcloud/ADHandler$j;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 15
    invoke-static {}, Lio/dcloud/h/a/e/f;->a()Lio/dcloud/h/a/e/f;

    move-result-object v0

    new-instance v1, Lio/dcloud/sdk/base/dcloud/ADHandler$a;

    invoke-direct {v1, p0}, Lio/dcloud/sdk/base/dcloud/ADHandler$a;-><init>(Lio/dcloud/sdk/base/dcloud/ADHandler$j;)V

    invoke-virtual {v0, v1}, Lio/dcloud/h/a/e/f;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {p0}, Lio/dcloud/sdk/base/dcloud/ADHandler$j;->execute()V

    :cond_1
    :goto_0
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static a([Ljava/io/File;)V
    .locals 9

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 64
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    const/4 v2, 0x0

    .line 65
    :goto_1
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_2

    .line 66
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    add-int/lit8 v5, v2, 0x1

    .line 67
    aget-object v6, p0, v5

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v8, v3, v6

    if-gez v8, :cond_1

    .line 69
    aget-object v3, p0, v2

    .line 70
    aget-object v4, p0, v5

    aput-object v4, p0, v2

    .line 71
    aput-object v3, p0, v5

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lio/dcloud/sdk/base/dcloud/ADHandler$g;
    .locals 1

    .line 92
    new-instance v0, Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    invoke-direct {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;-><init>()V

    .line 93
    invoke-static {p0, p1, v0}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$g;)Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lio/dcloud/sdk/base/dcloud/ADHandler$g;)Lorg/json/JSONObject;
    .locals 5

    const-string v0, "dh"

    const-string v1, "dw"

    .line 73
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "img"

    .line 75
    :try_start_0
    iget-object v4, p0, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    invoke-virtual {p0}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->c()Lorg/json/JSONObject;

    move-result-object p0

    .line 77
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 78
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 80
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "dx"

    :try_start_1
    const-string v3, "down_x"

    .line 81
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "dy"

    :try_start_2
    const-string v3, "down_y"

    .line 82
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "ux"

    :try_start_3
    const-string v3, "up_x"

    .line 83
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v1, "uy"

    :try_start_4
    const-string v3, "up_y"

    .line 84
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v1, "rdx"

    :try_start_5
    const-string v3, "relative_down_x"

    .line 85
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    const-string v1, "rdy"

    :try_start_6
    const-string v3, "relative_down_y"

    .line 86
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    const-string v1, "rux"

    :try_start_7
    const-string v3, "relative_up_x"

    .line 87
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    const-string v1, "ruy"

    :try_start_8
    const-string v3, "relative_up_y"

    .line 88
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "click_coord"

    .line 89
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 91
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v2
.end method

.method private static b(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$g;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-static {}, Lio/dcloud/h/a/e/f;->a()Lio/dcloud/h/a/e/f;

    move-result-object v0

    new-instance v8, Lio/dcloud/sdk/base/dcloud/-$$Lambda$ADHandler$0j3TXUAQJ94gBlZuIGoxY_m5Vf4;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p5

    move-object v4, p2

    move-object v5, p3

    move v6, p0

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lio/dcloud/sdk/base/dcloud/-$$Lambda$ADHandler$0j3TXUAQJ94gBlZuIGoxY_m5Vf4;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/sdk/base/dcloud/ADHandler$g;)V

    invoke-virtual {v0, v8}, Lio/dcloud/h/a/e/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static b(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$g;Ljava/lang/String;)V
    .locals 12

    .line 2
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->b()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "tid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "dplk"

    .line 5
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/dcloud/h/a/e/b;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-static {}, Lio/dcloud/h/a/e/f;->a()Lio/dcloud/h/a/e/f;

    move-result-object v0

    new-instance v1, Lio/dcloud/sdk/base/dcloud/ADHandler$c;

    invoke-direct {v1, p1, p0, v5, p2}, Lio/dcloud/sdk/base/dcloud/ADHandler$c;-><init>(Lio/dcloud/sdk/base/dcloud/ADHandler$g;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/dcloud/h/a/e/f;->a(Ljava/lang/Runnable;)V

    .line 24
    iget-object v0, p1, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->c:Ljava/lang/String;

    const-string/jumbo v1, "wanka"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    invoke-static {p0, p1, p2}, Lio/dcloud/sdk/base/dcloud/a;->e(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$g;Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p1, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->c:Ljava/lang/String;

    const-string/jumbo v1, "youdao"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    invoke-static {p0, p1, p2}, Lio/dcloud/sdk/base/dcloud/b;->e(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$g;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_2
    iget-object v0, p1, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->c:Ljava/lang/String;

    const-string v1, "common"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "dptracker"

    .line 29
    invoke-static {p0, p1, p2, v0}, Lio/dcloud/sdk/base/dcloud/e;->a(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$g;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v1, "action"

    .line 35
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    .line 36
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 37
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 38
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/dcloud/sdk/base/dcloud/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 40
    :cond_5
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/dcloud/h/a/e/b;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    const-string v3, "download"

    .line 42
    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v1, "expires"

    .line 44
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 45
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v6, "yy-MM-dd HH:mm:ss"

    invoke-direct {v3, v6, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 47
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 50
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 54
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->c()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 55
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "ua"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    const-string v1, ""

    :goto_2
    move-object v10, v1

    .line 57
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->d()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 58
    iget-object v4, p1, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "bundle"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v11, p1, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->k:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v3, p0

    move-object v6, p2

    invoke-static/range {v3 .. v11}, Lio/dcloud/sdk/base/dcloud/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/k/d;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 60
    :cond_9
    invoke-virtual {p1, p0, v5, p2}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    const-string p2, "browser"

    .line 68
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 69
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->d()Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    .line 72
    :cond_b
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/dcloud/h/a/e/b;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_c
    :goto_3
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/io/File;Lio/dcloud/sdk/base/dcloud/ADHandler$g;)V
    .locals 7

    const-string p0, "/"

    .line 94
    :try_start_0
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "data.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/sdk/base/dcloud/h;->e(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 96
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "data"

    .line 97
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v2, "provider"

    .line 99
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->c:Ljava/lang/String;

    .line 100
    iput-object v1, p2, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->d:Lorg/json/JSONObject;

    const-string v2, "es"

    const/4 v3, 0x0

    .line 101
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p2, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->i:I

    const-string v2, "ec"

    .line 102
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p2, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->j:I

    const-string v2, "src"

    .line 103
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    iput-object v0, p2, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->g:Ljava/lang/String;

    .line 105
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ".gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    const-string v4, "img.gif"

    goto :goto_0

    :cond_2
    const-string v4, "img.png"

    :goto_0
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "s.txt"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 109
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v0, :cond_3

    const-string v0, "srcPath"

    .line 111
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "pl.droidsonroids.gif.GifDrawable"

    const/4 v4, 0x1

    :try_start_2
    new-array v5, v4, [Ljava/lang/Class;

    .line 112
    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-static {v1, v5, v4}, Lio/dcloud/sdk/core/util/ReflectUtil;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p2, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->e:Ljava/lang/Object;

    goto :goto_1

    .line 114
    :cond_3
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 116
    iput-object v0, p2, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->e:Ljava/lang/Object;

    .line 119
    :cond_4
    :goto_1
    iput-object v2, p2, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->f:Ljava/lang/String;

    .line 120
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 122
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/dcloud/sdk/base/dcloud/h;->a(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 126
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_2
    return-void
.end method

.method static b(Landroid/content/Context;Lorg/json/JSONObject;JLio/dcloud/sdk/base/dcloud/ADHandler$i;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 127
    invoke-static {p0}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    .line 128
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "expires"

    .line 129
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v5, "yy-MM-dd HH:mm:ss"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 131
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 132
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    const-string v3, "src"

    .line 133
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "utf-8"

    .line 134
    invoke-static {v7, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string p2, "tid"

    .line 136
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    move-object v5, p1

    move-object v9, p4

    invoke-static/range {v4 .. v9}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/dcloud/sdk/base/dcloud/ADHandler$i;)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-interface {p4}, Lio/dcloud/sdk/base/dcloud/ADHandler$i;->b()V

    :goto_0
    return-void
.end method

.method static c(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$g;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "tid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lio/dcloud/h/a/e/f;->a()Lio/dcloud/h/a/e/f;

    move-result-object v1

    new-instance v2, Lio/dcloud/sdk/base/dcloud/ADHandler$b;

    invoke-direct {v2, p1, p0, v0, p2}, Lio/dcloud/sdk/base/dcloud/ADHandler$b;-><init>(Lio/dcloud/sdk/base/dcloud/ADHandler$g;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/dcloud/h/a/e/f;->a(Ljava/lang/Runnable;)V

    .line 19
    iget-object v0, p1, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->c:Ljava/lang/String;

    const-string/jumbo v1, "wanka"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-static {p0, p1, p2}, Lio/dcloud/sdk/base/dcloud/a;->f(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$g;Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p1, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->c:Ljava/lang/String;

    const-string/jumbo v1, "youdao"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    invoke-static {p0, p1, p2}, Lio/dcloud/sdk/base/dcloud/b;->f(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$g;Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p1, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->c:Ljava/lang/String;

    const-string v1, "common"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "imptracker"

    .line 24
    invoke-static {p0, p1, p2, v0}, Lio/dcloud/sdk/base/dcloud/e;->a(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$g;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic lambda$0j3TXUAQJ94gBlZuIGoxY_m5Vf4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/sdk/base/dcloud/ADHandler$g;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/sdk/base/dcloud/ADHandler$g;)V

    return-void
.end method
