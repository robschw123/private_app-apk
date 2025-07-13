.class public Lcom/baidu/mapapi/search/poi/PoiDetailResult;
.super Lcom/baidu/mapapi/search/core/SearchResult;
.source "PoiDetailResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/poi/PoiDetailResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public address:Ljava/lang/String;

.field public checkinNum:I

.field public commentNum:I

.field public detailUrl:Ljava/lang/String;

.field public discountNum:I

.field public environmentRating:D

.field public facilityRating:D

.field public favoriteNum:I

.field public grouponNum:I

.field public hygieneRating:D

.field public imageNum:I

.field public location:Lcom/baidu/mapapi/model/LatLng;

.field public name:Ljava/lang/String;

.field public overallRating:D

.field public price:D

.field public serviceRating:D

.field public shopHours:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public tasteRating:D

.field public technologyRating:D

.field public telephone:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 621
    new-instance v0, Lcom/baidu/mapapi/search/poi/a;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/poi/a;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 562
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>(Landroid/os/Parcel;)V

    .line 563
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->name:Ljava/lang/String;

    .line 564
    const-class v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->location:Lcom/baidu/mapapi/model/LatLng;

    .line 565
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->address:Ljava/lang/String;

    .line 566
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->telephone:Ljava/lang/String;

    .line 567
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->uid:Ljava/lang/String;

    .line 568
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->tag:Ljava/lang/String;

    .line 569
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->detailUrl:Ljava/lang/String;

    .line 570
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->type:Ljava/lang/String;

    .line 571
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->price:D

    .line 572
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->overallRating:D

    .line 573
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->tasteRating:D

    .line 574
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->serviceRating:D

    .line 575
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->environmentRating:D

    .line 576
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->facilityRating:D

    .line 577
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->hygieneRating:D

    .line 578
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->technologyRating:D

    .line 579
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->imageNum:I

    .line 580
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->grouponNum:I

    .line 581
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->commentNum:I

    .line 582
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->discountNum:I

    .line 583
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->favoriteNum:I

    .line 584
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->checkinNum:I

    .line 585
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->shopHours:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>(Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckinNum()I
    .locals 1

    .line 440
    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->checkinNum:I

    return v0
.end method

.method public getCommentNum()I
    .locals 1

    .line 386
    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->commentNum:I

    return v0
.end method

.method public getDetailUrl()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->detailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscountNum()I
    .locals 1

    .line 404
    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->discountNum:I

    return v0
.end method

.method public getEnvironmentRating()D
    .locals 2

    .line 278
    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->environmentRating:D

    return-wide v0
.end method

.method public getFacilityRating()D
    .locals 2

    .line 296
    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->facilityRating:D

    return-wide v0
.end method

.method public getFavoriteNum()I
    .locals 1

    .line 422
    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->favoriteNum:I

    return v0
.end method

.method public getGrouponNum()I
    .locals 1

    .line 368
    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->grouponNum:I

    return v0
.end method

.method public getHygieneRating()D
    .locals 2

    .line 314
    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->hygieneRating:D

    return-wide v0
.end method

.method public getImageNum()I
    .locals 1

    .line 350
    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->imageNum:I

    return v0
.end method

.method public getLocation()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->location:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOverallRating()D
    .locals 2

    .line 224
    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->overallRating:D

    return-wide v0
.end method

.method public getPrice()D
    .locals 2

    .line 206
    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->price:D

    return-wide v0
.end method

.method public getServiceRating()D
    .locals 2

    .line 260
    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->serviceRating:D

    return-wide v0
.end method

.method public getShopHours()Ljava/lang/String;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->shopHours:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTasteRating()D
    .locals 2

    .line 242
    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->tasteRating:D

    return-wide v0
.end method

.method public getTechnologyRating()D
    .locals 2

    .line 332
    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->technologyRating:D

    return-wide v0
.end method

.method public getTelephone()Ljava/lang/String;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->telephone:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->address:Ljava/lang/String;

    return-void
.end method

.method public setCheckinNum(I)V
    .locals 0

    .line 449
    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->checkinNum:I

    return-void
.end method

.method public setCommentNum(I)V
    .locals 0

    .line 395
    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->commentNum:I

    return-void
.end method

.method public setDetailUrl(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->detailUrl:Ljava/lang/String;

    return-void
.end method

.method public setDiscountNum(I)V
    .locals 0

    .line 413
    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->discountNum:I

    return-void
.end method

.method public setEnvironmentRating(D)V
    .locals 0

    .line 287
    iput-wide p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->environmentRating:D

    return-void
.end method

.method public setFacilityRating(D)V
    .locals 0

    .line 305
    iput-wide p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->facilityRating:D

    return-void
.end method

.method public setFavoriteNum(I)V
    .locals 0

    .line 431
    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->favoriteNum:I

    return-void
.end method

.method public setGrouponNum(I)V
    .locals 0

    .line 377
    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->grouponNum:I

    return-void
.end method

.method public setHygieneRating(D)V
    .locals 0

    .line 323
    iput-wide p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->hygieneRating:D

    return-void
.end method

.method public setImageNum(I)V
    .locals 0

    .line 359
    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->imageNum:I

    return-void
.end method

.method public setLocation(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->location:Lcom/baidu/mapapi/model/LatLng;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->name:Ljava/lang/String;

    return-void
.end method

.method public setOverallRating(D)V
    .locals 0

    .line 233
    iput-wide p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->overallRating:D

    return-void
.end method

.method public setPrice(D)V
    .locals 0

    .line 215
    iput-wide p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->price:D

    return-void
.end method

.method public setServiceRating(D)V
    .locals 0

    .line 269
    iput-wide p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->serviceRating:D

    return-void
.end method

.method public setShopHours(Ljava/lang/String;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->shopHours:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->tag:Ljava/lang/String;

    return-void
.end method

.method public setTasteRating(D)V
    .locals 0

    .line 251
    iput-wide p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->tasteRating:D

    return-void
.end method

.method public setTechnologyRating(D)V
    .locals 0

    .line 341
    iput-wide p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->technologyRating:D

    return-void
.end method

.method public setTelephone(Ljava/lang/String;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->telephone:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->type:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->uid:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 590
    invoke-super {p0, p1, p2}, Lcom/baidu/mapapi/search/core/SearchResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 591
    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->location:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 593
    iget-object p2, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->address:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 594
    iget-object p2, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->telephone:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 595
    iget-object p2, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->uid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 596
    iget-object p2, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->tag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 597
    iget-object p2, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->detailUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 598
    iget-object p2, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 599
    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->price:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 600
    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->overallRating:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 601
    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->tasteRating:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 602
    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->serviceRating:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 603
    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->environmentRating:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 604
    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->facilityRating:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 605
    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->hygieneRating:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 606
    iget-wide v0, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->technologyRating:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 607
    iget p2, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->imageNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    iget p2, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->grouponNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 609
    iget p2, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->commentNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    iget p2, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->discountNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    iget p2, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->favoriteNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    iget p2, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->checkinNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    iget-object p2, p0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->shopHours:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
