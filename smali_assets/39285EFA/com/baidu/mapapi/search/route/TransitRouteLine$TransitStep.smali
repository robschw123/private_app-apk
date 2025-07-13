.class public Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;
.super Lcom/baidu/mapapi/search/core/RouteStep;
.source "TransitRouteLine.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/search/route/TransitRouteLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransitStep"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Lcom/baidu/mapapi/search/core/VehicleInfo;

.field private e:Lcom/baidu/mapapi/search/core/RouteNode;

.field private f:Lcom/baidu/mapapi/search/core/RouteNode;

.field private g:Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 195
    new-instance v0, Lcom/baidu/mapapi/search/route/p;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/route/p;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/RouteStep;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 185
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/search/core/RouteStep;-><init>(Landroid/os/Parcel;)V

    .line 186
    const-class v0, Lcom/baidu/mapapi/search/core/VehicleInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/VehicleInfo;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->d:Lcom/baidu/mapapi/search/core/VehicleInfo;

    .line 187
    const-class v0, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/RouteNode;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->e:Lcom/baidu/mapapi/search/core/RouteNode;

    .line 188
    const-class v0, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/RouteNode;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->f:Lcom/baidu/mapapi/search/core/RouteNode;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 190
    :cond_0
    invoke-static {}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;->values()[Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    move-result-object v1

    aget-object v0, v1, v0

    :goto_0
    iput-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->g:Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->h:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->e:Lcom/baidu/mapapi/search/core/RouteNode;

    return-object v0
.end method

.method public getExit()Lcom/baidu/mapapi/search/core/RouteNode;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->f:Lcom/baidu/mapapi/search/core/RouteNode;

    return-object v0
.end method

.method public getInstructions()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getStepType()Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->g:Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    return-object v0
.end method

.method public getVehicleInfo()Lcom/baidu/mapapi/search/core/VehicleInfo;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->d:Lcom/baidu/mapapi/search/core/VehicleInfo;

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

    .line 106
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->mWayPoints:Ljava/util/List;

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->decodeLocationList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->mWayPoints:Ljava/util/List;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->mWayPoints:Ljava/util/List;

    return-object v0
.end method

.method public setEntrace(Lcom/baidu/mapapi/search/core/RouteNode;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->e:Lcom/baidu/mapapi/search/core/RouteNode;

    return-void
.end method

.method public setExit(Lcom/baidu/mapapi/search/core/RouteNode;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->f:Lcom/baidu/mapapi/search/core/RouteNode;

    return-void
.end method

.method public setInstructions(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->h:Ljava/lang/String;

    return-void
.end method

.method public setPathString(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->i:Ljava/lang/String;

    return-void
.end method

.method public setStepType(Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->g:Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    return-void
.end method

.method public setVehicleInfo(Lcom/baidu/mapapi/search/core/VehicleInfo;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->d:Lcom/baidu/mapapi/search/core/VehicleInfo;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 172
    invoke-super {p0, p1, p2}, Lcom/baidu/mapapi/search/core/RouteStep;->writeToParcel(Landroid/os/Parcel;I)V

    .line 173
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->d:Lcom/baidu/mapapi/search/core/VehicleInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 174
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->e:Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 175
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->f:Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 176
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->g:Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;->ordinal()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
