.class public Lcom/baidu/mapapi/favorite/FavoriteManager;
.super Ljava/lang/Object;
.source "FavoriteManager.java"


# static fields
.field private static a:Lcom/baidu/mapapi/favorite/FavoriteManager;

.field private static b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/baidu/mapapi/favorite/FavoriteManager;
    .locals 1

    .line 28
    sget-object v0, Lcom/baidu/mapapi/favorite/FavoriteManager;->a:Lcom/baidu/mapapi/favorite/FavoriteManager;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/baidu/mapapi/favorite/FavoriteManager;

    invoke-direct {v0}, Lcom/baidu/mapapi/favorite/FavoriteManager;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/favorite/FavoriteManager;->a:Lcom/baidu/mapapi/favorite/FavoriteManager;

    .line 33
    :cond_0
    sget-object v0, Lcom/baidu/mapapi/favorite/FavoriteManager;->a:Lcom/baidu/mapapi/favorite/FavoriteManager;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/baidu/mapapi/favorite/FavoritePoiInfo;)I
    .locals 4

    .line 59
    sget-object v0, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    const/4 v1, 0x0

    const-string v2, "baidumapsdk"

    if-nez v0, :cond_0

    const-string/jumbo p1, "you may have not call init method!"

    .line 60
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-eqz p1, :cond_5

    .line 63
    iget-object v0, p1, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->c:Lcom/baidu/mapapi/model/LatLng;

    if-nez v0, :cond_1

    goto :goto_1

    .line 67
    :cond_1
    iget-object v0, p1, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 71
    :cond_2
    invoke-static {p1}, Lcom/baidu/mapapi/favorite/a;->a(Lcom/baidu/mapapi/favorite/FavoritePoiInfo;)Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;

    move-result-object v0

    .line 72
    sget-object v1, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    iget-object v2, v0, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a(Ljava/lang/String;Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 74
    iget-object v2, v0, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->a:Ljava/lang/String;

    iput-object v2, p1, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->a:Ljava/lang/String;

    .line 75
    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;->h:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->g:J

    :cond_3
    return v1

    :cond_4
    :goto_0
    const-string p1, "poiName can not be null or empty!"

    .line 68
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    :cond_5
    :goto_1
    const-string p1, "object or pt can not be null!"

    .line 64
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public clearAllFavPois()Z
    .locals 2

    .line 166
    sget-object v0, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    if-nez v0, :cond_0

    const-string v0, "baidumapsdk"

    const-string/jumbo v1, "you may have not call init method!"

    .line 167
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 170
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->c()Z

    move-result v0

    return v0
.end method

.method public deleteFavPoi(Ljava/lang/String;)Z
    .locals 2

    .line 150
    sget-object v0, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "baidumapsdk"

    const-string/jumbo v0, "you may have not call init method!"

    .line 151
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, ""

    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 157
    :cond_1
    sget-object v0, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public destroy()V
    .locals 1

    .line 205
    sget-object v0, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->b()V

    const/4 v0, 0x0

    .line 207
    sput-object v0, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    .line 208
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->destroy()V

    .line 209
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/map/j;->b()V

    :cond_0
    return-void
.end method

.method public getAllFavPois()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/favorite/FavoritePoiInfo;",
            ">;"
        }
    .end annotation

    .line 108
    sget-object v0, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "baidumapsdk"

    const-string/jumbo v2, "you may have not call init method!"

    .line 109
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 112
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v2, ""

    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 118
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "favpoinum"

    .line 119
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    const-string v0, "favcontents"

    .line 122
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 123
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 125
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 126
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 130
    :cond_3
    invoke-static {v4}, Lcom/baidu/mapapi/favorite/a;->a(Lorg/json/JSONObject;)Lcom/baidu/mapapi/favorite/FavoritePoiInfo;

    move-result-object v4

    .line 131
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v2

    :catch_0
    move-exception v0

    .line 137
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5
    :goto_2
    return-object v1
.end method

.method public getFavPoi(Ljava/lang/String;)Lcom/baidu/mapapi/favorite/FavoritePoiInfo;
    .locals 2

    .line 87
    sget-object v0, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "baidumapsdk"

    const-string/jumbo v0, "you may have not call init method!"

    .line 88
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, ""

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    sget-object v0, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->b(Ljava/lang/String;)Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 96
    invoke-static {p1}, Lcom/baidu/mapapi/favorite/a;->a(Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;)Lcom/baidu/mapapi/favorite/FavoritePoiInfo;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public init()V
    .locals 1

    .line 44
    sget-object v0, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/map/j;->a()V

    .line 46
    invoke-static {}, Lcom/baidu/mapapi/BMapManager;->init()V

    .line 47
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->a()Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    :cond_0
    return-void
.end method

.method public updateFavPoi(Ljava/lang/String;Lcom/baidu/mapapi/favorite/FavoritePoiInfo;)Z
    .locals 4

    .line 181
    sget-object v0, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    const-string v1, "baidumapsdk"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p1, "you may have not call init method!"

    .line 182
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-eqz p1, :cond_6

    const-string v0, ""

    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_5

    .line 188
    iget-object v3, p2, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->c:Lcom/baidu/mapapi/model/LatLng;

    if-nez v3, :cond_2

    goto :goto_1

    .line 192
    :cond_2
    iget-object v3, p2, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->b:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p2, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 196
    :cond_3
    iput-object p1, p2, Lcom/baidu/mapapi/favorite/FavoritePoiInfo;->a:Ljava/lang/String;

    .line 197
    invoke-static {p2}, Lcom/baidu/mapapi/favorite/a;->a(Lcom/baidu/mapapi/favorite/FavoritePoiInfo;)Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;

    move-result-object p2

    .line 198
    sget-object v0, Lcom/baidu/mapapi/favorite/FavoriteManager;->b:Lcom/baidu/mapsdkplatform/comapi/favrite/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapsdkplatform/comapi/favrite/a;->b(Ljava/lang/String;Lcom/baidu/mapsdkplatform/comapi/favrite/FavSyncPoi;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    const-string p1, "poiName can not be null or empty!"

    .line 193
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    :goto_1
    const-string p1, "object or pt can not be null!"

    .line 189
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return v2
.end method
