.class public Lcom/baidu/mapsdkplatform/comapi/favrite/a;
.super Ljava/lang/Object;
.source "FavoritePois.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapsdkplatform/comapi/favrite/a$a;,
        Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;,
        Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;
    }
.end annotation


# static fields
.field private static b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;


# instance fields
.field private a:Lcom/baidu/platform/comjni/map/favorite/NAFavorite;

.field private c:Z

.field private d:Z

.field private e:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;

.field private i:Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/platform/comjni/map/favorite/NAFavorite;

    const/4 v1, 0x0

    .line 32
    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->c:Z

    .line 33
    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->d:Z

    .line 34
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->e:Ljava/util/Vector;

    .line 35
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->f:Ljava/util/Vector;

    .line 582
    iput-boolean v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->g:Z

    .line 675
    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;

    invoke-direct {v1, p0, v0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;-><init>(Lcom/baidu/mapsdkplatform/comapi/favrite/a;Lcom/baidu/mapsdkplatform/comapi/favrite/b;)V

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->h:Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;

    .line 676
    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;

    invoke-direct {v1, p0, v0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;-><init>(Lcom/baidu/mapsdkplatform/comapi/favrite/a;Lcom/baidu/mapsdkplatform/comapi/favrite/b;)V

    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->i:Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;

    return-void
.end method

.method public static a()Lcom/baidu/mapsdkplatform/comapi/favrite/a;
    .locals 2

    .line 43
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    if-nez v0, :cond_1

    .line 44
    const-class v0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    invoke-direct {v1}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;-><init>()V

    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    .line 47
    invoke-direct {v1}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->h()Z

    .line 49
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 51
    :cond_1
    :goto_0
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    return-object v0
.end method

.method public static g()Z
    .locals 1

    .line 740
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/platform/comjni/map/favorite/NAFavorite;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/favorite/NAFavorite;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private h()Z
    .locals 6

    .line 65
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/platform/comjni/map/favorite/NAFavorite;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 66
    new-instance v0, Lcom/baidu/platform/comjni/map/favorite/NAFavorite;

    invoke-direct {v0}, Lcom/baidu/platform/comjni/map/favorite/NAFavorite;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/platform/comjni/map/favorite/NAFavorite;

    .line 67
    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/favorite/NAFavorite;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/platform/comjni/map/favorite/NAFavorite;

    const/4 v0, 0x0

    return v0

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->j()V

    .line 73
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->i()Z

    :cond_1
    return v1
.end method

.method private i()Z
    .locals 9

    .line 113
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/platform/comjni/map/favorite/NAFavorite;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getModuleFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, -0x1

    const/16 v6, 0xa

    const/16 v7, 0x1f5

    .line 123
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/platform/comjni/map/favorite/NAFavorite;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/platform/comjni/map/favorite/NAFavorite;->a(I)Z

    .line 124
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/platform/comjni/map/favorite/NAFavorite;

    const-string v4, "fav_poi"

    const-string v5, "fifo"

    invoke-virtual/range {v2 .. v8}, Lcom/baidu/platform/comjni/map/favorite/NAFavorite;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Z

    move-result v0

    return v0
.end method

.method private j()V
    .locals 1

    const/4 v0, 0x0

    .line 307
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->c:Z

    .line 308
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->d:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;)I
    .locals 7

    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/platform/comjni/map/favorite/NAFavorite;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 199
    monitor-exit p0

    return v1

    :cond_0
    const/4 v0, -0x1

    if-eqz p1, :cond_8

    :try_start_1
    const-string v2, ""

    .line 201
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    if-nez p2, :cond_1

    goto/16 :goto_2

    .line 204
    :cond_1
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->j()V

    .line 205
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->e()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 208
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/16 v5, 0x1f4

    if-le v3, v5, :cond_3

    const/4 p1, -0x2

    .line 212
    monitor-exit p0

    return p1

    :cond_3
    if-eqz v2, :cond_6

    .line 214
    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 215
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 216
    invoke-virtual {p0, v3}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->b(Ljava/lang/String;)Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_1

    .line 220
    :cond_5
    iget-object v3, v3, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->b:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_4

    .line 221
    monitor-exit p0

    return v0

    .line 229
    :cond_6
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 230
    iput-object p1, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->b:Ljava/lang/String;

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    iput-object p1, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->h:Ljava/lang/String;

    .line 234
    iput-object v2, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->a:Ljava/lang/String;

    const-string p1, "bdetail"

    .line 235
    iget-boolean v3, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->i:Z

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "uspoiname"

    .line 236
    iget-object v3, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "x"

    .line 238
    iget-object v5, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->c:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v5}, Lcom/baidu/platform/comapi/basestruct/Point;->getDoubleX()D

    move-result-wide v5

    invoke-virtual {p1, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v3, "y"

    .line 239
    iget-object v5, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->c:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v5}, Lcom/baidu/platform/comapi/basestruct/Point;->getDoubleY()D

    move-result-wide v5

    invoke-virtual {p1, v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "pt"

    .line 240
    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ncityid"

    .line 241
    iget-object v3, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->e:Ljava/lang/String;

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "npoitype"

    .line 242
    iget v3, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->g:I

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "uspoiuid"

    .line 243
    iget-object v3, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->f:Ljava/lang/String;

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "addr"

    .line 244
    iget-object v3, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->d:Ljava/lang/String;

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "addtimesec"

    .line 246
    iget-object v3, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->h:Ljava/lang/String;

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "Fav_Sync"

    .line 249
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "Fav_Content"

    .line 250
    iget-object p2, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/platform/comjni/map/favorite/NAFavorite;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lcom/baidu/platform/comjni/map/favorite/NAFavorite;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 252
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->j()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 262
    :try_start_4
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->g()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 253
    monitor-exit p0

    return v4

    .line 262
    :cond_7
    :try_start_5
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->g()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 255
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 262
    :try_start_6
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->g()Z

    throw p1

    :catch_0
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->g()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 260
    monitor-exit p0

    return v1

    .line 202
    :cond_8
    :goto_2
    monitor-exit p0

    return v0

    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public declared-synchronized a(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/platform/comjni/map/favorite/NAFavorite;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 275
    monitor-exit p0

    return v1

    :cond_0
    if-eqz p1, :cond_3

    :try_start_1
    const-string v0, ""

    .line 277
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 280
    :cond_1
    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->c(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    .line 281
    monitor-exit p0

    return v1

    .line 282
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->j()V

    .line 283
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/platform/comjni/map/favorite/NAFavorite;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/favorite/NAFavorite;->a(Ljava/lang/String;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    .line 278
    :cond_3
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/lang/String;)Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;
    .locals 8

    .line 446
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/platform/comjni/map/favorite/NAFavorite;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 451
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 454
    :cond_1
    new-instance v2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;

    invoke-direct {v2}, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;-><init>()V

    .line 455
    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/platform/comjni/map/favorite/NAFavorite;

    invoke-virtual {v3, p1}, Lcom/baidu/platform/comjni/map/favorite/NAFavorite;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 457
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 460
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "Fav_Sync"

    .line 461
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Fav_Content"

    .line 462
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "uspoiname"

    .line 463
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->b:Ljava/lang/String;

    const-string v4, "pt"

    .line 464
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 466
    new-instance v5, Lcom/baidu/platform/comapi/basestruct/Point;

    const-string/jumbo v6, "x"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v7, "y"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v5, v6, v4}, Lcom/baidu/platform/comapi/basestruct/Point;-><init>(II)V

    iput-object v5, v2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->c:Lcom/baidu/platform/comapi/basestruct/Point;

    const-string v4, "ncityid"

    .line 467
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->e:Ljava/lang/String;

    const-string v4, "uspoiuid"

    .line 468
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->f:Ljava/lang/String;

    const-string v4, "npoitype"

    .line 469
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->g:I

    const-string v4, "addr"

    .line 470
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->d:Ljava/lang/String;

    const-string v4, "addtimesec"

    .line 471
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->h:Ljava/lang/String;

    const-string v4, "bdetail"

    .line 472
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->i:Z

    .line 473
    iput-object v0, v2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->j:Ljava/lang/String;

    .line 474
    iput-object p1, v2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_3
    :goto_0
    return-object v1

    :catch_0
    move-exception p1

    .line 483
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1

    :catch_1
    move-exception p1

    .line 480
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_4
    :goto_1
    return-object v1
.end method

.method public b()V
    .locals 2

    .line 86
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/platform/comjni/map/favorite/NAFavorite;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/favorite/NAFavorite;->b()I

    .line 98
    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    iput-object v1, v0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/platform/comjni/map/favorite/NAFavorite;

    .line 101
    :cond_0
    sput-object v1, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    :cond_1
    return-void
.end method

.method public declared-synchronized b(Ljava/lang/String;Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;)Z
    .locals 6

    monitor-enter p0

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/platform/comjni/map/favorite/NAFavorite;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 552
    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->c(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 553
    monitor-exit p0

    return v1

    .line 555
    :cond_1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "uspoiname"

    .line 556
    iget-object v3, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 557
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "x"

    .line 558
    iget-object v4, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->c:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/Point;->getDoubleX()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v3, "y"

    .line 559
    iget-object v4, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->c:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/Point;->getDoubleY()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "pt"

    .line 560
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ncityid"

    .line 561
    iget-object v3, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "npoitype"

    .line 562
    iget v3, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->g:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "uspoiuid"

    .line 563
    iget-object v3, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "addr"

    .line 564
    iget-object v3, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 565
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 566
    iput-object v2, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->h:Ljava/lang/String;

    const-string v2, "addtimesec"

    .line 567
    iget-object v3, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "bdetail"

    .line 568
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 570
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "Fav_Sync"

    .line 571
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "Fav_Content"

    .line 572
    iget-object p2, p2, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 573
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->j()V

    .line 574
    iget-object p2, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/platform/comjni/map/favorite/NAFavorite;

    if-eqz p2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/baidu/platform/comjni/map/favorite/NAFavorite;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    monitor-exit p0

    return v1

    .line 578
    :catch_0
    monitor-exit p0

    return v1

    .line 551
    :cond_3
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/platform/comjni/map/favorite/NAFavorite;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 295
    monitor-exit p0

    return v0

    .line 296
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->j()V

    .line 297
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/platform/comjni/map/favorite/NAFavorite;

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/favorite/NAFavorite;->c()Z

    move-result v0

    .line 299
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->g()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/platform/comjni/map/favorite/NAFavorite;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/platform/comjni/map/favorite/NAFavorite;

    invoke-virtual {v0, p1}, Lcom/baidu/platform/comjni/map/favorite/NAFavorite;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/platform/comjni/map/favorite/NAFavorite;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 319
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->f:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->f:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 323
    :cond_1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 324
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/platform/comjni/map/favorite/NAFavorite;

    invoke-virtual {v2, v0}, Lcom/baidu/platform/comjni/map/favorite/NAFavorite;->a(Landroid/os/Bundle;)I

    const-string v2, "rstString"

    .line 325
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 328
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->f:Ljava/util/Vector;

    if-nez v2, :cond_2

    .line 329
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->f:Ljava/util/Vector;

    goto :goto_0

    .line 331
    :cond_2
    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    :goto_0
    const/4 v2, 0x0

    .line 332
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_5

    .line 333
    aget-object v3, v0, v2

    const-string v4, "data_version"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 334
    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/platform/comjni/map/favorite/NAFavorite;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Lcom/baidu/platform/comjni/map/favorite/NAFavorite;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v4, ""

    .line 335
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 337
    :cond_3
    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->f:Ljava/util/Vector;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 342
    :cond_5
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v0, :cond_7

    .line 344
    :try_start_1
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->f:Ljava/util/Vector;

    new-instance v2, Lcom/baidu/mapsdkplatform/comapi/favrite/a$a;

    invoke-direct {v2, p0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$a;-><init>(Lcom/baidu/mapsdkplatform/comapi/favrite/a;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 346
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    const/4 v0, 0x1

    .line 348
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->d:Z

    goto :goto_4

    .line 351
    :cond_6
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->f:Ljava/util/Vector;

    if-eqz v0, :cond_7

    .line 352
    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 353
    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->f:Ljava/util/Vector;

    .line 356
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->f:Ljava/util/Vector;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->f:Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v0

    :catch_1
    :cond_9
    :goto_5
    return-object v1
.end method

.method public e()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/platform/comjni/map/favorite/NAFavorite;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 375
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->e:Ljava/util/Vector;

    if-eqz v0, :cond_1

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->e:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 379
    :cond_1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 380
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/platform/comjni/map/favorite/NAFavorite;

    invoke-virtual {v2, v0}, Lcom/baidu/platform/comjni/map/favorite/NAFavorite;->a(Landroid/os/Bundle;)I

    const-string v2, "rstString"

    .line 381
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 383
    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->e:Ljava/util/Vector;

    if-nez v2, :cond_2

    .line 384
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->e:Ljava/util/Vector;

    goto :goto_0

    .line 387
    :cond_2
    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 388
    :goto_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    const-string v5, "data_version"

    .line 389
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 390
    iget-object v5, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->e:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 393
    :cond_4
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v0, :cond_6

    .line 395
    :try_start_1
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->e:Ljava/util/Vector;

    new-instance v2, Lcom/baidu/mapsdkplatform/comapi/favrite/a$a;

    invoke-direct {v2, p0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$a;-><init>(Lcom/baidu/mapsdkplatform/comapi/favrite/a;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 397
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const/4 v0, 0x1

    .line 400
    iput-boolean v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->c:Z

    goto :goto_3

    .line 404
    :cond_5
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->e:Ljava/util/Vector;

    if-eqz v0, :cond_6

    .line 405
    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 406
    iput-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->e:Ljava/util/Vector;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 412
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->e:Ljava/util/Vector;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->e:Ljava/util/Vector;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :catch_1
    :cond_8
    :goto_4
    return-object v1
.end method

.method public f()Ljava/lang/String;
    .locals 8

    .line 684
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->i:Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;->a(Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->h:Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;->a(Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->h:Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;->b(Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->h:Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;->c(Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->i:Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;->b(Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;)V

    .line 689
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/platform/comjni/map/favorite/NAFavorite;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 692
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->d()Ljava/util/ArrayList;

    move-result-object v0

    .line 693
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_4

    .line 696
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    .line 698
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_2

    const-string v6, "data_version"

    .line 699
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 700
    iget-object v6, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a:Lcom/baidu/platform/comjni/map/favorite/NAFavorite;

    invoke-virtual {v6, v5}, Lcom/baidu/platform/comjni/map/favorite/NAFavorite;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v7, ""

    .line 702
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 703
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "Fav_Sync"

    .line 704
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "key"

    .line 705
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 706
    invoke-virtual {v3, v4, v6}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-lez v4, :cond_4

    const-string v0, "favcontents"

    .line 714
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "favpoinum"

    .line 715
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 718
    :cond_4
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->i:Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;->c(Lcom/baidu/mapsdkplatform/comapi/favrite/a$b;)V

    .line 719
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->h:Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;->a(Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->h:Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;->c(Lcom/baidu/mapsdkplatform/comapi/favrite/a$c;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method
