.class public Lio/dcloud/feature/device/DeviceFeatureImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/common/DHInterface/IFeature;
.implements Lio/dcloud/common/DHInterface/ISysEventListener;


# static fields
.field static a:I = 0xff


# instance fields
.field private b:Landroid/os/PowerManager$WakeLock;

.field private c:Z

.field private d:Landroid/content/Context;

.field e:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_screenBrightnessSettingMaximum"

    const-string v2, "integer"

    const-string v3, "android"

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lio/dcloud/feature/device/DeviceFeatureImpl;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, 0xff

    .line 7
    sput v0, Lio/dcloud/feature/device/DeviceFeatureImpl;->a:I

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/dcloud/feature/device/DeviceFeatureImpl;->b:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/dcloud/feature/device/DeviceFeatureImpl;->c:Z

    const/4 v0, -0x1

    .line 376
    iput v0, p0, Lio/dcloud/feature/device/DeviceFeatureImpl;->e:I

    return-void
.end method

.method private a(F)I
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iget v0, p0, Lio/dcloud/feature/device/DeviceFeatureImpl;->e:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Landroid/app/Activity;)I
    .locals 7

    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 47
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v1, 0x0

    const/16 v2, 0x7d

    cmpg-float v3, v0, v1

    if-gez v3, :cond_1

    .line 48
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 53
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "config_screenBrightnessSettingMaximum"

    const-string v5, "integer"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 54
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const-string v3, "screen_brightness"

    .line 55
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0xff

    if-le p1, v3, :cond_0

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    cmpl-float p1, v0, v1

    if-lez p1, :cond_2

    .line 60
    sget p1, Lio/dcloud/feature/device/DeviceFeatureImpl;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_2

    move v2, v0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 70
    :cond_1
    sget p1, Lio/dcloud/feature/device/DeviceFeatureImpl;->a:I

    :goto_0
    int-to-float p1, p1

    mul-float v0, v0, p1

    float-to-int v2, v0

    :cond_2
    :goto_1
    return v2
.end method

.method private a(Lio/dcloud/common/DHInterface/IApp;F)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v0

    const/4 v1, 0x2

    .line 4
    invoke-interface {p1, v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result p1

    .line 5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "width"

    .line 7
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "height"

    .line 8
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    int-to-float v0, v0

    div-float/2addr v0, p2

    float-to-double v2, v0

    const-string v0, "resolutionWidth"

    .line 9
    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    int-to-float p1, p1

    div-float/2addr p1, p2

    float-to-double p1, p1

    const-string v0, "resolutionHeight"

    .line 10
    invoke-virtual {v1, v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 14
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;F)V
    .locals 5

    .line 71
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_0

    cmpl-float v4, p2, v1

    if-lez v4, :cond_0

    .line 74
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    .line 76
    :cond_0
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    :goto_0
    cmpl-float v4, p2, v2

    if-nez v4, :cond_1

    .line 80
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_1

    :cond_1
    if-gtz v3, :cond_2

    cmpl-float v1, p2, v1

    if-lez v1, :cond_2

    .line 83
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "\\|"

    .line 15
    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 17
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x483826f

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v1, :cond_2

    const v1, -0x47d253d

    if-eq v0, v1, :cond_1

    const v1, -0x479f6a4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "getVAID"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "getOAID"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "getAAID"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_3

    const/4 p2, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p2, -0x1

    :goto_1
    const-string v0, "\'}"

    const-string v1, ""

    if-eqz p2, :cond_8

    if-eq p2, v2, :cond_6

    if-eq p2, v3, :cond_4

    goto/16 :goto_2

    .line 27
    :cond_4
    :try_start_1
    array-length p2, p4

    if-le p2, v3, :cond_5

    aget-object v1, p4, v3

    .line 28
    :cond_5
    new-instance p2, Lorg/json/JSONObject;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\'aaid\':\'"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget p4, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {p1, p3, p2, p4, v4}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto :goto_2

    .line 29
    :cond_6
    array-length p2, p4

    if-le p2, v2, :cond_7

    aget-object v1, p4, v2

    .line 30
    :cond_7
    new-instance p2, Lorg/json/JSONObject;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\'vaid\':\'"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget p4, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {p1, p3, p2, p4, v4}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V

    goto :goto_2

    .line 31
    :cond_8
    array-length p2, p4

    if-lez p2, :cond_9

    aget-object v1, p4, v4

    .line 32
    :cond_9
    new-instance p2, Lorg/json/JSONObject;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\'oaid\':\'"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget p4, Lio/dcloud/common/util/JSUtil;->OK:I

    invoke-static {p1, p3, p2, p4, v4}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 44
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/16 p4, 0x191

    invoke-static {p4, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :goto_2
    return-void
.end method

.method static synthetic a(Lio/dcloud/feature/device/DeviceFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;F)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/device/DeviceFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;F)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/feature/device/DeviceFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dcloud/feature/device/DeviceFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lio/dcloud/common/DHInterface/IWebview;F)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lio/dcloud/feature/device/DeviceFeatureImpl$d;

    invoke-direct {v1, p0, p1, p2}, Lio/dcloud/feature/device/DeviceFeatureImpl$d;-><init>(Lio/dcloud/feature/device/DeviceFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Z)V
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    if-nez p3, :cond_0

    const-string p3, "android.intent.action.CALL"

    goto :goto_0

    :cond_0
    const-string p3, "android.intent.action.DIAL"

    .line 91
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 92
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public dispose(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 15

    move-object v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v8, 0x2

    const/16 v6, 0x8

    const/4 v9, 0x1

    const/4 v10, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "lockOrientation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x19

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "s.resolutionWidth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x18

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "setBrightness"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x17

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "getVolume"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x16

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "setVolume"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x15

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "isSetProxy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x14

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "unlockOrientation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x13

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "d.resolutionHeight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0x12

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "vibrate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x11

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "__isWakelockNative__"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "getBrightness"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "dial"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "beep"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_d
    const-string v2, "getCurrentType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_e
    const-string v2, "getCurrentSize"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_f
    const-string v2, "getVAID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_10
    const-string v2, "getOAID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_11
    const-string v2, "getInfo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_12
    const-string v2, "getAAID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_0

    :cond_12
    const/4 v2, 0x7

    goto :goto_1

    :sswitch_13
    const-string v2, "isWakelock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_0

    :cond_13
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_14
    const-string v2, "getDeviceId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_0

    :cond_14
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_15
    const-string v2, "getCurrentAPN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_0

    :cond_15
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_16
    const-string v2, "s.resolutionHeight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_0

    :cond_16
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_17
    const-string v2, "getDCloudID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_0

    :cond_17
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_18
    const-string v2, "d.resolutionWidth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_0

    :cond_18
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_19
    const-string v2, "setWakelock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_0

    :cond_19
    const/4 v2, 0x0

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    const-string v11, "audio"

    const-string v12, "Device"

    const-string v14, "Device-"

    const/4 v13, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_7

    .line 13
    :pswitch_0
    aget-object v1, p3, v10

    .line 14
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IAppInfo;->setRequestedOrientation(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 112
    :pswitch_1
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    .line 113
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v0

    .line 114
    invoke-interface {v1, v10}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 115
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 130
    :pswitch_2
    aget-object v1, p3, v10

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 131
    invoke-direct {p0, v0, v1}, Lio/dcloud/feature/device/DeviceFeatureImpl;->b(Lio/dcloud/common/DHInterface/IWebview;F)V

    goto/16 :goto_7

    .line 132
    :pswitch_3
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 133
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v0, v0

    .line 134
    iget v1, v7, Lio/dcloud/feature/device/DeviceFeatureImpl;->e:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 135
    :pswitch_4
    aget-object v1, p3, v10

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 136
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 137
    invoke-direct {p0, v1}, Lio/dcloud/feature/device/DeviceFeatureImpl;->a(F)I

    move-result v1

    .line 138
    invoke-virtual {v0, v3, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 139
    invoke-virtual {v0, v6, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 140
    invoke-virtual {v0, v5, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 141
    invoke-virtual {v0, v4, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 142
    invoke-virtual {v0, v8, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 143
    invoke-virtual {v0, v9, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 144
    invoke-virtual {v0, v10, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_7

    .line 145
    :pswitch_5
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/NetworkTypeUtil;->isWifiProxy(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 148
    :pswitch_6
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0, v13}, Lio/dcloud/common/DHInterface/IAppInfo;->setRequestedOrientation(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 257
    :pswitch_7
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    .line 258
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v0

    .line 259
    invoke-interface {v1, v9}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 260
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 261
    :pswitch_8
    :try_start_0
    aget-object v0, p3, v10

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1a

    goto :goto_2

    :catch_0
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_2
    const-wide/16 v0, 0x1f4

    .line 268
    :cond_1a
    iget-object v2, v7, Lio/dcloud/feature/device/DeviceFeatureImpl;->d:Landroid/content/Context;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 269
    invoke-virtual {v2, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    goto/16 :goto_7

    .line 270
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v7, Lio/dcloud/feature/device/DeviceFeatureImpl;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 335
    :pswitch_a
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/dcloud/feature/device/DeviceFeatureImpl;->a(Landroid/app/Activity;)I

    move-result v0

    int-to-float v0, v0

    .line 336
    sget v1, Lio/dcloud/feature/device/DeviceFeatureImpl;->a:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 337
    :pswitch_b
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 338
    aget-object v1, p3, v9

    invoke-static {v1, v9, v10}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v6

    .line 339
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v9

    new-instance v10, Lio/dcloud/feature/device/DeviceFeatureImpl$a;

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    move-object v1, v10

    move-object v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/device/DeviceFeatureImpl$a;-><init>(Lio/dcloud/feature/device/DeviceFeatureImpl;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;[Ljava/lang/String;Z)V

    const-string v0, "PHONE"

    invoke-static {v9, v12, v0, v8, v10}, Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    goto/16 :goto_7

    .line 355
    :pswitch_c
    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v0, 0x64

    invoke-direct {v1, v4, v0}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 358
    :try_start_1
    aget-object v0, p3, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-gtz v0, :cond_1b

    goto :goto_3

    :cond_1b
    move v9, v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 363
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_3
    if-ge v10, v9, :cond_22

    const/16 v0, 0x58

    .line 366
    invoke-virtual {v1, v0}, Landroid/media/ToneGenerator;->startTone(I)Z

    const-wide/16 v2, 0x1f4

    .line 368
    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v4, v0

    .line 370
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 371
    :pswitch_d
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/DeviceInfo;->getNetWorkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 508
    :pswitch_e
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v0

    invoke-direct {p0, v1, v0}, Lio/dcloud/feature/device/DeviceFeatureImpl;->a(Lio/dcloud/common/DHInterface/IApp;F)Ljava/lang/String;

    move-result-object v0

    .line 509
    invoke-static {v0, v10}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 528
    :pswitch_f
    aget-object v2, p3, v10

    .line 529
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 530
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v3, Lio/dcloud/feature/device/DeviceFeatureImpl$b;

    invoke-direct {v3, p0, v0, v2}, Lio/dcloud/feature/device/DeviceFeatureImpl$b;-><init>(Lio/dcloud/feature/device/DeviceFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {v1, v12, v0, v8, v3}, Lio/dcloud/common/adapter/util/PermissionUtil;->usePermission(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILio/dcloud/common/adapter/util/PermissionUtil$Request;)V

    goto/16 :goto_7

    .line 552
    :pswitch_10
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 553
    aget-object v2, p3, v10

    .line 555
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v3

    const-string v4, "not support"

    const/16 v5, 0x191

    if-eqz v3, :cond_1c

    sget-object v3, Lio/dcloud/feature/internal/sdk/SDK;->customOAID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 558
    invoke-static {v5, v4}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_7

    .line 562
    :cond_1c
    sget-object v3, Lio/dcloud/common/adapter/util/DeviceInfo;->oaids:Ljava/lang/String;

    if-eqz v3, :cond_1e

    const-string v6, "||"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_5

    .line 587
    :cond_1d
    sget-object v3, Lio/dcloud/common/adapter/util/DeviceInfo;->oaids:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lio/dcloud/feature/device/DeviceFeatureImpl;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1e
    :goto_5
    :try_start_3
    const-string v3, "com.bun.miitmdid.core.JLibrary"

    .line 588
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const-string v6, "InitEntry"

    :try_start_4
    new-array v8, v9, [Ljava/lang/Class;

    .line 589
    const-class v11, Landroid/content/Context;

    aput-object v11, v8, v10

    invoke-virtual {v3, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 591
    invoke-virtual {v3, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v6, v9, [Ljava/lang/Object;

    .line 592
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v8

    aput-object v8, v6, v10

    invoke-virtual {v3, v13, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    nop

    .line 595
    :cond_1f
    :goto_6
    new-instance v3, Lio/dcloud/e/d/a;

    new-instance v6, Lio/dcloud/feature/device/DeviceFeatureImpl$c;

    invoke-direct {v6, p0, v0, v1, v2}, Lio/dcloud/feature/device/DeviceFeatureImpl$c;-><init>(Lio/dcloud/feature/device/DeviceFeatureImpl;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v6}, Lio/dcloud/e/d/a;-><init>(Lio/dcloud/e/d/a$b;)V

    .line 605
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v3, v1}, Lio/dcloud/e/d/a;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 607
    invoke-static {v5, v4}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_7

    .line 608
    :pswitch_11
    iget-object v0, v7, Lio/dcloud/feature/device/DeviceFeatureImpl;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    .line 609
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 685
    :pswitch_12
    invoke-static {}, Lio/dcloud/common/adapter/util/DeviceInfo;->getCurrentAPN()Ljava/lang/String;

    move-result-object v0

    .line 686
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    return-object v13

    .line 689
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 692
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 693
    invoke-static {v1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    return-object v0

    :catch_4
    move-exception v0

    .line 696
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v13

    .line 697
    :pswitch_13
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    .line 698
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v0

    .line 699
    invoke-interface {v1, v8}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 700
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 816
    :pswitch_14
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/dcloud/common/util/AppRuntime;->checkPrivacyComplianceAndPrompt(Landroid/content/Context;Ljava/lang/String;)V

    .line 817
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/AppRuntime;->getDCloudDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 818
    :pswitch_15
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    .line 819
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v0

    .line 820
    invoke-interface {v1, v10}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 821
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 822
    :pswitch_16
    aget-object v0, p3, v10

    invoke-static {v0, v10, v10}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 824
    iget-object v0, v7, Lio/dcloud/feature/device/DeviceFeatureImpl;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_7

    .line 826
    :cond_21
    iget-object v0, v7, Lio/dcloud/feature/device/DeviceFeatureImpl;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_22
    :goto_7
    return-object v13

    :sswitch_data_0
    .sparse-switch
        -0x782c7caf -> :sswitch_19
        -0x69691910 -> :sswitch_18
        -0x5950757e -> :sswitch_17
        -0x58fcc2f2 -> :sswitch_16
        -0x52a82624 -> :sswitch_15
        -0x4208d879 -> :sswitch_14
        -0x1e0773e7 -> :sswitch_13
        -0x483826f -> :sswitch_12
        -0x47f32dc -> :sswitch_11
        -0x47d253d -> :sswitch_10
        -0x479f6a4 -> :sswitch_f
        -0x2540c1c -> :sswitch_e
        -0x2535ce3 -> :sswitch_d
        0x2e142e -> :sswitch_c
        0x2f0b70 -> :sswitch_b
        0x14e2e447 -> :sswitch_a
        0x166d4d50 -> :sswitch_9
        0x1ae6756f -> :sswitch_8
        0x2276fd3d -> :sswitch_7
        0x23934bec -> :sswitch_6
        0x24433276 -> :sswitch_5
        0x27f73e1c -> :sswitch_4
        0x34c20a10 -> :sswitch_3
        0x43073253 -> :sswitch_2
        0x508ae8ff -> :sswitch_1
        0x59437fa5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_14
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/feature/device/DeviceFeatureImpl;->d:Landroid/content/Context;

    const-string v0, "power"

    .line 3
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    const/16 v0, 0xa

    const-string v1, "My Lock"

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lio/dcloud/feature/device/DeviceFeatureImpl;->b:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 8
    invoke-virtual {p1}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 p2, 0x3

    .line 9
    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    iput p1, p0, Lio/dcloud/feature/device/DeviceFeatureImpl;->e:I

    return-void
.end method

.method public onExecute(Lio/dcloud/common/DHInterface/ISysEventListener$SysEventType;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
