.class public Lio/dcloud/js/geolocation/system/LocalGeoManager;
.super Lio/dcloud/js/geolocation/GeoManagerBase;


# static fields
.field public static final TAG:Ljava/lang/String; = "LocalGeoManager"


# instance fields
.field private a:Lio/dcloud/js/geolocation/system/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/js/geolocation/GeoManagerBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/js/geolocation/system/LocalGeoManager;)Lio/dcloud/js/geolocation/system/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/dcloud/js/geolocation/system/LocalGeoManager;->a:Lio/dcloud/js/geolocation/system/a;

    return-object p0
.end method


# virtual methods
.method b()Lio/dcloud/js/geolocation/system/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/LocalGeoManager;->a:Lio/dcloud/js/geolocation/system/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/dcloud/js/geolocation/system/a;

    iget-object v1, p0, Lio/dcloud/js/geolocation/GeoManagerBase;->mContext:Landroid/content/Context;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lio/dcloud/js/geolocation/system/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lio/dcloud/js/geolocation/system/LocalGeoManager;->a:Lio/dcloud/js/geolocation/system/a;

    .line 4
    :cond_0
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/LocalGeoManager;->a:Lio/dcloud/js/geolocation/system/a;

    return-object v0
.end method

.method public execute(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v8, ""

    :try_start_0
    const-string v2, "getCurrentPosition"

    .line 1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "only support wgs84"

    const/16 v4, 0x11

    const-string v5, "{code:%d,message:\'%s\'}"

    const-string v6, "wgs84"

    const/4 v9, 0x6

    const v10, 0x7fffffff

    const/4 v11, 0x7

    const/4 v12, 0x3

    const/4 v13, 0x2

    const-string v14, "null"

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-eqz v2, :cond_5

    .line 2
    :try_start_1
    aget-object v0, v1, v15

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 3
    aget-object v0, v1, v13

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 5
    array-length v0, v1

    if-le v0, v11, :cond_0

    aget-object v0, v1, v9

    goto :goto_0

    :cond_0
    move-object v0, v14

    .line 6
    :goto_0
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v10, v0

    .line 9
    :cond_1
    aget-object v0, v1, v12

    invoke-static {v0, v6}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    aget-object v0, v1, v12

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_4

    .line 11
    aget-object v2, v1, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, v17

    move/from16 v4, v18

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lio/dcloud/js/geolocation/system/LocalGeoManager;->getCurrentLocation(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ZII)V

    goto/16 :goto_7

    :cond_4
    new-array v0, v13, [Ljava/lang/Object;

    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v16

    aput-object v3, v0, v15

    invoke-static {v5, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 14
    aget-object v10, v1, v16

    sget v12, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v9, p1

    invoke-static/range {v9 .. v14}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto/16 :goto_7

    :cond_5
    const-string v2, "watchPosition"

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 18
    aget-object v0, v1, v13

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 19
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    new-instance v2, Lio/dcloud/js/geolocation/system/LocalGeoManager$a;

    invoke-direct {v2, v7}, Lio/dcloud/js/geolocation/system/LocalGeoManager$a;-><init>(Lio/dcloud/js/geolocation/system/LocalGeoManager;)V

    invoke-interface {v0, v2}, Lio/dcloud/common/DHInterface/IFrameViewStatus;->addFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    .line 29
    aget-object v0, v1, v12

    invoke-static {v0, v6}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    aget-object v0, v1, v12

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v0, 0x1

    .line 30
    :goto_4
    array-length v2, v1

    if-le v2, v11, :cond_8

    aget-object v2, v1, v9

    goto :goto_5

    :cond_8
    move-object v2, v14

    .line 32
    :goto_5
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v10, v2

    .line 35
    :cond_9
    array-length v2, v1

    const/16 v6, 0x8

    if-le v2, v6, :cond_a

    aget-object v2, v1, v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :cond_a
    const-string v2, "5000"

    :goto_6
    const/16 v6, 0x1388

    .line 37
    :try_start_2
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :cond_b
    const/16 v2, 0x3e8

    if-ge v6, v2, :cond_c

    const/16 v6, 0x3e8

    :cond_c
    if-eqz v0, :cond_d

    .line 44
    aget-object v2, v1, v16

    aget-object v3, v1, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, v17

    move v5, v10

    invoke-virtual/range {v0 .. v6}, Lio/dcloud/js/geolocation/system/LocalGeoManager;->start(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ZII)V

    goto :goto_7

    :cond_d
    new-array v0, v13, [Ljava/lang/Object;

    .line 46
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v16

    aput-object v3, v0, v15

    invoke-static {v5, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 47
    aget-object v10, v1, v16

    sget v12, Lio/dcloud/common/util/JSUtil;->ERROR:I

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v9, p1

    invoke-static/range {v9 .. v14}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_7

    :cond_e
    const-string v2, "clearWatch"

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 51
    aget-object v0, v1, v16

    invoke-virtual {v7, v0}, Lio/dcloud/js/geolocation/system/LocalGeoManager;->stop(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_f
    :goto_7
    return-object v8
.end method

.method public getCurrentLocation(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;ZII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/dcloud/js/geolocation/system/LocalGeoManager;->b()Lio/dcloud/js/geolocation/system/a;

    move-result-object p3

    invoke-virtual {p3, p1, p4, p2, p5}, Lio/dcloud/js/geolocation/system/a;->a(Lio/dcloud/common/DHInterface/IWebview;ILjava/lang/String;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/LocalGeoManager;->a:Lio/dcloud/js/geolocation/system/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/dcloud/js/geolocation/system/a;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/dcloud/js/geolocation/system/LocalGeoManager;->a:Lio/dcloud/js/geolocation/system/a;

    return-void
.end method

.method public start(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/dcloud/js/geolocation/system/LocalGeoManager;->b()Lio/dcloud/js/geolocation/system/a;

    move-result-object p4

    invoke-virtual {p4, p1, p6, p2, p5}, Lio/dcloud/js/geolocation/system/a;->b(Lio/dcloud/common/DHInterface/IWebview;ILjava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/dcloud/js/geolocation/GeoManagerBase;->keySet:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/LocalGeoManager;->a:Lio/dcloud/js/geolocation/system/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/dcloud/js/geolocation/GeoManagerBase;->keySet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/dcloud/js/geolocation/GeoManagerBase;->keySet:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lio/dcloud/js/geolocation/system/LocalGeoManager;->a:Lio/dcloud/js/geolocation/system/a;

    sget v0, Lio/dcloud/js/geolocation/system/a;->f:I

    invoke-virtual {p1, v0}, Lio/dcloud/js/geolocation/system/a;->c(I)V

    :cond_0
    return-void
.end method
