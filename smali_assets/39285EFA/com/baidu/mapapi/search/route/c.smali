.class final Lcom/baidu/mapapi/search/route/c;
.super Ljava/lang/Object;
.source "BikingRouteResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/baidu/mapapi/search/route/BikingRouteResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/route/BikingRouteResult;
    .locals 1

    .line 78
    new-instance v0, Lcom/baidu/mapapi/search/route/BikingRouteResult;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/search/route/BikingRouteResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/baidu/mapapi/search/route/BikingRouteResult;
    .locals 0

    .line 82
    new-array p1, p1, [Lcom/baidu/mapapi/search/route/BikingRouteResult;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/route/c;->a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/route/BikingRouteResult;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/route/c;->a(I)[Lcom/baidu/mapapi/search/route/BikingRouteResult;

    move-result-object p1

    return-object p1
.end method
