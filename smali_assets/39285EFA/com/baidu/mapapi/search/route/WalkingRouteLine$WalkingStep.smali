.class public Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;
.super Lcom/baidu/mapapi/search/core/RouteStep;
.source "WalkingRouteLine.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/search/route/WalkingRouteLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WalkingStep"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:I

.field private e:Lcom/baidu/mapapi/search/core/RouteNode;

.field private f:Lcom/baidu/mapapi/search/core/RouteNode;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 193
    new-instance v0, Lcom/baidu/mapapi/search/route/s;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/route/s;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/RouteStep;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 183
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/search/core/RouteStep;-><init>(Landroid/os/Parcel;)V

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->d:I

    .line 185
    const-class v0, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/RouteNode;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->e:Lcom/baidu/mapapi/search/core/RouteNode;

    .line 186
    const-class v0, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/RouteNode;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->f:Lcom/baidu/mapapi/search/core/RouteNode;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->g:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->h:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->i:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->j:Ljava/lang/String;

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

    .line 82
    iget v0, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->d:I

    return v0
.end method

.method public getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->e:Lcom/baidu/mapapi/search/core/RouteNode;

    return-object v0
.end method

.method public getEntranceInstructions()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getExit()Lcom/baidu/mapapi/search/core/RouteNode;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->f:Lcom/baidu/mapapi/search/core/RouteNode;

    return-object v0
.end method

.method public getExitInstructions()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getInstructions()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->j:Ljava/lang/String;

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

    .line 70
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->mWayPoints:Ljava/util/List;

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->decodeLocationList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->mWayPoints:Ljava/util/List;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->mWayPoints:Ljava/util/List;

    return-object v0
.end method

.method public setDirection(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->d:I

    return-void
.end method

.method public setEntrance(Lcom/baidu/mapapi/search/core/RouteNode;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->e:Lcom/baidu/mapapi/search/core/RouteNode;

    return-void
.end method

.method public setEntranceInstructions(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->h:Ljava/lang/String;

    return-void
.end method

.method public setExit(Lcom/baidu/mapapi/search/core/RouteNode;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->f:Lcom/baidu/mapapi/search/core/RouteNode;

    return-void
.end method

.method public setExitInstructions(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->i:Ljava/lang/String;

    return-void
.end method

.method public setInstructions(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->j:Ljava/lang/String;

    return-void
.end method

.method public setPathString(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->g:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 p2, 0x1

    .line 169
    invoke-super {p0, p1, p2}, Lcom/baidu/mapapi/search/core/RouteStep;->writeToParcel(Landroid/os/Parcel;I)V

    .line 170
    iget v0, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->e:Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 172
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->f:Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 173
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
