.class final Lcom/baidu/mapapi/search/route/q;
.super Ljava/lang/Object;
.source "TransitRouteResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/baidu/mapapi/search/route/TransitRouteResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/route/TransitRouteResult;
    .locals 1

    .line 90
    new-instance v0, Lcom/baidu/mapapi/search/route/TransitRouteResult;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/search/route/TransitRouteResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/baidu/mapapi/search/route/TransitRouteResult;
    .locals 0

    .line 94
    new-array p1, p1, [Lcom/baidu/mapapi/search/route/TransitRouteResult;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/route/q;->a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/route/TransitRouteResult;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/route/q;->a(I)[Lcom/baidu/mapapi/search/route/TransitRouteResult;

    move-result-object p1

    return-object p1
.end method
