.class public Lcom/baidu/mapapi/search/core/PoiDetailInfo;
.super Ljava/lang/Object;
.source "PoiDetailInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/core/PoiDetailInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/baidu/mapapi/model/LatLng;

.field private c:Ljava/lang/String;

.field public checkinNum:I

.field public commentNum:I

.field private d:Ljava/lang/String;

.field public detailUrl:Ljava/lang/String;

.field public discountNum:I

.field public distance:I

.field private e:Ljava/lang/String;

.field public environmentRating:D

.field private f:Ljava/lang/String;

.field public facilityRating:D

.field public favoriteNum:I

.field private g:I

.field public grouponNum:I

.field private h:Ljava/lang/String;

.field public hygieneRating:D

.field private i:Ljava/lang/String;

.field public imageNum:I

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/PoiChildrenInfo;",
            ">;"
        }
    .end annotation
.end field

.field public naviLocation:Lcom/baidu/mapapi/model/LatLng;

.field public overallRating:D

.field public price:D

.field public serviceRating:D

.field public shopHours:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public tasteRating:D

.field public technologyRating:D

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 846
    new-instance v0, Lcom/baidu/mapapi/search/core/g;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/core/g;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 773
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->a:Ljava/lang/String;

    .line 774
    const-class v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->b:Lcom/baidu/mapapi/model/LatLng;

    .line 775
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->c:Ljava/lang/String;

    .line 776
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->d:Ljava/lang/String;

    .line 777
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->e:Ljava/lang/String;

    .line 778
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->f:Ljava/lang/String;

    .line 779
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->h:Ljava/lang/String;

    .line 780
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->i:Ljava/lang/String;

    .line 781
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->j:Ljava/lang/String;

    .line 782
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->k:I

    .line 783
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->distance:I

    .line 784
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->type:Ljava/lang/String;

    .line 785
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->tag:Ljava/lang/String;

    .line 786
    const-class v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->naviLocation:Lcom/baidu/mapapi/model/LatLng;

    .line 787
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->detailUrl:Ljava/lang/String;

    .line 788
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->price:D

    .line 789
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->shopHours:Ljava/lang/String;

    .line 790
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->overallRating:D

    .line 791
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->tasteRating:D

    .line 792
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->serviceRating:D

    .line 793
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->environmentRating:D

    .line 794
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->facilityRating:D

    .line 795
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->hygieneRating:D

    .line 796
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->technologyRating:D

    .line 797
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->imageNum:I

    .line 798
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->grouponNum:I

    .line 799
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->discountNum:I

    .line 800
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->commentNum:I

    .line 801
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->favoriteNum:I

    .line 802
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->checkinNum:I

    .line 803
    sget-object v0, Lcom/baidu/mapapi/search/core/PoiChildrenInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->l:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdCode()I
    .locals 1

    .line 307
    iget v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->g:I

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getArea()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckinNum()I
    .locals 1

    .line 742
    iget v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->checkinNum:I

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentNum()I
    .locals 1

    .line 688
    iget v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->commentNum:I

    return v0
.end method

.method public getDetail()I
    .locals 1

    .line 378
    iget v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->k:I

    return v0
.end method

.method public getDetailUrl()Ljava/lang/String;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->detailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscountNum()I
    .locals 1

    .line 706
    iget v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->discountNum:I

    return v0
.end method

.method public getDistance()I
    .locals 1

    .line 400
    iget v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->distance:I

    return v0
.end method

.method public getEnvironmentRating()D
    .locals 2

    .line 580
    iget-wide v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->environmentRating:D

    return-wide v0
.end method

.method public getFacilityRating()D
    .locals 2

    .line 598
    iget-wide v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->facilityRating:D

    return-wide v0
.end method

.method public getFavoriteNum()I
    .locals 1

    .line 724
    iget v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->favoriteNum:I

    return v0
.end method

.method public getGrouponNum()I
    .locals 1

    .line 670
    iget v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->grouponNum:I

    return v0
.end method

.method public getHygieneRating()D
    .locals 2

    .line 616
    iget-wide v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->hygieneRating:D

    return-wide v0
.end method

.method public getImageNum()I
    .locals 1

    .line 652
    iget v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->imageNum:I

    return v0
.end method

.method public getLocation()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->b:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getNaviLocation()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->naviLocation:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getOverallRating()D
    .locals 2

    .line 526
    iget-wide v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->overallRating:D

    return-wide v0
.end method

.method public getPoiChildrenInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/PoiChildrenInfo;",
            ">;"
        }
    .end annotation

    .line 760
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->l:Ljava/util/List;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .line 490
    iget-wide v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->price:D

    return-wide v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceRating()D
    .locals 2

    .line 562
    iget-wide v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->serviceRating:D

    return-wide v0
.end method

.method public getShopHours()Ljava/lang/String;
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->shopHours:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetId()Ljava/lang/String;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTasteRating()D
    .locals 2

    .line 544
    iget-wide v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->tasteRating:D

    return-wide v0
.end method

.method public getTechnologyRating()D
    .locals 2

    .line 634
    iget-wide v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->technologyRating:D

    return-wide v0
.end method

.method public getTelephone()Ljava/lang/String;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public setAdCode(I)V
    .locals 0

    .line 315
    iput p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->g:I

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setArea(Ljava/lang/String;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public setCheckinNum(I)V
    .locals 0

    .line 751
    iput p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->checkinNum:I

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public setCommentNum(I)V
    .locals 0

    .line 697
    iput p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->commentNum:I

    return-void
.end method

.method public setDetail(Ljava/lang/String;)V
    .locals 0

    .line 388
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->k:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 390
    iput p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->k:I

    :goto_0
    return-void
.end method

.method public setDetailUrl(Ljava/lang/String;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->detailUrl:Ljava/lang/String;

    return-void
.end method

.method public setDiscountNum(I)V
    .locals 0

    .line 715
    iput p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->discountNum:I

    return-void
.end method

.method public setDistance(I)V
    .locals 0

    .line 409
    iput p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->distance:I

    return-void
.end method

.method public setEnvironmentRating(D)V
    .locals 0

    .line 589
    iput-wide p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->environmentRating:D

    return-void
.end method

.method public setFacilityRating(D)V
    .locals 0

    .line 607
    iput-wide p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->facilityRating:D

    return-void
.end method

.method public setFavoriteNum(I)V
    .locals 0

    .line 733
    iput p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->favoriteNum:I

    return-void
.end method

.method public setGrouponNum(I)V
    .locals 0

    .line 679
    iput p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->grouponNum:I

    return-void
.end method

.method public setHygieneRating(D)V
    .locals 0

    .line 625
    iput-wide p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->hygieneRating:D

    return-void
.end method

.method public setImageNum(I)V
    .locals 0

    .line 661
    iput p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->imageNum:I

    return-void
.end method

.method public setLocation(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->b:Lcom/baidu/mapapi/model/LatLng;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public setNaviLocation(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->naviLocation:Lcom/baidu/mapapi/model/LatLng;

    return-void
.end method

.method public setOverallRating(D)V
    .locals 0

    .line 535
    iput-wide p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->overallRating:D

    return-void
.end method

.method public setPoiChildrenInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/PoiChildrenInfo;",
            ">;)V"
        }
    .end annotation

    .line 769
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->l:Ljava/util/List;

    return-void
.end method

.method public setPrice(D)V
    .locals 0

    .line 499
    iput-wide p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->price:D

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public setServiceRating(D)V
    .locals 0

    .line 571
    iput-wide p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->serviceRating:D

    return-void
.end method

.method public setShopHours(Ljava/lang/String;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->shopHours:Ljava/lang/String;

    return-void
.end method

.method public setStreetId(Ljava/lang/String;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->j:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->tag:Ljava/lang/String;

    return-void
.end method

.method public setTasteRating(D)V
    .locals 0

    .line 553
    iput-wide p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->tasteRating:D

    return-void
.end method

.method public setTechnologyRating(D)V
    .locals 0

    .line 643
    iput-wide p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->technologyRating:D

    return-void
.end method

.method public setTelephone(Ljava/lang/String;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->h:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->type:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->i:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 863
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "PoiDetailInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "name = "

    .line 864
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; location = "

    .line 866
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 867
    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->b:Lcom/baidu/mapapi/model/LatLng;

    const-string v2, "null"

    if-eqz v1, :cond_0

    .line 868
    invoke-virtual {v1}, Lcom/baidu/mapapi/model/LatLng;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 870
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, "; address = "

    .line 873
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; province = "

    .line 874
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; city = "

    .line 875
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; area = "

    .line 876
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; telephone = "

    .line 877
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; uid = "

    .line 878
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; detail = "

    .line 879
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "; distance = "

    .line 880
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->distance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "; type = "

    .line 881
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; tag = "

    .line 882
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; naviLocation = "

    .line 884
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 885
    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->naviLocation:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v1, :cond_1

    .line 886
    invoke-virtual {v1}, Lcom/baidu/mapapi/model/LatLng;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 888
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const-string v1, "; detailUrl = "

    .line 891
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->detailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; price = "

    .line 892
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v3, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->price:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, "; shopHours = "

    .line 893
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->shopHours:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; overallRating = "

    .line 894
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v3, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->overallRating:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, "; tasteRating = "

    .line 895
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v3, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->tasteRating:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, "; serviceRating = "

    .line 896
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v3, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->serviceRating:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, "; environmentRating = "

    .line 897
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v3, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->environmentRating:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, "; facilityRating = "

    .line 898
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v3, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->facilityRating:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, "; hygieneRating = "

    .line 899
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v3, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->hygieneRating:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, "; technologyRating = "

    .line 900
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v3, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->technologyRating:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v1, "; imageNum = "

    .line 901
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->imageNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "; grouponNum = "

    .line 902
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->grouponNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "; discountNum = "

    .line 903
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->discountNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "; commentNum = "

    .line 904
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->commentNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "; favoriteNum = "

    .line 905
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->favoriteNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "; checkinNum = "

    .line 906
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->checkinNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 908
    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->l:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 909
    :goto_2
    iget-object v3, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    const-string v3, "; The "

    .line 910
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " poiChildrenInfo is: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 912
    iget-object v3, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->l:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/search/core/PoiChildrenInfo;

    if-eqz v3, :cond_2

    .line 914
    invoke-virtual {v3}, Lcom/baidu/mapapi/search/core/PoiChildrenInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 916
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 921
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 808
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->b:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 810
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 811
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 812
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 814
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 815
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 817
    iget v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 818
    iget v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->distance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 819
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 820
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 821
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->naviLocation:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 822
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->detailUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 823
    iget-wide v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->price:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 824
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->shopHours:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 825
    iget-wide v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->overallRating:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 826
    iget-wide v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->tasteRating:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 827
    iget-wide v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->serviceRating:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 828
    iget-wide v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->environmentRating:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 829
    iget-wide v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->facilityRating:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 830
    iget-wide v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->hygieneRating:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 831
    iget-wide v0, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->technologyRating:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 832
    iget p2, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->imageNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 833
    iget p2, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->grouponNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 834
    iget p2, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->discountNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    iget p2, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->commentNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    iget p2, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->favoriteNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 837
    iget p2, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->checkinNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 838
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->l:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
