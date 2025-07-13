.class public Lcom/baidu/mapapi/search/district/DistrictResult;
.super Lcom/baidu/mapapi/search/core/SearchResult;
.source "DistrictResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/district/DistrictResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public centerPt:Lcom/baidu/mapapi/model/LatLng;

.field public cityCode:I

.field public cityName:Ljava/lang/String;

.field public polylines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    new-instance v0, Lcom/baidu/mapapi/search/district/a;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/district/a;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/district/DistrictResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/baidu/mapapi/search/district/DistrictResult;->centerPt:Lcom/baidu/mapapi/model/LatLng;

    .line 21
    iput-object v0, p0, Lcom/baidu/mapapi/search/district/DistrictResult;->polylines:Ljava/util/List;

    .line 23
    iput-object v0, p0, Lcom/baidu/mapapi/search/district/DistrictResult;->cityName:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 82
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/baidu/mapapi/search/district/DistrictResult;->centerPt:Lcom/baidu/mapapi/model/LatLng;

    .line 21
    iput-object v0, p0, Lcom/baidu/mapapi/search/district/DistrictResult;->polylines:Ljava/util/List;

    .line 23
    iput-object v0, p0, Lcom/baidu/mapapi/search/district/DistrictResult;->cityName:Ljava/lang/String;

    .line 83
    const-class v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iput-object v0, p0, Lcom/baidu/mapapi/search/district/DistrictResult;->centerPt:Lcom/baidu/mapapi/model/LatLng;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/search/district/DistrictResult;->polylines:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 88
    iget-object v2, p0, Lcom/baidu/mapapi/search/district/DistrictResult;->polylines:Ljava/util/List;

    sget-object v3, Lcom/baidu/mapapi/model/LatLng;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/district/DistrictResult;->cityCode:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/search/district/DistrictResult;->cityName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCenterPt()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/baidu/mapapi/search/district/DistrictResult;->centerPt:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getCityCode()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/baidu/mapapi/search/district/DistrictResult;->cityCode:I

    return v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/baidu/mapapi/search/district/DistrictResult;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public getPolylines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;>;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/baidu/mapapi/search/district/DistrictResult;->polylines:Ljava/util/List;

    return-object v0
.end method

.method public setCenterPt(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/baidu/mapapi/search/district/DistrictResult;->centerPt:Lcom/baidu/mapapi/model/LatLng;

    return-void
.end method

.method public setCityCode(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/baidu/mapapi/search/district/DistrictResult;->cityCode:I

    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/baidu/mapapi/search/district/DistrictResult;->cityName:Ljava/lang/String;

    return-void
.end method

.method public setPolylines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;>;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/baidu/mapapi/search/district/DistrictResult;->polylines:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 97
    invoke-super {p0, p1, p2}, Lcom/baidu/mapapi/search/core/SearchResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 98
    iget-object v0, p0, Lcom/baidu/mapapi/search/district/DistrictResult;->centerPt:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 99
    iget-object p2, p0, Lcom/baidu/mapapi/search/district/DistrictResult;->polylines:Ljava/util/List;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object p2, p0, Lcom/baidu/mapapi/search/district/DistrictResult;->polylines:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 101
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_1

    .line 103
    :cond_1
    iget p2, p0, Lcom/baidu/mapapi/search/district/DistrictResult;->cityCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object p2, p0, Lcom/baidu/mapapi/search/district/DistrictResult;->cityName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
