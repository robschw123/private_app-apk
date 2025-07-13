.class public Lcom/baidu/mapsdkplatform/comapi/map/o;
.super Ljava/lang/Object;
.source "LocalMap.java"


# static fields
.field private static final a:Ljava/lang/String; = "o"

.field private static c:Lcom/baidu/mapsdkplatform/comapi/map/o;


# instance fields
.field private b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

.field private d:Lcom/baidu/mapsdkplatform/comapi/map/t;

.field private e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/baidu/mapsdkplatform/comapi/map/o;
    .locals 1

    .line 44
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/o;->c:Lcom/baidu/mapsdkplatform/comapi/map/o;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/o;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/o;-><init>()V

    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/map/o;->c:Lcom/baidu/mapsdkplatform/comapi/map/o;

    .line 46
    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/o;->g()V

    .line 48
    :cond_0
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/o;->c:Lcom/baidu/mapsdkplatform/comapi/map/o;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mapsdkplatform/comapi/map/o;)Lcom/baidu/mapsdkplatform/comapi/map/t;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->d:Lcom/baidu/mapsdkplatform/comapi/map/t;

    return-object p0
.end method

.method static synthetic f()Lcom/baidu/mapsdkplatform/comapi/map/o;
    .locals 1

    .line 26
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/o;->c:Lcom/baidu/mapsdkplatform/comapi/map/o;

    return-object v0
.end method

.method private g()V
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/map/o;->h()V

    .line 61
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/t;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/t;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->d:Lcom/baidu/mapsdkplatform/comapi/map/t;

    .line 64
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/p;

    invoke-direct {v0, p0}, Lcom/baidu/mapsdkplatform/comapi/map/p;-><init>(Lcom/baidu/mapsdkplatform/comapi/map/o;)V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->e:Landroid/os/Handler;

    const v1, 0xff09

    .line 74
    invoke-static {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/MessageCenter;->registMessage(ILandroid/os/Handler;)V

    return-void
.end method

.method private h()V
    .locals 22

    move-object/from16 v0, p0

    .line 79
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 80
    invoke-static {v1}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->initAppDirectory(Landroid/content/Context;)V

    .line 81
    new-instance v1, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-direct {v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;-><init>()V

    iput-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    .line 82
    invoke-virtual {v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->Create()Z

    .line 83
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getModuleFileName()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getAppSDCardPath()Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getAppCachePath()Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getAppSecondCachePath()Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getMapTmpStgMax()I

    move-result v16

    .line 89
    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getDomTmpStgMax()I

    move-result v17

    .line 90
    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getItsTmpStgMax()I

    move-result v18

    .line 91
    invoke-static {}, Lcom/baidu/mapapi/common/EnvironmentUtilities;->getSsgTmpStgMax()I

    move-result v19

    .line 93
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getDensityDPI()I

    move-result v5

    const/16 v6, 0xb4

    if-lt v5, v6, :cond_0

    const-string v5, "/h/"

    goto :goto_0

    :cond_0
    const-string v5, "/l/"

    .line 94
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/cfg"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/vmp"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/a/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 99
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 100
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/idrres/"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/tmp/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 108
    iget-object v5, v0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    .line 110
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getScreenWidth()I

    move-result v13

    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getScreenHeight()I

    move-result v14

    .line 111
    invoke-static {}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getInstance()Lcom/baidu/platform/comapi/util/SysOSUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/util/SysOSUtil;->getDensityDPI()I

    move-result v15

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 108
    invoke-virtual/range {v5 .. v21}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->Init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIZZ)Z

    .line 115
    iget-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnResume()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapsdkplatform/comapi/map/n;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "child"

    const-string v2, "cty"

    const-string v3, "mapsize"

    const-string v4, "name"

    const-string v5, "id"

    const-string v6, ""

    .line 431
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_9

    move-object/from16 v7, p0

    iget-object v9, v7, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v9, :cond_0

    goto/16 :goto_4

    .line 434
    :cond_0
    invoke-virtual {v9, v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnSchcityGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 436
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_3

    .line 440
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 443
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_2

    return-object v8

    :cond_2
    const-string v0, "dataset"

    .line 447
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v8

    :cond_3
    const/4 v10, 0x0

    .line 452
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_7

    .line 453
    new-instance v11, Lcom/baidu/mapsdkplatform/comapi/map/n;

    invoke-direct {v11}, Lcom/baidu/mapsdkplatform/comapi/map/n;-><init>()V

    .line 454
    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 458
    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    const/16 v14, 0x7d0

    if-le v13, v14, :cond_4

    const/16 v14, 0xb60

    if-eq v13, v14, :cond_4

    const/16 v14, 0xb5f

    if-eq v13, v14, :cond_4

    const/16 v14, 0x2328

    if-eq v13, v14, :cond_4

    goto :goto_2

    .line 464
    :cond_4
    iput v13, v11, Lcom/baidu/mapsdkplatform/comapi/map/n;->a:I

    .line 465
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/baidu/mapsdkplatform/comapi/map/n;->b:Ljava/lang/String;

    .line 466
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v11, Lcom/baidu/mapsdkplatform/comapi/map/n;->c:I

    .line 467
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v11, Lcom/baidu/mapsdkplatform/comapi/map/n;->d:I

    .line 469
    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 470
    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 472
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 473
    :goto_1
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_5

    .line 474
    new-instance v15, Lcom/baidu/mapsdkplatform/comapi/map/n;

    invoke-direct {v15}, Lcom/baidu/mapsdkplatform/comapi/map/n;-><init>()V

    .line 475
    invoke-virtual {v12, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 476
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Lcom/baidu/mapsdkplatform/comapi/map/n;->a:I

    .line 477
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v15, Lcom/baidu/mapsdkplatform/comapi/map/n;->b:Ljava/lang/String;

    .line 478
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Lcom/baidu/mapsdkplatform/comapi/map/n;->c:I

    .line 479
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Lcom/baidu/mapsdkplatform/comapi/map/n;->d:I

    .line 480
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x0

    goto :goto_1

    .line 482
    :cond_5
    invoke-virtual {v11, v13}, Lcom/baidu/mapsdkplatform/comapi/map/n;->a(Ljava/util/ArrayList;)V

    .line 484
    :cond_6
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x0

    goto :goto_0

    :cond_7
    return-object v6

    :catch_0
    move-exception v0

    .line 487
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1

    :cond_8
    :goto_3
    move-object v1, v8

    return-object v1

    :cond_9
    move-object/from16 v7, p0

    :goto_4
    move-object v1, v8

    return-object v1
.end method

.method public a(Lcom/baidu/mapsdkplatform/comapi/map/s;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->d:Lcom/baidu/mapsdkplatform/comapi/map/t;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/t;->a(Lcom/baidu/mapsdkplatform/comapi/map/s;)V

    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x7d0

    if-le p1, v2, :cond_1

    const/16 v2, 0xb60

    if-eq p1, v2, :cond_1

    const/16 v2, 0xb5f

    if-eq p1, v2, :cond_1

    const/16 v2, 0x2328

    if-eq p1, v2, :cond_1

    return v1

    .line 169
    :cond_1
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnRecordAdd(I)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public a(ZZ)Z
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 274
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnRecordImport(ZZ)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->e:Landroid/os/Handler;

    const v1, 0xff09

    invoke-static {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/MessageCenter;->unregistMessage(ILandroid/os/Handler;)V

    .line 124
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->releaseFromOfflineMap()Z

    const/4 v0, 0x0

    .line 125
    sput-object v0, Lcom/baidu/mapsdkplatform/comapi/map/o;->c:Lcom/baidu/mapsdkplatform/comapi/map/o;

    return-void
.end method

.method public b(Lcom/baidu/mapsdkplatform/comapi/map/s;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->d:Lcom/baidu/mapsdkplatform/comapi/map/t;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/t;->b(Lcom/baidu/mapsdkplatform/comapi/map/s;)V

    :cond_0
    return-void
.end method

.method public b(I)Z
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x7d0

    if-le p1, v2, :cond_1

    const/16 v2, 0xb60

    if-eq p1, v2, :cond_1

    const/16 v2, 0xb5f

    if-eq p1, v2, :cond_1

    const/16 v2, 0x2328

    if-eq p1, v2, :cond_1

    return v1

    .line 190
    :cond_1
    invoke-virtual {v0, p1, v1, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnRecordStart(IZI)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public c()Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapsdkplatform/comapi/map/n;",
            ">;"
        }
    .end annotation

    const-string v0, "child"

    const-string v1, "cty"

    const-string v2, "mapsize"

    const-string v3, "name"

    const-string v4, "id"

    move-object/from16 v5, p0

    .line 320
    iget-object v6, v5, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v7, 0x0

    if-nez v6, :cond_0

    return-object v7

    .line 324
    :cond_0
    invoke-virtual {v6}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnHotcityGet()Ljava/lang/String;

    move-result-object v6

    .line 326
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 329
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "dataset"

    .line 330
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-nez v6, :cond_1

    return-object v7

    :cond_1
    const/4 v10, 0x0

    .line 334
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_4

    .line 335
    new-instance v11, Lcom/baidu/mapsdkplatform/comapi/map/n;

    invoke-direct {v11}, Lcom/baidu/mapsdkplatform/comapi/map/n;-><init>()V

    .line 336
    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 337
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v11, Lcom/baidu/mapsdkplatform/comapi/map/n;->a:I

    .line 338
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/baidu/mapsdkplatform/comapi/map/n;->b:Ljava/lang/String;

    .line 339
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v11, Lcom/baidu/mapsdkplatform/comapi/map/n;->c:I

    .line 340
    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v11, Lcom/baidu/mapsdkplatform/comapi/map/n;->d:I

    .line 342
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 343
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 345
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 346
    :goto_1
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_2

    .line 347
    new-instance v15, Lcom/baidu/mapsdkplatform/comapi/map/n;

    invoke-direct {v15}, Lcom/baidu/mapsdkplatform/comapi/map/n;-><init>()V

    .line 348
    invoke-virtual {v12, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 349
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v15, Lcom/baidu/mapsdkplatform/comapi/map/n;->a:I

    .line 350
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v15, Lcom/baidu/mapsdkplatform/comapi/map/n;->b:Ljava/lang/String;

    .line 351
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v15, Lcom/baidu/mapsdkplatform/comapi/map/n;->c:I

    .line 352
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v15, Lcom/baidu/mapsdkplatform/comapi/map/n;->d:I

    .line 353
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x0

    goto :goto_1

    .line 355
    :cond_2
    invoke-virtual {v11, v13}, Lcom/baidu/mapsdkplatform/comapi/map/n;->a(Ljava/util/ArrayList;)V

    .line 357
    :cond_3
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    return-object v8

    :catch_0
    move-exception v0

    .line 360
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method public c(I)Z
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {v0, p1, v1, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnRecordSuspend(IZI)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public d()Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapsdkplatform/comapi/map/n;",
            ">;"
        }
    .end annotation

    const-string v0, "child"

    const-string v1, "cty"

    const-string v2, "mapsize"

    const-string v3, "name"

    const-string v4, "id"

    move-object/from16 v5, p0

    .line 373
    iget-object v6, v5, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v7, 0x0

    if-nez v6, :cond_0

    return-object v7

    :cond_0
    const-string v8, ""

    .line 375
    invoke-virtual {v6, v8}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnSchcityGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 377
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 379
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "dataset"

    .line 380
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-nez v6, :cond_1

    return-object v7

    :cond_1
    const/4 v10, 0x0

    .line 384
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_5

    .line 385
    new-instance v11, Lcom/baidu/mapsdkplatform/comapi/map/n;

    invoke-direct {v11}, Lcom/baidu/mapsdkplatform/comapi/map/n;-><init>()V

    .line 386
    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 389
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    const/16 v14, 0x7d0

    if-le v13, v14, :cond_2

    const/16 v14, 0xb60

    if-eq v13, v14, :cond_2

    const/16 v14, 0xb5f

    if-eq v13, v14, :cond_2

    const/16 v14, 0x2328

    if-eq v13, v14, :cond_2

    goto :goto_2

    .line 395
    :cond_2
    iput v13, v11, Lcom/baidu/mapsdkplatform/comapi/map/n;->a:I

    .line 396
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/baidu/mapsdkplatform/comapi/map/n;->b:Ljava/lang/String;

    .line 397
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v11, Lcom/baidu/mapsdkplatform/comapi/map/n;->c:I

    .line 398
    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v11, Lcom/baidu/mapsdkplatform/comapi/map/n;->d:I

    .line 399
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 400
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 402
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 403
    :goto_1
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_3

    .line 404
    new-instance v15, Lcom/baidu/mapsdkplatform/comapi/map/n;

    invoke-direct {v15}, Lcom/baidu/mapsdkplatform/comapi/map/n;-><init>()V

    .line 405
    invoke-virtual {v12, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 406
    :try_start_1
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v15, Lcom/baidu/mapsdkplatform/comapi/map/n;->a:I

    .line 407
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v15, Lcom/baidu/mapsdkplatform/comapi/map/n;->b:Ljava/lang/String;

    .line 408
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v15, Lcom/baidu/mapsdkplatform/comapi/map/n;->c:I

    .line 409
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v15, Lcom/baidu/mapsdkplatform/comapi/map/n;->d:I

    .line 410
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x0

    goto :goto_1

    .line 412
    :cond_3
    invoke-virtual {v11, v13}, Lcom/baidu/mapsdkplatform/comapi/map/n;->a(Ljava/util/ArrayList;)V

    .line 414
    :cond_4
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    goto :goto_3

    :catch_1
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    return-object v8

    :catch_2
    move-object v0, v7

    :goto_3
    return-object v0

    :catch_3
    move-object v0, v7

    :goto_4
    return-object v0
.end method

.method public d(I)Z
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    .line 232
    invoke-virtual {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnRecordSuspend(IZI)Z

    move-result p1

    return p1
.end method

.method public e()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapsdkplatform/comapi/map/r;",
            ">;"
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 563
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnRecordGetAll()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v2, ""

    .line 565
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    .line 570
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 573
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 574
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    const-string v0, "dataset"

    .line 577
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 578
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 579
    new-instance v5, Lcom/baidu/mapsdkplatform/comapi/map/r;

    invoke-direct {v5}, Lcom/baidu/mapsdkplatform/comapi/map/r;-><init>()V

    .line 580
    new-instance v6, Lcom/baidu/mapsdkplatform/comapi/map/q;

    invoke-direct {v6}, Lcom/baidu/mapsdkplatform/comapi/map/q;-><init>()V

    .line 581
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "id"

    .line 582
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->a:I

    const-string v8, "name"

    .line 583
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->b:Ljava/lang/String;

    const-string v8, "pinyin"

    .line 584
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->c:Ljava/lang/String;

    const-string v8, "mapoldsize"

    .line 585
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->h:I

    const-string v8, "ratio"

    .line 586
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->i:I

    const-string v8, "status"

    .line 587
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->l:I

    .line 588
    new-instance v8, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    const-string/jumbo v9, "y"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v10, "x"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    iput-object v8, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->g:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    const-string v8, "up"

    .line 591
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    iput-boolean v9, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->j:Z

    const-string v8, "lev"

    .line 592
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->e:I

    .line 594
    iget-boolean v8, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->j:Z

    if-eqz v8, :cond_4

    const-string v8, "mapsize"

    .line 595
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->k:I

    goto :goto_2

    .line 597
    :cond_4
    iput v3, v6, Lcom/baidu/mapsdkplatform/comapi/map/q;->k:I

    .line 600
    :goto_2
    invoke-virtual {v5, v6}, Lcom/baidu/mapsdkplatform/comapi/map/r;->a(Lcom/baidu/mapsdkplatform/comapi/map/q;)V

    .line 601
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v2

    :catch_0
    move-exception v0

    .line 604
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_3
    return-object v1
.end method

.method public e(I)Z
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {v0, p1, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnRecordRemove(IZ)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public f(I)Z
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x7d0

    if-le p1, v2, :cond_1

    const/16 v2, 0xb60

    if-eq p1, v2, :cond_1

    const/16 v2, 0xb5f

    if-eq p1, v2, :cond_1

    const/16 v2, 0x2328

    if-eq p1, v2, :cond_1

    return v1

    .line 295
    :cond_1
    invoke-virtual {v0, p1, v1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnRecordReload(IZ)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public g(I)Lcom/baidu/mapsdkplatform/comapi/map/r;
    .locals 6

    .line 500
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/o;->b:Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-gez p1, :cond_0

    goto/16 :goto_2

    .line 503
    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/basemap/AppBaseMap;->OnRecordGetAt(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v0, ""

    .line 504
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 509
    :cond_1
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/r;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/r;-><init>()V

    .line 510
    new-instance v2, Lcom/baidu/mapsdkplatform/comapi/map/q;

    invoke-direct {v2}, Lcom/baidu/mapsdkplatform/comapi/map/q;-><init>()V

    .line 513
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-nez p1, :cond_2

    return-object v1

    :cond_2
    const-string p1, "id"

    .line 518
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/16 v4, 0x7d0

    if-le p1, v4, :cond_3

    const/16 v4, 0xb60

    if-eq p1, v4, :cond_3

    const/16 v4, 0xb5f

    if-eq p1, v4, :cond_3

    const/16 v4, 0x2328

    if-eq p1, v4, :cond_3

    return-object v1

    .line 524
    :cond_3
    iput p1, v2, Lcom/baidu/mapsdkplatform/comapi/map/q;->a:I

    const-string p1, "name"

    .line 525
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/baidu/mapsdkplatform/comapi/map/q;->b:Ljava/lang/String;

    const-string p1, "pinyin"

    .line 526
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/baidu/mapsdkplatform/comapi/map/q;->c:Ljava/lang/String;

    const-string p1, "headchar"

    .line 527
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/baidu/mapsdkplatform/comapi/map/q;->d:Ljava/lang/String;

    const-string p1, "mapoldsize"

    .line 528
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Lcom/baidu/mapsdkplatform/comapi/map/q;->h:I

    const-string p1, "ratio"

    .line 529
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Lcom/baidu/mapsdkplatform/comapi/map/q;->i:I

    const-string p1, "status"

    .line 530
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Lcom/baidu/mapsdkplatform/comapi/map/q;->l:I

    .line 531
    new-instance p1, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    const-string/jumbo v4, "y"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "x"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p1, v4, v5}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    iput-object p1, v2, Lcom/baidu/mapsdkplatform/comapi/map/q;->g:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    const-string p1, "up"

    .line 535
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p1, v5, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :goto_0
    iput-boolean v5, v2, Lcom/baidu/mapsdkplatform/comapi/map/q;->j:Z

    const-string p1, "lev"

    .line 536
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Lcom/baidu/mapsdkplatform/comapi/map/q;->e:I

    .line 538
    iget-boolean p1, v2, Lcom/baidu/mapsdkplatform/comapi/map/q;->j:Z

    if-eqz p1, :cond_5

    const-string p1, "mapsize"

    .line 539
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Lcom/baidu/mapsdkplatform/comapi/map/q;->k:I

    goto :goto_1

    .line 541
    :cond_5
    iput v4, v2, Lcom/baidu/mapsdkplatform/comapi/map/q;->k:I

    :goto_1
    const-string/jumbo p1, "ver"

    .line 544
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v2, Lcom/baidu/mapsdkplatform/comapi/map/q;->f:I

    .line 545
    invoke-virtual {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/map/r;->a(Lcom/baidu/mapsdkplatform/comapi/map/q;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 547
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_6
    :goto_2
    return-object v1
.end method
