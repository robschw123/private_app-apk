.class Lcom/baidu/location/c/b$e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/baidu/location/c/g;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/c/b$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/c/b$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/location/c/g;Lcom/baidu/location/c/g;)I
    .locals 0

    iget p1, p1, Lcom/baidu/location/c/g;->g:I

    iget p2, p2, Lcom/baidu/location/c/g;->g:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/baidu/location/c/g;

    check-cast p2, Lcom/baidu/location/c/g;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/location/c/b$e;->a(Lcom/baidu/location/c/g;Lcom/baidu/location/c/g;)I

    move-result p1

    return p1
.end method
