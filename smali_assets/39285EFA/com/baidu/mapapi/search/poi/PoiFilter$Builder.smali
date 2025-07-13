.class public final Lcom/baidu/mapapi/search/poi/PoiFilter$Builder;
.super Ljava/lang/Object;
.source "PoiFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/search/poi/PoiFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-static {}, Lcom/baidu/mapapi/search/poi/PoiFilter;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;->DEFAULT:Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-static {}, Lcom/baidu/mapapi/search/poi/PoiFilter;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;->HOTEL_LEVEL:Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;

    const-string v3, "level"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {}, Lcom/baidu/mapapi/search/poi/PoiFilter;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;->HOTEL_PRICE:Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;

    const-string v3, "price"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-static {}, Lcom/baidu/mapapi/search/poi/PoiFilter;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;->HOTEL_DISTANCE:Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;

    const-string v4, "distance"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {}, Lcom/baidu/mapapi/search/poi/PoiFilter;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;->HOTEL_HEALTH_SCORE:Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;

    const-string v5, "health_score"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {}, Lcom/baidu/mapapi/search/poi/PoiFilter;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;->HOTEL_TOTAL_SCORE:Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$HotelSortName;

    const-string v5, "total_score"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {}, Lcom/baidu/mapapi/search/poi/PoiFilter;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$CaterSortName;->DEFAULT:Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$CaterSortName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {}, Lcom/baidu/mapapi/search/poi/PoiFilter;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$CaterSortName;->CATER_DISTANCE:Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$CaterSortName;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {}, Lcom/baidu/mapapi/search/poi/PoiFilter;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$CaterSortName;->CATER_PRICE:Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$CaterSortName;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {}, Lcom/baidu/mapapi/search/poi/PoiFilter;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$CaterSortName;->CATER_OVERALL_RATING:Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$CaterSortName;

    const-string v5, "overall_rating"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static {}, Lcom/baidu/mapapi/search/poi/PoiFilter;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$CaterSortName;->CATER_SERVICE_RATING:Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$CaterSortName;

    const-string v6, "service_rating"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-static {}, Lcom/baidu/mapapi/search/poi/PoiFilter;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$CaterSortName;->CATER_TASTE_RATING:Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$CaterSortName;

    const-string v6, "taste_rating"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {}, Lcom/baidu/mapapi/search/poi/PoiFilter;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$LifeSortName;->DEFAULT:Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$LifeSortName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {}, Lcom/baidu/mapapi/search/poi/PoiFilter;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$LifeSortName;->PRICE:Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$LifeSortName;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {}, Lcom/baidu/mapapi/search/poi/PoiFilter;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$LifeSortName;->LIFE_COMMENT_RATING:Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$LifeSortName;

    const-string v2, "comment_num"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static {}, Lcom/baidu/mapapi/search/poi/PoiFilter;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$LifeSortName;->LIFE_OVERALL_RATING:Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$LifeSortName;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static {}, Lcom/baidu/mapapi/search/poi/PoiFilter;->a()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$LifeSortName;->DISTANCE:Lcom/baidu/mapapi/search/poi/PoiFilter$SortName$LifeSortName;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public build()Lcom/baidu/mapapi/search/poi/PoiFilter;
    .locals 7

    .line 145
    new-instance v6, Lcom/baidu/mapapi/search/poi/PoiFilter;

    iget-object v1, p0, Lcom/baidu/mapapi/search/poi/PoiFilter$Builder;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mapapi/search/poi/PoiFilter$Builder;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/mapapi/search/poi/PoiFilter$Builder;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/mapapi/search/poi/PoiFilter$Builder;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/mapapi/search/poi/PoiFilter$Builder;->d:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mapapi/search/poi/PoiFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public industryType(Lcom/baidu/mapapi/search/poi/PoiFilter$IndustryType;)Lcom/baidu/mapapi/search/poi/PoiFilter$Builder;
    .locals 1

    .line 156
    sget-object v0, Lcom/baidu/mapapi/search/poi/d;->a:[I

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/poi/PoiFilter$IndustryType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, ""

    .line 170
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiFilter$Builder;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "life"

    .line 166
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiFilter$Builder;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "cater"

    .line 162
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiFilter$Builder;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, "hotel"

    .line 158
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiFilter$Builder;->a:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public isDiscount(Z)Lcom/baidu/mapapi/search/poi/PoiFilter$Builder;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "1"

    .line 232
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiFilter$Builder;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 234
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiFilter$Builder;->e:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public isGroupon(Z)Lcom/baidu/mapapi/search/poi/PoiFilter$Builder;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "1"

    .line 215
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiFilter$Builder;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 217
    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiFilter$Builder;->d:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public sortName(Lcom/baidu/mapapi/search/poi/PoiFilter$SortName;)Lcom/baidu/mapapi/search/poi/PoiFilter$Builder;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/baidu/mapapi/search/poi/PoiFilter$Builder;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 188
    invoke-static {}, Lcom/baidu/mapapi/search/poi/PoiFilter;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiFilter$Builder;->b:Ljava/lang/String;

    :cond_1
    return-object p0
.end method

.method public sortRule(I)Lcom/baidu/mapapi/search/poi/PoiFilter$Builder;
    .locals 1

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/search/poi/PoiFilter$Builder;->c:Ljava/lang/String;

    return-object p0
.end method
