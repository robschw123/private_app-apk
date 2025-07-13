.class public Lcom/baidu/mapapi/utils/b;
.super Ljava/lang/Object;
.source "MapOpenUtil.java"


# static fields
.field private static A:D = 0.0

.field private static B:D = 0.0

.field private static C:D = 0.0

.field private static D:D = 0.0

.field private static E:I = 0x0

.field private static F:Z = false

.field private static G:Ljava/lang/String; = null

.field private static H:I = 0x0

.field private static I:I = 0x0

.field private static J:I = 0x0

.field private static K:I = 0x0

.field private static L:I = 0x0

.field public static a:I = -0x1

.field static b:Landroid/content/ServiceConnection; = null

.field private static final c:Ljava/lang/String; = "com.baidu.mapapi.utils.b"

.field private static d:Lcom/baidu/mapframework/open/aidl/a;

.field private static e:Lcom/baidu/mapframework/open/aidl/IComOpenClient;

.field private static f:I

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/utils/poi/DispathcPoiData;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Lcom/baidu/mapapi/model/LatLng;

.field private static l:Lcom/baidu/mapapi/model/LatLng;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:Lcom/baidu/mapapi/model/LatLng;

.field private static u:I

.field private static v:Z

.field private static w:Z

.field private static x:Ljava/lang/Thread;

.field private static y:I

.field private static z:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/utils/b;->j:Ljava/util/List;

    const/4 v0, 0x0

    .line 83
    sput-object v0, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    .line 84
    sput-object v0, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    .line 85
    sput-object v0, Lcom/baidu/mapapi/utils/b;->m:Ljava/lang/String;

    .line 86
    sput-object v0, Lcom/baidu/mapapi/utils/b;->n:Ljava/lang/String;

    .line 87
    sput-object v0, Lcom/baidu/mapapi/utils/b;->o:Ljava/lang/String;

    .line 90
    sput-object v0, Lcom/baidu/mapapi/utils/b;->r:Ljava/lang/String;

    .line 91
    sput-object v0, Lcom/baidu/mapapi/utils/b;->s:Ljava/lang/String;

    .line 92
    sput-object v0, Lcom/baidu/mapapi/utils/b;->t:Lcom/baidu/mapapi/model/LatLng;

    const/4 v0, 0x0

    .line 93
    sput v0, Lcom/baidu/mapapi/utils/b;->u:I

    .line 94
    sput-boolean v0, Lcom/baidu/mapapi/utils/b;->v:Z

    .line 95
    sput-boolean v0, Lcom/baidu/mapapi/utils/b;->w:Z

    .line 314
    new-instance v0, Lcom/baidu/mapapi/utils/d;

    invoke-direct {v0}, Lcom/baidu/mapapi/utils/d;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/utils/b;->b:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapframework/open/aidl/IComOpenClient;)Lcom/baidu/mapframework/open/aidl/IComOpenClient;
    .locals 0

    .line 44
    sput-object p0, Lcom/baidu/mapapi/utils/b;->e:Lcom/baidu/mapframework/open/aidl/IComOpenClient;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/mapframework/open/aidl/a;)Lcom/baidu/mapframework/open/aidl/a;
    .locals 0

    .line 44
    sput-object p0, Lcom/baidu/mapapi/utils/b;->d:Lcom/baidu/mapframework/open/aidl/a;

    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 56
    invoke-static {}, Lcom/baidu/mapapi/common/AppTools;->getBaiduMapToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILandroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const/4 v0, 0x3

    if-eq p0, v0, :cond_5

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    const/4 v0, 0x5

    if-eq p0, v0, :cond_3

    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 306
    :pswitch_0
    invoke-static {p1}, Lcom/baidu/mapapi/utils/b;->g(Landroid/content/Context;)V

    goto :goto_0

    .line 303
    :pswitch_1
    invoke-static {p1}, Lcom/baidu/mapapi/utils/b;->f(Landroid/content/Context;)V

    goto :goto_0

    .line 300
    :cond_0
    invoke-static {p1}, Lcom/baidu/mapapi/utils/b;->j(Landroid/content/Context;)V

    goto :goto_0

    .line 297
    :cond_1
    invoke-static {p1}, Lcom/baidu/mapapi/utils/b;->i(Landroid/content/Context;)V

    goto :goto_0

    .line 293
    :cond_2
    invoke-static {p1}, Lcom/baidu/mapapi/utils/b;->h(Landroid/content/Context;)V

    goto :goto_0

    .line 288
    :cond_3
    invoke-static {p1}, Lcom/baidu/mapapi/utils/b;->e(Landroid/content/Context;)V

    goto :goto_0

    .line 285
    :cond_4
    invoke-static {p1}, Lcom/baidu/mapapi/utils/b;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 282
    :cond_5
    invoke-static {p1}, Lcom/baidu/mapapi/utils/b;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 278
    :cond_6
    :pswitch_2
    invoke-static {p1, p0}, Lcom/baidu/mapapi/utils/b;->c(Landroid/content/Context;I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 116
    sget-boolean v0, Lcom/baidu/mapapi/utils/b;->w:Z

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/baidu/mapapi/utils/b;->b:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p0, 0x0

    .line 119
    sput-boolean p0, Lcom/baidu/mapapi/utils/b;->w:Z

    :cond_0
    return-void
.end method

.method private static a(Lcom/baidu/mapapi/navi/TruckNaviOption;)V
    .locals 3

    const/4 v0, 0x0

    .line 1261
    sput v0, Lcom/baidu/mapapi/utils/b;->y:I

    const-wide/16 v1, 0x0

    .line 1262
    sput-wide v1, Lcom/baidu/mapapi/utils/b;->z:D

    .line 1263
    sput-wide v1, Lcom/baidu/mapapi/utils/b;->A:D

    .line 1264
    sput-wide v1, Lcom/baidu/mapapi/utils/b;->B:D

    .line 1265
    sput-wide v1, Lcom/baidu/mapapi/utils/b;->C:D

    .line 1266
    sput-wide v1, Lcom/baidu/mapapi/utils/b;->D:D

    .line 1267
    sput v0, Lcom/baidu/mapapi/utils/b;->E:I

    .line 1268
    sput-boolean v0, Lcom/baidu/mapapi/utils/b;->F:Z

    const/4 v1, 0x0

    .line 1269
    sput-object v1, Lcom/baidu/mapapi/utils/b;->G:Ljava/lang/String;

    .line 1270
    sput v0, Lcom/baidu/mapapi/utils/b;->H:I

    .line 1271
    sput v0, Lcom/baidu/mapapi/utils/b;->I:I

    .line 1272
    sput v0, Lcom/baidu/mapapi/utils/b;->J:I

    .line 1273
    sput v0, Lcom/baidu/mapapi/utils/b;->K:I

    .line 1274
    sput v0, Lcom/baidu/mapapi/utils/b;->L:I

    .line 1276
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/TruckNaviOption;->getNaviRoutePolicy()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1277
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/TruckNaviOption;->getNaviRoutePolicy()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/utils/b;->p:Ljava/lang/String;

    .line 1279
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/TruckNaviOption;->getWayPoint()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1281
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "viaPoints"

    .line 1283
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1284
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "utf-8"

    .line 1286
    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/utils/b;->o:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1288
    :try_start_2
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1291
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1294
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/TruckNaviOption;->getTruckType()I

    move-result v0

    sput v0, Lcom/baidu/mapapi/utils/b;->y:I

    .line 1295
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/TruckNaviOption;->getHeight()D

    move-result-wide v0

    sput-wide v0, Lcom/baidu/mapapi/utils/b;->z:D

    .line 1296
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/TruckNaviOption;->getWidth()D

    move-result-wide v0

    sput-wide v0, Lcom/baidu/mapapi/utils/b;->A:D

    .line 1297
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/TruckNaviOption;->getWeight()D

    move-result-wide v0

    sput-wide v0, Lcom/baidu/mapapi/utils/b;->B:D

    .line 1298
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/TruckNaviOption;->getLength()D

    move-result-wide v0

    sput-wide v0, Lcom/baidu/mapapi/utils/b;->C:D

    .line 1299
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/TruckNaviOption;->getAxleWeight()D

    move-result-wide v0

    sput-wide v0, Lcom/baidu/mapapi/utils/b;->D:D

    .line 1300
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/TruckNaviOption;->getAxleCount()I

    move-result v0

    sput v0, Lcom/baidu/mapapi/utils/b;->E:I

    .line 1301
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/TruckNaviOption;->getIsTrailer()Z

    move-result v0

    sput-boolean v0, Lcom/baidu/mapapi/utils/b;->F:Z

    .line 1302
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/TruckNaviOption;->getPlateNumber()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/utils/b;->G:Ljava/lang/String;

    .line 1303
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/TruckNaviOption;->getPlateColor()I

    move-result v0

    sput v0, Lcom/baidu/mapapi/utils/b;->H:I

    .line 1304
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/TruckNaviOption;->getDisplacement()I

    move-result v0

    sput v0, Lcom/baidu/mapapi/utils/b;->I:I

    .line 1305
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/TruckNaviOption;->getPowerType()I

    move-result v0

    sput v0, Lcom/baidu/mapapi/utils/b;->J:I

    .line 1306
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/TruckNaviOption;->getEmissionLimit()I

    move-result v0

    sput v0, Lcom/baidu/mapapi/utils/b;->K:I

    .line 1307
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/TruckNaviOption;->getLoadWeight()I

    move-result p0

    sput p0, Lcom/baidu/mapapi/utils/b;->L:I

    return-void
.end method

.method private static a(Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/utils/poi/DispathcPoiData;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1311
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/utils/b;->g:Ljava/lang/String;

    .line 1312
    invoke-static {p1}, Lcom/baidu/mapapi/utils/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/b;->h:Ljava/lang/String;

    const-string p1, ""

    .line 1313
    sput-object p1, Lcom/baidu/mapapi/utils/b;->i:Ljava/lang/String;

    .line 1314
    sget-object p1, Lcom/baidu/mapapi/utils/b;->j:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 1315
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1317
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/mapapi/utils/poi/DispathcPoiData;

    .line 1318
    sget-object v0, Lcom/baidu/mapapi/utils/b;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(I)Z
    .locals 1

    const/16 v0, 0x65

    if-eq p0, v0, :cond_0

    const/16 v0, 0x66

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 259
    :pswitch_0
    invoke-static {}, Lcom/baidu/mapapi/utils/b;->l()Z

    move-result p0

    return p0

    .line 256
    :pswitch_1
    invoke-static {}, Lcom/baidu/mapapi/utils/b;->k()Z

    move-result p0

    return p0

    .line 253
    :pswitch_2
    invoke-static {}, Lcom/baidu/mapapi/utils/b;->i()Z

    move-result p0

    return p0

    .line 247
    :pswitch_3
    invoke-static {}, Lcom/baidu/mapapi/utils/b;->j()Z

    move-result p0

    return p0

    .line 244
    :pswitch_4
    invoke-static {}, Lcom/baidu/mapapi/utils/b;->m()Z

    move-result p0

    return p0

    .line 241
    :pswitch_5
    invoke-static {}, Lcom/baidu/mapapi/utils/b;->h()Z

    move-result p0

    return p0

    .line 238
    :cond_0
    :pswitch_6
    invoke-static {}, Lcom/baidu/mapapi/utils/b;->g()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;I)Z
    .locals 4

    const/4 v0, 0x1

    .line 146
    :try_start_0
    invoke-static {p0}, Lcom/baidu/platform/comapi/d/a;->a(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 147
    sget-object p0, Lcom/baidu/mapapi/utils/b;->c:Ljava/lang/String;

    const-string p1, "package sign verify failed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 150
    :cond_0
    sput-boolean v2, Lcom/baidu/mapapi/utils/b;->v:Z

    const/16 v1, 0x9

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    const/16 v3, 0x68

    .line 192
    sput v3, Lcom/baidu/mapapi/utils/b;->a:I

    goto :goto_0

    :pswitch_1
    const/16 v3, 0x67

    .line 189
    sput v3, Lcom/baidu/mapapi/utils/b;->a:I

    goto :goto_0

    :pswitch_2
    const/16 v3, 0x66

    .line 165
    sput v3, Lcom/baidu/mapapi/utils/b;->a:I

    goto :goto_0

    :pswitch_3
    const/16 v3, 0x65

    .line 162
    sput v3, Lcom/baidu/mapapi/utils/b;->a:I

    goto :goto_0

    .line 186
    :pswitch_4
    sput v1, Lcom/baidu/mapapi/utils/b;->a:I

    goto :goto_0

    :pswitch_5
    const/16 v3, 0x8

    .line 183
    sput v3, Lcom/baidu/mapapi/utils/b;->a:I

    goto :goto_0

    :pswitch_6
    const/4 v3, 0x7

    .line 180
    sput v3, Lcom/baidu/mapapi/utils/b;->a:I

    goto :goto_0

    :pswitch_7
    const/4 v3, 0x6

    .line 177
    sput v3, Lcom/baidu/mapapi/utils/b;->a:I

    goto :goto_0

    :pswitch_8
    const/4 v3, 0x5

    .line 174
    sput v3, Lcom/baidu/mapapi/utils/b;->a:I

    goto :goto_0

    :pswitch_9
    const/4 v3, 0x4

    .line 171
    sput v3, Lcom/baidu/mapapi/utils/b;->a:I

    goto :goto_0

    :pswitch_a
    const/4 v3, 0x3

    .line 168
    sput v3, Lcom/baidu/mapapi/utils/b;->a:I

    goto :goto_0

    :pswitch_b
    const/4 v3, 0x2

    .line 159
    sput v3, Lcom/baidu/mapapi/utils/b;->a:I

    goto :goto_0

    .line 156
    :pswitch_c
    sput v0, Lcom/baidu/mapapi/utils/b;->a:I

    goto :goto_0

    .line 153
    :pswitch_d
    sput v2, Lcom/baidu/mapapi/utils/b;->a:I

    :goto_0
    if-ne p1, v1, :cond_1

    .line 198
    sput-boolean v2, Lcom/baidu/mapapi/utils/b;->w:Z

    .line 200
    :cond_1
    sget-object v1, Lcom/baidu/mapapi/utils/b;->d:Lcom/baidu/mapframework/open/aidl/a;

    if-eqz v1, :cond_3

    sget-boolean v2, Lcom/baidu/mapapi/utils/b;->w:Z

    if-eqz v2, :cond_3

    .line 201
    sget-object p0, Lcom/baidu/mapapi/utils/b;->e:Lcom/baidu/mapframework/open/aidl/IComOpenClient;

    if-eqz p0, :cond_2

    .line 202
    sput-boolean v0, Lcom/baidu/mapapi/utils/b;->v:Z

    .line 203
    invoke-static {p1}, Lcom/baidu/mapapi/utils/b;->a(I)Z

    move-result p0

    return p0

    .line 206
    :cond_2
    new-instance p0, Lcom/baidu/mapapi/utils/c;

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/utils/c;-><init>(I)V

    invoke-interface {v1, p0}, Lcom/baidu/mapframework/open/aidl/a;->a(Lcom/baidu/mapframework/open/aidl/b;)V

    goto :goto_1

    .line 222
    :cond_3
    invoke-static {p0, p1}, Lcom/baidu/mapapi/utils/b;->b(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 226
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/baidu/mapapi/navi/NaviParaOption;Landroid/content/Context;I)Z
    .locals 0

    .line 135
    invoke-static {p0, p1, p2}, Lcom/baidu/mapapi/utils/b;->b(Lcom/baidu/mapapi/navi/NaviParaOption;Landroid/content/Context;I)V

    .line 136
    invoke-static {p1, p2}, Lcom/baidu/mapapi/utils/b;->a(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/baidu/mapapi/utils/poi/PoiParaOption;Landroid/content/Context;I)Z
    .locals 0

    .line 130
    invoke-static {p0, p1, p2}, Lcom/baidu/mapapi/utils/b;->b(Lcom/baidu/mapapi/utils/poi/PoiParaOption;Landroid/content/Context;I)V

    .line 131
    invoke-static {p1, p2}, Lcom/baidu/mapapi/utils/b;->a(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/baidu/mapapi/utils/route/RouteParaOption;Landroid/content/Context;I)Z
    .locals 0

    .line 125
    invoke-static {p0, p1, p2}, Lcom/baidu/mapapi/utils/b;->b(Lcom/baidu/mapapi/utils/route/RouteParaOption;Landroid/content/Context;I)V

    .line 126
    invoke-static {p1, p2}, Lcom/baidu/mapapi/utils/b;->a(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/util/List;Landroid/content/Context;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/utils/poi/DispathcPoiData;",
            ">;",
            "Landroid/content/Context;",
            "I)Z"
        }
    .end annotation

    .line 140
    invoke-static {p0, p1}, Lcom/baidu/mapapi/utils/b;->a(Ljava/util/List;Landroid/content/Context;)V

    .line 141
    invoke-static {p1, p2}, Lcom/baidu/mapapi/utils/b;->a(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 44
    sput-boolean p0, Lcom/baidu/mapapi/utils/b;->v:Z

    return p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lcom/baidu/mapapi/utils/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1327
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1328
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 1332
    :catch_1
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static b(Landroid/content/Context;I)V
    .locals 3

    .line 369
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 370
    invoke-static {}, Lcom/baidu/mapapi/utils/b;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v2, "api_token"

    .line 377
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.baidu.map.action.OPEN_SERVICE"

    .line 378
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.baidu.BaiduMap"

    .line 379
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x9

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    .line 382
    sget-object v1, Lcom/baidu/mapapi/utils/b;->b:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    sput-boolean v0, Lcom/baidu/mapapi/utils/b;->w:Z

    .line 384
    :cond_1
    sget-boolean v0, Lcom/baidu/mapapi/utils/b;->w:Z

    if-eqz v0, :cond_2

    .line 385
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/mapapi/utils/f;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mapapi/utils/f;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/baidu/mapapi/utils/b;->x:Ljava/lang/Thread;

    .line 400
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 401
    sget-object p0, Lcom/baidu/mapapi/utils/b;->x:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    const-string v0, "baidumapsdk"

    const-string v1, "bind service failed\uff0ccall openapi"

    .line 403
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-static {p1, p0}, Lcom/baidu/mapapi/utils/b;->a(ILandroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private static b(Lcom/baidu/mapapi/navi/NaviParaOption;Landroid/content/Context;I)V
    .locals 1

    .line 1207
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/b;->g:Ljava/lang/String;

    const/4 p1, 0x0

    .line 1209
    sput-object p1, Lcom/baidu/mapapi/utils/b;->m:Ljava/lang/String;

    .line 1210
    sput-object p1, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    .line 1211
    sput-object p1, Lcom/baidu/mapapi/utils/b;->n:Ljava/lang/String;

    .line 1212
    sput-object p1, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    .line 1213
    sput-object p1, Lcom/baidu/mapapi/utils/b;->o:Ljava/lang/String;

    .line 1215
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/NaviParaOption;->getStartPoint()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1216
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/NaviParaOption;->getStartPoint()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    .line 1219
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/NaviParaOption;->getEndPoint()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1220
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/NaviParaOption;->getEndPoint()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    .line 1223
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/NaviParaOption;->getStartName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1224
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/NaviParaOption;->getStartName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/b;->m:Ljava/lang/String;

    .line 1227
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/NaviParaOption;->getEndName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1228
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/NaviParaOption;->getEndName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/b;->n:Ljava/lang/String;

    .line 1231
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/NaviParaOption;->getNaviRoutePolicy()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1232
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/NaviParaOption;->getNaviRoutePolicy()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/b;->p:Ljava/lang/String;

    .line 1235
    :cond_4
    invoke-virtual {p0}, Lcom/baidu/mapapi/navi/NaviParaOption;->getWayPoint()Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1237
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "viaPoints"

    .line 1239
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1240
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p2, "utf-8"

    .line 1242
    invoke-static {p1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/b;->o:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1244
    :try_start_2
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1247
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1252
    :cond_5
    :goto_0
    instance-of p1, p0, Lcom/baidu/mapapi/navi/TruckNaviOption;

    if-eqz p1, :cond_6

    .line 1253
    check-cast p0, Lcom/baidu/mapapi/navi/TruckNaviOption;

    .line 1254
    invoke-static {p0}, Lcom/baidu/mapapi/utils/b;->a(Lcom/baidu/mapapi/navi/TruckNaviOption;)V

    :cond_6
    return-void
.end method

.method private static b(Lcom/baidu/mapapi/utils/poi/PoiParaOption;Landroid/content/Context;I)V
    .locals 0

    const/4 p2, 0x0

    .line 1187
    sput-object p2, Lcom/baidu/mapapi/utils/b;->r:Ljava/lang/String;

    .line 1188
    sput-object p2, Lcom/baidu/mapapi/utils/b;->s:Ljava/lang/String;

    .line 1189
    sput-object p2, Lcom/baidu/mapapi/utils/b;->t:Lcom/baidu/mapapi/model/LatLng;

    const/4 p2, 0x0

    .line 1190
    sput p2, Lcom/baidu/mapapi/utils/b;->u:I

    .line 1191
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/b;->g:Ljava/lang/String;

    .line 1192
    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->getUid()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1193
    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->getUid()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/b;->r:Ljava/lang/String;

    .line 1195
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->getKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1196
    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->getKey()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/b;->s:Ljava/lang/String;

    .line 1198
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->getCenter()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1199
    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->getCenter()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/b;->t:Lcom/baidu/mapapi/model/LatLng;

    .line 1201
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->getRadius()I

    move-result p1

    if-eqz p1, :cond_3

    .line 1202
    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/poi/PoiParaOption;->getRadius()I

    move-result p0

    sput p0, Lcom/baidu/mapapi/utils/b;->u:I

    :cond_3
    return-void
.end method

.method private static b(Lcom/baidu/mapapi/utils/route/RouteParaOption;Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1135
    sput-object v0, Lcom/baidu/mapapi/utils/b;->m:Ljava/lang/String;

    .line 1136
    sput-object v0, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    .line 1137
    sput-object v0, Lcom/baidu/mapapi/utils/b;->n:Ljava/lang/String;

    .line 1138
    sput-object v0, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    .line 1139
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/b;->g:Ljava/lang/String;

    .line 1140
    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/route/RouteParaOption;->getStartPoint()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1141
    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/route/RouteParaOption;->getStartPoint()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    .line 1144
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/route/RouteParaOption;->getEndPoint()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1145
    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/route/RouteParaOption;->getEndPoint()Lcom/baidu/mapapi/model/LatLng;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    .line 1148
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/route/RouteParaOption;->getStartName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1149
    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/route/RouteParaOption;->getStartName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/b;->m:Ljava/lang/String;

    .line 1152
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/route/RouteParaOption;->getEndName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1153
    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/route/RouteParaOption;->getEndName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/mapapi/utils/b;->n:Ljava/lang/String;

    .line 1156
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/route/RouteParaOption;->getBusStrategyType()Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1157
    invoke-virtual {p0}, Lcom/baidu/mapapi/utils/route/RouteParaOption;->getBusStrategyType()Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;

    move-result-object p0

    sput-object p0, Lcom/baidu/mapapi/utils/b;->q:Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;

    :cond_4
    if-eqz p2, :cond_9

    const/4 p0, 0x1

    if-eq p2, p0, :cond_8

    const/4 p0, 0x2

    if-eq p2, p0, :cond_7

    const/16 p0, 0x65

    if-eq p2, p0, :cond_6

    const/16 p0, 0x66

    if-eq p2, p0, :cond_5

    goto :goto_0

    .line 1178
    :cond_5
    sput p0, Lcom/baidu/mapapi/utils/b;->f:I

    goto :goto_0

    .line 1174
    :cond_6
    sput p0, Lcom/baidu/mapapi/utils/b;->f:I

    goto :goto_0

    .line 1170
    :cond_7
    sput p0, Lcom/baidu/mapapi/utils/b;->f:I

    goto :goto_0

    .line 1166
    :cond_8
    sput p0, Lcom/baidu/mapapi/utils/b;->f:I

    goto :goto_0

    :cond_9
    const/4 p0, 0x0

    .line 1162
    sput p0, Lcom/baidu/mapapi/utils/b;->f:I

    :goto_0
    return-void
.end method

.method static synthetic b(Z)Z
    .locals 0

    .line 44
    sput-boolean p0, Lcom/baidu/mapapi/utils/b;->w:Z

    return p0
.end method

.method static synthetic c()Lcom/baidu/mapframework/open/aidl/IComOpenClient;
    .locals 1

    .line 44
    sget-object v0, Lcom/baidu/mapapi/utils/b;->e:Lcom/baidu/mapframework/open/aidl/IComOpenClient;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 3

    .line 478
    sget-object v0, Lcom/baidu/mapapi/utils/b;->x:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 482
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "baidumap://map/place/detail?"

    .line 483
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "uid="

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/mapapi/utils/b;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&show_type="

    .line 485
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "detail_page"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&src="

    .line 486
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdk_["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/baidu/mapapi/utils/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 489
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 490
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 491
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static c(Landroid/content/Context;I)V
    .locals 8

    .line 415
    sget-object v0, Lcom/baidu/mapapi/utils/b;->x:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    const/4 p1, 0x3

    :cond_1
    const/16 v0, 0x66

    if-ne p1, v0, :cond_2

    const/4 p1, 0x4

    :cond_2
    const-string v0, "driving"

    const-string v1, "transit"

    const-string/jumbo v2, "walking"

    const-string v3, "neweng"

    const-string v4, "truck"

    .line 425
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baidumap://map/direction?"

    .line 429
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "origin="

    .line 430
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    sget-object v2, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v2, :cond_3

    .line 432
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v2

    sget-object v3, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v2, v3, :cond_3

    .line 433
    sget-object v2, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v2}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    sput-object v2, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    .line 436
    :cond_3
    sget-object v2, Lcom/baidu/mapapi/utils/b;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string/jumbo v3, "|latlng:"

    const-string v4, "name:"

    const-string v5, ","

    if-nez v2, :cond_4

    sget-object v2, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v2, :cond_4

    .line 437
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/baidu/mapapi/utils/b;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v6, v2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    .line 438
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v6, v2, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 439
    :cond_4
    sget-object v2, Lcom/baidu/mapapi/utils/b;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 440
    sget-object v2, Lcom/baidu/mapapi/utils/b;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 441
    :cond_5
    sget-object v2, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v2, :cond_6

    .line 442
    iget-wide v6, v2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v6, v2, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    .line 443
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_6
    :goto_0
    const-string v2, "&destination="

    .line 446
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    sget-object v2, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v2, :cond_7

    .line 448
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v2

    sget-object v6, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v2, v6, :cond_7

    .line 449
    sget-object v2, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v2}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    sput-object v2, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    .line 452
    :cond_7
    sget-object v2, Lcom/baidu/mapapi/utils/b;->n:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v2, :cond_8

    .line 453
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/baidu/mapapi/utils/b;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v2, v2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    .line 454
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v2, v2, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 455
    :cond_8
    sget-object v2, Lcom/baidu/mapapi/utils/b;->n:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 456
    sget-object v2, Lcom/baidu/mapapi/utils/b;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 457
    :cond_9
    sget-object v2, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v2, :cond_a

    .line 458
    iget-wide v2, v2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v2, v2, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    .line 459
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_a
    :goto_1
    const-string v2, "&mode="

    .line 461
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v0, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&target="

    .line 462
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&src="

    .line 463
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sdk_["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/baidu/mapapi/utils/b;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 467
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 468
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 469
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic d()Ljava/lang/Thread;
    .locals 1

    .line 44
    sget-object v0, Lcom/baidu/mapapi/utils/b;->x:Ljava/lang/Thread;

    return-object v0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 3

    .line 500
    sget-object v0, Lcom/baidu/mapapi/utils/b;->x:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 504
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "baidumap://map/nearbysearch?"

    .line 505
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v1

    sget-object v2, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v1, v2, :cond_1

    .line 507
    sget-object v1, Lcom/baidu/mapapi/utils/b;->t:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    sput-object v1, Lcom/baidu/mapapi/utils/b;->t:Lcom/baidu/mapapi/model/LatLng;

    :cond_1
    const-string v1, "center="

    .line 509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/mapapi/utils/b;->t:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/mapapi/utils/b;->t:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    .line 510
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "&query="

    .line 511
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/mapapi/utils/b;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/baidu/mapapi/utils/b;->u:I

    .line 512
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&src="

    .line 513
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdk_["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/baidu/mapapi/utils/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 516
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 517
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 518
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic e()Lcom/baidu/mapframework/open/aidl/a;
    .locals 1

    .line 44
    sget-object v0, Lcom/baidu/mapapi/utils/b;->d:Lcom/baidu/mapframework/open/aidl/a;

    return-object v0
.end method

.method private static e(Landroid/content/Context;)V
    .locals 4

    .line 527
    sget-object v0, Lcom/baidu/mapapi/utils/b;->x:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 531
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "baidumap://map/navi?"

    .line 532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v1

    sget-object v2, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v1, v2, :cond_1

    .line 534
    sget-object v1, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    sput-object v1, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    .line 535
    sget-object v1, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    sput-object v1, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    :cond_1
    const-string v1, "origin="

    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v2, v2, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    .line 538
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "&location="

    .line 539
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v2, v2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    .line 540
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "&src="

    .line 541
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdk_["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/baidu/mapapi/utils/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    sget-object v1, Lcom/baidu/mapapi/utils/b;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "&viaPoints="

    .line 543
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/mapapi/utils/b;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "&type="

    .line 545
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/mapapi/utils/b;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&mode="

    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "driving"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 550
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 551
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 552
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static f(Landroid/content/Context;)V
    .locals 4

    .line 561
    sget-object v0, Lcom/baidu/mapapi/utils/b;->x:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 565
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "baidumap://map/navi?"

    .line 566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v1

    sget-object v2, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v1, v2, :cond_1

    .line 568
    sget-object v1, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    sput-object v1, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    .line 569
    sget-object v1, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    sput-object v1, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    :cond_1
    const-string v1, "origin="

    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v2, v2, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    .line 572
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "&location="

    .line 573
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v2, v2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    .line 574
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "&src="

    .line 575
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdk_["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/baidu/mapapi/utils/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    sget-object v1, Lcom/baidu/mapapi/utils/b;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "&viaPoints="

    .line 577
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/mapapi/utils/b;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "&type="

    .line 579
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/mapapi/utils/b;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&mode="

    .line 580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "neweng"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 584
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 585
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 586
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic f()Z
    .locals 1

    .line 44
    sget-boolean v0, Lcom/baidu/mapapi/utils/b;->v:Z

    return v0
.end method

.method private static g(Landroid/content/Context;)V
    .locals 11

    .line 596
    sget-object v0, Lcom/baidu/mapapi/utils/b;->x:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 597
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 600
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "baidumap://map/truck/navigation?"

    .line 601
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v1

    sget-object v2, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v1, v2, :cond_1

    .line 603
    sget-object v1, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    sput-object v1, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    :cond_1
    const-string v1, "location="

    .line 605
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    .line 606
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "&src="

    .line 607
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdk_["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/baidu/mapapi/utils/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    sget-object v1, Lcom/baidu/mapapi/utils/b;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "&viaPoints="

    .line 609
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/mapapi/utils/b;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "&type="

    .line 611
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/mapapi/utils/b;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    sget v1, Lcom/baidu/mapapi/utils/b;->y:I

    if-lez v1, :cond_12

    const/4 v2, 0x4

    if-gt v1, v2, :cond_12

    const-string v1, "&truck_type="

    .line 614
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/baidu/mapapi/utils/b;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 618
    sget-wide v3, Lcom/baidu/mapapi/utils/b;->z:D

    const-wide/16 v5, 0x0

    cmpl-double v1, v3, v5

    if-lez v1, :cond_11

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    cmpg-double v1, v3, v7

    if-gtz v1, :cond_11

    const-string v1, "&height="

    .line 619
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/baidu/mapapi/utils/b;->z:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 623
    sget-wide v3, Lcom/baidu/mapapi/utils/b;->A:D

    cmpl-double v1, v3, v5

    if-lez v1, :cond_10

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    cmpg-double v1, v3, v7

    if-gtz v1, :cond_10

    const-string v1, "&width="

    .line 624
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/baidu/mapapi/utils/b;->A:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 628
    sget-wide v3, Lcom/baidu/mapapi/utils/b;->B:D

    cmpl-double v1, v3, v5

    if-lez v1, :cond_f

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    cmpg-double v1, v3, v7

    if-gtz v1, :cond_f

    const-string v1, "&weight="

    .line 629
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/baidu/mapapi/utils/b;->B:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 633
    sget-wide v3, Lcom/baidu/mapapi/utils/b;->C:D

    cmpl-double v1, v3, v5

    if-lez v1, :cond_e

    const-wide/high16 v9, 0x4039000000000000L    # 25.0

    cmpg-double v1, v3, v9

    if-gtz v1, :cond_e

    const-string v1, "&length="

    .line 634
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/baidu/mapapi/utils/b;->C:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 638
    sget-wide v3, Lcom/baidu/mapapi/utils/b;->D:D

    cmpl-double v1, v3, v5

    if-ltz v1, :cond_3

    cmpg-double v1, v3, v7

    if-gtz v1, :cond_3

    const-string v1, "&axle_weight="

    .line 639
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/baidu/mapapi/utils/b;->D:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 641
    :cond_3
    sget v1, Lcom/baidu/mapapi/utils/b;->E:I

    const/4 v3, 0x1

    if-le v1, v3, :cond_d

    const/16 v4, 0x8

    if-gt v1, v4, :cond_d

    const-string v1, "&axle_count="

    .line 642
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/baidu/mapapi/utils/b;->E:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 646
    sget-boolean v1, Lcom/baidu/mapapi/utils/b;->F:Z

    const-string v5, "&is_trailer="

    if-eqz v1, :cond_4

    .line 647
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 649
    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 651
    :goto_0
    sget-object v1, Lcom/baidu/mapapi/utils/b;->G:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 652
    sget-object v1, Lcom/baidu/mapapi/utils/b;->G:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x7

    if-eq v1, v3, :cond_6

    sget-object v1, Lcom/baidu/mapapi/utils/b;->G:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v4, :cond_5

    goto :goto_1

    .line 655
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: plateNumber error Please fill in the correct license plate"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    const-string v1, "&plate_number="

    .line 653
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/mapapi/utils/b;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    sget v1, Lcom/baidu/mapapi/utils/b;->H:I

    if-ltz v1, :cond_7

    if-gt v1, v2, :cond_7

    const-string v1, "&plate_color="

    .line 662
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/baidu/mapapi/utils/b;->H:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 664
    :cond_7
    sget v1, Lcom/baidu/mapapi/utils/b;->I:I

    if-lez v1, :cond_8

    const-string v1, "&displacement="

    .line 665
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/baidu/mapapi/utils/b;->I:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 667
    :cond_8
    sget v1, Lcom/baidu/mapapi/utils/b;->J:I

    if-lez v1, :cond_b

    if-gt v1, v2, :cond_b

    const-string v1, "&power_type="

    .line 668
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/baidu/mapapi/utils/b;->J:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 672
    sget v1, Lcom/baidu/mapapi/utils/b;->K:I

    if-ltz v1, :cond_a

    const/4 v2, 0x6

    if-gt v1, v2, :cond_a

    const-string v1, "&emission_limit="

    .line 673
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/baidu/mapapi/utils/b;->K:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 677
    sget v1, Lcom/baidu/mapapi/utils/b;->L:I

    if-lez v1, :cond_9

    const/16 v2, 0x64

    if-gt v1, v2, :cond_9

    const-string v1, "&load_weight="

    .line 678
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/baidu/mapapi/utils/b;->L:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 685
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 686
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 687
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 680
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: loadWeight Must be between 1 and 100"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 675
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: emissionLimit Must be between 0 and 6"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 670
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: powerType Must be between 1 and 4"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 659
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: plateNumber Can not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 644
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: axleCount Must be between 2 and 8"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 636
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: length Must be between 1 and 25"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 631
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: weight Must be between 1 and 100"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 626
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: width Must be between 1 and 5"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 621
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: height Must be between 1 and 10"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 616
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: truckType Must be between 1 and 4"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static g()Z
    .locals 13

    const-string v0, ""

    const-string v1, "map.android.baidu.mainmap"

    const/4 v2, 0x0

    .line 787
    :try_start_0
    sget-object v3, Lcom/baidu/mapapi/utils/b;->c:Ljava/lang/String;

    const-string v4, "callDispatchTakeOutRoute"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    sget-object v4, Lcom/baidu/mapapi/utils/b;->e:Lcom/baidu/mapframework/open/aidl/IComOpenClient;

    invoke-interface {v4, v1}, Lcom/baidu/mapframework/open/aidl/IComOpenClient;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 791
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "target"

    const-string v6, "route_search_page"

    .line 792
    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 795
    sget v6, Lcom/baidu/mapapi/utils/b;->f:I

    const/16 v7, 0x66

    if-ne v6, v7, :cond_0

    const/4 v6, 0x7

    .line 796
    sput v6, Lcom/baidu/mapapi/utils/b;->f:I

    :cond_0
    const-string v6, "route_type"

    .line 798
    sget v7, Lcom/baidu/mapapi/utils/b;->f:I

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "bus_strategy"

    .line 799
    sget-object v7, Lcom/baidu/mapapi/utils/b;->q:Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;

    invoke-virtual {v7}, Lcom/baidu/mapapi/utils/route/RouteParaOption$EBusStrategyType;->ordinal()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "cross_city_bus_strategy"

    const/4 v7, 0x5

    .line 801
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 802
    sget-object v6, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "start_latitude"

    const-string v8, "start_longitude"

    const/4 v9, 0x1

    const/4 v10, 0x2

    const-string v11, "start_type"

    if-eqz v6, :cond_1

    .line 803
    :try_start_1
    invoke-virtual {v5, v11, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 804
    sget-object v6, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v6}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v11

    double-to-int v6, v11

    invoke-virtual {v5, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 805
    sget-object v6, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v6}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v11

    double-to-int v6, v11

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 807
    :cond_1
    invoke-virtual {v5, v11, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 808
    invoke-virtual {v5, v8, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 809
    invoke-virtual {v5, v7, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 811
    :goto_0
    sget-object v6, Lcom/baidu/mapapi/utils/b;->m:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v7, "\u5730\u56fe\u4e0a\u7684\u70b9"

    const-string v8, "start_keyword"

    if-eqz v6, :cond_2

    .line 812
    :try_start_2
    invoke-virtual {v5, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 814
    :cond_2
    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v6, "start_uid"

    .line 817
    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    sget-object v6, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v8, "end_latitude"

    const-string v11, "end_longitude"

    const-string v12, "end_type"

    if-eqz v6, :cond_3

    .line 820
    :try_start_3
    invoke-virtual {v5, v12, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 821
    sget-object v6, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v6}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v9

    double-to-int v6, v9

    invoke-virtual {v5, v11, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 822
    sget-object v6, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v6}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v9

    double-to-int v6, v9

    invoke-virtual {v5, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 824
    :cond_3
    invoke-virtual {v5, v12, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 825
    invoke-virtual {v5, v11, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 826
    invoke-virtual {v5, v8, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 828
    :goto_2
    sget-object v6, Lcom/baidu/mapapi/utils/b;->n:Ljava/lang/String;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v8, "end_keyword"

    if-eqz v6, :cond_4

    .line 829
    :try_start_4
    invoke-virtual {v5, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 831
    :cond_4
    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string v6, "end_uid"

    .line 834
    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "base_params"

    .line 835
    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 837
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "launch_from"

    .line 838
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sdk_["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/baidu/mapapi/utils/b;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ext_params"

    .line 839
    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 841
    sget-object v0, Lcom/baidu/mapapi/utils/b;->e:Lcom/baidu/mapframework/open/aidl/IComOpenClient;

    invoke-interface {v0, v1, v4, v3}, Lcom/baidu/mapframework/open/aidl/IComOpenClient;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0

    :cond_5
    const-string v0, "callDispatchTakeOut com not found"

    .line 843
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 847
    sget-object v1, Lcom/baidu/mapapi/utils/b;->c:Ljava/lang/String;

    const-string v3, "callDispatchTakeOut exception"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return v2
.end method

.method private static h(Landroid/content/Context;)V
    .locals 4

    .line 697
    sget-object v0, Lcom/baidu/mapapi/utils/b;->x:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 698
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 701
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "baidumap://map/walknavi?"

    .line 702
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v1

    sget-object v2, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v1, v2, :cond_1

    .line 704
    sget-object v1, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    sput-object v1, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    .line 705
    sget-object v1, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    sput-object v1, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    .line 707
    :cond_1
    sget-object v1, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "origin="

    .line 710
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v2, v2, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    .line 711
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "&destination="

    .line 712
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v2, v2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    .line 713
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "&src="

    .line 714
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdk_["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/baidu/mapapi/utils/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 717
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 718
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 719
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static h()Z
    .locals 7

    const-string v0, "map.android.baidu.mainmap"

    .line 854
    :try_start_0
    sget-object v1, Lcom/baidu/mapapi/utils/b;->c:Ljava/lang/String;

    const-string v2, "callDispatchTakeOutPoiDetials"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    sget-object v2, Lcom/baidu/mapapi/utils/b;->e:Lcom/baidu/mapframework/open/aidl/IComOpenClient;

    invoke-interface {v2, v0}, Lcom/baidu/mapframework/open/aidl/IComOpenClient;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 858
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "target"

    const-string v4, "request_poi_detail_page"

    .line 859
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 862
    sget-object v4, Lcom/baidu/mapapi/utils/b;->r:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "uid"

    if-eqz v4, :cond_0

    .line 863
    :try_start_1
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v4, ""

    .line 865
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v4, "base_params"

    .line 868
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 870
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "launch_from"

    .line 871
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sdk_["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/baidu/mapapi/utils/b;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ext_params"

    .line 872
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 873
    sget-object v3, Lcom/baidu/mapapi/utils/b;->e:Lcom/baidu/mapframework/open/aidl/IComOpenClient;

    invoke-interface {v3, v0, v2, v1}, Lcom/baidu/mapframework/open/aidl/IComOpenClient;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0

    :cond_1
    const-string v0, "callDispatchTakeOut com not found"

    .line 875
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 879
    sget-object v1, Lcom/baidu/mapapi/utils/b;->c:Ljava/lang/String;

    const-string v2, "callDispatchTakeOut exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private static i(Landroid/content/Context;)V
    .locals 4

    .line 728
    sget-object v0, Lcom/baidu/mapapi/utils/b;->x:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 729
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 732
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "baidumap://map/bikenavi?"

    .line 733
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v1

    sget-object v2, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v1, v2, :cond_1

    .line 735
    sget-object v1, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    sput-object v1, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    .line 736
    sget-object v1, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    sput-object v1, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    .line 738
    :cond_1
    sget-object v1, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "origin="

    .line 741
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v2, v2, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    .line 742
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "&destination="

    .line 743
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v2, v2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    .line 744
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "&src="

    .line 745
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdk_["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/baidu/mapapi/utils/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 748
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 749
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 750
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static i()Z
    .locals 13

    const-string v0, "map.android.baidu.mainmap"

    .line 885
    sget-object v1, Lcom/baidu/mapapi/utils/b;->j:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_2

    .line 889
    :cond_0
    :try_start_0
    sget-object v1, Lcom/baidu/mapapi/utils/b;->c:Ljava/lang/String;

    const-string v3, "callDispatchPoiToBaiduMap"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    sget-object v3, Lcom/baidu/mapapi/utils/b;->e:Lcom/baidu/mapframework/open/aidl/IComOpenClient;

    invoke-interface {v3, v0}, Lcom/baidu/mapframework/open/aidl/IComOpenClient;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 893
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "target"

    const-string v5, "favorite_page"

    .line 894
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 897
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 899
    :goto_0
    sget-object v8, Lcom/baidu/mapapi/utils/b;->j:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_3

    .line 900
    sget-object v8, Lcom/baidu/mapapi/utils/b;->j:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/mapapi/utils/poi/DispathcPoiData;

    iget-object v8, v8, Lcom/baidu/mapapi/utils/poi/DispathcPoiData;->name:Ljava/lang/String;

    if-eqz v8, :cond_2

    sget-object v8, Lcom/baidu/mapapi/utils/b;->j:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/mapapi/utils/poi/DispathcPoiData;

    iget-object v8, v8, Lcom/baidu/mapapi/utils/poi/DispathcPoiData;->name:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v8, Lcom/baidu/mapapi/utils/b;->j:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/mapapi/utils/poi/DispathcPoiData;

    iget-object v8, v8, Lcom/baidu/mapapi/utils/poi/DispathcPoiData;->pt:Lcom/baidu/mapapi/model/LatLng;

    if-nez v8, :cond_1

    goto :goto_1

    .line 903
    :cond_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v9, "name"

    .line 905
    sget-object v10, Lcom/baidu/mapapi/utils/b;->j:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/baidu/mapapi/utils/poi/DispathcPoiData;

    iget-object v10, v10, Lcom/baidu/mapapi/utils/poi/DispathcPoiData;->name:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 906
    sget-object v9, Lcom/baidu/mapapi/utils/b;->j:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/mapapi/utils/poi/DispathcPoiData;

    iget-object v9, v9, Lcom/baidu/mapapi/utils/poi/DispathcPoiData;->pt:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v9}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v9

    const-string v10, "ptx"

    .line 907
    invoke-virtual {v9}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v11

    invoke-virtual {v8, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v10, "pty"

    .line 908
    invoke-virtual {v9}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v11

    invoke-virtual {v8, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v9, "addr"

    .line 909
    sget-object v10, Lcom/baidu/mapapi/utils/b;->j:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/baidu/mapapi/utils/poi/DispathcPoiData;

    iget-object v10, v10, Lcom/baidu/mapapi/utils/poi/DispathcPoiData;->addr:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "uid"

    .line 910
    sget-object v10, Lcom/baidu/mapapi/utils/b;->j:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/baidu/mapapi/utils/poi/DispathcPoiData;

    iget-object v10, v10, Lcom/baidu/mapapi/utils/poi/DispathcPoiData;->uid:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v7, v7, 0x1

    .line 912
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v8

    .line 915
    :try_start_2
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_3
    if-nez v7, :cond_4

    return v2

    :cond_4
    const-string v6, "data"

    .line 922
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "from"

    .line 923
    sget-object v6, Lcom/baidu/mapapi/utils/b;->h:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pkg"

    .line 924
    sget-object v6, Lcom/baidu/mapapi/utils/b;->g:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "cls"

    .line 925
    sget-object v6, Lcom/baidu/mapapi/utils/b;->i:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "count"

    .line 926
    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "base_params"

    .line 927
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 928
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "launch_from"

    .line 929
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sdk_["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/baidu/mapapi/utils/b;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ext_params"

    .line 930
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 932
    sget-object v4, Lcom/baidu/mapapi/utils/b;->e:Lcom/baidu/mapframework/open/aidl/IComOpenClient;

    invoke-interface {v4, v0, v3, v1}, Lcom/baidu/mapframework/open/aidl/IComOpenClient;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0

    :cond_5
    const-string v0, "callDispatchPoiToBaiduMap com not found"

    .line 934
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 938
    sget-object v1, Lcom/baidu/mapapi/utils/b;->c:Ljava/lang/String;

    const-string v3, "callDispatchPoiToBaiduMap exception"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_2
    return v2
.end method

.method private static j(Landroid/content/Context;)V
    .locals 4

    .line 759
    sget-object v0, Lcom/baidu/mapapi/utils/b;->x:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 760
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 763
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "baidumap://map/walknavi?"

    .line 764
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v1

    sget-object v2, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v1, v2, :cond_1

    .line 766
    sget-object v1, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    sput-object v1, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    .line 767
    sget-object v1, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v1}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    sput-object v1, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    .line 769
    :cond_1
    sget-object v1, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "origin="

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v2, v2, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    .line 773
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "&destination="

    .line 774
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v2, v2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    .line 775
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "&mode="

    .line 776
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "walking_ar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&src="

    .line 777
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdk_["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/baidu/mapapi/utils/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "test"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 780
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 781
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 782
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static j()Z
    .locals 13

    const-string v0, "latlng:%f,%f"

    const-string v1, "map.android.baidu.mainmap"

    const/4 v2, 0x0

    .line 945
    :try_start_0
    sget-object v3, Lcom/baidu/mapapi/utils/b;->c:Ljava/lang/String;

    const-string v4, "callDispatchTakeOutRouteNavi"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    sget-object v4, Lcom/baidu/mapapi/utils/b;->e:Lcom/baidu/mapframework/open/aidl/IComOpenClient;

    invoke-interface {v4, v1}, Lcom/baidu/mapframework/open/aidl/IComOpenClient;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 949
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "target"

    const-string v6, "navigation_page"

    .line 950
    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "coord_type"

    const-string v7, "bd09ll"

    .line 953
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 956
    sget-object v7, Lcom/baidu/mapapi/utils/b;->m:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v8, "|"

    const-string v9, "name:"

    if-eqz v7, :cond_0

    .line 957
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/baidu/mapapi/utils/b;->m:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 959
    :cond_0
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v7

    sget-object v10, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v7, v10, :cond_1

    .line 960
    sget-object v7, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v7}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v7

    sput-object v7, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    :cond_1
    const/4 v7, 0x2

    new-array v10, v7, [Ljava/lang/Object;

    .line 962
    sget-object v11, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v11, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v10, v2

    sget-object v11, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v11, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-static {v0, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 963
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 964
    sget-object v11, Lcom/baidu/mapapi/utils/b;->n:Ljava/lang/String;

    if-eqz v11, :cond_2

    .line 965
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/baidu/mapapi/utils/b;->n:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 967
    :cond_2
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v8

    sget-object v9, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v8, v9, :cond_3

    .line 968
    sget-object v8, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v8}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v8

    sput-object v8, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    :cond_3
    new-array v7, v7, [Ljava/lang/Object;

    .line 970
    sget-object v8, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v8, v8, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v2

    sget-object v8, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v8, v8, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "origin"

    .line 971
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "destination"

    .line 972
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    sget-object v0, Lcom/baidu/mapapi/utils/b;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "viaPoints"

    .line 974
    sget-object v6, Lcom/baidu/mapapi/utils/b;->o:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    :cond_4
    sget-object v0, Lcom/baidu/mapapi/utils/b;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "type"

    .line 978
    sget-object v6, Lcom/baidu/mapapi/utils/b;->p:Ljava/lang/String;

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v0, "base_params"

    .line 980
    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 982
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "launch_from"

    .line 983
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sdk_["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/baidu/mapapi/utils/b;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ext_params"

    .line 984
    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 985
    sget-object v0, Lcom/baidu/mapapi/utils/b;->e:Lcom/baidu/mapframework/open/aidl/IComOpenClient;

    invoke-interface {v0, v1, v4, v3}, Lcom/baidu/mapframework/open/aidl/IComOpenClient;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0

    :cond_6
    const-string v0, "callDispatchTakeOut com not found"

    .line 987
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 991
    sget-object v1, Lcom/baidu/mapapi/utils/b;->c:Ljava/lang/String;

    const-string v3, "callDispatchTakeOut exception"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v2
.end method

.method private static k()Z
    .locals 13

    const-string v0, "latlng:%f,%f"

    const-string v1, "map.android.baidu.mainmap"

    const/4 v2, 0x0

    .line 999
    :try_start_0
    sget-object v3, Lcom/baidu/mapapi/utils/b;->c:Ljava/lang/String;

    const-string v4, "callDispatchTakeOutRouteNavi"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    sget-object v4, Lcom/baidu/mapapi/utils/b;->e:Lcom/baidu/mapframework/open/aidl/IComOpenClient;

    invoke-interface {v4, v1}, Lcom/baidu/mapframework/open/aidl/IComOpenClient;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1003
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "target"

    const-string/jumbo v6, "walknavi_page"

    .line 1004
    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "coord_type"

    const-string v7, "bd09ll"

    .line 1007
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 1009
    sget-object v7, Lcom/baidu/mapapi/utils/b;->m:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v8, "|"

    const-string v9, "name:"

    if-eqz v7, :cond_0

    .line 1010
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/baidu/mapapi/utils/b;->m:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1012
    :cond_0
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v7

    sget-object v10, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v7, v10, :cond_1

    .line 1013
    sget-object v7, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v7}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v7

    sput-object v7, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    :cond_1
    const/4 v7, 0x2

    new-array v10, v7, [Ljava/lang/Object;

    .line 1015
    sget-object v11, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v11, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v10, v2

    sget-object v11, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v11, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-static {v0, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1016
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 1017
    sget-object v11, Lcom/baidu/mapapi/utils/b;->n:Ljava/lang/String;

    if-eqz v11, :cond_2

    .line 1018
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/baidu/mapapi/utils/b;->n:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1020
    :cond_2
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v8

    sget-object v9, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v8, v9, :cond_3

    .line 1021
    sget-object v8, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v8}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v8

    sput-object v8, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    :cond_3
    new-array v7, v7, [Ljava/lang/Object;

    .line 1023
    sget-object v8, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v8, v8, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v2

    sget-object v8, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v8, v8, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "origin"

    .line 1024
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "destination"

    .line 1025
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "base_params"

    .line 1026
    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1028
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "launch_from"

    .line 1029
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sdk_["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/baidu/mapapi/utils/b;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ext_params"

    .line 1030
    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1031
    sget-object v0, Lcom/baidu/mapapi/utils/b;->e:Lcom/baidu/mapframework/open/aidl/IComOpenClient;

    invoke-interface {v0, v1, v4, v3}, Lcom/baidu/mapframework/open/aidl/IComOpenClient;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0

    :cond_4
    const-string v0, "callDispatchTakeOut com not found"

    .line 1034
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1038
    sget-object v1, Lcom/baidu/mapapi/utils/b;->c:Ljava/lang/String;

    const-string v3, "callDispatchTakeOut exception"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v2
.end method

.method private static l()Z
    .locals 13

    const-string v0, "latlng:%f,%f"

    const-string v1, "map.android.baidu.mainmap"

    const/4 v2, 0x0

    .line 1045
    :try_start_0
    sget-object v3, Lcom/baidu/mapapi/utils/b;->c:Ljava/lang/String;

    const-string v4, "callDispatchTakeOutRouteRidingNavi"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    sget-object v4, Lcom/baidu/mapapi/utils/b;->e:Lcom/baidu/mapframework/open/aidl/IComOpenClient;

    invoke-interface {v4, v1}, Lcom/baidu/mapframework/open/aidl/IComOpenClient;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1049
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "target"

    const-string v6, "bikenavi_page"

    .line 1050
    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "coord_type"

    const-string v7, "bd09ll"

    .line 1053
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 1055
    sget-object v7, Lcom/baidu/mapapi/utils/b;->m:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v8, "|"

    const-string v9, "name:"

    if-eqz v7, :cond_0

    .line 1056
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/baidu/mapapi/utils/b;->m:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1058
    :cond_0
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v7

    sget-object v10, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v7, v10, :cond_1

    .line 1059
    sget-object v7, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v7}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v7

    sput-object v7, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    :cond_1
    const/4 v7, 0x2

    new-array v10, v7, [Ljava/lang/Object;

    .line 1061
    sget-object v11, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v11, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v10, v2

    sget-object v11, Lcom/baidu/mapapi/utils/b;->k:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v11, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-static {v0, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1062
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 1063
    sget-object v11, Lcom/baidu/mapapi/utils/b;->n:Ljava/lang/String;

    if-eqz v11, :cond_2

    .line 1064
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/baidu/mapapi/utils/b;->n:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1066
    :cond_2
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v8

    sget-object v9, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v8, v9, :cond_3

    .line 1067
    sget-object v8, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v8}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v8

    sput-object v8, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    :cond_3
    new-array v7, v7, [Ljava/lang/Object;

    .line 1069
    sget-object v8, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v8, v8, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v2

    sget-object v8, Lcom/baidu/mapapi/utils/b;->l:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v8, v8, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "origin"

    .line 1070
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "destination"

    .line 1071
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "base_params"

    .line 1072
    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1074
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "launch_from"

    .line 1075
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sdk_["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/baidu/mapapi/utils/b;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ext_params"

    .line 1076
    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1077
    sget-object v0, Lcom/baidu/mapapi/utils/b;->e:Lcom/baidu/mapframework/open/aidl/IComOpenClient;

    invoke-interface {v0, v1, v4, v3}, Lcom/baidu/mapframework/open/aidl/IComOpenClient;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0

    :cond_4
    const-string v0, "callDispatchTakeOut com not found"

    .line 1079
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1083
    sget-object v1, Lcom/baidu/mapapi/utils/b;->c:Ljava/lang/String;

    const-string v3, "callDispatchTakeOut exception"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v2
.end method

.method private static m()Z
    .locals 8

    const-string v0, "map.android.baidu.mainmap"

    .line 1090
    :try_start_0
    sget-object v1, Lcom/baidu/mapapi/utils/b;->c:Ljava/lang/String;

    const-string v2, "callDispatchTakeOutPoiNearbySearch"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    sget-object v2, Lcom/baidu/mapapi/utils/b;->e:Lcom/baidu/mapframework/open/aidl/IComOpenClient;

    invoke-interface {v2, v0}, Lcom/baidu/mapframework/open/aidl/IComOpenClient;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1094
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "target"

    const-string v4, "poi_search_page"

    .line 1095
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1098
    sget-object v4, Lcom/baidu/mapapi/utils/b;->s:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ""

    const-string v6, "search_key"

    if-eqz v4, :cond_0

    .line 1099
    :try_start_1
    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1101
    :cond_0
    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    :goto_0
    sget-object v4, Lcom/baidu/mapapi/utils/b;->t:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v4, :cond_1

    const-string v5, "center_pt_x"

    .line 1104
    invoke-static {v4}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide v6

    double-to-int v4, v6

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "center_pt_y"

    .line 1105
    sget-object v5, Lcom/baidu/mapapi/utils/b;->t:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v5}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide v5

    double-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 1107
    :cond_1
    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    :goto_1
    sget v4, Lcom/baidu/mapapi/utils/b;->u:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "search_radius"

    if-eqz v4, :cond_2

    .line 1110
    :try_start_2
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    const/16 v4, 0x3e8

    .line 1112
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_2
    const-string v4, "is_direct_search"

    const/4 v5, 0x1

    .line 1114
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "is_direct_area_search"

    .line 1115
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "base_params"

    .line 1117
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1119
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "launch_from"

    .line 1120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sdk_["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/baidu/mapapi/utils/b;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ext_params"

    .line 1121
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1122
    sget-object v3, Lcom/baidu/mapapi/utils/b;->e:Lcom/baidu/mapframework/open/aidl/IComOpenClient;

    invoke-interface {v3, v0, v2, v1}, Lcom/baidu/mapframework/open/aidl/IComOpenClient;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0

    :cond_3
    const-string v0, "callDispatchTakeOut com not found"

    .line 1124
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 1128
    sget-object v1, Lcom/baidu/mapapi/utils/b;->c:Ljava/lang/String;

    const-string v2, "callDispatchTakeOut exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    const/4 v0, 0x0

    return v0
.end method
