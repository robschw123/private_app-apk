.class public Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;
.super Lcom/baidu/mapapi/search/core/RouteStep;
.source "MassTransitRouteLine.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/search/route/MassTransitRouteLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransitStep"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;,
        Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$TrafficCondition;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$TrafficCondition;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/baidu/mapapi/model/LatLng;

.field private f:Lcom/baidu/mapapi/model/LatLng;

.field private g:Lcom/baidu/mapapi/search/core/TrainInfo;

.field private h:Lcom/baidu/mapapi/search/core/PlaneInfo;

.field private i:Lcom/baidu/mapapi/search/core/CoachInfo;

.field private j:Lcom/baidu/mapapi/search/core/BusInfo;

.field private k:Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 279
    new-instance v0, Lcom/baidu/mapapi/search/route/j;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/route/j;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 218
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/RouteStep;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 222
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/search/core/RouteStep;-><init>(Landroid/os/Parcel;)V

    .line 223
    sget-object v0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$TrafficCondition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->d:Ljava/util/List;

    .line 224
    const-class v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->e:Lcom/baidu/mapapi/model/LatLng;

    .line 225
    const-class v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->f:Lcom/baidu/mapapi/model/LatLng;

    .line 226
    const-class v0, Lcom/baidu/mapapi/search/core/TrainInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/TrainInfo;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->g:Lcom/baidu/mapapi/search/core/TrainInfo;

    .line 227
    const-class v0, Lcom/baidu/mapapi/search/core/PlaneInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/PlaneInfo;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->h:Lcom/baidu/mapapi/search/core/PlaneInfo;

    .line 228
    const-class v0, Lcom/baidu/mapapi/search/core/CoachInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/CoachInfo;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->i:Lcom/baidu/mapapi/search/core/CoachInfo;

    .line 229
    const-class v0, Lcom/baidu/mapapi/search/core/BusInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/BusInfo;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->j:Lcom/baidu/mapapi/search/core/BusInfo;

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 249
    :pswitch_0
    sget-object v0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;->ESTEP_COACH:Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->k:Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

    goto :goto_0

    .line 246
    :pswitch_1
    sget-object v0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;->ESTEP_WALK:Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->k:Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

    goto :goto_0

    .line 243
    :pswitch_2
    sget-object v0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;->ESTEP_DRIVING:Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->k:Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

    goto :goto_0

    .line 240
    :pswitch_3
    sget-object v0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;->ESTEP_BUS:Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->k:Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

    goto :goto_0

    .line 237
    :pswitch_4
    sget-object v0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;->ESTEP_PLANE:Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->k:Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

    goto :goto_0

    .line 234
    :pswitch_5
    sget-object v0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;->ESTEP_TRAIN:Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->k:Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

    .line 254
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->l:Ljava/lang/String;

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->m:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ";"

    .line 414
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 416
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 418
    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    aget-object v3, p1, v2

    const-string v4, ""

    if-eq v3, v4, :cond_1

    .line 419
    aget-object v3, p1, v2

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v5, 0x1

    .line 420
    aget-object v6, v3, v5

    if-eq v6, v4, :cond_1

    aget-object v6, v3, v1

    if-eq v6, v4, :cond_1

    .line 421
    new-instance v4, Lcom/baidu/mapapi/model/LatLng;

    aget-object v5, v3, v5

    .line 422
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    aget-object v3, v3, v1

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 423
    invoke-static {}, Lcom/baidu/mapapi/SDKInitializer;->getCoordType()Lcom/baidu/mapapi/CoordType;

    move-result-object v3

    sget-object v5, Lcom/baidu/mapapi/CoordType;->GCJ02:Lcom/baidu/mapapi/CoordType;

    if-ne v3, v5, :cond_0

    .line 424
    invoke-static {v4}, Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;->baiduToGcj(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    .line 426
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBusInfo()Lcom/baidu/mapapi/search/core/BusInfo;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->j:Lcom/baidu/mapapi/search/core/BusInfo;

    return-object v0
.end method

.method public getCoachInfo()Lcom/baidu/mapapi/search/core/CoachInfo;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->i:Lcom/baidu/mapapi/search/core/CoachInfo;

    return-object v0
.end method

.method public getEndLocation()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->f:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getInstructions()Ljava/lang/String;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaneInfo()Lcom/baidu/mapapi/search/core/PlaneInfo;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->h:Lcom/baidu/mapapi/search/core/PlaneInfo;

    return-object v0
.end method

.method public getStartLocation()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->e:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getTrafficConditions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$TrafficCondition;",
            ">;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->d:Ljava/util/List;

    return-object v0
.end method

.method public getTrainInfo()Lcom/baidu/mapapi/search/core/TrainInfo;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->g:Lcom/baidu/mapapi/search/core/TrainInfo;

    return-object v0
.end method

.method public getVehileType()Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->k:Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

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

    .line 439
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->mWayPoints:Ljava/util/List;

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->m:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->mWayPoints:Ljava/util/List;

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->mWayPoints:Ljava/util/List;

    return-object v0
.end method

.method public setBusInfo(Lcom/baidu/mapapi/search/core/BusInfo;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->j:Lcom/baidu/mapapi/search/core/BusInfo;

    return-void
.end method

.method public setCoachInfo(Lcom/baidu/mapapi/search/core/CoachInfo;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->i:Lcom/baidu/mapapi/search/core/CoachInfo;

    return-void
.end method

.method public setEndLocation(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->f:Lcom/baidu/mapapi/model/LatLng;

    return-void
.end method

.method public setInstructions(Ljava/lang/String;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->l:Ljava/lang/String;

    return-void
.end method

.method public setPathString(Ljava/lang/String;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->m:Ljava/lang/String;

    return-void
.end method

.method public setPlaneInfo(Lcom/baidu/mapapi/search/core/PlaneInfo;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->h:Lcom/baidu/mapapi/search/core/PlaneInfo;

    return-void
.end method

.method public setStartLocation(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->e:Lcom/baidu/mapapi/model/LatLng;

    return-void
.end method

.method public setTrafficConditions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$TrafficCondition;",
            ">;)V"
        }
    .end annotation

    .line 296
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->d:Ljava/util/List;

    return-void
.end method

.method public setTrainInfo(Lcom/baidu/mapapi/search/core/TrainInfo;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->g:Lcom/baidu/mapapi/search/core/TrainInfo;

    return-void
.end method

.method public setVehileType(Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->k:Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 261
    invoke-super {p0, p1, p2}, Lcom/baidu/mapapi/search/core/RouteStep;->writeToParcel(Landroid/os/Parcel;I)V

    .line 262
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->d:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 263
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->e:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 264
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->f:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 265
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->g:Lcom/baidu/mapapi/search/core/TrainInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 266
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->h:Lcom/baidu/mapapi/search/core/PlaneInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 267
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->i:Lcom/baidu/mapapi/search/core/CoachInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 268
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->j:Lcom/baidu/mapapi/search/core/BusInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 269
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->k:Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

    invoke-virtual {p2}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;->getInt()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
