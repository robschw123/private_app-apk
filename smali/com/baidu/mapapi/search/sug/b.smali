.class final Lcom/baidu/mapapi/search/sug/b;
.super Ljava/lang/Object;
.source "SuggestionResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;
    .locals 1

    .line 178
    new-instance v0, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;
    .locals 0

    .line 183
    new-array p1, p1, [Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 175
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/sug/b;->a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 175
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/sug/b;->a(I)[Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;

    move-result-object p1

    return-object p1
.end method
