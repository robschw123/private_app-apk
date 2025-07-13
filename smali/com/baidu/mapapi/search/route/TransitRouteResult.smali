.class public final Lcom/baidu/mapapi/search/route/TransitRouteResult;
.super Lcom/baidu/mapapi/search/core/SearchResult;
.source "TransitRouteResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/route/TransitRouteResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/baidu/mapapi/search/core/TaxiInfo;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/route/TransitRouteLine;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/baidu/mapapi/search/route/SuggestAddrInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Lcom/baidu/mapapi/search/route/q;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/route/q;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/route/TransitRouteResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>()V

    .line 30
    const-class v0, Lcom/baidu/mapapi/search/core/TaxiInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/TaxiInfo;

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteResult;->a:Lcom/baidu/mapapi/search/core/TaxiInfo;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteResult;->b:Ljava/util/List;

    .line 32
    const-class v1, Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 33
    const-class v0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/TransitRouteResult;->c:Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

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
            "Lcom/baidu/mapapi/search/route/TransitRouteLine;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteResult;->b:Ljava/util/List;

    return-object v0
.end method

.method public getSuggestAddrInfo()Lcom/baidu/mapapi/search/route/SuggestAddrInfo;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteResult;->c:Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    return-object v0
.end method

.method public getTaxiInfo()Lcom/baidu/mapapi/search/core/TaxiInfo;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/TransitRouteResult;->a:Lcom/baidu/mapapi/search/core/TaxiInfo;

    return-object v0
.end method

.method public setRoutelines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/route/TransitRouteLine;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/TransitRouteResult;->b:Ljava/util/List;

    return-void
.end method

.method public setSuggestAddrInfo(Lcom/baidu/mapapi/search/route/SuggestAddrInfo;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/TransitRouteResult;->c:Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    return-void
.end method

.method public setTaxiInfo(Lcom/baidu/mapapi/search/core/TaxiInfo;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/TransitRouteResult;->a:Lcom/baidu/mapapi/search/core/TaxiInfo;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 83
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/TransitRouteResult;->a:Lcom/baidu/mapapi/search/core/TaxiInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 84
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/TransitRouteResult;->b:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 85
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/TransitRouteResult;->c:Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
