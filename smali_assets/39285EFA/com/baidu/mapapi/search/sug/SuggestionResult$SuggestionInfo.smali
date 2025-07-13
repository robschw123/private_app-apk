.class public Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;
.super Ljava/lang/Object;
.source "SuggestionResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/search/sug/SuggestionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuggestionInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field public address:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public district:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public poiChildrenInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/PoiChildrenInfo;",
            ">;"
        }
    .end annotation
.end field

.field public pt:Lcom/baidu/mapapi/model/LatLng;

.field public tag:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 175
    new-instance v0, Lcom/baidu/mapapi/search/sug/b;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/sug/b;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->key:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->city:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->district:Ljava/lang/String;

    .line 136
    const-class v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iput-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->pt:Lcom/baidu/mapapi/model/LatLng;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->uid:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->tag:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->address:Ljava/lang/String;

    .line 140
    sget-object v0, Lcom/baidu/mapapi/search/core/PoiChildrenInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->poiChildrenInfoList:Ljava/util/List;

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

    .line 147
    iget v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->a:I

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->district:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->key:Ljava/lang/String;

    return-object v0
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

    .line 319
    iget-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->poiChildrenInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getPt()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->pt:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setAdCode(I)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->a:I

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->address:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->city:Ljava/lang/String;

    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->district:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->key:Ljava/lang/String;

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

    .line 328
    iput-object p1, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->poiChildrenInfoList:Ljava/util/List;

    return-void
.end method

.method public setPt(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->pt:Lcom/baidu/mapapi/model/LatLng;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->tag:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->uid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 336
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SuggestionInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "key = "

    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; city = "

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; district = "

    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->district:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; pt = "

    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    iget-object v1, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->pt:Lcom/baidu/mapapi/model/LatLng;

    const-string v2, "null"

    if-eqz v1, :cond_0

    .line 343
    invoke-virtual {v1}, Lcom/baidu/mapapi/model/LatLng;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 345
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, "; uid = "

    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; tag = "

    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; address = "

    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "; childrenInfo = "

    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    iget-object v1, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->poiChildrenInfoList:Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    const/4 v1, 0x0

    .line 356
    :goto_1
    iget-object v3, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->poiChildrenInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    const-string v3, " "

    .line 357
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    iget-object v3, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->poiChildrenInfoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/search/core/PoiChildrenInfo;

    if-nez v3, :cond_2

    .line 361
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 363
    :cond_2
    invoke-virtual {v3}, Lcom/baidu/mapapi/search/core/PoiChildrenInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 354
    :cond_3
    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->city:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->district:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->pt:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 164
    iget-object p2, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->uid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object p2, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->tag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object p2, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->address:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object p2, p0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->poiChildrenInfoList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
