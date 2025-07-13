.class public Lcom/baidu/mapapi/search/poi/PoiResult;
.super Lcom/baidu/mapapi/search/core/SearchResult;
.source "PoiResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/poi/PoiResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/PoiInfo;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/poi/PoiAddrInfo;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/CityInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 245
    new-instance v0, Lcom/baidu/mapapi/search/poi/f;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/poi/f;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/poi/PoiResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->a:I

    .line 26
    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->b:I

    .line 31
    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->c:I

    .line 36
    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->d:I

    .line 47
    iput-boolean v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->f:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 218
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->a:I

    .line 26
    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->b:I

    .line 31
    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->c:I

    .line 36
    iput v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->d:I

    .line 47
    iput-boolean v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->f:Z

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->a:I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->b:I

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->c:I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->d:I

    .line 223
    sget-object v1, Lcom/baidu/mapapi/search/core/PoiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->e:Ljava/util/List;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->f:Z

    .line 225
    sget-object v0, Lcom/baidu/mapapi/search/core/CityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>(Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;)V

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->a:I

    .line 26
    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->b:I

    .line 31
    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->c:I

    .line 36
    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->d:I

    .line 47
    iput-boolean p1, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->f:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAllAddr()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/poi/PoiAddrInfo;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->g:Ljava/util/List;

    return-object v0
.end method

.method public getAllPoi()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/PoiInfo;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->e:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentPageCapacity()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->c:I

    return v0
.end method

.method public getCurrentPageNum()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->a:I

    return v0
.end method

.method public getSuggestCityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/CityInfo;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->h:Ljava/util/List;

    return-object v0
.end method

.method public getTotalPageNum()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->b:I

    return v0
.end method

.method public getTotalPoiNum()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->d:I

    return v0
.end method

.method public isHasAddrInfo()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->f:Z

    return v0
.end method

.method public setAddrInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/poi/PoiAddrInfo;",
            ">;)V"
        }
    .end annotation

    .line 177
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->g:Ljava/util/List;

    return-void
.end method

.method public setCurrentPageCapacity(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->c:I

    return-void
.end method

.method public setCurrentPageNum(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->a:I

    return-void
.end method

.method public setHasAddrInfo(Z)V
    .locals 0

    .line 195
    iput-boolean p1, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->f:Z

    return-void
.end method

.method public setPoiInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/PoiInfo;",
            ">;)V"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->e:Ljava/util/List;

    return-void
.end method

.method public setSuggestCityList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/CityInfo;",
            ">;)V"
        }
    .end annotation

    .line 214
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->h:Ljava/util/List;

    return-void
.end method

.method public setTotalPageNum(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->b:I

    return-void
.end method

.method public setTotalPoiNum(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->d:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 230
    invoke-super {p0, p1, p2}, Lcom/baidu/mapapi/search/core/SearchResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 231
    iget p2, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget p2, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget p2, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget p2, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-object p2, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->e:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 236
    iget-boolean p2, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->f:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 237
    iget-object p2, p0, Lcom/baidu/mapapi/search/poi/PoiResult;->h:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
