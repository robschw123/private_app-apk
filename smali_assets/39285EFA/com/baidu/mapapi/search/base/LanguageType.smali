.class public final enum Lcom/baidu/mapapi/search/base/LanguageType;
.super Ljava/lang/Enum;
.source "LanguageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mapapi/search/base/LanguageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/mapapi/search/base/LanguageType;

.field public static final enum LanguageTypeChinese:Lcom/baidu/mapapi/search/base/LanguageType;

.field public static final enum LanguageTypeEnglish:Lcom/baidu/mapapi/search/base/LanguageType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lcom/baidu/mapapi/search/base/LanguageType;

    const-string v1, "LanguageTypeChinese"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/search/base/LanguageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/search/base/LanguageType;->LanguageTypeChinese:Lcom/baidu/mapapi/search/base/LanguageType;

    .line 11
    new-instance v1, Lcom/baidu/mapapi/search/base/LanguageType;

    const-string v3, "LanguageTypeEnglish"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/baidu/mapapi/search/base/LanguageType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/baidu/mapapi/search/base/LanguageType;->LanguageTypeEnglish:Lcom/baidu/mapapi/search/base/LanguageType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/baidu/mapapi/search/base/LanguageType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 6
    sput-object v3, Lcom/baidu/mapapi/search/base/LanguageType;->$VALUES:[Lcom/baidu/mapapi/search/base/LanguageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/search/base/LanguageType;
    .locals 1

    .line 6
    const-class v0, Lcom/baidu/mapapi/search/base/LanguageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mapapi/search/base/LanguageType;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mapapi/search/base/LanguageType;
    .locals 1

    .line 6
    sget-object v0, Lcom/baidu/mapapi/search/base/LanguageType;->$VALUES:[Lcom/baidu/mapapi/search/base/LanguageType;

    invoke-virtual {v0}, [Lcom/baidu/mapapi/search/base/LanguageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/search/base/LanguageType;

    return-object v0
.end method
