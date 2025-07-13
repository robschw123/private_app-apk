.class final Lcom/baidu/mapapi/search/route/e;
.super Ljava/lang/Object;
.source "DrivingRouteLine.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;
    .locals 1

    .line 386
    new-instance v0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;
    .locals 0

    .line 390
    new-array p1, p1, [Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 384
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/route/e;->a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 384
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/route/e;->a(I)[Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    move-result-object p1

    return-object p1
.end method
