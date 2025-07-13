.class synthetic Lcom/baidu/platform/core/f/l;
.super Ljava/lang/Object;
.source "RoutePlaneParser.java"


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 53
    invoke-static {}, Lcom/baidu/platform/base/SearchType;->values()[Lcom/baidu/platform/base/SearchType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/baidu/platform/core/f/l;->a:[I

    :try_start_0
    sget-object v1, Lcom/baidu/platform/base/SearchType;->j:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v1}, Lcom/baidu/platform/base/SearchType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/baidu/platform/core/f/l;->a:[I

    sget-object v1, Lcom/baidu/platform/base/SearchType;->k:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v1}, Lcom/baidu/platform/base/SearchType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/baidu/platform/core/f/l;->a:[I

    sget-object v1, Lcom/baidu/platform/base/SearchType;->m:Lcom/baidu/platform/base/SearchType;

    invoke-virtual {v1}, Lcom/baidu/platform/base/SearchType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
