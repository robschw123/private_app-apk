.class public Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;
.super Lcom/baidu/mapapi/search/core/RouteStep;
.source "DrivingRouteLine.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/search/route/DrivingRouteLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrivingStep"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field e:[I

.field private f:I

.field private g:Lcom/baidu/mapapi/search/core/RouteNode;

.field private h:Lcom/baidu/mapapi/search/core/RouteNode;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 384
    new-instance v0, Lcom/baidu/mapapi/search/route/e;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/route/e;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 365
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/RouteStep;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 369
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/search/core/RouteStep;-><init>(Landroid/os/Parcel;)V

    .line 370
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->f:I

    .line 371
    const-class v0, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/RouteNode;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->g:Lcom/baidu/mapapi/search/core/RouteNode;

    .line 372
    const-class v0, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/RouteNode;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->h:Lcom/baidu/mapapi/search/core/RouteNode;

    .line 373
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->i:Ljava/lang/String;

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->j:Ljava/lang/String;

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->k:Ljava/lang/String;

    .line 376
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->l:Ljava/lang/String;

    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->m:I

    .line 378
    sget-object v0, Lcom/baidu/mapapi/model/LatLng;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->d:Ljava/util/List;

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->e:[I

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->n:I

    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDirection()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->f:I

    return v0
.end method

.method public getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->g:Lcom/baidu/mapapi/search/core/RouteNode;

    return-object v0
.end method

.method public getEntranceInstructions()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getExit()Lcom/baidu/mapapi/search/core/RouteNode;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->h:Lcom/baidu/mapapi/search/core/RouteNode;

    return-object v0
.end method

.method public getExitInstructions()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getInstructions()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getNumTurns()I
    .locals 1

    .line 288
    iget v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->m:I

    return v0
.end method

.method public getRoadLevel()I
    .locals 1

    .line 313
    iget v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->n:I

    return v0
.end method

.method public getRoadName()Ljava/lang/String;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getTrafficList()[I
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->e:[I

    return-object v0
.end method

.method public getWayPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->mWayPoints:Ljava/util/List;

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->decodeLocationList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->mWayPoints:Ljava/util/List;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->d:Ljava/util/List;

    return-object v0
.end method

.method public setDirection(I)V
    .locals 0

    .line 171
    iput p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->f:I

    return-void
.end method

.method public setEntrance(Lcom/baidu/mapapi/search/core/RouteNode;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->g:Lcom/baidu/mapapi/search/core/RouteNode;

    return-void
.end method

.method public setEntranceInstructions(Ljava/lang/String;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->j:Ljava/lang/String;

    return-void
.end method

.method public setExit(Lcom/baidu/mapapi/search/core/RouteNode;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->h:Lcom/baidu/mapapi/search/core/RouteNode;

    return-void
.end method

.method public setExitInstructions(Ljava/lang/String;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->k:Ljava/lang/String;

    return-void
.end method

.method public setInstructions(Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->l:Ljava/lang/String;

    return-void
.end method

.method public setNumTurns(I)V
    .locals 0

    .line 292
    iput p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->m:I

    return-void
.end method

.method public setPathList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->d:Ljava/util/List;

    return-void
.end method

.method public setPathString(Ljava/lang/String;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->i:Ljava/lang/String;

    return-void
.end method

.method public setRoadLevel(I)V
    .locals 0

    .line 322
    iput p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->n:I

    return-void
.end method

.method public setRoadName(Ljava/lang/String;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->o:Ljava/lang/String;

    return-void
.end method

.method public setTrafficList([I)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->e:[I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 350
    invoke-super {p0, p1, p2}, Lcom/baidu/mapapi/search/core/RouteStep;->writeToParcel(Landroid/os/Parcel;I)V

    .line 351
    iget p2, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->g:Lcom/baidu/mapapi/search/core/RouteNode;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 353
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->h:Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 354
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 355
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    iget p2, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->m:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->d:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 360
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->e:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 361
    iget p2, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->n:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
