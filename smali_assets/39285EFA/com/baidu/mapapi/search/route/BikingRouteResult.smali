.class public Lcom/baidu/mapapi/search/route/BikingRouteResult;
.super Lcom/baidu/mapapi/search/core/SearchResult;
.source "BikingRouteResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/route/BikingRouteResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/route/BikingRouteLine;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/baidu/mapapi/search/route/SuggestAddrInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lcom/baidu/mapapi/search/route/c;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/route/c;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/route/BikingRouteResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/BikingRouteResult;->a:Ljava/util/List;

    .line 33
    const-class v1, Lcom/baidu/mapapi/search/route/BikingRouteLine;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 34
    const-class v0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/BikingRouteResult;->b:Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRouteLines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/route/BikingRouteLine;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/BikingRouteResult;->a:Ljava/util/List;

    return-object v0
.end method

.method public getSuggestAddrInfo()Lcom/baidu/mapapi/search/route/SuggestAddrInfo;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/BikingRouteResult;->b:Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    return-object v0
.end method

.method public setRouteLines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/route/BikingRouteLine;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/BikingRouteResult;->a:Ljava/util/List;

    return-void
.end method

.method public setSuggestAddrInfo(Lcom/baidu/mapapi/search/route/SuggestAddrInfo;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/BikingRouteResult;->b:Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 72
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/BikingRouteResult;->a:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 73
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/BikingRouteResult;->b:Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
