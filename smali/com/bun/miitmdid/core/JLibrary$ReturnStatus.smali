.class final enum Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bun/miitmdid/core/JLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ReturnStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;

.field public static final enum RETURN_ERR:Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;

.field public static final enum RETURN_OK:Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;

    const-string v1, "RETURN_OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;->RETURN_OK:Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;

    new-instance v1, Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;

    const-string v3, "RETURN_ERR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;->RETURN_ERR:Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;->ENUM$VALUES:[Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;
    .locals 1

    const-class v0, Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;

    return-object p0
.end method

.method public static values()[Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;
    .locals 4

    sget-object v0, Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;->ENUM$VALUES:[Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
