.class public Lio/dcloud/h/a/d/b/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Lorg/json/JSONObject;

.field private static b:Z

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lio/dcloud/h/a/d/b/f;->a:Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lio/dcloud/h/a/d/b/f;->b:Z

    .line 57
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lio/dcloud/h/a/d/b/f;->c:Ljava/util/Map;

    .line 58
    sput-boolean v0, Lio/dcloud/h/a/d/b/f;->d:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 49
    sget-object p0, Lio/dcloud/h/a/d/b/f;->c:Ljava/util/Map;

    return-object p0

    :cond_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 50
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    sget-object p0, Lio/dcloud/h/a/d/b/f;->c:Ljava/util/Map;

    return-object p0

    .line 55
    :cond_1
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 56
    sget-object p0, Lio/dcloud/h/a/d/b/f;->c:Ljava/util/Map;

    return-object p0

    .line 58
    :cond_2
    invoke-static {}, Lio/dcloud/h/c/c/b/a;->a()Lio/dcloud/h/c/c/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/dcloud/h/c/c/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 59
    sget-object p0, Lio/dcloud/h/a/d/b/f;->c:Ljava/util/Map;

    return-object p0

    .line 60
    :cond_3
    sget-boolean v0, Lio/dcloud/h/a/d/b/f;->d:Z

    if-eqz v0, :cond_4

    .line 61
    sget-object p0, Lio/dcloud/h/a/d/b/f;->c:Ljava/util/Map;

    return-object p0

    .line 64
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_b

    const-string v0, "10"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "phone"

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const-string v0, "03"

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "05"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const-string v0, "01"

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "06"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    const-string v0, "00"

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "02"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "07"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x4

    const/4 v2, 0x4

    goto :goto_2

    :cond_8
    :goto_0
    const/4 v2, 0x1

    goto :goto_2

    :cond_9
    :goto_1
    const/4 p1, 0x3

    const/4 v2, 0x3

    .line 84
    :goto_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p0

    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    .line 85
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result p1

    .line 86
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p0

    move v4, v2

    move v2, p1

    move p1, v4

    goto :goto_4

    .line 87
    :cond_a
    :goto_3
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p0

    check-cast p0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 88
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    .line 89
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result p0

    .line 90
    div-int/lit8 p0, p0, 0x10

    const/4 p1, 0x2

    goto :goto_4

    :cond_b
    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 109
    :goto_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "carrier"

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "cid"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "lac"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sput-object v0, Lio/dcloud/h/a/d/b/f;->c:Ljava/util/Map;

    .line 114
    sput-boolean v1, Lio/dcloud/h/a/d/b/f;->d:Z

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 9

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lio/dcloud/h/a/d/b/f;->a:Lorg/json/JSONObject;

    return-object p0

    :cond_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 2
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 4
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object p0, Lio/dcloud/h/a/d/b/f;->a:Lorg/json/JSONObject;

    return-object p0

    .line 9
    :cond_1
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    sget-object p0, Lio/dcloud/h/a/d/b/f;->a:Lorg/json/JSONObject;

    return-object p0

    .line 12
    :cond_2
    invoke-static {}, Lio/dcloud/h/c/c/b/a;->a()Lio/dcloud/h/c/c/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/dcloud/h/c/c/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 13
    sget-object p0, Lio/dcloud/h/a/d/b/f;->a:Lorg/json/JSONObject;

    return-object p0

    .line 14
    :cond_3
    sget-boolean v0, Lio/dcloud/h/a/d/b/f;->b:Z

    if-eqz v0, :cond_4

    .line 15
    sget-object p0, Lio/dcloud/h/a/d/b/f;->a:Lorg/json/JSONObject;

    return-object p0

    .line 16
    :cond_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "location"

    .line 18
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const/4 v1, 0x1

    if-eqz p0, :cond_6

    .line 21
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "getLastKnownLocation"

    :try_start_1
    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "gps"

    aput-object v4, v3, v6

    .line 23
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    if-nez v3, :cond_5

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "network"

    aput-object v4, v3, v6

    .line 25
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Location;

    if-nez v3, :cond_5

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "passive"

    aput-object v4, v3, v6

    .line 27
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Landroid/location/Location;

    :cond_5
    if-eqz v3, :cond_6

    const-string p0, "android.location.Location"

    .line 30
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "getLongitude"

    :try_start_2
    new-array v4, v6, [Ljava/lang/Class;

    .line 31
    invoke-virtual {p0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, "getLatitude"

    :try_start_3
    new-array v5, v6, [Ljava/lang/Class;

    .line 32
    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v5, "getAccuracy"

    :try_start_4
    new-array v7, v6, [Ljava/lang/Class;

    .line 33
    invoke-virtual {p0, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v7, "getTime"

    :try_start_5
    new-array v8, v6, [Ljava/lang/Class;

    .line 34
    invoke-virtual {p0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v7, "lon"

    :try_start_6
    new-array v8, v6, [Ljava/lang/Object;

    .line 36
    invoke-virtual {v2, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v2, "lat"

    :try_start_7
    new-array v7, v6, [Ljava/lang/Object;

    .line 38
    invoke-virtual {v4, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v2, "accuracy"

    :try_start_8
    new-array v4, v6, [Ljava/lang/Object;

    .line 40
    invoke-virtual {v5, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string v2, "ts"

    :try_start_9
    new-array v4, v6, [Ljava/lang/Object;

    .line 42
    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 47
    :catch_0
    :cond_6
    sput-object v0, Lio/dcloud/h/a/d/b/f;->a:Lorg/json/JSONObject;

    .line 48
    sput-boolean v1, Lio/dcloud/h/a/d/b/f;->b:Z

    return-object v0
.end method
