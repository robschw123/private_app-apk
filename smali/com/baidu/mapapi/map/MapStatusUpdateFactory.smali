.class public final Lcom/baidu/mapapi/map/MapStatusUpdateFactory;
.super Ljava/lang/Object;
.source "MapStatusUpdateFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newLatLng(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MapStatusUpdate;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 43
    :cond_0
    new-instance v0, Lcom/baidu/mapapi/map/MapStatusUpdate;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/map/MapStatusUpdate;-><init>(I)V

    .line 44
    iput-object p0, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->b:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public static newLatLngBounds(Lcom/baidu/mapapi/model/LatLngBounds;)Lcom/baidu/mapapi/map/MapStatusUpdate;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_0
    new-instance v0, Lcom/baidu/mapapi/map/MapStatusUpdate;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/map/MapStatusUpdate;-><init>(I)V

    .line 60
    iput-object p0, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->c:Lcom/baidu/mapapi/model/LatLngBounds;

    return-object v0
.end method

.method public static newLatLngBounds(Lcom/baidu/mapapi/model/LatLngBounds;II)Lcom/baidu/mapapi/map/MapStatusUpdate;
    .locals 2

    if-eqz p0, :cond_1

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    new-instance v0, Lcom/baidu/mapapi/map/MapStatusUpdate;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/map/MapStatusUpdate;-><init>(I)V

    .line 78
    iput-object p0, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->c:Lcom/baidu/mapapi/model/LatLngBounds;

    .line 79
    iput p1, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->d:I

    .line 80
    iput p2, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->e:I

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static newLatLngBounds(Lcom/baidu/mapapi/model/LatLngBounds;IIII)Lcom/baidu/mapapi/map/MapStatusUpdate;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 201
    :cond_0
    new-instance v0, Lcom/baidu/mapapi/map/MapStatusUpdate;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/map/MapStatusUpdate;-><init>(I)V

    .line 202
    iput-object p0, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->c:Lcom/baidu/mapapi/model/LatLngBounds;

    .line 203
    iput p1, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->k:I

    .line 204
    iput p2, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->l:I

    .line 205
    iput p3, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->m:I

    .line 206
    iput p4, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->n:I

    return-object v0
.end method

.method public static newLatLngZoom(Lcom/baidu/mapapi/model/LatLng;F)Lcom/baidu/mapapi/map/MapStatusUpdate;
    .locals 2

    .line 93
    new-instance v0, Lcom/baidu/mapapi/map/MapStatusUpdate;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/map/MapStatusUpdate;-><init>(I)V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 97
    :cond_0
    iput-object p0, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->b:Lcom/baidu/mapapi/model/LatLng;

    .line 98
    iput p1, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->f:F

    return-object v0
.end method

.method public static newLatLngZoom(Lcom/baidu/mapapi/model/LatLngBounds;IIII)Lcom/baidu/mapapi/map/MapStatusUpdate;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 229
    :cond_0
    new-instance v0, Lcom/baidu/mapapi/map/MapStatusUpdate;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/map/MapStatusUpdate;-><init>(I)V

    .line 230
    iput-object p0, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->c:Lcom/baidu/mapapi/model/LatLngBounds;

    .line 231
    iput p1, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->k:I

    .line 232
    iput p2, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->l:I

    .line 233
    iput p3, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->m:I

    .line 234
    iput p4, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->n:I

    return-object v0
.end method

.method public static newMapStatus(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/MapStatusUpdate;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 27
    :cond_0
    new-instance v0, Lcom/baidu/mapapi/map/MapStatusUpdate;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/map/MapStatusUpdate;-><init>(I)V

    .line 28
    iput-object p0, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->a:Lcom/baidu/mapapi/map/MapStatus;

    return-object v0
.end method

.method public static scrollBy(II)Lcom/baidu/mapapi/map/MapStatusUpdate;
    .locals 2

    .line 111
    new-instance v0, Lcom/baidu/mapapi/map/MapStatusUpdate;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/map/MapStatusUpdate;-><init>(I)V

    .line 112
    iput p0, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->g:I

    .line 113
    iput p1, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->h:I

    return-object v0
.end method

.method public static zoomBy(F)Lcom/baidu/mapapi/map/MapStatusUpdate;
    .locals 2

    .line 125
    new-instance v0, Lcom/baidu/mapapi/map/MapStatusUpdate;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/map/MapStatusUpdate;-><init>(I)V

    .line 126
    iput p0, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->i:F

    return-object v0
.end method

.method public static zoomBy(FLandroid/graphics/Point;)Lcom/baidu/mapapi/map/MapStatusUpdate;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 142
    :cond_0
    new-instance v0, Lcom/baidu/mapapi/map/MapStatusUpdate;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/map/MapStatusUpdate;-><init>(I)V

    .line 143
    iput p0, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->i:F

    .line 144
    iput-object p1, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->j:Landroid/graphics/Point;

    return-object v0
.end method

.method public static zoomIn()Lcom/baidu/mapapi/map/MapStatusUpdate;
    .locals 2

    .line 154
    new-instance v0, Lcom/baidu/mapapi/map/MapStatusUpdate;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/map/MapStatusUpdate;-><init>(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 155
    iput v1, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->i:F

    return-object v0
.end method

.method public static zoomOut()Lcom/baidu/mapapi/map/MapStatusUpdate;
    .locals 2

    .line 165
    new-instance v0, Lcom/baidu/mapapi/map/MapStatusUpdate;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/map/MapStatusUpdate;-><init>(I)V

    const/high16 v1, -0x40800000    # -1.0f

    .line 166
    iput v1, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->i:F

    return-object v0
.end method

.method public static zoomTo(F)Lcom/baidu/mapapi/map/MapStatusUpdate;
    .locals 2

    .line 178
    new-instance v0, Lcom/baidu/mapapi/map/MapStatusUpdate;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/map/MapStatusUpdate;-><init>(I)V

    .line 179
    iput p0, v0, Lcom/baidu/mapapi/map/MapStatusUpdate;->f:F

    return-object v0
.end method
