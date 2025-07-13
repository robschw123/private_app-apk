.class public Lcom/baidu/mapapi/map/offline/MKOfflineMap;
.super Ljava/lang/Object;
.source "MKOfflineMap.java"


# static fields
.field public static final TYPE_DOWNLOAD_UPDATE:I = 0x0

.field public static final TYPE_NETWORK_ERROR:I = 0x2

.field public static final TYPE_NEW_OFFLINE:I = 0x6

.field public static final TYPE_VER_UPDATE:I = 0x4

.field private static final a:Ljava/lang/String; = "MKOfflineMap"


# instance fields
.field private b:Lcom/baidu/mapsdkplatform/comapi/map/o;

.field private c:Lcom/baidu/mapapi/map/offline/MKOfflineMapListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/map/offline/MKOfflineMap;)Lcom/baidu/mapsdkplatform/comapi/map/o;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/mapsdkplatform/comapi/map/o;

    return-object p0
.end method

.method static synthetic b(Lcom/baidu/mapapi/map/offline/MKOfflineMap;)Lcom/baidu/mapapi/map/offline/MKOfflineMapListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->c:Lcom/baidu/mapapi/map/offline/MKOfflineMapListener;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/mapsdkplatform/comapi/map/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/o;->d(I)Z

    .line 168
    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/mapsdkplatform/comapi/map/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/o;->b(Lcom/baidu/mapsdkplatform/comapi/map/s;)V

    .line 169
    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/mapsdkplatform/comapi/map/o;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/o;->b()V

    .line 171
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/map/j;->b()V

    return-void
.end method

.method public getAllUpdateInfo()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;",
            ">;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/mapsdkplatform/comapi/map/o;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/o;->e()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 252
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 253
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapsdkplatform/comapi/map/r;

    .line 255
    invoke-virtual {v2}, Lcom/baidu/mapsdkplatform/comapi/map/r;->a()Lcom/baidu/mapsdkplatform/comapi/map/q;

    move-result-object v2

    .line 254
    invoke-static {v2}, Lcom/baidu/mapapi/map/offline/OfflineMapUtil;->getUpdatElementFromLocalMapElement(Lcom/baidu/mapsdkplatform/comapi/map/q;)Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getHotCityList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/mapsdkplatform/comapi/map/o;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/o;->c()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 195
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 196
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapsdkplatform/comapi/map/n;

    .line 197
    invoke-static {v2}, Lcom/baidu/mapapi/map/offline/OfflineMapUtil;->getSearchRecordFromLocalCityInfo(Lcom/baidu/mapsdkplatform/comapi/map/n;)Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;

    move-result-object v2

    .line 200
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getOfflineCityList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/mapsdkplatform/comapi/map/o;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/o;->d()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 215
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 216
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapsdkplatform/comapi/map/n;

    .line 217
    invoke-static {v2}, Lcom/baidu/mapapi/map/offline/OfflineMapUtil;->getSearchRecordFromLocalCityInfo(Lcom/baidu/mapsdkplatform/comapi/map/n;)Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getUpdateInfo(I)Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/mapsdkplatform/comapi/map/o;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/o;->g(I)Lcom/baidu/mapsdkplatform/comapi/map/r;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 272
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/mapsdkplatform/comapi/map/r;->a()Lcom/baidu/mapsdkplatform/comapi/map/q;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/mapapi/map/offline/OfflineMapUtil;->getUpdatElementFromLocalMapElement(Lcom/baidu/mapsdkplatform/comapi/map/q;)Lcom/baidu/mapapi/map/offline/MKOLUpdateElement;

    move-result-object p1

    return-object p1
.end method

.method public importOfflineData()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 282
    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->importOfflineData(Z)I

    move-result v0

    return v0
.end method

.method public importOfflineData(Z)I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/mapsdkplatform/comapi/map/o;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/o;->e()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 302
    :goto_0
    iget-object v2, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/mapsdkplatform/comapi/map/o;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/baidu/mapsdkplatform/comapi/map/o;->a(ZZ)Z

    .line 303
    iget-object p1, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/mapsdkplatform/comapi/map/o;

    invoke-virtual {p1}, Lcom/baidu/mapsdkplatform/comapi/map/o;->e()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 305
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_1
    sub-int/2addr v0, v1

    return v0
.end method

.method public init(Lcom/baidu/mapapi/map/offline/MKOfflineMapListener;)Z
    .locals 2

    .line 50
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/map/j;->a()V

    .line 53
    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/map/o;->a()Lcom/baidu/mapsdkplatform/comapi/map/o;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/mapsdkplatform/comapi/map/o;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 58
    :cond_0
    new-instance v1, Lcom/baidu/mapapi/map/offline/a;

    invoke-direct {v1, p0}, Lcom/baidu/mapapi/map/offline/a;-><init>(Lcom/baidu/mapapi/map/offline/MKOfflineMap;)V

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/o;->a(Lcom/baidu/mapsdkplatform/comapi/map/s;)V

    .line 94
    iput-object p1, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->c:Lcom/baidu/mapapi/map/offline/MKOfflineMapListener;

    const/4 p1, 0x1

    return p1
.end method

.method public pause(I)Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/mapsdkplatform/comapi/map/o;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/o;->c(I)Z

    move-result p1

    return p1
.end method

.method public remove(I)Z
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/mapsdkplatform/comapi/map/o;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/o;->e(I)Z

    move-result p1

    return p1
.end method

.method public searchCity(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;",
            ">;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/mapsdkplatform/comapi/map/o;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/o;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 234
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapsdkplatform/comapi/map/n;

    .line 236
    invoke-static {v1}, Lcom/baidu/mapapi/map/offline/OfflineMapUtil;->getSearchRecordFromLocalCityInfo(Lcom/baidu/mapsdkplatform/comapi/map/n;)Lcom/baidu/mapapi/map/offline/MKOLSearchRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public start(I)Z
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/mapsdkplatform/comapi/map/o;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 110
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/o;->e()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 111
    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/mapsdkplatform/comapi/map/o;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/o;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapsdkplatform/comapi/map/r;

    .line 112
    iget-object v3, v2, Lcom/baidu/mapsdkplatform/comapi/map/r;->a:Lcom/baidu/mapsdkplatform/comapi/map/q;

    iget v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/q;->a:I

    if-ne v3, p1, :cond_1

    .line 113
    iget-object v0, v2, Lcom/baidu/mapsdkplatform/comapi/map/r;->a:Lcom/baidu/mapsdkplatform/comapi/map/q;

    iget-boolean v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/q;->j:Z

    if-nez v0, :cond_3

    iget-object v0, v2, Lcom/baidu/mapsdkplatform/comapi/map/r;->a:Lcom/baidu/mapsdkplatform/comapi/map/q;

    iget v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/q;->l:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    iget-object v0, v2, Lcom/baidu/mapsdkplatform/comapi/map/r;->a:Lcom/baidu/mapsdkplatform/comapi/map/q;

    iget v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/q;->l:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    iget-object v0, v2, Lcom/baidu/mapsdkplatform/comapi/map/r;->a:Lcom/baidu/mapsdkplatform/comapi/map/q;

    iget v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/q;->l:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    return v1

    .line 117
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/mapsdkplatform/comapi/map/o;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/o;->b(I)Z

    move-result p1

    return p1

    .line 125
    :cond_4
    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/mapsdkplatform/comapi/map/o;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/o;->a(I)Z

    move-result p1

    return p1
.end method

.method public update(I)Z
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/mapsdkplatform/comapi/map/o;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 139
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/o;->e()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/mapsdkplatform/comapi/map/o;

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/o;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapsdkplatform/comapi/map/r;

    .line 141
    iget-object v3, v2, Lcom/baidu/mapsdkplatform/comapi/map/r;->a:Lcom/baidu/mapsdkplatform/comapi/map/q;

    iget v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/q;->a:I

    if-ne v3, p1, :cond_1

    .line 142
    iget-object v0, v2, Lcom/baidu/mapsdkplatform/comapi/map/r;->a:Lcom/baidu/mapsdkplatform/comapi/map/q;

    iget-boolean v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/q;->j:Z

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/baidu/mapapi/map/offline/MKOfflineMap;->b:Lcom/baidu/mapsdkplatform/comapi/map/o;

    invoke-virtual {v0, p1}, Lcom/baidu/mapsdkplatform/comapi/map/o;->f(I)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method
