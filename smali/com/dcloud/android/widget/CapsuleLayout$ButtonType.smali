.class public final enum Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/widget/CapsuleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ButtonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

.field public static final enum LIFT:Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

.field public static final enum MIDDLE:Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

.field public static final enum RIGHT:Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    const-string v1, "LIFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;->LIFT:Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    .line 2
    new-instance v1, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    const-string v3, "MIDDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;->MIDDLE:Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    .line 3
    new-instance v3, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    const-string v5, "RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;->RIGHT:Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;->$VALUES:[Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;
    .locals 1

    .line 1
    const-class v0, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    return-object p0
.end method

.method public static values()[Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;
    .locals 1

    .line 1
    sget-object v0, Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;->$VALUES:[Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    invoke-virtual {v0}, [Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dcloud/android/widget/CapsuleLayout$ButtonType;

    return-object v0
.end method
