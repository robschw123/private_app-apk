.class final Lcom/baidu/mapapi/search/route/p;
.super Ljava/lang/Object;
.source "TransitRouteLine.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;
    .locals 1

    .line 197
    new-instance v0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;
    .locals 0

    .line 201
    new-array p1, p1, [Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 195
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/route/p;->a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 195
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/route/p;->a(I)[Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;

    move-result-object p1

    return-object p1
.end method
