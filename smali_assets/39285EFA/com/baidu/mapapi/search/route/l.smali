.class final Lcom/baidu/mapapi/search/route/l;
.super Ljava/lang/Object;
.source "MassTransitRouteResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/baidu/mapapi/search/route/MassTransitRouteResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/route/MassTransitRouteResult;
    .locals 1

    .line 133
    new-instance v0, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/search/route/MassTransitRouteResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/baidu/mapapi/search/route/MassTransitRouteResult;
    .locals 0

    .line 137
    new-array p1, p1, [Lcom/baidu/mapapi/search/route/MassTransitRouteResult;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/route/l;->a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/route/MassTransitRouteResult;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/route/l;->a(I)[Lcom/baidu/mapapi/search/route/MassTransitRouteResult;

    move-result-object p1

    return-object p1
.end method
