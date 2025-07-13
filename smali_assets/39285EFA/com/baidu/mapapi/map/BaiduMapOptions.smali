.class public final Lcom/baidu/mapapi/map/BaiduMapOptions;
.super Ljava/lang/Object;
.source "BaiduMapOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/map/BaiduMapOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/baidu/mapapi/map/MapStatus;

.field b:Z

.field c:I

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Lcom/baidu/mapapi/map/LogoPosition;

.field k:Landroid/graphics/Point;

.field l:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 202
    new-instance v0, Lcom/baidu/mapapi/map/l;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/l;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/map/BaiduMapOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v7, Lcom/baidu/mapapi/map/MapStatus;

    new-instance v2, Lcom/baidu/mapapi/model/LatLng;

    const-wide v0, 0x4043f51c970f7b9eL    # 39.914935

    const-wide v3, 0x405d19ccb3a2595cL    # 116.403119

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41400000    # 12.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/baidu/mapapi/map/MapStatus;-><init>(FLcom/baidu/mapapi/model/LatLng;FFLandroid/graphics/Point;Lcom/baidu/mapapi/model/LatLngBounds;)V

    iput-object v7, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->a:Lcom/baidu/mapapi/map/MapStatus;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->b:Z

    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->c:I

    .line 20
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->d:Z

    .line 21
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->e:Z

    .line 22
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->f:Z

    .line 23
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->g:Z

    .line 24
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->h:Z

    .line 25
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->i:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v7, Lcom/baidu/mapapi/map/MapStatus;

    new-instance v2, Lcom/baidu/mapapi/model/LatLng;

    const-wide v0, 0x4043f51c970f7b9eL    # 39.914935

    const-wide v3, 0x405d19ccb3a2595cL    # 116.403119

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x41400000    # 12.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/baidu/mapapi/map/MapStatus;-><init>(FLcom/baidu/mapapi/model/LatLng;FFLandroid/graphics/Point;Lcom/baidu/mapapi/model/LatLngBounds;)V

    iput-object v7, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->a:Lcom/baidu/mapapi/map/MapStatus;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->b:Z

    const/4 v1, 0x1

    .line 19
    iput v1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->c:I

    .line 20
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->d:Z

    .line 21
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->e:Z

    .line 22
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->f:Z

    .line 23
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->g:Z

    .line 24
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->h:Z

    .line 25
    iput-boolean v1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->i:Z

    .line 35
    const-class v2, Lcom/baidu/mapapi/map/MapStatus;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/map/MapStatus;

    iput-object v2, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->a:Lcom/baidu/mapapi/map/MapStatus;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->b:Z

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->c:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->d:Z

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->e:Z

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->f:Z

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->g:Z

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    iput-boolean v2, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->h:Z

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_6

    const/4 v0, 0x1

    :cond_6
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->i:Z

    .line 44
    const-class v0, Landroid/graphics/Point;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->k:Landroid/graphics/Point;

    .line 45
    const-class v0, Landroid/graphics/Point;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Point;

    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->l:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method a()Lcom/baidu/mapsdkplatform/comapi/map/v;
    .locals 2

    .line 192
    new-instance v0, Lcom/baidu/mapsdkplatform/comapi/map/v;

    invoke-direct {v0}, Lcom/baidu/mapsdkplatform/comapi/map/v;-><init>()V

    iget-object v1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->a:Lcom/baidu/mapapi/map/MapStatus;

    .line 193
    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MapStatus;->c()Lcom/baidu/mapsdkplatform/comapi/map/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/v;->a(Lcom/baidu/mapsdkplatform/comapi/map/x;)Lcom/baidu/mapsdkplatform/comapi/map/v;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->b:Z

    .line 194
    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/v;->a(Z)Lcom/baidu/mapsdkplatform/comapi/map/v;

    move-result-object v0

    iget v1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->c:I

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/v;->a(I)Lcom/baidu/mapsdkplatform/comapi/map/v;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->d:Z

    .line 195
    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/v;->b(Z)Lcom/baidu/mapsdkplatform/comapi/map/v;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->e:Z

    .line 196
    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/v;->c(Z)Lcom/baidu/mapsdkplatform/comapi/map/v;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->f:Z

    .line 197
    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/v;->d(Z)Lcom/baidu/mapsdkplatform/comapi/map/v;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->g:Z

    .line 198
    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/v;->e(Z)Lcom/baidu/mapsdkplatform/comapi/map/v;

    move-result-object v0

    return-object v0
.end method

.method public compassEnabled(Z)Lcom/baidu/mapapi/map/BaiduMapOptions;
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->b:Z

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public logoPosition(Lcom/baidu/mapapi/map/LogoPosition;)Lcom/baidu/mapapi/map/BaiduMapOptions;
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->j:Lcom/baidu/mapapi/map/LogoPosition;

    return-object p0
.end method

.method public mapStatus(Lcom/baidu/mapapi/map/MapStatus;)Lcom/baidu/mapapi/map/BaiduMapOptions;
    .locals 0

    if-eqz p1, :cond_0

    .line 57
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->a:Lcom/baidu/mapapi/map/MapStatus;

    :cond_0
    return-object p0
.end method

.method public mapType(I)Lcom/baidu/mapapi/map/BaiduMapOptions;
    .locals 0

    .line 82
    iput p1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->c:I

    return-object p0
.end method

.method public overlookingGesturesEnabled(Z)Lcom/baidu/mapapi/map/BaiduMapOptions;
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->f:Z

    return-object p0
.end method

.method public rotateGesturesEnabled(Z)Lcom/baidu/mapapi/map/BaiduMapOptions;
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->d:Z

    return-object p0
.end method

.method public scaleControlEnabled(Z)Lcom/baidu/mapapi/map/BaiduMapOptions;
    .locals 0

    .line 154
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->i:Z

    return-object p0
.end method

.method public scaleControlPosition(Landroid/graphics/Point;)Lcom/baidu/mapapi/map/BaiduMapOptions;
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->k:Landroid/graphics/Point;

    return-object p0
.end method

.method public scrollGesturesEnabled(Z)Lcom/baidu/mapapi/map/BaiduMapOptions;
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->e:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->a:Lcom/baidu/mapapi/map/MapStatus;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 222
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->b:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 223
    iget v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->d:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 225
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->e:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 226
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->f:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 227
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->g:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 228
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->h:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 229
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->i:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 230
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->k:Landroid/graphics/Point;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 231
    iget-object v0, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->l:Landroid/graphics/Point;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

.method public zoomControlsEnabled(Z)Lcom/baidu/mapapi/map/BaiduMapOptions;
    .locals 0

    .line 130
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->h:Z

    return-object p0
.end method

.method public zoomControlsPosition(Landroid/graphics/Point;)Lcom/baidu/mapapi/map/BaiduMapOptions;
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->l:Landroid/graphics/Point;

    return-object p0
.end method

.method public zoomGesturesEnabled(Z)Lcom/baidu/mapapi/map/BaiduMapOptions;
    .locals 0

    .line 142
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/BaiduMapOptions;->g:Z

    return-object p0
.end method
