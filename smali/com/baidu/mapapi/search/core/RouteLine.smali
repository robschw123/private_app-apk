.class public Lcom/baidu/mapapi/search/core/RouteLine;
.super Ljava/lang/Object;
.source "RouteLine.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/search/core/RouteLine$TYPE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/baidu/mapapi/search/core/RouteStep;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# instance fields
.field a:Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

.field private b:Lcom/baidu/mapapi/search/core/RouteNode;

.field private c:Lcom/baidu/mapapi/search/core/RouteNode;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 65
    const-class v1, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/search/core/RouteNode;

    iput-object v1, p0, Lcom/baidu/mapapi/search/core/RouteLine;->b:Lcom/baidu/mapapi/search/core/RouteNode;

    .line 66
    const-class v1, Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/search/core/RouteNode;

    iput-object v1, p0, Lcom/baidu/mapapi/search/core/RouteLine;->c:Lcom/baidu/mapapi/search/core/RouteNode;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mapapi/search/core/RouteLine;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    sget-object v0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/RouteLine;->e:Ljava/util/List;

    goto :goto_0

    .line 76
    :cond_1
    sget-object v0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/RouteLine;->e:Ljava/util/List;

    goto :goto_0

    .line 73
    :cond_2
    sget-object v0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/RouteLine;->e:Ljava/util/List;

    goto :goto_0

    .line 70
    :cond_3
    sget-object v0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/core/RouteLine;->e:Ljava/util/List;

    .line 84
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/core/RouteLine;->f:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/search/core/RouteLine;->g:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAllStep()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/RouteLine;->e:Ljava/util/List;

    return-object v0
.end method

.method public getDistance()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/baidu/mapapi/search/core/RouteLine;->f:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/baidu/mapapi/search/core/RouteLine;->g:I

    return v0
.end method

.method public getStarting()Lcom/baidu/mapapi/search/core/RouteNode;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/RouteLine;->b:Lcom/baidu/mapapi/search/core/RouteNode;

    return-object v0
.end method

.method public getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/RouteLine;->c:Lcom/baidu/mapapi/search/core/RouteNode;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/RouteLine;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected getType()Lcom/baidu/mapapi/search/core/RouteLine$TYPE;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/baidu/mapapi/search/core/RouteLine;->a:Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    return-object v0
.end method

.method public setDistance(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/baidu/mapapi/search/core/RouteLine;->f:I

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/baidu/mapapi/search/core/RouteLine;->g:I

    return-void
.end method

.method public setStarting(Lcom/baidu/mapapi/search/core/RouteNode;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/RouteLine;->b:Lcom/baidu/mapapi/search/core/RouteNode;

    return-void
.end method

.method public setSteps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/RouteLine;->e:Ljava/util/List;

    return-void
.end method

.method public setTerminal(Lcom/baidu/mapapi/search/core/RouteNode;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/RouteLine;->c:Lcom/baidu/mapapi/search/core/RouteNode;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/RouteLine;->d:Ljava/lang/String;

    return-void
.end method

.method protected setType(Lcom/baidu/mapapi/search/core/RouteLine$TYPE;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/baidu/mapapi/search/core/RouteLine;->a:Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 211
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/RouteLine;->a:Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    if-eqz p2, :cond_0

    .line 212
    invoke-static {p2}, Lcom/baidu/mapapi/search/core/RouteLine$TYPE;->a(Lcom/baidu/mapapi/search/core/RouteLine$TYPE;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/16 p2, 0xa

    .line 214
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    :goto_0
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/RouteLine;->b:Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 217
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/RouteLine;->c:Lcom/baidu/mapapi/search/core/RouteNode;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 218
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/RouteLine;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/RouteLine;->a:Lcom/baidu/mapapi/search/core/RouteLine$TYPE;

    if-eqz p2, :cond_1

    .line 220
    iget-object p2, p0, Lcom/baidu/mapapi/search/core/RouteLine;->e:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 222
    :cond_1
    iget p2, p0, Lcom/baidu/mapapi/search/core/RouteLine;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget p2, p0, Lcom/baidu/mapapi/search/core/RouteLine;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
