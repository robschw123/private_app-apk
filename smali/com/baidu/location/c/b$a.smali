.class Lcom/baidu/location/c/b$a;
.super Landroid/telephony/TelephonyManager$CellInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/c/b;


# direct methods
.method private constructor <init>(Lcom/baidu/location/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/b$a;->a:Lcom/baidu/location/c/b;

    invoke-direct {p0}, Landroid/telephony/TelephonyManager$CellInfoCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/c/b;Lcom/baidu/location/c/b$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/b$a;-><init>(Lcom/baidu/location/c/b;)V

    return-void
.end method


# virtual methods
.method public onCellInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/baidu/location/c/b$a;->a:Lcom/baidu/location/c/b;

    invoke-static {p1}, Lcom/baidu/location/c/b;->a(Lcom/baidu/location/c/b;)V

    return-void
.end method

.method public onError(ILjava/lang/Throwable;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method
