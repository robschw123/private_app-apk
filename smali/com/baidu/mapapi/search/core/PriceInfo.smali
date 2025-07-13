.class public Lcom/baidu/mapapi/search/core/PriceInfo;
.super Ljava/lang/Object;
.source "PriceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/core/PriceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/baidu/mapapi/search/core/j;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/core/j;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/core/PriceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/core/PriceInfo;->a:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/search/core/PriceInfo;->b:D

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTicketPrice()D
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/baidu/mapapi/search/core/PriceInfo;->b:D

    return-wide v0
.end method

.method public getTicketType()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/baidu/mapapi/search/core/PriceInfo;->a:I

    return v0
.end method

.method public setTicketPrice(D)V
    .locals 0

    .line 55
    iput-wide p1, p0, Lcom/baidu/mapapi/search/core/PriceInfo;->b:D

    return-void
.end method

.method public setTicketType(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/baidu/mapapi/search/core/PriceInfo;->a:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 65
    iget p2, p0, Lcom/baidu/mapapi/search/core/PriceInfo;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-wide v0, p0, Lcom/baidu/mapapi/search/core/PriceInfo;->b:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
