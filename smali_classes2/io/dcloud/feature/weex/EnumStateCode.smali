.class public final enum Lio/dcloud/feature/weex/EnumStateCode;
.super Ljava/lang/Enum;
.source "EnumStateCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/feature/weex/EnumStateCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/dcloud/feature/weex/EnumStateCode;

.field public static final enum FAIL_BY_INVALID_PARAMETER:Lio/dcloud/feature/weex/EnumStateCode;

.field public static final enum FAIL_BY_MP_IS_NOT_RUNNING:Lio/dcloud/feature/weex/EnumStateCode;

.field public static final enum FAIL_BY_NO_INIT:Lio/dcloud/feature/weex/EnumStateCode;

.field public static final enum FAIL_BY_NO_MESSAGE_LISTENER_RECEIVED:Lio/dcloud/feature/weex/EnumStateCode;

.field public static final enum FAIL_BY_NO_PERMISSION:Lio/dcloud/feature/weex/EnumStateCode;

.field public static final enum FAIL_BY_NO_RESOURCE_EXIST:Lio/dcloud/feature/weex/EnumStateCode;

.field public static final enum FAIL_BY_NO_WGT_EXIST:Lio/dcloud/feature/weex/EnumStateCode;

.field public static final enum FAIL_BY_RELEASE_WGT_ERROR:Lio/dcloud/feature/weex/EnumStateCode;

.field public static final enum FAIL_BY_UNKNOWN_ERROR:Lio/dcloud/feature/weex/EnumStateCode;

.field public static final enum SUCCESS_NO_BODY:Lio/dcloud/feature/weex/EnumStateCode;


# instance fields
.field private mCode:I

.field private mDesc:Ljava/lang/String;

.field private mResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 15
    new-instance v6, Lio/dcloud/feature/weex/EnumStateCode;

    const-string v1, "SUCCESS_NO_BODY"

    const/4 v2, 0x0

    const-string v3, "success"

    const/4 v4, 0x0

    const-string v5, ""

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/dcloud/feature/weex/EnumStateCode;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lio/dcloud/feature/weex/EnumStateCode;->SUCCESS_NO_BODY:Lio/dcloud/feature/weex/EnumStateCode;

    .line 16
    new-instance v0, Lio/dcloud/feature/weex/EnumStateCode;

    const-string v8, "FAIL_BY_INVALID_PARAMETER"

    const/4 v9, 0x1

    const-string v10, "fail"

    const/4 v11, -0x1

    const-string v12, "invalid parameter."

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/dcloud/feature/weex/EnumStateCode;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/dcloud/feature/weex/EnumStateCode;->FAIL_BY_INVALID_PARAMETER:Lio/dcloud/feature/weex/EnumStateCode;

    .line 17
    new-instance v1, Lio/dcloud/feature/weex/EnumStateCode;

    const-string v14, "FAIL_BY_NO_PERMISSION"

    const/4 v15, 0x2

    const-string v16, "fail"

    const/16 v17, -0x2

    const-string v18, "no permission."

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lio/dcloud/feature/weex/EnumStateCode;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lio/dcloud/feature/weex/EnumStateCode;->FAIL_BY_NO_PERMISSION:Lio/dcloud/feature/weex/EnumStateCode;

    .line 18
    new-instance v2, Lio/dcloud/feature/weex/EnumStateCode;

    const-string v8, "FAIL_BY_NO_MESSAGE_LISTENER_RECEIVED"

    const/4 v9, 0x3

    const-string v10, "fail"

    const/4 v11, -0x3

    const-string v12, "no message listener received."

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lio/dcloud/feature/weex/EnumStateCode;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lio/dcloud/feature/weex/EnumStateCode;->FAIL_BY_NO_MESSAGE_LISTENER_RECEIVED:Lio/dcloud/feature/weex/EnumStateCode;

    .line 19
    new-instance v3, Lio/dcloud/feature/weex/EnumStateCode;

    const-string v14, "FAIL_BY_NO_INIT"

    const/4 v15, 0x4

    const-string v16, "fail"

    const/16 v17, -0x4

    const-string v18, "not initialized."

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lio/dcloud/feature/weex/EnumStateCode;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lio/dcloud/feature/weex/EnumStateCode;->FAIL_BY_NO_INIT:Lio/dcloud/feature/weex/EnumStateCode;

    .line 20
    new-instance v4, Lio/dcloud/feature/weex/EnumStateCode;

    const-string v8, "FAIL_BY_RELEASE_WGT_ERROR"

    const/4 v9, 0x5

    const-string v10, "fail"

    const/4 v11, -0x5

    const-string v12, "wgt release error."

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lio/dcloud/feature/weex/EnumStateCode;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lio/dcloud/feature/weex/EnumStateCode;->FAIL_BY_RELEASE_WGT_ERROR:Lio/dcloud/feature/weex/EnumStateCode;

    .line 21
    new-instance v5, Lio/dcloud/feature/weex/EnumStateCode;

    const-string v14, "FAIL_BY_UNKNOWN_ERROR"

    const/4 v15, 0x6

    const-string v16, "fail"

    const/16 v17, -0x3e7

    const-string v18, "unknown error."

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lio/dcloud/feature/weex/EnumStateCode;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lio/dcloud/feature/weex/EnumStateCode;->FAIL_BY_UNKNOWN_ERROR:Lio/dcloud/feature/weex/EnumStateCode;

    .line 22
    new-instance v13, Lio/dcloud/feature/weex/EnumStateCode;

    const-string v8, "FAIL_BY_NO_RESOURCE_EXIST"

    const/4 v9, 0x7

    const-string v10, "fail"

    const/16 v11, -0x3e9

    const-string v12, "mp resource do not exist."

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lio/dcloud/feature/weex/EnumStateCode;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lio/dcloud/feature/weex/EnumStateCode;->FAIL_BY_NO_RESOURCE_EXIST:Lio/dcloud/feature/weex/EnumStateCode;

    .line 23
    new-instance v7, Lio/dcloud/feature/weex/EnumStateCode;

    const-string v15, "FAIL_BY_NO_WGT_EXIST"

    const/16 v16, 0x8

    const-string v17, "fail"

    const/16 v18, -0x3ec

    const-string v19, "wgt do not exist."

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lio/dcloud/feature/weex/EnumStateCode;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lio/dcloud/feature/weex/EnumStateCode;->FAIL_BY_NO_WGT_EXIST:Lio/dcloud/feature/weex/EnumStateCode;

    .line 24
    new-instance v8, Lio/dcloud/feature/weex/EnumStateCode;

    const-string v21, "FAIL_BY_MP_IS_NOT_RUNNING"

    const/16 v22, 0x9

    const-string v23, "fail"

    const/16 v24, -0xbb9

    const-string v25, "target mp is not running."

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lio/dcloud/feature/weex/EnumStateCode;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lio/dcloud/feature/weex/EnumStateCode;->FAIL_BY_MP_IS_NOT_RUNNING:Lio/dcloud/feature/weex/EnumStateCode;

    const/16 v9, 0xa

    new-array v9, v9, [Lio/dcloud/feature/weex/EnumStateCode;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v6, 0x1

    aput-object v0, v9, v6

    const/4 v0, 0x2

    aput-object v1, v9, v0

    const/4 v0, 0x3

    aput-object v2, v9, v0

    const/4 v0, 0x4

    aput-object v3, v9, v0

    const/4 v0, 0x5

    aput-object v4, v9, v0

    const/4 v0, 0x6

    aput-object v5, v9, v0

    const/4 v0, 0x7

    aput-object v13, v9, v0

    const/16 v0, 0x8

    aput-object v7, v9, v0

    const/16 v0, 0x9

    aput-object v8, v9, v0

    .line 13
    sput-object v9, Lio/dcloud/feature/weex/EnumStateCode;->$VALUES:[Lio/dcloud/feature/weex/EnumStateCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "resultType",
            "codeNum",
            "codeDesc"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p4, p0, Lio/dcloud/feature/weex/EnumStateCode;->mCode:I

    .line 48
    iput-object p5, p0, Lio/dcloud/feature/weex/EnumStateCode;->mDesc:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lio/dcloud/feature/weex/EnumStateCode;->mResult:Ljava/lang/String;

    return-void
.end method

.method public static obtainMap(Lio/dcloud/feature/weex/EnumStateCode;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stateCode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/feature/weex/EnumStateCode;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    iget-object v1, p0, Lio/dcloud/feature/weex/EnumStateCode;->mResult:Ljava/lang/String;

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget v1, p0, Lio/dcloud/feature/weex/EnumStateCode;->mCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v1, p0, Lio/dcloud/feature/weex/EnumStateCode;->mDesc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    iget-object p0, p0, Lio/dcloud/feature/weex/EnumStateCode;->mDesc:Ljava/lang/String;

    const-string v1, "message"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static obtainMap(Lio/dcloud/feature/weex/EnumStateCode;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "stateCode",
            "extraKey",
            "extraObj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/dcloud/feature/weex/EnumStateCode;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    iget-object v1, p0, Lio/dcloud/feature/weex/EnumStateCode;->mResult:Ljava/lang/String;

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget p0, p0, Lio/dcloud/feature/weex/EnumStateCode;->mCode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "code"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 71
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/feature/weex/EnumStateCode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 13
    const-class v0, Lio/dcloud/feature/weex/EnumStateCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/feature/weex/EnumStateCode;

    return-object p0
.end method

.method public static values()[Lio/dcloud/feature/weex/EnumStateCode;
    .locals 1

    .line 13
    sget-object v0, Lio/dcloud/feature/weex/EnumStateCode;->$VALUES:[Lio/dcloud/feature/weex/EnumStateCode;

    invoke-virtual {v0}, [Lio/dcloud/feature/weex/EnumStateCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/feature/weex/EnumStateCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 38
    iget v0, p0, Lio/dcloud/feature/weex/EnumStateCode;->mCode:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lio/dcloud/feature/weex/EnumStateCode;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lio/dcloud/feature/weex/EnumStateCode;->mResult:Ljava/lang/String;

    return-object v0
.end method
