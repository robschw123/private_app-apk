.class public final enum Lio/dcloud/h/c/c/c/a$a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/h/c/c/c/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/h/c/c/c/a$a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/dcloud/h/c/c/c/a$a$a;

.field public static final enum b:Lio/dcloud/h/c/c/c/a$a$a;

.field public static final enum c:Lio/dcloud/h/c/c/c/a$a$a;

.field private static final synthetic d:[Lio/dcloud/h/c/c/c/a$a$a;


# instance fields
.field e:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lio/dcloud/h/c/c/c/a$a$a;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/dcloud/h/c/c/c/a$a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/dcloud/h/c/c/c/a$a$a;->a:Lio/dcloud/h/c/c/c/a$a$a;

    .line 5
    new-instance v1, Lio/dcloud/h/c/c/c/a$a$a;

    const-string v3, "FIRST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lio/dcloud/h/c/c/c/a$a$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/dcloud/h/c/c/c/a$a$a;->b:Lio/dcloud/h/c/c/c/a$a$a;

    .line 9
    new-instance v3, Lio/dcloud/h/c/c/c/a$a$a;

    const-string v5, "BACKUP"

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-direct {v3, v5, v6, v7}, Lio/dcloud/h/c/c/c/a$a$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/dcloud/h/c/c/c/a$a$a;->c:Lio/dcloud/h/c/c/c/a$a$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/dcloud/h/c/c/c/a$a$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 10
    sput-object v5, Lio/dcloud/h/c/c/c/a$a$a;->d:[Lio/dcloud/h/c/c/c/a$a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lio/dcloud/h/c/c/c/a$a$a;->e:I

    .line 5
    iput p3, p0, Lio/dcloud/h/c/c/c/a$a$a;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/h/c/c/c/a$a$a;
    .locals 1

    .line 1
    const-class v0, Lio/dcloud/h/c/c/c/a$a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/h/c/c/c/a$a$a;

    return-object p0
.end method

.method public static values()[Lio/dcloud/h/c/c/c/a$a$a;
    .locals 1

    .line 1
    sget-object v0, Lio/dcloud/h/c/c/c/a$a$a;->d:[Lio/dcloud/h/c/c/c/a$a$a;

    invoke-virtual {v0}, [Lio/dcloud/h/c/c/c/a$a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/h/c/c/c/a$a$a;

    return-object v0
.end method
