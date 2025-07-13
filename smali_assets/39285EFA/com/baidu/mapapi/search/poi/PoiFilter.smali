.class public final Lcom/baidu/mapapi/search/poi/PoiFilter;
.super Ljava/lang/Object;
.source "PoiFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/search/poi/PoiFilter$Builder;,
        Lcom/baidu/mapapi/search/poi/PoiFilter$SortName;,
        Lcom/baidu/mapapi/search/poi/PoiFilter$IndustryType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/poi/PoiFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/baidu/mapapi/search/poi/PoiFilter$SortName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/poi/PoiFilter;->f:Ljava/util/Map;

    .line 257
    new-instance v0, Lcom/baidu/mapapi/search/poi/c;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/poi/c;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/poi/PoiFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->a:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->b:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->c:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->d:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->e:Ljava/lang/String;

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->a:Ljava/lang/String;

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->b:Ljava/lang/String;

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->c:Ljava/lang/String;

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->e:Ljava/lang/String;

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->a:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->b:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->c:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->d:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->e:Ljava/lang/String;

    .line 242
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->a:Ljava/lang/String;

    .line 243
    iput-object p2, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->b:Ljava/lang/String;

    .line 244
    iput-object p3, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->c:Ljava/lang/String;

    .line 245
    iput-object p4, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->e:Ljava/lang/String;

    .line 246
    iput-object p5, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    .line 13
    sget-object v0, Lcom/baidu/mapapi/search/poi/PoiFilter;->f:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    iget-object v1, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string/jumbo v2, "|"

    if-nez v1, :cond_0

    const-string v1, "industry_type:"

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-object v1, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sort_name:"

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    iget-object v1, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "sort_rule:"

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-object v1, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :cond_2
    iget-object v1, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "discount:"

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    iget-object v1, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_3
    iget-object v1, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "groupon:"

    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    iget-object v1, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 312
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 314
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 276
    iget-object p2, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget-object p2, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    iget-object p2, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    iget-object p2, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget-object p2, p0, Lcom/baidu/mapapi/search/poi/PoiFilter;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
