.class public final Lcom/baidu/mapapi/search/route/MassTransitRouteResult;
.super Lcom/baidu/mapapi/search/core/SearchResult;
.source "MassTransitRouteResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/route/MassTransitRouteResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/baidu/mapapi/search/core/TransitResultNode;

.field private b:Lcom/baidu/mapapi/search/core/TransitResultNode;

.field private c:Lcom/baidu/mapapi/search/core/TaxiInfo;

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/route/MassTransitRouteLine;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/baidu/mapapi/search/route/SuggestAddrInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 131
    new-instance v0, Lcom/baidu/mapapi/search/route/l;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/route/l;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>()V

    .line 36
    const-class v0, Lcom/baidu/mapapi/search/core/TransitResultNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/TransitResultNode;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->a:Lcom/baidu/mapapi/search/core/TransitResultNode;

    .line 37
    const-class v0, Lcom/baidu/mapapi/search/core/TransitResultNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/TransitResultNode;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->b:Lcom/baidu/mapapi/search/core/TransitResultNode;

    .line 38
    const-class v0, Lcom/baidu/mapapi/search/core/TaxiInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/TaxiInfo;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->c:Lcom/baidu/mapapi/search/core/TaxiInfo;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->d:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->e:Ljava/util/List;

    .line 41
    const-class v1, Lcom/baidu/mapapi/search/route/MassTransitRouteLine;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 42
    const-class v0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->f:Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDestination()Lcom/baidu/mapapi/search/core/TransitResultNode;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->b:Lcom/baidu/mapapi/search/core/TransitResultNode;

    return-object v0
.end method

.method public getOrigin()Lcom/baidu/mapapi/search/core/TransitResultNode;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->a:Lcom/baidu/mapapi/search/core/TransitResultNode;

    return-object v0
.end method

.method public getRouteLines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/route/MassTransitRouteLine;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->e:Ljava/util/List;

    return-object v0
.end method

.method public getSuggestAddrInfo()Lcom/baidu/mapapi/search/route/SuggestAddrInfo;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->f:Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    return-object v0
.end method

.method public getTaxiInfo()Lcom/baidu/mapapi/search/core/TaxiInfo;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->c:Lcom/baidu/mapapi/search/core/TaxiInfo;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->d:I

    return v0
.end method

.method public setDestination(Lcom/baidu/mapapi/search/core/TransitResultNode;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->b:Lcom/baidu/mapapi/search/core/TransitResultNode;

    return-void
.end method

.method public setOrigin(Lcom/baidu/mapapi/search/core/TransitResultNode;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->a:Lcom/baidu/mapapi/search/core/TransitResultNode;

    return-void
.end method

.method public setRoutelines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/route/MassTransitRouteLine;",
            ">;)V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->e:Ljava/util/List;

    return-void
.end method

.method public setSuggestAddrInfo(Lcom/baidu/mapapi/search/route/SuggestAddrInfo;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->f:Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    return-void
.end method

.method public setTaxiInfo(Lcom/baidu/mapapi/search/core/TaxiInfo;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->c:Lcom/baidu/mapapi/search/core/TaxiInfo;

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->d:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 123
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->a:Lcom/baidu/mapapi/search/core/TransitResultNode;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 124
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->b:Lcom/baidu/mapapi/search/core/TransitResultNode;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 125
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->c:Lcom/baidu/mapapi/search/core/TaxiInfo;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 126
    iget p2, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->e:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 128
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;->f:Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
