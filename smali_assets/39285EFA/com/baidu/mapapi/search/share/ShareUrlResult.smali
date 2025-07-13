.class public Lcom/baidu/mapapi/search/share/ShareUrlResult;
.super Lcom/baidu/mapapi/search/core/SearchResult;
.source "ShareUrlResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/share/ShareUrlResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lcom/baidu/mapapi/search/share/a;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/share/a;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/share/ShareUrlResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlResult;->a:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/baidu/mapapi/search/share/ShareUrlResult;->b:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/baidu/mapapi/search/share/ShareUrlResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setType(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/baidu/mapapi/search/share/ShareUrlResult;->b:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/baidu/mapapi/search/share/ShareUrlResult;->a:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 61
    iget-object p2, p0, Lcom/baidu/mapapi/search/share/ShareUrlResult;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget p2, p0, Lcom/baidu/mapapi/search/share/ShareUrlResult;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
