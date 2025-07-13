.class public Lcom/baidu/mapapi/search/route/SuggestAddrInfo;
.super Ljava/lang/Object;
.source "SuggestAddrInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/route/SuggestAddrInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/PoiInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/PoiInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/PoiInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/CityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/CityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/CityInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    new-instance v0, Lcom/baidu/mapapi/search/route/n;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/route/n;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-class v0, Lcom/baidu/mapapi/search/core/PoiInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->a:Ljava/util/List;

    .line 30
    const-class v0, Lcom/baidu/mapapi/search/core/PoiInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->b:Ljava/util/List;

    .line 31
    const-class v0, Lcom/baidu/mapapi/search/core/PoiInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->c:Ljava/util/List;

    .line 32
    const-class v0, Lcom/baidu/mapapi/search/core/CityInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->d:Ljava/util/List;

    .line 33
    const-class v0, Lcom/baidu/mapapi/search/core/CityInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->e:Ljava/util/List;

    .line 34
    const-class v0, Lcom/baidu/mapapi/search/core/CityInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSuggestEndCity()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/CityInfo;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->e:Ljava/util/List;

    return-object v0
.end method

.method public getSuggestEndNode()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/PoiInfo;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->b:Ljava/util/List;

    return-object v0
.end method

.method public getSuggestStartCity()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/CityInfo;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->d:Ljava/util/List;

    return-object v0
.end method

.method public getSuggestStartNode()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/PoiInfo;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->a:Ljava/util/List;

    return-object v0
.end method

.method public getSuggestWpCity()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/CityInfo;",
            ">;>;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->f:Ljava/util/List;

    return-object v0
.end method

.method public getSuggestWpNode()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/PoiInfo;",
            ">;>;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->c:Ljava/util/List;

    return-object v0
.end method

.method public setSuggestEndCity(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/CityInfo;",
            ">;)V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->e:Ljava/util/List;

    return-void
.end method

.method public setSuggestEndNode(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/PoiInfo;",
            ">;)V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->b:Ljava/util/List;

    return-void
.end method

.method public setSuggestStartCity(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/CityInfo;",
            ">;)V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->d:Ljava/util/List;

    return-void
.end method

.method public setSuggestStartNode(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/PoiInfo;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->a:Ljava/util/List;

    return-void
.end method

.method public setSuggestWpCity(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/CityInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->f:Ljava/util/List;

    return-void
.end method

.method public setSuggestWpNode(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/PoiInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->c:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 127
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->a:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 128
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->b:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 129
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->c:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 130
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->d:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 131
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->e:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 132
    iget-object p2, p0, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->f:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
