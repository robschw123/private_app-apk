.class public final Lcom/baidu/location/BDLocation;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BDLOCATION_BD09LL_TO_GCJ02:Ljava/lang/String; = "bd09ll2gcj"

.field public static final BDLOCATION_BD09_TO_GCJ02:Ljava/lang/String; = "bd092gcj"

.field public static final BDLOCATION_COOR_TYPE_BD09LL:Ljava/lang/String; = "bd09"

.field public static final BDLOCATION_COOR_TYPE_BD09MC:Ljava/lang/String; = "bd09mc"

.field public static final BDLOCATION_COOR_TYPE_GCJ02:Ljava/lang/String; = "gcj02"

.field public static final BDLOCATION_COOR_TYPE_GCJ03:Ljava/lang/String; = "gcj03"

.field public static final BDLOCATION_COOR_TYPE_WGS84:Ljava/lang/String; = "wgs84"

.field public static final BDLOCATION_GCJ02_TO_BD09:Ljava/lang/String; = "bd09"

.field public static final BDLOCATION_GCJ02_TO_BD09LL:Ljava/lang/String; = "bd09ll"

.field public static final BDLOCATION_GNSS_PROVIDER_FROM_BAIDU_BEIDOU:Ljava/lang/String; = "bd_beidou"

.field public static final BDLOCATION_GNSS_PROVIDER_FROM_SYSTEM:Ljava/lang/String; = "system"

.field public static final BDLOCATION_WGS84_TO_GCJ02:Ljava/lang/String; = "gps2gcj"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/location/BDLocation;",
            ">;"
        }
    .end annotation
.end field

.field public static final GPS_ACCURACY_BAD:I = 0x3

.field public static final GPS_ACCURACY_GOOD:I = 0x1

.field public static final GPS_ACCURACY_MID:I = 0x2

.field public static final GPS_ACCURACY_UNKNOWN:I = 0x0

.field public static final GPS_RECTIFY_INDOOR:I = 0x1

.field public static final GPS_RECTIFY_NONE:I = 0x0

.field public static final GPS_RECTIFY_OUTDOOR:I = 0x2

.field public static final INDOOR_LOCATION_NEARBY_SURPPORT_TRUE:I = 0x2

.field public static final INDOOR_LOCATION_SOURCE_BLUETOOTH:I = 0x4

.field public static final INDOOR_LOCATION_SOURCE_MAGNETIC:I = 0x2

.field public static final INDOOR_LOCATION_SOURCE_SMALLCELLSTATION:I = 0x8

.field public static final INDOOR_LOCATION_SOURCE_UNKNOWN:I = 0x0

.field public static final INDOOR_LOCATION_SOURCE_WIFI:I = 0x1

.field public static final INDOOR_LOCATION_SURPPORT_FALSE:I = 0x0

.field public static final INDOOR_LOCATION_SURPPORT_TRUE:I = 0x1

.field public static final INDOOR_NETWORK_STATE_HIGH:I = 0x2

.field public static final INDOOR_NETWORK_STATE_LOW:I = 0x0

.field public static final INDOOR_NETWORK_STATE_MIDDLE:I = 0x1

.field public static final LOCATION_WHERE_IN_CN:I = 0x1

.field public static final LOCATION_WHERE_OUT_CN:I = 0x0

.field public static final LOCATION_WHERE_UNKNOW:I = 0x2

.field public static final MOCK_GPS_PROBABILITY_HIGH:I = 0x3

.field public static final MOCK_GPS_PROBABILITY_LOW:I = 0x1

.field public static final MOCK_GPS_PROBABILITY_MIDDLE:I = 0x2

.field public static final MOCK_GPS_PROBABILITY_UNKNOW:I = -0x1

.field public static final MOCK_GPS_PROBABILITY_ZERO:I = 0x0

.field public static final OPERATORS_TYPE_MOBILE:I = 0x1

.field public static final OPERATORS_TYPE_TELECOMU:I = 0x3

.field public static final OPERATORS_TYPE_UNICOM:I = 0x2

.field public static final OPERATORS_TYPE_UNKONW:I = 0x0

.field public static final TYPE_BMS_HD_LOCATION:I = 0x25a

.field public static final TYPE_CLOSE_LOCATION_SERVICE_SWITCH_FAIL:I = 0x45

.field public static final TYPE_HD_LOCATION:I = 0x259

.field public static final TYPE_NO_PERMISSION_AND_CLOSE_SWITCH_FAIL:I = 0x47

.field public static final TYPE_NO_PERMISSION_LOCATION_FAIL:I = 0x46

.field public static final TypeCacheLocation:I = 0x41

.field public static final TypeCriteriaException:I = 0x3e

.field public static final TypeGpsLocation:I = 0x3d

.field public static final TypeNetWorkException:I = 0x3f

.field public static final TypeNetWorkLocation:I = 0xa1

.field public static final TypeNone:I = 0x0

.field public static final TypeOffLineLocation:I = 0x42

.field public static final TypeOffLineLocationFail:I = 0x43

.field public static final TypeOffLineLocationNetworkFail:I = 0x44

.field public static final TypeServerCheckKeyError:I = 0x1f9

.field public static final TypeServerDecryptError:I = 0xa2

.field public static final TypeServerError:I = 0xa7

.field public static final USER_INDDOR_TRUE:I = 0x1

.field public static final USER_INDOOR_FALSE:I = 0x0

.field public static final USER_INDOOR_UNKNOW:I = -0x1


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:D

.field private D:Z

.field private E:I

.field private F:I

.field private G:Ljava/lang/String;

.field private H:I

.field private I:Ljava/lang/String;

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:I

.field private R:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/location/Poi;",
            ">;"
        }
    .end annotation
.end field

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field private V:Landroid/os/Bundle;

.field private W:I

.field private X:I

.field private Y:J

.field private Z:Ljava/lang/String;

.field private a:I

.field private aa:Ljava/lang/String;

.field private ab:D

.field private ac:D

.field private ad:Z

.field private ae:Lcom/baidu/location/PoiRegion;

.field private af:F

.field private ag:D

.field private ah:I

.field private ai:I

.field private aj:Lcom/baidu/location/BDLocation;

.field private ak:Landroid/os/Bundle;

.field private al:Ljava/lang/String;

.field private am:J

.field private b:Ljava/lang/String;

.field private c:D

.field private d:D

.field private e:Z

.field private f:D

.field private g:Z

.field private h:F

.field private i:Z

.field private j:F

.field private k:Ljava/lang/String;

.field private l:F

.field private m:I

.field private n:F

.field private o:Z

.field private p:I

.field private q:F

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:Lcom/baidu/location/Address;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/location/a;

    invoke-direct {v0}, Lcom/baidu/location/a;-><init>()V

    sput-object v0, Lcom/baidu/location/BDLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/BDLocation;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->c:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->d:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->e:Z

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->f:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->g:Z

    const/4 v4, 0x0

    iput v4, p0, Lcom/baidu/location/BDLocation;->h:F

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->i:Z

    iput v4, p0, Lcom/baidu/location/BDLocation;->j:F

    iput v4, p0, Lcom/baidu/location/BDLocation;->l:F

    const/4 v5, -0x1

    iput v5, p0, Lcom/baidu/location/BDLocation;->m:I

    iput v4, p0, Lcom/baidu/location/BDLocation;->n:F

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->o:Z

    iput v5, p0, Lcom/baidu/location/BDLocation;->p:I

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, p0, Lcom/baidu/location/BDLocation;->q:F

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->s:Z

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->u:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->x:Z

    new-instance v6, Lcom/baidu/location/Address$Builder;

    invoke-direct {v6}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v6}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->z:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->A:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->D:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->E:I

    const/4 v6, 0x1

    iput v6, p0, Lcom/baidu/location/BDLocation;->F:I

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->G:Ljava/lang/String;

    const-string v6, ""

    iput-object v6, p0, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    iput v5, p0, Lcom/baidu/location/BDLocation;->J:I

    iput v0, p0, Lcom/baidu/location/BDLocation;->K:I

    const/4 v6, 0x2

    iput v6, p0, Lcom/baidu/location/BDLocation;->L:I

    iput v0, p0, Lcom/baidu/location/BDLocation;->M:I

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->O:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->P:Ljava/lang/String;

    iput v5, p0, Lcom/baidu/location/BDLocation;->Q:I

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->R:Ljava/util/List;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->S:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->U:Ljava/lang/String;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, p0, Lcom/baidu/location/BDLocation;->V:Landroid/os/Bundle;

    iput v0, p0, Lcom/baidu/location/BDLocation;->W:I

    iput v0, p0, Lcom/baidu/location/BDLocation;->X:I

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/baidu/location/BDLocation;->Y:J

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->Z:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->aa:Ljava/lang/String;

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->ab:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->ac:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->ad:Z

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->ae:Lcom/baidu/location/PoiRegion;

    iput v4, p0, Lcom/baidu/location/BDLocation;->af:F

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->ag:D

    iput v0, p0, Lcom/baidu/location/BDLocation;->ah:I

    iput v5, p0, Lcom/baidu/location/BDLocation;->ai:I

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->ak:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->al:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/location/BDLocation;->am:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput v3, v1, Lcom/baidu/location/BDLocation;->a:I

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    const-wide/16 v5, 0x1

    iput-wide v5, v1, Lcom/baidu/location/BDLocation;->c:D

    iput-wide v5, v1, Lcom/baidu/location/BDLocation;->d:D

    iput-boolean v3, v1, Lcom/baidu/location/BDLocation;->e:Z

    iput-wide v5, v1, Lcom/baidu/location/BDLocation;->f:D

    iput-boolean v3, v1, Lcom/baidu/location/BDLocation;->g:Z

    const/4 v0, 0x0

    iput v0, v1, Lcom/baidu/location/BDLocation;->h:F

    iput-boolean v3, v1, Lcom/baidu/location/BDLocation;->i:Z

    iput v0, v1, Lcom/baidu/location/BDLocation;->j:F

    iput v0, v1, Lcom/baidu/location/BDLocation;->l:F

    const/4 v7, -0x1

    iput v7, v1, Lcom/baidu/location/BDLocation;->m:I

    iput v0, v1, Lcom/baidu/location/BDLocation;->n:F

    iput-boolean v3, v1, Lcom/baidu/location/BDLocation;->o:Z

    iput v7, v1, Lcom/baidu/location/BDLocation;->p:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, v1, Lcom/baidu/location/BDLocation;->q:F

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    iput-boolean v3, v1, Lcom/baidu/location/BDLocation;->s:Z

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->t:Ljava/lang/String;

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->u:Ljava/lang/String;

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iput-boolean v3, v1, Lcom/baidu/location/BDLocation;->x:Z

    new-instance v8, Lcom/baidu/location/Address$Builder;

    invoke-direct {v8}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v8}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v8

    iput-object v8, v1, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->z:Ljava/lang/String;

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->A:Ljava/lang/String;

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    iput-boolean v3, v1, Lcom/baidu/location/BDLocation;->D:Z

    iput v3, v1, Lcom/baidu/location/BDLocation;->E:I

    const/4 v8, 0x1

    iput v8, v1, Lcom/baidu/location/BDLocation;->F:I

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->G:Ljava/lang/String;

    const-string v9, ""

    iput-object v9, v1, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    iput v7, v1, Lcom/baidu/location/BDLocation;->J:I

    iput v3, v1, Lcom/baidu/location/BDLocation;->K:I

    const/4 v9, 0x2

    iput v9, v1, Lcom/baidu/location/BDLocation;->L:I

    iput v3, v1, Lcom/baidu/location/BDLocation;->M:I

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->O:Ljava/lang/String;

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->P:Ljava/lang/String;

    iput v7, v1, Lcom/baidu/location/BDLocation;->Q:I

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->R:Ljava/util/List;

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->S:Ljava/lang/String;

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->U:Ljava/lang/String;

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    iput-object v10, v1, Lcom/baidu/location/BDLocation;->V:Landroid/os/Bundle;

    iput v3, v1, Lcom/baidu/location/BDLocation;->W:I

    iput v3, v1, Lcom/baidu/location/BDLocation;->X:I

    const-wide/16 v10, 0x0

    iput-wide v10, v1, Lcom/baidu/location/BDLocation;->Y:J

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->Z:Ljava/lang/String;

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->aa:Ljava/lang/String;

    iput-wide v5, v1, Lcom/baidu/location/BDLocation;->ab:D

    iput-wide v5, v1, Lcom/baidu/location/BDLocation;->ac:D

    iput-boolean v3, v1, Lcom/baidu/location/BDLocation;->ad:Z

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->ae:Lcom/baidu/location/PoiRegion;

    iput v0, v1, Lcom/baidu/location/BDLocation;->af:F

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    iput-wide v5, v1, Lcom/baidu/location/BDLocation;->ag:D

    iput v3, v1, Lcom/baidu/location/BDLocation;->ah:I

    iput v7, v1, Lcom/baidu/location/BDLocation;->ai:I

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->ak:Landroid/os/Bundle;

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->al:Ljava/lang/String;

    const-wide/16 v5, -0x1

    iput-wide v5, v1, Lcom/baidu/location/BDLocation;->am:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/baidu/location/BDLocation;->a:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/baidu/location/BDLocation;->am:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, v1, Lcom/baidu/location/BDLocation;->c:D

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, v1, Lcom/baidu/location/BDLocation;->d:D

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, v1, Lcom/baidu/location/BDLocation;->f:D

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, v1, Lcom/baidu/location/BDLocation;->h:F

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, v1, Lcom/baidu/location/BDLocation;->j:F

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/location/BDLocation;->k:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, v1, Lcom/baidu/location/BDLocation;->l:F

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/baidu/location/BDLocation;->m:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, v1, Lcom/baidu/location/BDLocation;->n:F

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/baidu/location/BDLocation;->p:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, v1, Lcom/baidu/location/BDLocation;->q:F

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/location/BDLocation;->z:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/baidu/location/BDLocation;->E:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/location/BDLocation;->A:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, v1, Lcom/baidu/location/BDLocation;->C:D

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/location/BDLocation;->G:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    new-instance v9, Lcom/baidu/location/Address$Builder;

    invoke-direct {v9}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v9, v12}, Lcom/baidu/location/Address$Builder;->country(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v9

    invoke-virtual {v9, v13}, Lcom/baidu/location/Address$Builder;->countryCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/baidu/location/Address$Builder;->province(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/baidu/location/Address$Builder;->city(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/baidu/location/Address$Builder;->cityCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/baidu/location/Address$Builder;->district(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/baidu/location/Address$Builder;->street(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/baidu/location/Address$Builder;->streetNumber(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/baidu/location/Address$Builder;->adcode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/baidu/location/Address$Builder;->town(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    const/16 v0, 0x8

    new-array v5, v0, [Z

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/baidu/location/BDLocation;->H:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/location/BDLocation;->u:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/baidu/location/BDLocation;->F:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/location/BDLocation;->S:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/baidu/location/BDLocation;->J:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/baidu/location/BDLocation;->K:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/baidu/location/BDLocation;->L:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/baidu/location/BDLocation;->M:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/location/BDLocation;->O:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/location/BDLocation;->P:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/baidu/location/BDLocation;->Q:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/baidu/location/BDLocation;->W:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/baidu/location/BDLocation;->X:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/location/BDLocation;->U:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/location/BDLocation;->Z:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/location/BDLocation;->aa:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/baidu/location/BDLocation;->Y:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    iput-wide v6, v1, Lcom/baidu/location/BDLocation;->ab:D

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    iput-wide v6, v1, Lcom/baidu/location/BDLocation;->ac:D

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, v1, Lcom/baidu/location/BDLocation;->af:F

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    iput-wide v6, v1, Lcom/baidu/location/BDLocation;->ag:D

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/baidu/location/BDLocation;->ah:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, v1, Lcom/baidu/location/BDLocation;->ai:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/location/BDLocation;->al:Ljava/lang/String;

    :try_start_0
    const-class v0, Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/BDLocation;

    iput-object v0, v1, Lcom/baidu/location/BDLocation;->aj:Lcom/baidu/location/BDLocation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->aj:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    :try_start_1
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readBooleanArray([Z)V

    aget-boolean v0, v5, v3

    iput-boolean v0, v1, Lcom/baidu/location/BDLocation;->e:Z

    aget-boolean v0, v5, v8

    iput-boolean v0, v1, Lcom/baidu/location/BDLocation;->g:Z

    const/4 v3, 0x2

    aget-boolean v0, v5, v3

    iput-boolean v0, v1, Lcom/baidu/location/BDLocation;->i:Z

    const/4 v0, 0x3

    aget-boolean v0, v5, v0

    iput-boolean v0, v1, Lcom/baidu/location/BDLocation;->o:Z

    const/4 v0, 0x4

    aget-boolean v0, v5, v0

    iput-boolean v0, v1, Lcom/baidu/location/BDLocation;->s:Z

    const/4 v0, 0x5

    aget-boolean v0, v5, v0

    iput-boolean v0, v1, Lcom/baidu/location/BDLocation;->x:Z

    const/4 v0, 0x6

    aget-boolean v0, v5, v0

    iput-boolean v0, v1, Lcom/baidu/location/BDLocation;->D:Z

    const/4 v0, 0x7

    aget-boolean v0, v5, v0

    iput-boolean v0, v1, Lcom/baidu/location/BDLocation;->ad:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_2
    const-class v0, Lcom/baidu/location/Poi;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->R:Ljava/util/List;

    goto :goto_2

    :cond_0
    iput-object v3, v1, Lcom/baidu/location/BDLocation;->R:Ljava/util/List;

    :goto_2
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/location/BDLocation;->V:Landroid/os/Bundle;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/baidu/location/BDLocation;->V:Landroid/os/Bundle;

    :goto_3
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/location/BDLocation;->ak:Landroid/os/Bundle;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/baidu/location/BDLocation;->ak:Landroid/os/Bundle;

    :goto_4
    :try_start_5
    const-class v0, Lcom/baidu/location/PoiRegion;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/PoiRegion;

    iput-object v0, v1, Lcom/baidu/location/BDLocation;->ae:Lcom/baidu/location/PoiRegion;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->ae:Lcom/baidu/location/PoiRegion;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/baidu/location/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/BDLocation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/location/BDLocation;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/BDLocation;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->c:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->d:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->e:Z

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->f:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->g:Z

    const/4 v4, 0x0

    iput v4, p0, Lcom/baidu/location/BDLocation;->h:F

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->i:Z

    iput v4, p0, Lcom/baidu/location/BDLocation;->j:F

    iput v4, p0, Lcom/baidu/location/BDLocation;->l:F

    const/4 v5, -0x1

    iput v5, p0, Lcom/baidu/location/BDLocation;->m:I

    iput v4, p0, Lcom/baidu/location/BDLocation;->n:F

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->o:Z

    iput v5, p0, Lcom/baidu/location/BDLocation;->p:I

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, p0, Lcom/baidu/location/BDLocation;->q:F

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->s:Z

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->u:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->x:Z

    new-instance v6, Lcom/baidu/location/Address$Builder;

    invoke-direct {v6}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v6}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->z:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->A:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->D:Z

    iput v0, p0, Lcom/baidu/location/BDLocation;->E:I

    const/4 v6, 0x1

    iput v6, p0, Lcom/baidu/location/BDLocation;->F:I

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->G:Ljava/lang/String;

    const-string v6, ""

    iput-object v6, p0, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    iput v5, p0, Lcom/baidu/location/BDLocation;->J:I

    iput v0, p0, Lcom/baidu/location/BDLocation;->K:I

    const/4 v6, 0x2

    iput v6, p0, Lcom/baidu/location/BDLocation;->L:I

    iput v0, p0, Lcom/baidu/location/BDLocation;->M:I

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->O:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->P:Ljava/lang/String;

    iput v5, p0, Lcom/baidu/location/BDLocation;->Q:I

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->R:Ljava/util/List;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->S:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->U:Ljava/lang/String;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, p0, Lcom/baidu/location/BDLocation;->V:Landroid/os/Bundle;

    iput v0, p0, Lcom/baidu/location/BDLocation;->W:I

    iput v0, p0, Lcom/baidu/location/BDLocation;->X:I

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/baidu/location/BDLocation;->Y:J

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->Z:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->aa:Ljava/lang/String;

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->ab:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->ac:D

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->ad:Z

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->ae:Lcom/baidu/location/PoiRegion;

    iput v4, p0, Lcom/baidu/location/BDLocation;->af:F

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->ag:D

    iput v0, p0, Lcom/baidu/location/BDLocation;->ah:I

    iput v5, p0, Lcom/baidu/location/BDLocation;->ai:I

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->ak:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/baidu/location/BDLocation;->al:Ljava/lang/String;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->am:J

    iget v2, p1, Lcom/baidu/location/BDLocation;->a:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->a:I

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    iget-wide v2, p1, Lcom/baidu/location/BDLocation;->am:J

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->am:J

    iget-wide v2, p1, Lcom/baidu/location/BDLocation;->c:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->c:D

    iget-wide v2, p1, Lcom/baidu/location/BDLocation;->d:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->d:D

    iget-boolean v2, p1, Lcom/baidu/location/BDLocation;->e:Z

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->e:Z

    iget-wide v2, p1, Lcom/baidu/location/BDLocation;->f:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->f:D

    iget-boolean v2, p1, Lcom/baidu/location/BDLocation;->g:Z

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->g:Z

    iget v2, p1, Lcom/baidu/location/BDLocation;->h:F

    iput v2, p0, Lcom/baidu/location/BDLocation;->h:F

    iget-boolean v2, p1, Lcom/baidu/location/BDLocation;->i:Z

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->i:Z

    iget v2, p1, Lcom/baidu/location/BDLocation;->j:F

    iput v2, p0, Lcom/baidu/location/BDLocation;->j:F

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->k:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->k:Ljava/lang/String;

    iget v2, p1, Lcom/baidu/location/BDLocation;->l:F

    iput v2, p0, Lcom/baidu/location/BDLocation;->l:F

    iget v2, p1, Lcom/baidu/location/BDLocation;->m:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->m:I

    iget v2, p1, Lcom/baidu/location/BDLocation;->n:F

    iput v2, p0, Lcom/baidu/location/BDLocation;->n:F

    iget-boolean v2, p1, Lcom/baidu/location/BDLocation;->o:Z

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->o:Z

    iget v2, p1, Lcom/baidu/location/BDLocation;->p:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->p:I

    iget v2, p1, Lcom/baidu/location/BDLocation;->q:F

    iput v2, p0, Lcom/baidu/location/BDLocation;->q:F

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/baidu/location/BDLocation;->s:Z

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->s:Z

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->t:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->t:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/baidu/location/BDLocation;->x:Z

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->x:Z

    new-instance v2, Lcom/baidu/location/Address$Builder;

    invoke-direct {v2}, Lcom/baidu/location/Address$Builder;-><init>()V

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->country:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->country(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->countryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->countryCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->province:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->province(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->city:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->city(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->cityCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->cityCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->district:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->district(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->street:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->street(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->streetNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->streetNumber(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->adcode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->adcode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v3, v3, Lcom/baidu/location/Address;->town:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/baidu/location/Address$Builder;->town(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->z:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->z:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->A:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->A:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    iget-wide v2, p1, Lcom/baidu/location/BDLocation;->C:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->C:D

    iget v2, p1, Lcom/baidu/location/BDLocation;->F:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->F:I

    iget v2, p1, Lcom/baidu/location/BDLocation;->E:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->E:I

    iget-boolean v2, p1, Lcom/baidu/location/BDLocation;->D:Z

    iput-boolean v2, p0, Lcom/baidu/location/BDLocation;->D:Z

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->G:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->G:Ljava/lang/String;

    iget v2, p1, Lcom/baidu/location/BDLocation;->H:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->H:I

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->u:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->u:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iget v2, p1, Lcom/baidu/location/BDLocation;->J:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->J:I

    iget v2, p1, Lcom/baidu/location/BDLocation;->K:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->K:I

    iget v2, p1, Lcom/baidu/location/BDLocation;->K:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->L:I

    iget v2, p1, Lcom/baidu/location/BDLocation;->M:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->M:I

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->O:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->O:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->P:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->P:Ljava/lang/String;

    iget v2, p1, Lcom/baidu/location/BDLocation;->Q:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->Q:I

    iget v2, p1, Lcom/baidu/location/BDLocation;->W:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->W:I

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->U:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->U:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->Z:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->Z:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->aa:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->aa:Ljava/lang/String;

    iget-wide v2, p1, Lcom/baidu/location/BDLocation;->ab:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->ab:D

    iget-wide v2, p1, Lcom/baidu/location/BDLocation;->ac:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->ac:D

    iget-wide v2, p1, Lcom/baidu/location/BDLocation;->Y:J

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->Y:J

    iget-wide v2, p1, Lcom/baidu/location/BDLocation;->ag:D

    iput-wide v2, p0, Lcom/baidu/location/BDLocation;->ag:D

    iget v2, p1, Lcom/baidu/location/BDLocation;->ah:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->ah:I

    iget v2, p1, Lcom/baidu/location/BDLocation;->ai:I

    iput v2, p0, Lcom/baidu/location/BDLocation;->ai:I

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->aj:Lcom/baidu/location/BDLocation;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->aj:Lcom/baidu/location/BDLocation;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->R:Ljava/util/List;

    if-nez v2, :cond_1

    :cond_0
    iput-object v1, p0, Lcom/baidu/location/BDLocation;->R:Ljava/util/List;

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v2, p1, Lcom/baidu/location/BDLocation;->R:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lcom/baidu/location/BDLocation;->R:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/location/Poi;

    new-instance v10, Lcom/baidu/location/Poi;

    invoke-virtual {v2}, Lcom/baidu/location/Poi;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/baidu/location/Poi;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/baidu/location/Poi;->getRank()D

    move-result-wide v6

    invoke-virtual {v2}, Lcom/baidu/location/Poi;->getTags()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/baidu/location/Poi;->getAddr()Ljava/lang/String;

    move-result-object v9

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/baidu/location/Poi;-><init>(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_1
    iget-object v0, p1, Lcom/baidu/location/BDLocation;->S:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->S:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/location/BDLocation;->V:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->V:Landroid/os/Bundle;

    iget v0, p1, Lcom/baidu/location/BDLocation;->X:I

    iput v0, p0, Lcom/baidu/location/BDLocation;->X:I

    iget-boolean v0, p1, Lcom/baidu/location/BDLocation;->ad:Z

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->ad:Z

    iget-object v0, p1, Lcom/baidu/location/BDLocation;->ae:Lcom/baidu/location/PoiRegion;

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->ae:Lcom/baidu/location/PoiRegion;

    iget v0, p1, Lcom/baidu/location/BDLocation;->af:F

    iput v0, p0, Lcom/baidu/location/BDLocation;->af:F

    iget-object v0, p1, Lcom/baidu/location/BDLocation;->ak:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->ak:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/baidu/location/BDLocation;->al:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->al:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "traffic_skip_prop"

    const-string v4, "is_station"

    const-string v5, "traffic_prop"

    const-string v6, "traffic"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v7, 0x0

    iput v7, v1, Lcom/baidu/location/BDLocation;->a:I

    const/4 v8, 0x0

    iput-object v8, v1, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    const-wide/16 v9, 0x1

    iput-wide v9, v1, Lcom/baidu/location/BDLocation;->c:D

    iput-wide v9, v1, Lcom/baidu/location/BDLocation;->d:D

    iput-boolean v7, v1, Lcom/baidu/location/BDLocation;->e:Z

    iput-wide v9, v1, Lcom/baidu/location/BDLocation;->f:D

    iput-boolean v7, v1, Lcom/baidu/location/BDLocation;->g:Z

    const/4 v11, 0x0

    iput v11, v1, Lcom/baidu/location/BDLocation;->h:F

    iput-boolean v7, v1, Lcom/baidu/location/BDLocation;->i:Z

    iput v11, v1, Lcom/baidu/location/BDLocation;->j:F

    iput v11, v1, Lcom/baidu/location/BDLocation;->l:F

    const/4 v12, -0x1

    iput v12, v1, Lcom/baidu/location/BDLocation;->m:I

    iput v11, v1, Lcom/baidu/location/BDLocation;->n:F

    iput-boolean v7, v1, Lcom/baidu/location/BDLocation;->o:Z

    iput v12, v1, Lcom/baidu/location/BDLocation;->p:I

    const/high16 v11, -0x40800000    # -1.0f

    iput v11, v1, Lcom/baidu/location/BDLocation;->q:F

    iput-object v8, v1, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    iput-boolean v7, v1, Lcom/baidu/location/BDLocation;->s:Z

    iput-object v8, v1, Lcom/baidu/location/BDLocation;->t:Ljava/lang/String;

    iput-object v8, v1, Lcom/baidu/location/BDLocation;->u:Ljava/lang/String;

    iput-object v8, v1, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    iput-object v8, v1, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    iput-boolean v7, v1, Lcom/baidu/location/BDLocation;->x:Z

    new-instance v13, Lcom/baidu/location/Address$Builder;

    invoke-direct {v13}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v13}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v13

    iput-object v13, v1, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iput-object v8, v1, Lcom/baidu/location/BDLocation;->z:Ljava/lang/String;

    iput-object v8, v1, Lcom/baidu/location/BDLocation;->A:Ljava/lang/String;

    iput-object v8, v1, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    iput-boolean v7, v1, Lcom/baidu/location/BDLocation;->D:Z

    iput v7, v1, Lcom/baidu/location/BDLocation;->E:I

    const/4 v13, 0x1

    iput v13, v1, Lcom/baidu/location/BDLocation;->F:I

    iput-object v8, v1, Lcom/baidu/location/BDLocation;->G:Ljava/lang/String;

    const-string v14, ""

    iput-object v14, v1, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    iput v12, v1, Lcom/baidu/location/BDLocation;->J:I

    iput v7, v1, Lcom/baidu/location/BDLocation;->K:I

    const/4 v15, 0x2

    iput v15, v1, Lcom/baidu/location/BDLocation;->L:I

    iput v7, v1, Lcom/baidu/location/BDLocation;->M:I

    iput-object v8, v1, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    iput-object v8, v1, Lcom/baidu/location/BDLocation;->O:Ljava/lang/String;

    iput-object v8, v1, Lcom/baidu/location/BDLocation;->P:Ljava/lang/String;

    iput v12, v1, Lcom/baidu/location/BDLocation;->Q:I

    iput-object v8, v1, Lcom/baidu/location/BDLocation;->R:Ljava/util/List;

    iput-object v8, v1, Lcom/baidu/location/BDLocation;->S:Ljava/lang/String;

    iput-object v8, v1, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    iput-object v8, v1, Lcom/baidu/location/BDLocation;->U:Ljava/lang/String;

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    iput-object v15, v1, Lcom/baidu/location/BDLocation;->V:Landroid/os/Bundle;

    iput v7, v1, Lcom/baidu/location/BDLocation;->W:I

    iput v7, v1, Lcom/baidu/location/BDLocation;->X:I

    move-object/from16 v16, v14

    const-wide/16 v13, 0x0

    iput-wide v13, v1, Lcom/baidu/location/BDLocation;->Y:J

    iput-object v8, v1, Lcom/baidu/location/BDLocation;->Z:Ljava/lang/String;

    iput-object v8, v1, Lcom/baidu/location/BDLocation;->aa:Ljava/lang/String;

    iput-wide v9, v1, Lcom/baidu/location/BDLocation;->ab:D

    iput-wide v9, v1, Lcom/baidu/location/BDLocation;->ac:D

    iput-boolean v7, v1, Lcom/baidu/location/BDLocation;->ad:Z

    iput-object v8, v1, Lcom/baidu/location/BDLocation;->ae:Lcom/baidu/location/PoiRegion;

    iput v11, v1, Lcom/baidu/location/BDLocation;->af:F

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    iput-wide v13, v1, Lcom/baidu/location/BDLocation;->ag:D

    iput v7, v1, Lcom/baidu/location/BDLocation;->ah:I

    iput v12, v1, Lcom/baidu/location/BDLocation;->ai:I

    iput-object v8, v1, Lcom/baidu/location/BDLocation;->ak:Landroid/os/Bundle;

    iput-object v8, v1, Lcom/baidu/location/BDLocation;->al:Ljava/lang/String;

    const-wide/16 v13, -0x1

    iput-wide v13, v1, Lcom/baidu/location/BDLocation;->am:J

    if-eqz v2, :cond_49

    move-object/from16 v11, v16

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    goto/16 :goto_34

    :cond_0
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_10

    :try_start_1
    invoke-direct {v13, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "result"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v14, "error"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v1, v14}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    const-string v15, "time"

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/location/BDLocation;->setTime(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_10

    const/16 v2, 0x3d

    const-string v15, "gcj02"

    const-string v9, "radius"

    const-string v10, "point"

    const-string v12, "content"

    const-string v8, "in_cn"

    const-string/jumbo v7, "x"

    move-object/from16 v17, v11

    const-string/jumbo v11, "y"

    if-ne v14, v2, :cond_5

    :try_start_2
    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->setRadius(F)V

    const-string v3, "s"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->setSpeed(F)V

    const-string v3, "d"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->setDirection(F)V

    const-string v3, "n"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->setSatelliteNumber(I)V

    const-string v3, "is_mock"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "is_mock"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->setMockGpsStrategy(I)V

    :cond_1
    const-string v3, "h"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_10

    if-eqz v3, :cond_2

    :try_start_3
    const-string v3, "h"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/baidu/location/BDLocation;->setAltitude(D)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_10

    :catch_0
    :cond_2
    :try_start_4
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/location/BDLocation;->setLocationWhere(I)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/baidu/location/BDLocation;->setLocationWhere(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_10

    :catch_1
    :goto_0
    :try_start_5
    iget v2, v1, Lcom/baidu/location/BDLocation;->F:I

    if-nez v2, :cond_4

    const-string/jumbo v2, "wgs84"

    :goto_1
    invoke-virtual {v1, v2}, Lcom/baidu/location/BDLocation;->setCoorType(Ljava/lang/String;)V

    goto/16 :goto_34

    :cond_4
    invoke-virtual {v1, v15}, Lcom/baidu/location/BDLocation;->setCoorType(Ljava/lang/String;)V

    goto/16 :goto_34

    :cond_5
    move-object v2, v15

    const/16 v15, 0xa1

    if-ne v14, v15, :cond_46

    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    invoke-virtual {v1, v13, v14}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    invoke-virtual {v1, v13, v14}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v1, v9}, Lcom/baidu/location/BDLocation;->setRadius(F)V

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/baidu/location/BDLocation;->setTraffic(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v1, v5}, Lcom/baidu/location/BDLocation;->setTrafficConfidence(F)V

    :cond_7
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/baidu/location/BDLocation;->setIsTrafficStation(I)V

    :cond_8
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->setTrafficSkipProb(F)V

    :cond_9
    const-string v3, "sema"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_10

    const-string v4, "addr"

    if-eqz v3, :cond_15

    :try_start_6
    const-string v3, "sema"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "aptag"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "aptag"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    iput-object v5, v1, Lcom/baidu/location/BDLocation;->u:Ljava/lang/String;

    goto :goto_2

    :cond_a
    move-object/from16 v5, v17

    iput-object v5, v1, Lcom/baidu/location/BDLocation;->u:Ljava/lang/String;

    goto :goto_3

    :cond_b
    :goto_2
    move-object/from16 v5, v17

    :goto_3
    const-string v6, "aptagd"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, "aptagd"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v9, "pois"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :goto_4
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v10, v13, :cond_e

    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "pname"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v14, "pid"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v14, "pr"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v20

    const-string v14, "tags"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    const-string v14, "tags"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v22, v14

    goto :goto_5

    :cond_c
    move-object/from16 v22, v5

    :goto_5
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v23, v13

    goto :goto_6

    :cond_d
    move-object/from16 v23, v5

    :goto_6
    new-instance v13, Lcom/baidu/location/Poi;

    move-object/from16 v17, v13

    invoke-direct/range {v17 .. v23}, Lcom/baidu/location/Poi;-><init>(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_e
    iput-object v9, v1, Lcom/baidu/location/BDLocation;->R:Ljava/util/List;

    :cond_f
    const-string v6, "poiregion"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    const-string v6, "poiregion"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_10

    iput-object v6, v1, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    :cond_10
    const-string v6, "poi_regions"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "poi_regions"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v9, "direction_desc"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    const-string v9, "direction_desc"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    :cond_11
    move-object v9, v5

    :goto_7
    const-string v10, "name"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    const-string v10, "name"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    :cond_12
    move-object v10, v5

    :goto_8
    const-string v13, "tag"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_13

    const-string v13, "tag"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    :cond_13
    move-object v6, v5

    :goto_9
    new-instance v13, Lcom/baidu/location/PoiRegion;

    invoke-direct {v13, v9, v10, v6}, Lcom/baidu/location/PoiRegion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v13, v1, Lcom/baidu/location/BDLocation;->ae:Lcom/baidu/location/PoiRegion;

    :cond_14
    const-string v6, "regular"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    const-string v6, "regular"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_16

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    goto :goto_a

    :cond_15
    move-object/from16 v5, v17

    :cond_16
    :goto_a
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_10

    const-string v6, ","

    if-eqz v3, :cond_2c

    :try_start_7
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_10

    const/4 v15, 0x1

    goto :goto_b

    :catch_2
    const/4 v3, 0x0

    const/4 v15, 0x0

    :goto_b
    if-eqz v3, :cond_21

    :try_start_8
    const-string v4, "city"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v4, "city"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    :cond_17
    move-object v4, v5

    :goto_c
    const-string v9, "city_code"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_18

    const-string v9, "city_code"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_d

    :cond_18
    move-object v9, v5

    :goto_d
    const-string v10, "country"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_19

    const-string v10, "country"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_e

    :cond_19
    move-object v10, v5

    :goto_e
    const-string v13, "country_code"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1a

    const-string v13, "country_code"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_f

    :cond_1a
    move-object v13, v5

    :goto_f
    const-string v14, "province"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1b

    const-string v14, "province"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 p1, v4

    goto :goto_10

    :cond_1b
    move-object/from16 p1, v4

    move-object v14, v5

    :goto_10
    const-string v4, "district"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string v4, "district"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v4

    goto :goto_11

    :cond_1c
    move-object/from16 v17, v5

    :goto_11
    const-string v4, "street"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const-string v4, "street"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v18, v4

    goto :goto_12

    :cond_1d
    move-object/from16 v18, v5

    :goto_12
    const-string v4, "street_number"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string v4, "street_number"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v19, v4

    goto :goto_13

    :cond_1e
    move-object/from16 v19, v5

    :goto_13
    const-string v4, "adcode"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, "adcode"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_14

    :cond_1f
    move-object v4, v5

    :goto_14
    const-string v5, "town"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    const-string v5, "town"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_10

    move-object/from16 v5, v18

    move-object/from16 v18, v7

    move-object v7, v3

    move-object v3, v13

    move-object/from16 v13, v17

    move/from16 v17, v15

    goto :goto_15

    :cond_20
    move-object v3, v13

    move-object/from16 v13, v17

    move-object/from16 v5, v18

    move-object/from16 v18, v7

    move/from16 v17, v15

    const/4 v7, 0x0

    :goto_15
    move-object v15, v14

    move-object/from16 v14, v19

    move-object/from16 v24, v4

    move-object/from16 v4, p1

    move-object/from16 p1, v11

    move-object/from16 v11, v24

    goto/16 :goto_27

    :cond_21
    :try_start_9
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-lez v4, :cond_22

    const/4 v5, 0x0

    aget-object v9, v3, v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_10

    const/4 v5, 0x1

    goto :goto_16

    :cond_22
    const/4 v5, 0x1

    const/4 v9, 0x0

    :goto_16
    if-le v4, v5, :cond_23

    :try_start_a
    aget-object v10, v3, v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_10

    const/4 v5, 0x2

    goto :goto_17

    :catch_3
    move-exception v0

    move-object v3, v0

    const/4 v5, 0x0

    goto/16 :goto_1f

    :cond_23
    const/4 v5, 0x2

    const/4 v10, 0x0

    :goto_17
    if-le v4, v5, :cond_24

    :try_start_b
    aget-object v13, v3, v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_10

    goto :goto_18

    :catch_4
    move-exception v0

    move-object v3, v0

    const/4 v5, 0x0

    goto/16 :goto_20

    :cond_24
    const/4 v13, 0x0

    :goto_18
    const/4 v5, 0x3

    if-le v4, v5, :cond_25

    const/4 v5, 0x3

    :try_start_c
    aget-object v5, v3, v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_10

    goto :goto_19

    :catch_5
    move-exception v0

    move-object v3, v0

    const/4 v5, 0x0

    goto/16 :goto_21

    :cond_25
    const/4 v5, 0x0

    :goto_19
    const/4 v14, 0x4

    if-le v4, v14, :cond_26

    const/4 v14, 0x4

    :try_start_d
    aget-object v14, v3, v14
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_d} :catch_10

    goto :goto_1a

    :catch_6
    move-exception v0

    move-object v3, v0

    goto/16 :goto_21

    :cond_26
    const/4 v14, 0x0

    :goto_1a
    const/4 v15, 0x5

    if-le v4, v15, :cond_27

    const/4 v15, 0x5

    :try_start_e
    aget-object v15, v3, v15
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_e} :catch_10

    move-object/from16 p1, v5

    goto :goto_1b

    :catch_7
    move-exception v0

    move-object v3, v0

    goto :goto_22

    :cond_27
    move-object/from16 p1, v5

    const/4 v15, 0x0

    :goto_1b
    const/4 v5, 0x6

    if-le v4, v5, :cond_28

    const/4 v5, 0x6

    :try_start_f
    aget-object v5, v3, v5
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/Error; {:try_start_f .. :try_end_f} :catch_10

    move-object/from16 v17, v5

    goto :goto_1c

    :catch_8
    move-exception v0

    move-object/from16 v5, p1

    move-object v3, v0

    goto :goto_23

    :cond_28
    const/16 v17, 0x0

    :goto_1c
    const/4 v5, 0x7

    if-le v4, v5, :cond_29

    const/4 v5, 0x7

    :try_start_10
    aget-object v5, v3, v5
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/lang/Error; {:try_start_10 .. :try_end_10} :catch_10

    move-object/from16 v18, v5

    goto :goto_1d

    :catch_9
    move-exception v0

    move-object/from16 v5, p1

    move-object v3, v0

    goto :goto_24

    :cond_29
    const/16 v18, 0x0

    :goto_1d
    const/16 v5, 0x8

    if-le v4, v5, :cond_2a

    const/16 v4, 0x8

    :try_start_11
    aget-object v3, v3, v4
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/lang/Error; {:try_start_11 .. :try_end_11} :catch_10

    goto :goto_1e

    :catch_a
    move-exception v0

    move-object/from16 v5, p1

    move-object v3, v0

    goto :goto_25

    :cond_2a
    const/4 v3, 0x0

    :goto_1e
    move-object/from16 v5, p1

    move-object v4, v10

    move-object/from16 p1, v11

    move-object/from16 v10, v17

    const/16 v17, 0x1

    move-object v11, v3

    move-object/from16 v3, v18

    goto :goto_26

    :catch_b
    move-exception v0

    move-object v3, v0

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_1f
    const/4 v10, 0x0

    :goto_20
    const/4 v13, 0x0

    :goto_21
    const/4 v14, 0x0

    :goto_22
    const/4 v15, 0x0

    :goto_23
    const/16 v17, 0x0

    :goto_24
    const/16 v18, 0x0

    :goto_25
    :try_start_12
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v10

    move-object/from16 p1, v11

    move-object/from16 v10, v17

    move-object/from16 v3, v18

    const/4 v11, 0x0

    const/16 v17, 0x0

    :goto_26
    move-object/from16 v18, v7

    const/4 v7, 0x0

    move-object/from16 v24, v15

    move-object v15, v9

    move-object/from16 v9, v24

    :goto_27
    if-eqz v17, :cond_2b

    move-object/from16 v17, v6

    new-instance v6, Lcom/baidu/location/Address$Builder;

    invoke-direct {v6}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v6, v10}, Lcom/baidu/location/Address$Builder;->country(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/baidu/location/Address$Builder;->countryCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/baidu/location/Address$Builder;->province(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/baidu/location/Address$Builder;->city(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/baidu/location/Address$Builder;->cityCode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/baidu/location/Address$Builder;->district(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/baidu/location/Address$Builder;->street(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/baidu/location/Address$Builder;->streetNumber(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/baidu/location/Address$Builder;->adcode(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/baidu/location/Address$Builder;->town(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/baidu/location/BDLocation;->s:Z

    goto :goto_28

    :cond_2b
    move-object/from16 v17, v6

    goto :goto_28

    :cond_2c
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 p1, v11

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/baidu/location/BDLocation;->s:Z

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->setAddrStr(Ljava/lang/String;)V

    :goto_28
    const-string v3, "floor"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    const-string v3, "floor"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->z:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2d

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->z:Ljava/lang/String;

    :cond_2d
    const-string v3, "indoor"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const-string v3, "indoor"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->setUserIndoorState(I)V

    :cond_2e
    const-string v3, "loctp"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    const-string v3, "loctp"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->G:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2f

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->G:Ljava/lang/String;

    :cond_2f
    const-string v3, "bldgid"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    const-string v3, "bldgid"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->A:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_30

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->A:Ljava/lang/String;

    :cond_30
    const-string v3, "bldg"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    const-string v3, "bldg"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    :cond_31
    const-string v3, "acc"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    const-string v3, "acc"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v1, Lcom/baidu/location/BDLocation;->C:D

    :cond_32
    const-string v3, "ibav"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    const-string v3, "ibav"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_33

    :goto_29
    const/4 v4, 0x0

    iput v4, v1, Lcom/baidu/location/BDLocation;->E:I

    goto :goto_2a

    :cond_33
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    goto :goto_29

    :cond_34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcom/baidu/location/BDLocation;->E:I

    :cond_35
    :goto_2a
    const-string v3, "indoorflags"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_f
    .catch Ljava/lang/Error; {:try_start_12 .. :try_end_12} :catch_10

    if-eqz v3, :cond_40

    :try_start_13
    const-string v3, "indoorflags"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "area"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    const-string v4, "area"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_36

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/baidu/location/BDLocation;->setIndoorLocationSurpport(I)V

    goto :goto_2b

    :cond_36
    const/4 v5, 0x1

    if-ne v4, v5, :cond_37

    invoke-virtual {v1, v5}, Lcom/baidu/location/BDLocation;->setIndoorLocationSurpport(I)V

    :cond_37
    :goto_2b
    const-string v4, "support"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    const-string v4, "support"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/baidu/location/BDLocation;->setIndoorLocationSource(I)V

    :cond_38
    const-string v4, "inbldg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    const-string v4, "inbldg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    :cond_39
    const-string v4, "inbldgid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a

    const-string v4, "inbldgid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/baidu/location/BDLocation;->O:Ljava/lang/String;

    :cond_3a
    const-string v4, "polygon"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    const-string v4, "polygon"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/baidu/location/BDLocation;->setIndoorSurpportPolygon(Ljava/lang/String;)V

    :cond_3b
    const-string v4, "ret_fields"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d
    .catch Ljava/lang/Error; {:try_start_13 .. :try_end_13} :catch_10

    if-eqz v4, :cond_3d

    :try_start_14
    const-string v4, "ret_fields"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_2c
    if-ge v6, v5, :cond_3d

    aget-object v7, v4, v6

    const-string v9, "="

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3c

    array-length v9, v7

    const/4 v10, 0x2

    if-lt v9, v10, :cond_3c

    const/4 v9, 0x0

    aget-object v10, v7, v9

    const/4 v9, 0x1

    aget-object v7, v7, v9

    iget-object v9, v1, Lcom/baidu/location/BDLocation;->V:Landroid/os/Bundle;

    invoke-virtual {v9, v10, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_c
    .catch Ljava/lang/Error; {:try_start_14 .. :try_end_14} :catch_10

    :cond_3c
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    :catch_c
    :cond_3d
    :try_start_15
    const-string v4, "inout_ble"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    const-string v4, "inout_ble"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->setInOutStatus(I)V

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3e

    invoke-virtual {v1, v4}, Lcom/baidu/location/BDLocation;->setIsInIndoorPark(Z)V

    goto :goto_2d

    :cond_3e
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->setIsInIndoorPark(Z)V

    goto :goto_2d

    :cond_3f
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->setInOutStatus(I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_d
    .catch Ljava/lang/Error; {:try_start_15 .. :try_end_15} :catch_10

    goto :goto_2d

    :catch_d
    move-exception v0

    move-object v3, v0

    :try_start_16
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_40
    :goto_2d
    const-string v3, "gpscs"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    const-string v3, "gpscs"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->setGpsCheckStatus(I)V

    goto :goto_2e

    :cond_41
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->setGpsCheckStatus(I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_f
    .catch Ljava/lang/Error; {:try_start_16 .. :try_end_16} :catch_10

    :goto_2e
    :try_start_17
    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->setLocationWhere(I)V

    goto :goto_2f

    :cond_42
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->setLocationWhere(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_e
    .catch Ljava/lang/Error; {:try_start_17 .. :try_end_17} :catch_10

    :catch_e
    :goto_2f
    :try_start_18
    iget v3, v1, Lcom/baidu/location/BDLocation;->F:I

    if-nez v3, :cond_43

    const-string/jumbo v2, "wgs84"

    :cond_43
    invoke-virtual {v1, v2}, Lcom/baidu/location/BDLocation;->setCoorType(Ljava/lang/String;)V

    const-string v2, "navi"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    const-string v2, "navi"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/location/BDLocation;->Z:Ljava/lang/String;

    :cond_44
    const-string v2, "navi_client"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    const-string v2, "navi_client"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_f
    .catch Ljava/lang/Error; {:try_start_18 .. :try_end_18} :catch_10

    if-eqz v2, :cond_45

    move-object/from16 v3, v17

    :try_start_19
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_45

    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_45

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    if-lez v3, :cond_45

    iput-boolean v4, v1, Lcom/baidu/location/BDLocation;->ad:Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto :goto_30

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_1a
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_45
    :goto_30
    const-string v2, "nrl_point"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_f
    .catch Ljava/lang/Error; {:try_start_1a .. :try_end_1a} :catch_10

    if-eqz v2, :cond_49

    :try_start_1b
    const-string v2, "nrl_point"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v3, v18

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_49

    move-object/from16 v4, p1

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/baidu/location/BDLocation;->ab:D

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/location/BDLocation;->ac:D
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    goto/16 :goto_34

    :catchall_1
    const-wide/16 v2, 0x1

    :try_start_1c
    iput-wide v2, v1, Lcom/baidu/location/BDLocation;->ab:D

    iput-wide v2, v1, Lcom/baidu/location/BDLocation;->ac:D

    goto :goto_34

    :cond_46
    move-object v3, v7

    move-object v4, v11

    const/16 v5, 0x42

    if-eq v14, v5, :cond_48

    const/16 v5, 0x44

    if-ne v14, v5, :cond_47

    goto :goto_31

    :cond_47
    const/16 v2, 0xa7

    if-ne v14, v2, :cond_49

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/baidu/location/BDLocation;->setLocationWhere(I)V

    goto :goto_34

    :cond_48
    :goto_31
    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/baidu/location/BDLocation;->setRadius(F)V

    const-string v3, "isCellChanged"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/baidu/location/BDLocation;->a(Ljava/lang/Boolean;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_f
    .catch Ljava/lang/Error; {:try_start_1c .. :try_end_1c} :catch_10

    goto/16 :goto_1

    :catch_f
    move-exception v0

    move-object v3, v0

    const/4 v2, 0x0

    goto :goto_32

    :catch_10
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Error;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_33

    :catch_11
    move-exception v0

    const/4 v2, 0x0

    move-object v3, v0

    :goto_32
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_33
    iput v2, v1, Lcom/baidu/location/BDLocation;->a:I

    iput-boolean v2, v1, Lcom/baidu/location/BDLocation;->s:Z

    :cond_49
    :goto_34
    return-void
.end method

.method private a(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->x:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAcc()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->C:D

    return-wide v0
.end method

.method public getAdCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->adcode:Ljava/lang/String;

    return-object v0
.end method

.method public getAddrStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Lcom/baidu/location/Address;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    return-object v0
.end method

.method public getAltitude()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->f:D

    return-wide v0
.end method

.method public getBuildingID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->A:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildingName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->cityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCoorType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDelayTime()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->Y:J

    return-wide v0
.end method

.method public getDerect()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/baidu/location/BDLocation;->q:F

    return v0
.end method

.method public getDirection()F
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->q:F

    return v0
.end method

.method public getDisToRealLocation()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->ag:D

    return-wide v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->district:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraInfo()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->ak:Landroid/os/Bundle;

    return-object v0
.end method

.method public getExtraLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->V:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    instance-of v0, p1, Landroid/location/Location;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/location/Location;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFloor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->z:Ljava/lang/String;

    return-object v0
.end method

.method public getFusionLocInfo(Ljava/lang/String;)[D
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->V:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object p1

    return-object p1
.end method

.method public getGnssProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->al:Ljava/lang/String;

    return-object v0
.end method

.method public getGpsAccuracyStatus()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->W:I

    return v0
.end method

.method public getGpsBiasProb()F
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->af:F

    return v0
.end method

.method public getGpsCheckStatus()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->X:I

    return v0
.end method

.method public getInOutStatus()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->Q:I

    return v0
.end method

.method public getIndoorLocationSource()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->M:I

    return v0
.end method

.method public getIndoorLocationSurpport()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->K:I

    return v0
.end method

.method public getIndoorLocationSurpportBuidlingID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->O:Ljava/lang/String;

    return-object v0
.end method

.method public getIndoorLocationSurpportBuidlingName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    return-object v0
.end method

.method public getIndoorNetworkState()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->L:I

    return v0
.end method

.method public getIndoorSurpportPolygon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->P:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->c:D

    return-wide v0
.end method

.method public getLocType()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->a:I

    return v0
.end method

.method public getLocTypeDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->S:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationDescribe()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationWhere()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->F:I

    return v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->d:D

    return-wide v0
.end method

.method public getMockGpsProbability()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->ai:I

    return v0
.end method

.method public getMockGpsStrategy()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->ah:I

    return v0
.end method

.method public getNetworkLocationType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->G:Ljava/lang/String;

    return-object v0
.end method

.method public getNrlLat()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->ab:D

    return-wide v0
.end method

.method public getNrlLon()D
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->ac:D

    return-wide v0
.end method

.method public getNrlResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->Z:Ljava/lang/String;

    return-object v0
.end method

.method public getOperators()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->H:I

    return v0
.end method

.method public getPoiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/location/Poi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->R:Ljava/util/List;

    return-object v0
.end method

.method public getPoiRegion()Lcom/baidu/location/PoiRegion;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->ae:Lcom/baidu/location/PoiRegion;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->j:F

    return v0
.end method

.method public getReallLocation()Lcom/baidu/location/BDLocation;
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getMockGpsStrategy()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->aj:Lcom/baidu/location/BDLocation;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRetFields(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->V:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRoadLocString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->U:Ljava/lang/String;

    return-object v0
.end method

.method public getSatelliteNumber()I
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/BDLocation;->o:Z

    iget v0, p0, Lcom/baidu/location/BDLocation;->p:I

    return v0
.end method

.method public getSemaAptag()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->h:F

    return v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->street:Ljava/lang/String;

    return-object v0
.end method

.method public getStreetNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->streetNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->am:J

    return-wide v0
.end method

.method public getTown()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->town:Ljava/lang/String;

    return-object v0
.end method

.method public getTraffic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getTrafficConfidence()F
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->l:F

    return v0
.end method

.method public getTrafficSkipProb()F
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->n:F

    return v0
.end method

.method public getUserIndoorState()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->J:I

    return v0
.end method

.method public getVdrJsonString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->V:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "vdr"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->V:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getViaductResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->aa:Ljava/lang/String;

    return-object v0
.end method

.method public hasAddr()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->s:Z

    return v0
.end method

.method public hasAltitude()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->e:Z

    return v0
.end method

.method public hasRadius()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->i:Z

    return v0
.end method

.method public hasSateNumber()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->o:Z

    return v0
.end method

.method public hasSpeed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->g:Z

    return v0
.end method

.method public isCellChangeFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->x:Z

    return v0
.end method

.method public isInIndoorPark()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->ad:Z

    return v0
.end method

.method public isIndoorLocMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/BDLocation;->D:Z

    return v0
.end method

.method public isNrlAvailable()Z
    .locals 5

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->ac:D

    const-wide/16 v2, 0x1

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->ab:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isParkAvailable()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->E:I

    return v0
.end method

.method public isTrafficStation()I
    .locals 1

    iget v0, p0, Lcom/baidu/location/BDLocation;->m:I

    return v0
.end method

.method public setAcc(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->C:D

    return-void
.end method

.method public setAddr(Lcom/baidu/location/Address;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->s:Z

    :cond_0
    return-void
.end method

.method public setAddrStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->t:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->s:Z

    return-void
.end method

.method public setAltitude(D)V
    .locals 3

    const-wide v0, 0x40c3878000000000L    # 9999.0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->f:D

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->e:Z

    :cond_0
    return-void
.end method

.method public setBuildingID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->A:Ljava/lang/String;

    return-void
.end method

.method public setBuildingName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    return-void
.end method

.method public setCoorType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    return-void
.end method

.method public setDelayTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->Y:J

    return-void
.end method

.method public setDirection(F)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->q:F

    return-void
.end method

.method public setDisToRealLocation(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->ag:D

    return-void
.end method

.method public setExtraLocation(Ljava/lang/String;Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->V:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->V:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/BDLocation;->V:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public setExtrainfo(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/baidu/location/BDLocation;->ak:Landroid/os/Bundle;

    return-void
.end method

.method public setFloor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->z:Ljava/lang/String;

    return-void
.end method

.method public setFusionLocInfo(Ljava/lang/String;[D)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->V:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->V:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/BDLocation;->V:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    return-void
.end method

.method public setGnssProvider(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->al:Ljava/lang/String;

    return-void
.end method

.method public setGpsAccuracyStatus(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->W:I

    return-void
.end method

.method public setGpsBiasProb(F)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->af:F

    return-void
.end method

.method public setGpsCheckStatus(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->X:I

    return-void
.end method

.method public setInOutStatus(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->Q:I

    return-void
.end method

.method public setIndoorLocMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->D:Z

    return-void
.end method

.method public setIndoorLocationSource(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->M:I

    return-void
.end method

.method public setIndoorLocationSurpport(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->K:I

    return-void
.end method

.method public setIndoorNetworkState(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->L:I

    return-void
.end method

.method public setIndoorSurpportPolygon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->P:Ljava/lang/String;

    return-void
.end method

.method public setIsInIndoorPark(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->ad:Z

    return-void
.end method

.method public setIsTrafficStation(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->m:I

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->c:D

    return-void
.end method

.method public setLocType(I)V
    .locals 1

    iput p1, p0, Lcom/baidu/location/BDLocation;->a:I

    const/16 v0, 0x42

    if-eq p1, v0, :cond_5

    const/16 v0, 0x43

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa1

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f9

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const-string p1, "UnKnown!"

    goto :goto_0

    :pswitch_0
    const-string p1, "Location failed because the location service switch is not on and the location permission is not enabled"

    goto :goto_0

    :pswitch_1
    const-string p1, "Location failed because the location permission is not enabled"

    goto :goto_0

    :pswitch_2
    const-string p1, "Location failed because the location service switch is not on"

    goto :goto_0

    :pswitch_3
    const-string p1, "Location failed beacuse we can not get any loc information!"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/baidu/location/BDLocation;->setLocTypeDescription(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    const-string p1, "GPS location successful!"

    invoke-virtual {p0, p1}, Lcom/baidu/location/BDLocation;->setLocTypeDescription(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/baidu/location/BDLocation;->setUserIndoorState(I)V

    const-string p1, "system"

    invoke-virtual {p0, p1}, Lcom/baidu/location/BDLocation;->setGnssProvider(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string p1, "NetWork location failed because baidu location service check the key is unlegal, please check the key in AndroidManifest.xml !"

    goto :goto_0

    :cond_1
    const-string p1, "NetWork location failed because baidu location service can not caculate the location!"

    goto :goto_0

    :cond_2
    const-string p1, "NetWork location failed because baidu location service can not decrypt the request query, please check the so file !"

    goto :goto_0

    :cond_3
    const-string p1, "NetWork location successful!"

    goto :goto_0

    :cond_4
    :pswitch_5
    const-string p1, "Offline location failed, please check the net (wifi/cell)!"

    goto :goto_0

    :cond_5
    const-string p1, "Offline location successful!"

    goto :goto_0

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x45
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLocTypeDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->S:Ljava/lang/String;

    return-void
.end method

.method public setLocationDescribe(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->u:Ljava/lang/String;

    return-void
.end method

.method public setLocationID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    return-void
.end method

.method public setLocationWhere(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->F:I

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->d:D

    return-void
.end method

.method public setMockGpsProbability(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->ai:I

    return-void
.end method

.method public setMockGpsStrategy(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->ah:I

    return-void
.end method

.method public setNetworkLocationType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->G:Ljava/lang/String;

    return-void
.end method

.method public setNrlData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->Z:Ljava/lang/String;

    return-void
.end method

.method public setOperators(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->H:I

    return-void
.end method

.method public setParkAvailable(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->E:I

    return-void
.end method

.method public setPoiList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/location/Poi;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->R:Ljava/util/List;

    return-void
.end method

.method public setPoiRegion(Lcom/baidu/location/PoiRegion;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->ae:Lcom/baidu/location/PoiRegion;

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->j:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->i:Z

    return-void
.end method

.method public setReallLocation(Lcom/baidu/location/BDLocation;)V
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getMockGpsStrategy()I

    move-result v0

    if-lez v0, :cond_0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->aj:Lcom/baidu/location/BDLocation;

    :cond_0
    return-void
.end method

.method public setRetFields(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->V:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->V:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/BDLocation;->V:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRoadLocString(FFLjava/lang/String;)V
    .locals 9

    float-to-double v0, p1

    const-string v2, "%.2f"

    const-wide v3, 0x3f50624dd2f1a9fcL    # 0.001

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmpl-double v8, v0, v3

    if-lez v8, :cond_0

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v6

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v5

    :goto_0
    float-to-double v0, p2

    cmpl-double v8, v0, v3

    if-lez v8, :cond_1

    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v0, v6

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :cond_1
    iget-object p2, p0, Lcom/baidu/location/BDLocation;->Z:Ljava/lang/String;

    const-string v0, "%s|%s"

    const/4 v1, 0x2

    if-eqz p2, :cond_2

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/baidu/location/BDLocation;->Z:Ljava/lang/String;

    aput-object v3, v2, v6

    aput-object p1, v2, v7

    aput-object v5, v2, v1

    const-string p1, "%s|%s,%s"

    invoke-static {p2, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->U:Ljava/lang/String;

    iget-object p1, p0, Lcom/baidu/location/BDLocation;->aa:Ljava/lang/String;

    if-eqz p1, :cond_2

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p2, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/baidu/location/BDLocation;->U:Ljava/lang/String;

    aput-object v2, p2, v6

    iget-object v2, p0, Lcom/baidu/location/BDLocation;->aa:Ljava/lang/String;

    aput-object v2, p2, v7

    invoke-static {p1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->U:Ljava/lang/String;

    :cond_2
    if-eqz p3, :cond_3

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p2, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/location/BDLocation;->U:Ljava/lang/String;

    aput-object v1, p2, v6

    aput-object p3, p2, v7

    invoke-static {p1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->U:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public setSatelliteNumber(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->p:I

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->h:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/location/BDLocation;->g:Z

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/baidu/location/e/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/location/BDLocation;->setLocationID(Ljava/lang/String;)V

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/BDLocation;->am:J

    return-void
.end method

.method public setTraffic(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->k:Ljava/lang/String;

    return-void
.end method

.method public setTrafficConfidence(F)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->l:F

    return-void
.end method

.method public setTrafficSkipProb(F)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->n:F

    return-void
.end method

.method public setUserIndoorState(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/location/BDLocation;->J:I

    return-void
.end method

.method public setVdrJsonValue(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->V:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/BDLocation;->V:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/BDLocation;->V:Landroid/os/Bundle;

    const-string v1, "vdr"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setViaductData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/BDLocation;->aa:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&loctype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "&lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "&radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "&biasprob="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getGpsBiasProb()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "&extrainfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget v0, p0, Lcom/baidu/location/BDLocation;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->am:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->c:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->d:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->f:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->h:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->j:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->l:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->n:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->p:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->q:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->E:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->C:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->G:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->province:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->city:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->district:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->street:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->streetNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->cityCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->country:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->countryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->adcode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->y:Lcom/baidu/location/Address;

    iget-object v0, v0, Lcom/baidu/location/Address;->town:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->H:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->I:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->F:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->S:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->J:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->K:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->L:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->M:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->N:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->O:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->P:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->Q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->W:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->T:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->X:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->U:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->Z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->aa:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->Y:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->ab:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->ac:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->af:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-wide v0, p0, Lcom/baidu/location/BDLocation;->ag:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->ah:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/baidu/location/BDLocation;->ai:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->al:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->aj:Lcom/baidu/location/BDLocation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    const/16 v0, 0x8

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/baidu/location/BDLocation;->e:Z

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/baidu/location/BDLocation;->g:Z

    const/4 v2, 0x1

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/baidu/location/BDLocation;->i:Z

    const/4 v2, 0x2

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/baidu/location/BDLocation;->o:Z

    const/4 v2, 0x3

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/baidu/location/BDLocation;->s:Z

    const/4 v2, 0x4

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/baidu/location/BDLocation;->x:Z

    const/4 v2, 0x5

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/baidu/location/BDLocation;->D:Z

    const/4 v2, 0x6

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/baidu/location/BDLocation;->ad:Z

    const/4 v2, 0x7

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->R:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->V:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->ak:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/location/BDLocation;->ae:Lcom/baidu/location/PoiRegion;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
