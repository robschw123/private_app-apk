.class public Lio/dcloud/h/a/d/b/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Z = false

.field private static b:[Ljava/lang/String; = null

.field private static c:Z = false

.field private static d:Ljava/lang/String; = null

.field private static e:Z = false

.field private static f:Ljava/lang/String; = null

.field private static g:Z = false

.field private static h:Ljava/lang/String; = null

.field private static i:Ljava/lang/String; = ""

.field private static j:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a(ILandroid/content/Context;)Ljava/lang/Object;
    .locals 6

    :try_start_0
    const-string v0, "phone"

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "getSubscriberId"

    .line 15
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v2, :cond_0

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v3

    invoke-static {v1, v0, p1, v2, v4}, Lio/dcloud/h/a/d/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v3

    invoke-static {v1, v0, p1, v2, v4}, Lio/dcloud/h/a/d/b/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 22
    invoke-virtual {p0, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lio/dcloud/h/a/d/b/d;->f:Ljava/lang/String;

    return-object p0

    .line 4
    :cond_0
    invoke-static {}, Lio/dcloud/h/c/c/b/a;->a()Lio/dcloud/h/c/c/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/dcloud/h/c/c/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    sget-object p0, Lio/dcloud/h/a/d/b/d;->f:Ljava/lang/String;

    return-object p0

    .line 6
    :cond_1
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->c()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/h/a/d/b/d;->f:Ljava/lang/String;

    return-object p0

    .line 8
    :cond_2
    sget-boolean v0, Lio/dcloud/h/a/d/b/d;->e:Z

    if-nez v0, :cond_3

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/h/a/d/b/d;->f:Ljava/lang/String;

    const/4 p0, 0x1

    .line 10
    sput-boolean p0, Lio/dcloud/h/a/d/b/d;->e:Z

    .line 12
    :cond_3
    sget-object p0, Lio/dcloud/h/a/d/b/d;->f:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .line 23
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Unknown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "00000000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static b(ILandroid/content/Context;)I
    .locals 8

    const-string v0, "_id"

    const-string v1, "content://telephony/siminfo"

    .line 3
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 p1, 0x0

    :try_start_0
    const-string v1, "sim_id"

    .line 7
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "sim_id = ?"

    const/4 v1, 0x1

    :try_start_1
    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v6, v1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return p0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 18
    :cond_1
    throw p0

    :goto_0
    if-eqz p1, :cond_2

    .line 19
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "phone"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lio/dcloud/h/a/d/b/d;->i:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 3
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object p0, Lio/dcloud/h/a/d/b/d;->i:Ljava/lang/String;

    return-object p0

    .line 8
    :cond_1
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    sget-object p0, Lio/dcloud/h/a/d/b/d;->i:Ljava/lang/String;

    return-object p0

    .line 11
    :cond_2
    invoke-static {}, Lio/dcloud/h/c/c/b/a;->a()Lio/dcloud/h/c/c/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/dcloud/h/c/c/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    sget-object p0, Lio/dcloud/h/a/d/b/d;->i:Ljava/lang/String;

    return-object p0

    .line 14
    :cond_3
    sget-boolean v0, Lio/dcloud/h/a/d/b/d;->j:Z

    if-eqz v0, :cond_4

    .line 15
    sget-object p0, Lio/dcloud/h/a/d/b/d;->i:Ljava/lang/String;

    return-object p0

    :cond_4
    const/4 v0, 0x0

    .line 17
    invoke-static {}, Lio/dcloud/h/c/c/b/a;->a()Lio/dcloud/h/c/c/b/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lio/dcloud/h/c/c/b/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "phone"

    .line 18
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 21
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    :cond_5
    :goto_0
    sput-object v0, Lio/dcloud/h/a/d/b/d;->i:Ljava/lang/String;

    const/4 p0, 0x1

    .line 27
    sput-boolean p0, Lio/dcloud/h/a/d/b/d;->j:Z

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 1
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    sget-object p0, Lio/dcloud/h/a/d/b/d;->d:Ljava/lang/String;

    return-object p0

    .line 5
    :cond_1
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->d()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    sget-object p0, Lio/dcloud/h/a/d/b/d;->d:Ljava/lang/String;

    return-object p0

    .line 8
    :cond_2
    invoke-static {}, Lio/dcloud/h/c/c/b/a;->a()Lio/dcloud/h/c/c/b/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lio/dcloud/h/c/c/b/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    sget-object p0, Lio/dcloud/h/a/d/b/d;->d:Ljava/lang/String;

    return-object p0

    .line 10
    :cond_3
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->b()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/h/a/d/b/d;->d:Ljava/lang/String;

    return-object p0

    .line 13
    :cond_4
    sget-boolean v1, Lio/dcloud/h/a/d/b/d;->c:Z

    if-eqz v1, :cond_5

    .line 14
    sget-object p0, Lio/dcloud/h/a/d/b/d;->d:Ljava/lang/String;

    return-object p0

    :cond_5
    const/4 v1, 0x0

    .line 16
    invoke-static {v1, p0}, Lio/dcloud/h/a/d/b/d;->b(ILandroid/content/Context;)I

    move-result v1

    .line 17
    invoke-static {v0, p0}, Lio/dcloud/h/a/d/b/d;->b(ILandroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v1, v3, :cond_6

    if-ne v2, v3, :cond_6

    .line 19
    invoke-static {p0}, Lio/dcloud/h/a/d/b/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 21
    :cond_6
    invoke-static {v1, p0}, Lio/dcloud/h/a/d/b/d;->a(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 22
    invoke-static {v2, p0}, Lio/dcloud/h/a/d/b/d;->a(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_8

    .line 25
    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 26
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :cond_7
    move-object p0, v1

    goto :goto_0

    .line 28
    :cond_8
    :try_start_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    move-object p0, v2

    goto :goto_0

    .line 31
    :cond_9
    invoke-static {p0}, Lio/dcloud/h/a/d/b/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    const/4 p0, 0x0

    .line 36
    :goto_0
    sput-boolean v0, Lio/dcloud/h/a/d/b/d;->c:Z

    .line 37
    sput-object p0, Lio/dcloud/h/a/d/b/d;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    .line 1
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p0, Lio/dcloud/h/a/d/b/d;->h:Ljava/lang/String;

    return-object p0

    .line 6
    :cond_0
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    sget-object p0, Lio/dcloud/h/a/d/b/d;->h:Ljava/lang/String;

    return-object p0

    .line 9
    :cond_1
    invoke-static {}, Lio/dcloud/h/c/c/b/a;->a()Lio/dcloud/h/c/c/b/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/dcloud/h/c/c/b/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    sget-object p0, Lio/dcloud/h/a/d/b/d;->h:Ljava/lang/String;

    return-object p0

    .line 13
    :cond_2
    sget-boolean v0, Lio/dcloud/h/a/d/b/d;->g:Z

    if-eqz v0, :cond_3

    .line 14
    sget-object p0, Lio/dcloud/h/a/d/b/d;->h:Ljava/lang/String;

    return-object p0

    .line 15
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 16
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_0

    .line 17
    :cond_4
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    :goto_0
    sput-object p0, Lio/dcloud/h/a/d/b/d;->h:Ljava/lang/String;

    const/4 v0, 0x1

    .line 18
    sput-boolean v0, Lio/dcloud/h/a/d/b/d;->g:Z

    return-object p0
.end method

.method public static f(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 1
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    sget-object p0, Lio/dcloud/h/a/d/b/d;->b:[Ljava/lang/String;

    return-object p0

    .line 6
    :cond_1
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->d()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    sget-object p0, Lio/dcloud/h/a/d/b/d;->b:[Ljava/lang/String;

    return-object p0

    .line 9
    :cond_2
    invoke-static {}, Lio/dcloud/h/c/c/b/a;->a()Lio/dcloud/h/c/c/b/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lio/dcloud/h/c/c/b/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 10
    sget-object p0, Lio/dcloud/h/a/d/b/d;->b:[Ljava/lang/String;

    return-object p0

    .line 11
    :cond_3
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    invoke-static {}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->getInstance()Lio/dcloud/sdk/poly/base/utils/PrivacyManager;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/sdk/poly/base/utils/PrivacyManager;->a()[Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/dcloud/h/a/d/b/d;->b:[Ljava/lang/String;

    return-object p0

    .line 15
    :cond_4
    sget-boolean v1, Lio/dcloud/h/a/d/b/d;->a:Z

    if-eqz v1, :cond_5

    .line 16
    sget-object p0, Lio/dcloud/h/a/d/b/d;->b:[Ljava/lang/String;

    return-object p0

    :cond_5
    const-string v1, "phone"

    .line 17
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x1

    .line 21
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object p0

    .line 23
    invoke-static {v2}, Lio/dcloud/h/a/d/b/d;->a(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    move-object v2, v0

    .line 26
    :goto_0
    :try_start_1
    invoke-static {p0}, Lio/dcloud/h/a/d/b/d;->a(Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v3, :cond_7

    goto :goto_1

    :catch_0
    move-object v2, v0

    :catch_1
    :cond_7
    move-object p0, v0

    .line 31
    :goto_1
    invoke-static {v2}, Lio/dcloud/h/a/d/b/d;->a(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_8

    invoke-static {p0}, Lio/dcloud/h/a/d/b/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v4

    aput-object p0, v0, v1

    .line 32
    sput-object v0, Lio/dcloud/h/a/d/b/d;->b:[Ljava/lang/String;

    goto :goto_2

    .line 33
    :cond_8
    invoke-static {v2}, Lio/dcloud/h/a/d/b/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    new-array p0, v1, [Ljava/lang/String;

    aput-object v2, p0, v4

    .line 34
    sput-object p0, Lio/dcloud/h/a/d/b/d;->b:[Ljava/lang/String;

    goto :goto_2

    .line 35
    :cond_9
    invoke-static {p0}, Lio/dcloud/h/a/d/b/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    new-array v0, v1, [Ljava/lang/String;

    aput-object p0, v0, v4

    .line 36
    sput-object v0, Lio/dcloud/h/a/d/b/d;->b:[Ljava/lang/String;

    goto :goto_2

    .line 38
    :cond_a
    sput-object v0, Lio/dcloud/h/a/d/b/d;->b:[Ljava/lang/String;

    .line 40
    :goto_2
    sput-boolean v1, Lio/dcloud/h/a/d/b/d;->a:Z

    .line 41
    sget-object p0, Lio/dcloud/h/a/d/b/d;->b:[Ljava/lang/String;

    return-object p0
.end method
