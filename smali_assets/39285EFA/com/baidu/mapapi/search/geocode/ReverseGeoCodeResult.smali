.class public Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;
.super Lcom/baidu/mapapi/search/core/SearchResult;
.source "ReverseGeoCodeResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$RoadInfo;,
        Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$PoiRegionsInfo;,
        Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

.field private d:Lcom/baidu/mapapi/model/LatLng;

.field private e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/PoiInfo;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$PoiRegionsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$RoadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 661
    new-instance v0, Lcom/baidu/mapapi/search/geocode/b;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/geocode/b;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 83
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>(Landroid/os/Parcel;)V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->a:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->b:Ljava/lang/String;

    .line 86
    const-class v0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    iput-object v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->c:Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    .line 87
    const-class v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iput-object v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->d:Lcom/baidu/mapapi/model/LatLng;

    .line 88
    sget-object v0, Lcom/baidu/mapapi/search/core/PoiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->f:Ljava/util/List;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->g:Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$PoiRegionsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->h:Ljava/util/List;

    .line 91
    sget-object v0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$RoadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdcode()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->j:I

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressDetail()Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->c:Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    return-object v0
.end method

.method public getBusinessCircle()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->e:I

    return v0
.end method

.method public getLocation()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->d:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getPoiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/PoiInfo;",
            ">;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->f:Ljava/util/List;

    return-object v0
.end method

.method public getPoiRegionsInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$PoiRegionsInfo;",
            ">;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->h:Ljava/util/List;

    return-object v0
.end method

.method public getRoadInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$RoadInfo;",
            ">;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->i:Ljava/util/List;

    return-object v0
.end method

.method public getSematicDescription()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->g:Ljava/lang/String;

    return-object v0
.end method

.method public setAdcode(I)V
    .locals 0

    .line 183
    iput p1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->j:I

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->b:Ljava/lang/String;

    return-void
.end method

.method public setAddressDetail(Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->c:Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    return-void
.end method

.method public setBusinessCircle(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->a:Ljava/lang/String;

    return-void
.end method

.method public setCityCode(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->e:I

    return-void
.end method

.method public setLocation(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->d:Lcom/baidu/mapapi/model/LatLng;

    return-void
.end method

.method public setPoiList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/PoiInfo;",
            ">;)V"
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->f:Ljava/util/List;

    return-void
.end method

.method public setPoiRegionsInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$PoiRegionsInfo;",
            ">;)V"
        }
    .end annotation

    .line 257
    iput-object p1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->h:Ljava/util/List;

    return-void
.end method

.method public setRoadInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$RoadInfo;",
            ">;)V"
        }
    .end annotation

    .line 277
    iput-object p1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->i:Ljava/util/List;

    return-void
.end method

.method public setSematicDescription(Ljava/lang/String;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->g:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 672
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ReverseGeoCodeResult: \n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "businessCircle = "

    .line 673
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; address = "

    .line 674
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; location = "

    .line 675
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->d:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, "; sematicDescription = "

    .line 676
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 678
    iget-object v2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->c:Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    const-string v3, "; direction = "

    const-string v4, "; city = "

    const-string v5, "; distance = "

    if-eqz v2, :cond_0

    const-string v2, "\n#AddressComponent Info BEGIN# \n"

    .line 679
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "streetNumber = "

    .line 680
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->c:Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    iget-object v2, v2, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;->streetNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "; street = "

    .line 681
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->c:Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    iget-object v2, v2, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;->street:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "; town = "

    .line 682
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->c:Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    iget-object v2, v2, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;->town:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "; district = "

    .line 683
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->c:Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    iget-object v2, v2, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;->district:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 684
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->c:Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    iget-object v2, v2, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;->city:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "; province = "

    .line 685
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->c:Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    iget-object v2, v2, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;->province:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "; countryName = "

    .line 686
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->c:Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    iget-object v2, v2, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;->countryName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "; countryCode = "

    .line 687
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->c:Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    iget v2, v2, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;->countryCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "; adcode = "

    .line 688
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->c:Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    iget v2, v2, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;->adcode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 689
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->c:Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    iget-object v2, v2, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;->direction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 690
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->c:Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    iget-object v2, v2, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;->distance:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "; countryCodeIso = "

    .line 691
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->c:Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    iget-object v2, v2, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;->countryCodeIso:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "; countryCodeIso2 = "

    .line 692
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->c:Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    iget-object v2, v2, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;->countryCodeIso2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "; townCode = "

    .line 693
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->c:Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    iget-object v2, v2, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;->townCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "; cityLevel = "

    .line 694
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->c:Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    iget v2, v2, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;->cityLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "\n#AddressComponent Info END# \n"

    .line 695
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 698
    :cond_0
    iget-object v2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->h:Ljava/util/List;

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "\n#PoiRegions Info  BEGIN#"

    .line 699
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    .line 701
    :goto_0
    iget-object v7, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->h:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 702
    iget-object v7, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->h:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$PoiRegionsInfo;

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    const-string v8, "\ndirectionDesc = "

    .line 707
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$PoiRegionsInfo;->getDirectionDesc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "; regionName = "

    .line 708
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$PoiRegionsInfo;->getRegionName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v8, "; regionTag = "

    .line 709
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$PoiRegionsInfo;->getRegionTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "\n#PoiRegions Info  END# \n"

    .line 712
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 715
    :cond_3
    iget-object v2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->f:Ljava/util/List;

    const-string v7, "; name = "

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "\n #PoiList Info  BEGIN#"

    .line 716
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    .line 718
    :goto_2
    iget-object v8, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->f:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_6

    .line 719
    iget-object v8, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->f:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/mapapi/search/core/PoiInfo;

    if-nez v8, :cond_4

    goto/16 :goto_3

    :cond_4
    const-string v9, "\n address = "

    .line 724
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Lcom/baidu/mapapi/search/core/PoiInfo;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "; phoneNumber = "

    .line 725
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Lcom/baidu/mapapi/search/core/PoiInfo;->getPhoneNum()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "; uid = "

    .line 726
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Lcom/baidu/mapapi/search/core/PoiInfo;->getUid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "; postCode = "

    .line 727
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Lcom/baidu/mapapi/search/core/PoiInfo;->getPostCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 728
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Lcom/baidu/mapapi/search/core/PoiInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 729
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Lcom/baidu/mapapi/search/core/PoiInfo;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 730
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Lcom/baidu/mapapi/search/core/PoiInfo;->getCity()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 731
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Lcom/baidu/mapapi/search/core/PoiInfo;->getDirection()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 732
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Lcom/baidu/mapapi/search/core/PoiInfo;->getDistance()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 734
    invoke-virtual {v8}, Lcom/baidu/mapapi/search/core/PoiInfo;->getParentPoi()Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;

    move-result-object v9

    if-eqz v9, :cond_5

    const-string v9, "\n parentPoiAddress = "

    .line 735
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Lcom/baidu/mapapi/search/core/PoiInfo;->getParentPoi()Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;->getParentPoiAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "; parentPoiDirection = "

    .line 736
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Lcom/baidu/mapapi/search/core/PoiInfo;->getParentPoi()Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;->getParentPoiDirection()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "; parentPoiDistance = "

    .line 737
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Lcom/baidu/mapapi/search/core/PoiInfo;->getParentPoi()Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;->getParentPoiDistance()I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v9, "; parentPoiName = "

    .line 738
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Lcom/baidu/mapapi/search/core/PoiInfo;->getParentPoi()Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;->getParentPoiName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "; parentPoiTag = "

    .line 739
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Lcom/baidu/mapapi/search/core/PoiInfo;->getParentPoi()Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;->getParentPoiTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "; parentPoiUid = "

    .line 740
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Lcom/baidu/mapapi/search/core/PoiInfo;->getParentPoi()Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;->getParentPoiUid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, "; parentPoiLocation = "

    .line 741
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Lcom/baidu/mapapi/search/core/PoiInfo;->getParentPoi()Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;->getParentPoiLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_6
    const-string v1, "\n #PoiList Info  END# \n"

    .line 744
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 747
    :cond_7
    iget-object v1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->i:Ljava/util/List;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "\n #RoadInfoList Info  BEGIN#"

    .line 748
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 749
    :goto_4
    iget-object v1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_9

    .line 750
    iget-object v1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->i:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$RoadInfo;

    if-nez v1, :cond_8

    goto :goto_5

    .line 754
    :cond_8
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v1, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$RoadInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 755
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v1, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$RoadInfo;->distance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    const-string v1, "\n #RoadInfoList Info  END# \n"

    .line 757
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 760
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 650
    invoke-super {p0, p1, p2}, Lcom/baidu/mapapi/search/core/SearchResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 651
    iget-object p2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 652
    iget-object p2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 653
    iget-object p2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->c:Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$AddressComponent;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 654
    iget-object p2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->d:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 655
    iget-object p2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->f:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 656
    iget-object p2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 657
    iget-object p2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->h:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 658
    iget-object p2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->i:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
