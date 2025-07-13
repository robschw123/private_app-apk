.class synthetic Lcom/baidu/platform/core/d/h;
.super Ljava/lang/Object;
.source "PoiSearchParser.java"


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 364
    invoke-static {}, Lcom/baidu/platform/base/SearchType;->values()[Lcom/baidu/platform/base/SearchType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/baidu/platform/core/d/h;->a:[I

    :try_start_0
    sget-object v1, Lcom/baidu/platform/base/SearchType;->a:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v1}, Lcom/baidu/platform/base/SearchType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/baidu/platform/core/d/h;->a:[I

    sget-object v1, Lcom/baidu/platform/base/SearchType;->b:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v1}, Lcom/baidu/platform/base/SearchType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/baidu/platform/core/d/h;->a:[I

    sget-object v1, Lcom/baidu/platform/base/SearchType;->c:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v1}, Lcom/baidu/platform/base/SearchType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
