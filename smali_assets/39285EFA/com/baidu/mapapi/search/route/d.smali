.class final Lcom/baidu/mapapi/search/route/d;
.super Ljava/lang/Object;
.source "DrivingRouteLine.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/baidu/mapapi/search/route/DrivingRouteLine;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/route/DrivingRouteLine;
    .locals 1

    .line 413
    new-instance v0, Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/baidu/mapapi/search/route/DrivingRouteLine;
    .locals 0

    .line 417
    new-array p1, p1, [Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 411
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/route/d;->a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 411
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/route/d;->a(I)[Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    move-result-object p1

    return-object p1
.end method
