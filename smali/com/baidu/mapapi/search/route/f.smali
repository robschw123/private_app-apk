.class final Lcom/baidu/mapapi/search/route/f;
.super Ljava/lang/Object;
.source "DrivingRouteResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/baidu/mapapi/search/route/DrivingRouteResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/route/DrivingRouteResult;
    .locals 1

    .line 109
    new-instance v0, Lcom/baidu/mapapi/search/route/DrivingRouteResult;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/search/route/DrivingRouteResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/baidu/mapapi/search/route/DrivingRouteResult;
    .locals 0

    .line 113
    new-array p1, p1, [Lcom/baidu/mapapi/search/route/DrivingRouteResult;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/route/f;->a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/route/DrivingRouteResult;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/route/f;->a(I)[Lcom/baidu/mapapi/search/route/DrivingRouteResult;

    move-result-object p1

    return-object p1
.end method
