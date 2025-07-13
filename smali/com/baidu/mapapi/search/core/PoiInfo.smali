.class public Lcom/baidu/mapapi/search/core/PoiInfo;
.super Ljava/lang/Object;
.source "PoiInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;,
        Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/core/PoiInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field public address:Ljava/lang/String;

.field public area:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public detail:I

.field public direction:Ljava/lang/String;

.field public distance:I

.field public hasCaterDetails:Z

.field public isPano:Z

.field public location:Lcom/baidu/mapapi/model/LatLng;

.field public name:Ljava/lang/String;

.field public parentPoiInfo:Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;

.field public phoneNum:Ljava/lang/String;

.field public poiDetailInfo:Lcom/baidu/mapapi/search/core/PoiDetailInfo;

.field public postCode:Ljava/lang/String;

.field public province:Ljava/lang/String;

.field public street_id:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public type:Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

.field public uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 521
    new-instance v0, Lcom/baidu/mapapi/search/core/h;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/core/h;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/core/PoiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->name:Ljava/lang/String;

    .line 536
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->uid:Ljava/lang/String;

    .line 537
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->tag:Ljava/lang/String;

    .line 538
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->address:Ljava/lang/String;

    .line 539
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->province:Ljava/lang/String;

    .line 540
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->city:Ljava/lang/String;

    .line 541
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->area:Ljava/lang/String;

    .line 542
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->street_id:Ljava/lang/String;

    .line 543
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->phoneNum:Ljava/lang/String;

    .line 544
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->postCode:Ljava/lang/String;

    .line 545
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->detail:I

    .line 546
    const-class v0, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->type:Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    .line 547
    const-class v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->location:Lcom/baidu/mapapi/model/LatLng;

    .line 548
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->hasCaterDetails:Z

    .line 549
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->isPano:Z

    .line 550
    const-class v0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/PoiDetailInfo;

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->poiDetailInfo:Lcom/baidu/mapapi/search/core/PoiDetailInfo;

    .line 551
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->direction:Ljava/lang/String;

    .line 552
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->distance:I

    .line 553
    const-class v0, Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;

    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->parentPoiInfo:Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;

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

    .line 180
    iget v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->a:I

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getArea()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->area:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getDetail()I
    .locals 1

    .line 361
    iget v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->detail:I

    return v0
.end method

.method public getDirection()Ljava/lang/String;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->direction:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()I
    .locals 1

    .line 415
    iget v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->distance:I

    return v0
.end method

.method public getLocation()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->location:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentPoi()Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->parentPoiInfo:Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;

    return-object v0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->phoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public getPoiDetailInfo()Lcom/baidu/mapapi/search/core/PoiDetailInfo;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->poiDetailInfo:Lcom/baidu/mapapi/search/core/PoiDetailInfo;

    return-object v0
.end method

.method public getPostCode()Ljava/lang/String;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->postCode:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetId()Ljava/lang/String;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->street_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->type:Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public isHasCaterDetails()Z
    .locals 1

    .line 487
    iget-boolean v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->hasCaterDetails:Z

    return v0
.end method

.method public isPano()Z
    .locals 1

    .line 500
    iget-boolean v0, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->isPano:Z

    return v0
.end method

.method public setAdCode(I)V
    .locals 0

    .line 188
    iput p1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->a:I

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->address:Ljava/lang/String;

    return-void
.end method

.method public setArea(Ljava/lang/String;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->area:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->city:Ljava/lang/String;

    return-void
.end method

.method public setDetail(I)V
    .locals 0

    .line 370
    iput p1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->detail:I

    return-void
.end method

.method public setDirection(Ljava/lang/String;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->direction:Ljava/lang/String;

    return-void
.end method

.method public setDistance(I)V
    .locals 0

    .line 424
    iput p1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->distance:I

    return-void
.end method

.method public setHasCaterDetails(Z)V
    .locals 0

    .line 496
    iput-boolean p1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->hasCaterDetails:Z

    return-void
.end method

.method public setLocation(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->location:Lcom/baidu/mapapi/model/LatLng;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setPano(Z)V
    .locals 0

    .line 504
    iput-boolean p1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->isPano:Z

    return-void
.end method

.method public setParentPoi(Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->parentPoiInfo:Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;

    return-void
.end method

.method public setPhoneNum(Ljava/lang/String;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->phoneNum:Ljava/lang/String;

    return-void
.end method

.method public setPoiDetailInfo(Lcom/baidu/mapapi/search/core/PoiDetailInfo;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->poiDetailInfo:Lcom/baidu/mapapi/search/core/PoiDetailInfo;

    return-void
.end method

.method public setPostCode(Ljava/lang/String;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->postCode:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->province:Ljava/lang/String;

    return-void
.end method

.method public setStreetId(Ljava/lang/String;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->street_id:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->tag:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->type:Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->uid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 717
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "PoiInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "name = "

    .line 718
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; uid = "

    .line 719
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; address = "

    .line 720
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; province = "

    .line 721
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->province:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; city = "

    .line 722
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; area = "

    .line 723
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->area:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; street_id = "

    .line 724
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->street_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; phoneNum = "

    .line 725
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->phoneNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; postCode = "

    .line 726
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->postCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; detail = "

    .line 727
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->detail:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "; location = "

    .line 729
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 730
    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->location:Lcom/baidu/mapapi/model/LatLng;

    const-string v2, "null"

    if-eqz v1, :cond_0

    .line 731
    invoke-virtual {v1}, Lcom/baidu/mapapi/model/LatLng;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 733
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, "; hasCaterDetails = "

    .line 736
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->hasCaterDetails:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "; isPano = "

    .line 737
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->isPano:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "; tag = "

    .line 738
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; poiDetailInfo = "

    .line 740
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 741
    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->poiDetailInfo:Lcom/baidu/mapapi/search/core/PoiDetailInfo;

    if-eqz v1, :cond_1

    .line 742
    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/PoiDetailInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 744
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const-string v1, "; direction = "

    .line 747
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->direction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; distance = "

    .line 748
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->distance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 750
    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->parentPoiInfo:Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;

    if-eqz v1, :cond_2

    const-string v1, "; parentPoiAddress = "

    .line 751
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->parentPoiInfo:Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;->getParentPoiAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; parentPoiDirection = "

    .line 752
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->parentPoiInfo:Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;->getParentPoiDirection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; parentPoiDistance = "

    .line 753
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->parentPoiInfo:Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;->getParentPoiDistance()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "; parentPoiName = "

    .line 754
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->parentPoiInfo:Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;->getParentPoiName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; parentPoiTag = "

    .line 755
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->parentPoiInfo:Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;->getParentPoiTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; parentPoiUid = "

    .line 756
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->parentPoiInfo:Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;->getParentPoiUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; parentPoiLocation = "

    .line 757
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->parentPoiInfo:Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;->getParentPoiLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 760
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 563
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 564
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->uid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 565
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->tag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 566
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->address:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 567
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->province:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 568
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->city:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 569
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->area:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 570
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->street_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 571
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->phoneNum:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 572
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->postCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 573
    iget p2, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->detail:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 574
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->type:Lcom/baidu/mapapi/search/core/PoiInfo$POITYPE;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 575
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->location:Lcom/baidu/mapapi/model/LatLng;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 576
    iget-boolean p2, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->hasCaterDetails:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 577
    iget-boolean p2, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->isPano:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 578
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->poiDetailInfo:Lcom/baidu/mapapi/search/core/PoiDetailInfo;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 579
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->direction:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 580
    iget p2, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->distance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/PoiInfo;->parentPoiInfo:Lcom/baidu/mapapi/search/core/PoiInfo$ParentPoiInfo;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
