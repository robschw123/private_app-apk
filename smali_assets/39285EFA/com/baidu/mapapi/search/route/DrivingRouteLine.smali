.class public Lcom/baidu/mapapi/search/route/DrivingRouteLine;
.super Lcom/baidu/mapapi/search/core/RouteLine;
.source "DrivingRouteLine.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/mapapi/search/core/RouteLine<",
        "Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/route/DrivingRouteLine;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Z

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/RouteNode;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 411
    new-instance v0, Lcom/baidu/mapapi/search/route/d;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/route/d;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/RouteLine;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/search/core/RouteLine;-><init>(Landroid/os/Parcel;)V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->b:Z

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->c:Ljava/util/List;

    .line 35
    const-class v1, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->d:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->e:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->f:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCongestionDistance()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->d:I

    return v0
.end method

.method public getLightNum()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->e:I

    return v0
.end method

.method public getToll()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->f:I

    return v0
.end method

.method public getWayPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/RouteNode;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->c:Ljava/util/List;

    return-object v0
.end method

.method public isSupportTraffic()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    iget-boolean v0, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->b:Z

    return v0
.end method

.method public setCongestionDistance(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->d:I

    return-void
.end method

.method public setLightNum(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->e:I

    return-void
.end method

.method public setSupportTraffic(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->b:Z

    return-void
.end method

.method public setToll(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->f:I

    return-void
.end method

.method public setWayPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/RouteNode;",
            ">;)V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->c:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 402
    sget-object v0, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;->DRIVESTEP:Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    invoke-super {p0, v0}, Lcom/baidu/mapapi/search/core/RouteLine;->setType(Lcom/baidu/mapapi/search/core/RouteLine$TYPE;)V

    .line 403
    invoke-super {p0, p1, p2}, Lcom/baidu/mapapi/search/core/RouteLine;->writeToParcel(Landroid/os/Parcel;I)V

    .line 404
    iget-boolean p2, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->b:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 405
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->c:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 406
    iget p2, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    iget p2, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    iget p2, p0, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
