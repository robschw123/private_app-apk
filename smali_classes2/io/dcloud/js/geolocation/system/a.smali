.class public Lio/dcloud/js/geolocation/system/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/js/geolocation/system/a$b;
    }
.end annotation


# static fields
.field public static a:I = 0x2

.field public static b:I = 0x0

.field public static c:I = 0x1

.field public static d:I = 0x0

.field public static e:I = 0x1

.field public static f:I = 0x2


# instance fields
.field public g:I

.field private h:Ljava/util/Timer;

.field private i:Lio/dcloud/js/geolocation/system/a$b;

.field private j:Ljava/util/TimerTask;

.field k:Ljava/lang/String;

.field l:Lio/dcloud/js/geolocation/system/b;

.field m:Lio/dcloud/js/geolocation/system/c;

.field n:Ljava/lang/String;

.field o:Lio/dcloud/common/DHInterface/IWebview;

.field private p:Landroid/content/Context;

.field q:Landroid/location/LocationManager;

.field r:Ljava/lang/String;

.field s:Ljava/lang/String;

.field t:Lio/dcloud/common/DHInterface/IWebview;

.field u:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lio/dcloud/js/geolocation/system/a;->g:I

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lio/dcloud/js/geolocation/system/a;->r:Ljava/lang/String;

    .line 164
    iput-object v0, p0, Lio/dcloud/js/geolocation/system/a;->s:Ljava/lang/String;

    .line 165
    iput-object v0, p0, Lio/dcloud/js/geolocation/system/a;->t:Lio/dcloud/common/DHInterface/IWebview;

    const/4 v1, 0x0

    .line 173
    iput v1, p0, Lio/dcloud/js/geolocation/system/a;->u:I

    .line 174
    iput-object p2, p0, Lio/dcloud/js/geolocation/system/a;->k:Ljava/lang/String;

    .line 175
    iput-object p1, p0, Lio/dcloud/js/geolocation/system/a;->p:Landroid/content/Context;

    .line 176
    iput-object v0, p0, Lio/dcloud/js/geolocation/system/a;->l:Lio/dcloud/js/geolocation/system/b;

    .line 177
    iput-object v0, p0, Lio/dcloud/js/geolocation/system/a;->m:Lio/dcloud/js/geolocation/system/c;

    const-string p2, "location"

    .line 178
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lio/dcloud/js/geolocation/system/a;->q:Landroid/location/LocationManager;

    .line 179
    iget-object p1, p0, Lio/dcloud/js/geolocation/system/a;->h:Ljava/util/Timer;

    if-nez p1, :cond_0

    .line 180
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lio/dcloud/js/geolocation/system/a;->h:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private a(Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 5
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 6
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 7
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 8
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 10
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x7

    aput-object p1, v0, v1

    const/16 p1, 0x8

    aput-object p2, v0, p1

    const-string p1, "{latitude:%f,longitude:%f,altitude:%f,accuracy:%f,heading:%f,velocity:%f,altitudeAccuracy:%d,timestamp:new Date(\'%s\'),coordsType:\'%s\'}"

    .line 11
    invoke-static {p1, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(I)V
    .locals 1

    .line 53
    iget v0, p0, Lio/dcloud/js/geolocation/system/a;->u:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/dcloud/js/geolocation/system/a;->u:I

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mUseCount="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/dcloud/js/geolocation/system/a;->u:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GeoListener"

    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(II)Z
    .locals 6

    .line 55
    iget v0, p0, Lio/dcloud/js/geolocation/system/a;->u:I

    if-nez v0, :cond_4

    .line 58
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/a;->l:Lio/dcloud/js/geolocation/system/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/dcloud/js/geolocation/system/a;->q:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lio/dcloud/js/geolocation/system/b;

    iget-object v1, p0, Lio/dcloud/js/geolocation/system/a;->p:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lio/dcloud/js/geolocation/system/b;-><init>(Landroid/content/Context;Lio/dcloud/js/geolocation/system/a;)V

    iput-object v0, p0, Lio/dcloud/js/geolocation/system/a;->l:Lio/dcloud/js/geolocation/system/b;

    .line 64
    :cond_0
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/a;->m:Lio/dcloud/js/geolocation/system/c;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/dcloud/js/geolocation/system/a;->q:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    new-instance v0, Lio/dcloud/js/geolocation/system/c;

    iget-object v1, p0, Lio/dcloud/js/geolocation/system/a;->p:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lio/dcloud/js/geolocation/system/c;-><init>(Landroid/content/Context;Lio/dcloud/js/geolocation/system/a;)V

    iput-object v0, p0, Lio/dcloud/js/geolocation/system/a;->m:Lio/dcloud/js/geolocation/system/c;

    .line 67
    :cond_1
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/a;->l:Lio/dcloud/js/geolocation/system/b;

    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {v0, p1}, Lio/dcloud/js/geolocation/system/b;->a(I)V

    .line 70
    :cond_2
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/a;->m:Lio/dcloud/js/geolocation/system/c;

    if-eqz v0, :cond_3

    .line 71
    invoke-virtual {v0, p1}, Lio/dcloud/js/geolocation/system/c;->a(I)V

    .line 74
    :cond_3
    sget v0, Lio/dcloud/js/geolocation/system/a;->b:I

    if-ne p2, v0, :cond_4

    .line 75
    iget v0, p0, Lio/dcloud/js/geolocation/system/a;->g:I

    invoke-direct {p0, v0}, Lio/dcloud/js/geolocation/system/a;->b(I)V

    .line 78
    :cond_4
    sget v0, Lio/dcloud/js/geolocation/system/a;->c:I

    if-ne p2, v0, :cond_6

    .line 79
    iget-object p2, p0, Lio/dcloud/js/geolocation/system/a;->h:Ljava/util/Timer;

    if-eqz p2, :cond_5

    .line 80
    iget-object p2, p0, Lio/dcloud/js/geolocation/system/a;->i:Lio/dcloud/js/geolocation/system/a$b;

    if-eqz p2, :cond_5

    .line 81
    invoke-virtual {p2}, Ljava/util/TimerTask;->cancel()Z

    .line 84
    :cond_5
    new-instance v1, Lio/dcloud/js/geolocation/system/a$a;

    invoke-direct {v1, p0}, Lio/dcloud/js/geolocation/system/a$a;-><init>(Lio/dcloud/js/geolocation/system/a;)V

    iput-object v1, p0, Lio/dcloud/js/geolocation/system/a;->j:Ljava/util/TimerTask;

    .line 94
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/a;->h:Ljava/util/Timer;

    int-to-long v4, p1

    move-wide v2, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_6
    const/4 p1, 0x1

    .line 97
    invoke-direct {p0, p1}, Lio/dcloud/js/geolocation/system/a;->a(I)V

    .line 98
    iget-object p2, p0, Lio/dcloud/js/geolocation/system/a;->m:Lio/dcloud/js/geolocation/system/c;

    if-nez p2, :cond_7

    iget-object p2, p0, Lio/dcloud/js/geolocation/system/a;->l:Lio/dcloud/js/geolocation/system/b;

    if-nez p2, :cond_7

    .line 99
    sget p1, Lio/dcloud/js/geolocation/system/a;->a:I

    sget p2, Lio/dcloud/js/geolocation/system/a;->f:I

    const-string v0, "get location fail."

    invoke-virtual {p0, p1, v0, p2}, Lio/dcloud/js/geolocation/system/a;->a(ILjava/lang/String;I)V

    const/4 p1, 0x0

    :cond_7
    return p1
.end method

.method private b(I)V
    .locals 4

    .line 5
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/a;->h:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lio/dcloud/js/geolocation/system/a;->i:Lio/dcloud/js/geolocation/system/a$b;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 9
    :cond_0
    new-instance v0, Lio/dcloud/js/geolocation/system/a$b;

    invoke-direct {v0, p0}, Lio/dcloud/js/geolocation/system/a$b;-><init>(Lio/dcloud/js/geolocation/system/a;)V

    iput-object v0, p0, Lio/dcloud/js/geolocation/system/a;->i:Lio/dcloud/js/geolocation/system/a$b;

    .line 10
    iget-object v1, p0, Lio/dcloud/js/geolocation/system/a;->h:Ljava/util/Timer;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    sget v0, Lio/dcloud/js/geolocation/system/a;->f:I

    invoke-virtual {p0, v0}, Lio/dcloud/js/geolocation/system/a;->c(I)V

    return-void
.end method

.method a(ILjava/lang/String;I)V
    .locals 3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failType=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "geoListener"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p0, p3}, Lio/dcloud/js/geolocation/system/a;->c(I)V

    .line 30
    iget-object p3, p0, Lio/dcloud/js/geolocation/system/a;->s:Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    iget-object v1, p0, Lio/dcloud/js/geolocation/system/a;->t:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v1, :cond_0

    .line 32
    iget-object v2, p0, Lio/dcloud/js/geolocation/system/a;->l:Lio/dcloud/js/geolocation/system/b;

    if-nez v2, :cond_0

    iget-object v2, p0, Lio/dcloud/js/geolocation/system/a;->m:Lio/dcloud/js/geolocation/system/c;

    if-nez v2, :cond_0

    .line 35
    invoke-static {p1, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-static {v1, p3, v2, v0}, Lio/dcloud/common/util/JSUtil;->excCallbackError(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 42
    :cond_0
    iget-object p3, p0, Lio/dcloud/js/geolocation/system/a;->o:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p3, :cond_1

    iget-object v1, p0, Lio/dcloud/js/geolocation/system/a;->n:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 44
    iget-object v2, p0, Lio/dcloud/js/geolocation/system/a;->l:Lio/dcloud/js/geolocation/system/b;

    if-nez v2, :cond_1

    iget-object v2, p0, Lio/dcloud/js/geolocation/system/a;->m:Lio/dcloud/js/geolocation/system/c;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 45
    iput-object v2, p0, Lio/dcloud/js/geolocation/system/a;->r:Ljava/lang/String;

    .line 47
    invoke-static {p1, p2}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-static {p3, v1, p1, v0}, Lio/dcloud/common/util/JSUtil;->excCallbackError(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method a(Landroid/location/Location;I)V
    .locals 3

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "successType=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "geoListener"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "wgs84"

    .line 13
    invoke-direct {p0, p1, p2}, Lio/dcloud/js/geolocation/system/a;->a(Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17
    iget-object p2, p0, Lio/dcloud/js/geolocation/system/a;->s:Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object v1, p0, Lio/dcloud/js/geolocation/system/a;->t:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 18
    invoke-static {v1, p2, p1, v0, v2}, Lio/dcloud/common/util/JSUtil;->excCallbackSuccess(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 19
    sget p2, Lio/dcloud/js/geolocation/system/a;->f:I

    invoke-virtual {p0, p2}, Lio/dcloud/js/geolocation/system/a;->c(I)V

    const/4 p2, 0x0

    .line 20
    iput-object p2, p0, Lio/dcloud/js/geolocation/system/a;->s:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lio/dcloud/js/geolocation/system/a;->t:Lio/dcloud/common/DHInterface/IWebview;

    .line 23
    :cond_0
    iget-object p2, p0, Lio/dcloud/js/geolocation/system/a;->o:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p2, :cond_2

    iget-object v1, p0, Lio/dcloud/js/geolocation/system/a;->n:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 24
    iget-object v2, p0, Lio/dcloud/js/geolocation/system/a;->r:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 25
    invoke-static {p2, v1, p1, v0, v0}, Lio/dcloud/common/util/JSUtil;->excCallbackSuccess(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 27
    :cond_1
    iput-object p1, p0, Lio/dcloud/js/geolocation/system/a;->r:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method a(Lio/dcloud/common/DHInterface/IWebview;ILjava/lang/String;I)V
    .locals 0

    .line 49
    iput-object p1, p0, Lio/dcloud/js/geolocation/system/a;->t:Lio/dcloud/common/DHInterface/IWebview;

    .line 50
    iput-object p3, p0, Lio/dcloud/js/geolocation/system/a;->s:Ljava/lang/String;

    .line 51
    iput p4, p0, Lio/dcloud/js/geolocation/system/a;->g:I

    .line 52
    sget p1, Lio/dcloud/js/geolocation/system/a;->b:I

    invoke-direct {p0, p2, p1}, Lio/dcloud/js/geolocation/system/a;->a(II)Z

    return-void
.end method

.method b(Lio/dcloud/common/DHInterface/IWebview;ILjava/lang/String;I)Z
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/js/geolocation/system/a;->o:Lio/dcloud/common/DHInterface/IWebview;

    .line 2
    iput-object p3, p0, Lio/dcloud/js/geolocation/system/a;->n:Ljava/lang/String;

    .line 3
    iput p4, p0, Lio/dcloud/js/geolocation/system/a;->g:I

    .line 4
    sget p1, Lio/dcloud/js/geolocation/system/a;->c:I

    invoke-direct {p0, p2, p1}, Lio/dcloud/js/geolocation/system/a;->a(II)Z

    move-result p1

    return p1
.end method

.method c(I)V
    .locals 2

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, v0}, Lio/dcloud/js/geolocation/system/a;->a(I)V

    .line 2
    iget v0, p0, Lio/dcloud/js/geolocation/system/a;->u:I

    if-gtz v0, :cond_6

    .line 3
    sget v0, Lio/dcloud/js/geolocation/system/a;->d:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lio/dcloud/js/geolocation/system/a;->l:Lio/dcloud/js/geolocation/system/b;

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p1}, Lio/dcloud/js/geolocation/system/b;->b()V

    .line 6
    iput-object v1, p0, Lio/dcloud/js/geolocation/system/a;->l:Lio/dcloud/js/geolocation/system/b;

    goto :goto_0

    .line 8
    :cond_0
    sget v0, Lio/dcloud/js/geolocation/system/a;->e:I

    if-ne p1, v0, :cond_1

    .line 9
    iget-object p1, p0, Lio/dcloud/js/geolocation/system/a;->m:Lio/dcloud/js/geolocation/system/c;

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1}, Lio/dcloud/js/geolocation/system/c;->a()V

    .line 11
    iput-object v1, p0, Lio/dcloud/js/geolocation/system/a;->m:Lio/dcloud/js/geolocation/system/c;

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lio/dcloud/js/geolocation/system/a;->l:Lio/dcloud/js/geolocation/system/b;

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1}, Lio/dcloud/js/geolocation/system/b;->b()V

    .line 16
    iput-object v1, p0, Lio/dcloud/js/geolocation/system/a;->l:Lio/dcloud/js/geolocation/system/b;

    .line 18
    :cond_2
    iget-object p1, p0, Lio/dcloud/js/geolocation/system/a;->m:Lio/dcloud/js/geolocation/system/c;

    if-eqz p1, :cond_3

    .line 19
    invoke-virtual {p1}, Lio/dcloud/js/geolocation/system/c;->a()V

    .line 20
    iput-object v1, p0, Lio/dcloud/js/geolocation/system/a;->m:Lio/dcloud/js/geolocation/system/c;

    .line 23
    :cond_3
    :goto_0
    iget-object p1, p0, Lio/dcloud/js/geolocation/system/a;->h:Ljava/util/Timer;

    if-eqz p1, :cond_5

    .line 24
    iget-object p1, p0, Lio/dcloud/js/geolocation/system/a;->i:Lio/dcloud/js/geolocation/system/a$b;

    if-eqz p1, :cond_4

    .line 25
    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    .line 26
    iput-object v1, p0, Lio/dcloud/js/geolocation/system/a;->i:Lio/dcloud/js/geolocation/system/a$b;

    .line 28
    :cond_4
    iget-object p1, p0, Lio/dcloud/js/geolocation/system/a;->j:Ljava/util/TimerTask;

    if-eqz p1, :cond_5

    .line 29
    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    .line 30
    iput-object v1, p0, Lio/dcloud/js/geolocation/system/a;->j:Ljava/util/TimerTask;

    .line 33
    :cond_5
    iput-object v1, p0, Lio/dcloud/js/geolocation/system/a;->r:Ljava/lang/String;

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lio/dcloud/js/geolocation/system/a;->u:I

    .line 36
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mUseCount="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/dcloud/js/geolocation/system/a;->u:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GeoListener"

    invoke-static {v0, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
