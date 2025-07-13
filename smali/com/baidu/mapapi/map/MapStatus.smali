.class public final Lcom/baidu/mapapi/map/MapStatus;
.super Ljava/lang/Object;
.source "MapStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/MapStatus$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/map/MapStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/baidu/mapsdkplatform/comapi/map/x;

.field private b:D

.field public final bound:Lcom/baidu/mapapi/model/LatLngBounds;

.field private c:D

.field public final overlook:F

.field public final rotate:F

.field public final target:Lcom/baidu/mapapi/model/LatLng;

.field public final targetScreen:Landroid/graphics/Point;

.field public winRound:Lcom/baidu/mapapi/map/WinRound;

.field public final zoom:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 338
    new-instance v0, Lcom/baidu/mapapi/map/p;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/p;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/map/MapStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(FLcom/baidu/mapapi/model/LatLng;FFLandroid/graphics/Point;DDLcom/baidu/mapapi/model/LatLngBounds;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput p1, p0, Lcom/baidu/mapapi/map/MapStatus;->rotate:F

    .line 212
    iput-object p2, p0, Lcom/baidu/mapapi/map/MapStatus;->target:Lcom/baidu/mapapi/model/LatLng;

    .line 213
    iput p3, p0, Lcom/baidu/mapapi/map/MapStatus;->overlook:F

    .line 214
    iput p4, p0, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    .line 215
    iput-object p5, p0, Lcom/baidu/mapapi/map/MapStatus;->targetScreen:Landroid/graphics/Point;

    .line 216
    iput-wide p6, p0, Lcom/baidu/mapapi/map/MapStatus;->b:D

    .line 217
    iput-wide p8, p0, Lcom/baidu/mapapi/map/MapStatus;->c:D

    .line 218
    iput-object p10, p0, Lcom/baidu/mapapi/map/MapStatus;->bound:Lcom/baidu/mapapi/model/LatLngBounds;

    return-void
.end method

.method constructor <init>(FLcom/baidu/mapapi/model/LatLng;FFLandroid/graphics/Point;Lcom/baidu/mapapi/model/LatLngBounds;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput p1, p0, Lcom/baidu/mapapi/map/MapStatus;->rotate:F

    .line 181
    iput-object p2, p0, Lcom/baidu/mapapi/map/MapStatus;->target:Lcom/baidu/mapapi/model/LatLng;

    .line 182
    iput p3, p0, Lcom/baidu/mapapi/map/MapStatus;->overlook:F

    .line 183
    iput p4, p0, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    .line 184
    iput-object p5, p0, Lcom/baidu/mapapi/map/MapStatus;->targetScreen:Landroid/graphics/Point;

    if-eqz p2, :cond_0

    .line 187
    invoke-static {p2}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitudeE6()D

    move-result-wide p3

    iput-wide p3, p0, Lcom/baidu/mapapi/map/MapStatus;->b:D

    .line 188
    invoke-static {p2}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitudeE6()D

    move-result-wide p1

    iput-wide p1, p0, Lcom/baidu/mapapi/map/MapStatus;->c:D

    .line 191
    :cond_0
    iput-object p6, p0, Lcom/baidu/mapapi/map/MapStatus;->bound:Lcom/baidu/mapapi/model/LatLngBounds;

    return-void
.end method

.method constructor <init>(FLcom/baidu/mapapi/model/LatLng;FFLandroid/graphics/Point;Lcom/baidu/mapsdkplatform/comapi/map/x;DDLcom/baidu/mapapi/model/LatLngBounds;Lcom/baidu/mapapi/map/WinRound;)V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput p1, p0, Lcom/baidu/mapapi/map/MapStatus;->rotate:F

    .line 237
    iput-object p2, p0, Lcom/baidu/mapapi/map/MapStatus;->target:Lcom/baidu/mapapi/model/LatLng;

    .line 238
    iput p3, p0, Lcom/baidu/mapapi/map/MapStatus;->overlook:F

    .line 239
    iput p4, p0, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    .line 240
    iput-object p5, p0, Lcom/baidu/mapapi/map/MapStatus;->targetScreen:Landroid/graphics/Point;

    .line 241
    iput-object p6, p0, Lcom/baidu/mapapi/map/MapStatus;->a:Lcom/baidu/mapsdkplatform/comapi/map/x;

    .line 242
    iput-wide p7, p0, Lcom/baidu/mapapi/map/MapStatus;->b:D

    .line 243
    iput-wide p9, p0, Lcom/baidu/mapapi/map/MapStatus;->c:D

    .line 244
    iput-object p11, p0, Lcom/baidu/mapapi/map/MapStatus;->bound:Lcom/baidu/mapapi/model/LatLngBounds;

    .line 245
    iput-object p12, p0, Lcom/baidu/mapapi/map/MapStatus;->winRound:Lcom/baidu/mapapi/map/WinRound;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/map/MapStatus;->rotate:F

    .line 250
    const-class v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapStatus;->target:Lcom/baidu/mapapi/model/LatLng;

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/map/MapStatus;->overlook:F

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    .line 253
    const-class v0, Landroid/graphics/Point;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapStatus;->targetScreen:Landroid/graphics/Point;

    .line 254
    const-class v0, Lcom/baidu/mapapi/model/LatLngBounds;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLngBounds;

    iput-object v0, p0, Lcom/baidu/mapapi/map/MapStatus;->bound:Lcom/baidu/mapapi/model/LatLngBounds;

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/map/MapStatus;->b:D

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/map/MapStatus;->c:D

    return-void
.end method

.method static a(Lcom/baidu/mapsdkplatform/comapi/map/x;)Lcom/baidu/mapapi/map/MapStatus;
    .locals 18

    move-object/from16 v6, p0

    if-nez v6, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 271
    :cond_0
    iget v0, v6, Lcom/baidu/mapsdkplatform/comapi/map/x;->b:I

    int-to-float v1, v0

    .line 272
    iget-wide v9, v6, Lcom/baidu/mapsdkplatform/comapi/map/x;->e:D

    .line 273
    iget-wide v7, v6, Lcom/baidu/mapsdkplatform/comapi/map/x;->d:D

    .line 274
    new-instance v0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-direct {v0, v9, v10, v7, v8}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(DD)V

    .line 276
    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    .line 277
    iget v0, v6, Lcom/baidu/mapsdkplatform/comapi/map/x;->c:I

    int-to-float v3, v0

    .line 278
    iget v4, v6, Lcom/baidu/mapsdkplatform/comapi/map/x;->a:F

    .line 279
    new-instance v5, Landroid/graphics/Point;

    iget v0, v6, Lcom/baidu/mapsdkplatform/comapi/map/x;->f:I

    iget v11, v6, Lcom/baidu/mapsdkplatform/comapi/map/x;->g:I

    invoke-direct {v5, v0, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 281
    new-instance v0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    iget-object v11, v6, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-object v11, v11, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->e:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v11}, Lcom/baidu/platform/comapi/basestruct/Point;->getDoubleY()D

    move-result-wide v11

    iget-object v13, v6, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-object v13, v13, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->e:Lcom/baidu/platform/comapi/basestruct/Point;

    .line 282
    invoke-virtual {v13}, Lcom/baidu/platform/comapi/basestruct/Point;->getDoubleX()D

    move-result-wide v13

    invoke-direct {v0, v11, v12, v13, v14}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(DD)V

    .line 281
    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    .line 283
    new-instance v11, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    iget-object v12, v6, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-object v12, v12, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->f:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v12}, Lcom/baidu/platform/comapi/basestruct/Point;->getDoubleY()D

    move-result-wide v12

    iget-object v14, v6, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-object v14, v14, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->f:Lcom/baidu/platform/comapi/basestruct/Point;

    .line 284
    invoke-virtual {v14}, Lcom/baidu/platform/comapi/basestruct/Point;->getDoubleX()D

    move-result-wide v14

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(DD)V

    .line 283
    invoke-static {v11}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v11

    .line 285
    new-instance v12, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    iget-object v13, v6, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-object v13, v13, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->h:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v13}, Lcom/baidu/platform/comapi/basestruct/Point;->getDoubleY()D

    move-result-wide v13

    iget-object v15, v6, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-object v15, v15, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->h:Lcom/baidu/platform/comapi/basestruct/Point;

    move-wide/from16 v16, v9

    .line 286
    invoke-virtual {v15}, Lcom/baidu/platform/comapi/basestruct/Point;->getDoubleX()D

    move-result-wide v9

    invoke-direct {v12, v13, v14, v9, v10}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(DD)V

    .line 285
    invoke-static {v12}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v9

    .line 287
    new-instance v10, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    iget-object v12, v6, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-object v12, v12, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->g:Lcom/baidu/platform/comapi/basestruct/Point;

    invoke-virtual {v12}, Lcom/baidu/platform/comapi/basestruct/Point;->getDoubleY()D

    move-result-wide v12

    iget-object v14, v6, Lcom/baidu/mapsdkplatform/comapi/map/x;->k:Lcom/baidu/mapsdkplatform/comapi/map/x$a;

    iget-object v14, v14, Lcom/baidu/mapsdkplatform/comapi/map/x$a;->g:Lcom/baidu/platform/comapi/basestruct/Point;

    .line 288
    invoke-virtual {v14}, Lcom/baidu/platform/comapi/basestruct/Point;->getDoubleX()D

    move-result-wide v14

    invoke-direct {v10, v12, v13, v14, v15}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(DD)V

    .line 287
    invoke-static {v10}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/platform/comapi/basestruct/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v10

    .line 289
    new-instance v12, Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-direct {v12}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;-><init>()V

    .line 290
    invoke-virtual {v12, v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    .line 291
    invoke-virtual {v12, v11}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    .line 292
    invoke-virtual {v12, v9}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    .line 293
    invoke-virtual {v12, v10}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    .line 294
    iget-object v13, v6, Lcom/baidu/mapsdkplatform/comapi/map/x;->j:Lcom/baidu/mapapi/map/WinRound;

    .line 295
    new-instance v14, Lcom/baidu/mapapi/map/MapStatus;

    invoke-virtual {v12}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->build()Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v11

    move-object v0, v14

    move-object/from16 v6, p0

    move-wide/from16 v9, v16

    move-object v12, v13

    invoke-direct/range {v0 .. v12}, Lcom/baidu/mapapi/map/MapStatus;-><init>(FLcom/baidu/mapapi/model/LatLng;FFLandroid/graphics/Point;Lcom/baidu/mapsdkplatform/comapi/map/x;DDLcom/baidu/mapapi/model/LatLngBounds;Lcom/baidu/mapapi/map/WinRound;)V

    return-object v14
.end method


# virtual methods
.method a()D
    .locals 2

    .line 260
    iget-wide v0, p0, Lcom/baidu/mapapi/map/MapStatus;->b:D

    return-wide v0
.end method

.method b()D
    .locals 2

    .line 264
    iget-wide v0, p0, Lcom/baidu/mapapi/map/MapStatus;->c:D

    return-wide v0
.end method

.method b(Lcom/baidu/mapsdkplatform/comapi/map/x;)Lcom/baidu/mapsdkplatform/comapi/map/x;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 314
    :cond_0
    iget v0, p0, Lcom/baidu/mapapi/map/MapStatus;->rotate:F

    const/high16 v1, -0x31000000

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    float-to-int v0, v0

    .line 315
    iput v0, p1, Lcom/baidu/mapsdkplatform/comapi/map/x;->b:I

    .line 318
    :cond_1
    iget v0, p0, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_2

    .line 319
    iput v0, p1, Lcom/baidu/mapsdkplatform/comapi/map/x;->a:F

    .line 322
    :cond_2
    iget v0, p0, Lcom/baidu/mapapi/map/MapStatus;->overlook:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    float-to-int v0, v0

    .line 323
    iput v0, p1, Lcom/baidu/mapsdkplatform/comapi/map/x;->c:I

    .line 326
    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapStatus;->target:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v0, :cond_4

    .line 327
    iget-wide v0, p0, Lcom/baidu/mapapi/map/MapStatus;->b:D

    iput-wide v0, p1, Lcom/baidu/mapsdkplatform/comapi/map/x;->d:D

    .line 328
    iget-wide v0, p0, Lcom/baidu/mapapi/map/MapStatus;->c:D

    iput-wide v0, p1, Lcom/baidu/mapsdkplatform/comapi/map/x;->e:D

    .line 331
    :cond_4
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapStatus;->targetScreen:Landroid/graphics/Point;

    if-eqz v0, :cond_5

    .line 332
    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p1, Lcom/baidu/mapsdkplatform/comapi/map/x;->f:I

    .line 333
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapStatus;->targetScreen:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p1, Lcom/baidu/mapsdkplatform/comapi/map/x;->g:I

    :cond_5
    return-object p1
.end method

.method c()Lcom/baidu/mapsdkplatform/comapi/map/x;
    .locals 1

    .line 302
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/x;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/x;-><init>()V

    .line 303
    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/map/MapStatus;->b(Lcom/baidu/mapsdkplatform/comapi/map/x;)Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapStatus;->target:Lcom/baidu/mapapi/model/LatLng;

    const-string v2, "\n"

    if-eqz v1, :cond_0

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "target lat: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/baidu/mapapi/map/MapStatus;->target:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v3, v3, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "target lng: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/baidu/mapapi/map/MapStatus;->target:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v3, v3, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/MapStatus;->targetScreen:Landroid/graphics/Point;

    if-eqz v1, :cond_1

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "target screen x: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/baidu/mapapi/map/MapStatus;->targetScreen:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "target screen y: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/baidu/mapapi/map/MapStatus;->targetScreen:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "zoom: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rotate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/baidu/mapapi/map/MapStatus;->rotate:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "overlook: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/baidu/mapapi/map/MapStatus;->overlook:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 353
    iget v0, p0, Lcom/baidu/mapapi/map/MapStatus;->rotate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 354
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapStatus;->target:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 355
    iget v0, p0, Lcom/baidu/mapapi/map/MapStatus;->overlook:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 356
    iget v0, p0, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 357
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapStatus;->targetScreen:Landroid/graphics/Point;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 358
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapStatus;->bound:Lcom/baidu/mapapi/model/LatLngBounds;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 359
    iget-wide v0, p0, Lcom/baidu/mapapi/map/MapStatus;->b:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 360
    iget-wide v0, p0, Lcom/baidu/mapapi/map/MapStatus;->c:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
