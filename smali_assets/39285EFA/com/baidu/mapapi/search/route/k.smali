.class final Lcom/baidu/mapapi/search/route/k;
.super Ljava/lang/Object;
.source "MassTransitRouteLine.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$TrafficCondition;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$TrafficCondition;
    .locals 1

    .line 170
    new-instance v0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$TrafficCondition;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$TrafficCondition;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$TrafficCondition;
    .locals 0

    .line 175
    new-array p1, p1, [Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$TrafficCondition;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/route/k;->a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$TrafficCondition;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/route/k;->a(I)[Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$TrafficCondition;

    move-result-object p1

    return-object p1
.end method
